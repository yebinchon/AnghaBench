
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct secocec_data {int cec_adap; struct device* dev; } ;
struct device {int dummy; } ;
struct cec_msg {int len; int* msg; } ;
struct cec_adapter {int dummy; } ;


 int CEC_MAX_MSG_SIZE ;
 int EIO ;
 scalar_t__ SECOCEC_READ_BYTE0 ;
 scalar_t__ SECOCEC_READ_DATA_00 ;
 scalar_t__ SECOCEC_READ_DATA_LENGTH ;
 scalar_t__ SECOCEC_READ_OPERATION_ID ;
 int SECOCEC_STATUS ;
 int SECOCEC_STATUS_MSG_RECEIVED_MASK ;
 int SECOCEC_STATUS_RX_ERROR_MASK ;
 int SECOCEC_STATUS_RX_OVERFLOW_MASK ;
 struct secocec_data* cec_get_drvdata (struct cec_adapter*) ;
 int cec_received_msg (int ,struct cec_msg*) ;
 int dev_warn (struct device*,char*) ;
 int min (int,int ) ;
 int smb_rd16 (scalar_t__,int*) ;
 int smb_wr16 (int ,int) ;

__attribute__((used)) static void secocec_rx_done(struct cec_adapter *adap, u16 status_val)
{
 struct secocec_data *cec = cec_get_drvdata(adap);
 struct device *dev = cec->dev;
 struct cec_msg msg = { };
 bool flag_overflow = 0;
 u8 payload_len, i = 0;
 u8 *payload_msg;
 u16 val = 0;
 int status;

 if (status_val & SECOCEC_STATUS_RX_OVERFLOW_MASK) {

  dev_warn(dev, "Received more than 16 bytes. Discarding");
  flag_overflow = 1;
 }

 if (status_val & SECOCEC_STATUS_RX_ERROR_MASK) {
  dev_warn(dev, "Message received with errors. Discarding");
  status = -EIO;
  goto rxerr;
 }


 status = smb_rd16(SECOCEC_READ_DATA_LENGTH, &val);
 if (status)
  return;


 msg.len = min(val + 1, CEC_MAX_MSG_SIZE);


 status = smb_rd16(SECOCEC_READ_BYTE0, &val);
 if (status)
  return;


 msg.msg[0] = val;


 status = smb_rd16(SECOCEC_READ_OPERATION_ID, &val);
 if (status)
  return;

 msg.msg[1] = val;


 if (msg.len > 1) {
  payload_len = msg.len - 2;
  payload_msg = &msg.msg[2];


  for (i = 0; i < payload_len; i += 2) {
   status = smb_rd16(SECOCEC_READ_DATA_00 + i / 2, &val);
   if (status)
    return;


   payload_msg[i] = val & 0x00ff;


   payload_msg[i + 1] = (val & 0xff00) >> 8;
  }
 }

 cec_received_msg(cec->cec_adap, &msg);


 status_val = SECOCEC_STATUS_MSG_RECEIVED_MASK;
 if (flag_overflow)
  status_val |= SECOCEC_STATUS_RX_OVERFLOW_MASK;

 status = smb_wr16(SECOCEC_STATUS, status_val);

 return;

rxerr:

 status_val = SECOCEC_STATUS_MSG_RECEIVED_MASK |
  SECOCEC_STATUS_RX_ERROR_MASK;
 if (flag_overflow)
  status_val |= SECOCEC_STATUS_RX_OVERFLOW_MASK;
 smb_wr16(SECOCEC_STATUS, status_val);
}
