
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct cec_msg {int len; int* msg; } ;
struct cec_adapter {int dummy; } ;


 scalar_t__ SECOCEC_WRITE_BYTE0 ;
 scalar_t__ SECOCEC_WRITE_DATA_00 ;
 scalar_t__ SECOCEC_WRITE_DATA_LENGTH ;
 scalar_t__ SECOCEC_WRITE_OPERATION_ID ;
 int smb_wr16 (scalar_t__,int) ;

__attribute__((used)) static int secocec_adap_transmit(struct cec_adapter *adap, u8 attempts,
     u32 signal_free_time, struct cec_msg *msg)
{
 u16 payload_len, payload_id_len, destination, val = 0;
 u8 *payload_msg;
 int status;
 u8 i;


 payload_id_len = msg->len - 1;


 status = smb_wr16(SECOCEC_WRITE_DATA_LENGTH, payload_id_len);
 if (status)
  goto err;


 if (payload_id_len > 0) {
  status = smb_wr16(SECOCEC_WRITE_OPERATION_ID, msg->msg[1]);
  if (status)
   goto err;
 }

 if (payload_id_len > 1) {

  payload_len = msg->len - 2;
  payload_msg = &msg->msg[2];


  for (i = 0; i < payload_len; i += 2) {

   val = payload_msg[i + 1] << 8;


   val |= payload_msg[i];

   status = smb_wr16(SECOCEC_WRITE_DATA_00 + i / 2, val);
   if (status)
    goto err;
  }
 }

 destination = msg->msg[0];
 status = smb_wr16(SECOCEC_WRITE_BYTE0, destination);
 if (status)
  goto err;

 return 0;

err:
 return status;
}
