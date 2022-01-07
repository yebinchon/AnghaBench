
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u32 ;
struct mei_txe_hw {scalar_t__ slots; int aliveness; } ;
struct mei_msg_hdr {int dummy; } ;
struct mei_device {int dev; } ;


 int EAGAIN ;
 int EINVAL ;
 int EMSGSIZE ;
 int MEI_FW_STATUS_STR_SZ ;
 int MEI_HDR_FMT ;
 int MEI_HDR_PRM (struct mei_msg_hdr*) ;
 size_t MEI_SLOT_SIZE ;
 scalar_t__ TXE_HBUF_DEPTH ;
 scalar_t__ WARN (int,char*) ;
 scalar_t__ WARN_ON (int) ;
 int dev_dbg (int ,int ,int ) ;
 int dev_err (int ,char*,char*) ;
 scalar_t__ mei_data2slots (size_t) ;
 int mei_fw_status_str (struct mei_device*,char*,int) ;
 int mei_txe_input_doorbell_set (struct mei_txe_hw*) ;
 int mei_txe_input_payload_write (struct mei_device*,unsigned long,scalar_t__ const) ;
 int mei_txe_input_ready_interrupt_enable (struct mei_device*) ;
 int mei_txe_is_input_ready (struct mei_device*) ;
 int memcpy (scalar_t__*,int const*,unsigned long) ;
 struct mei_txe_hw* to_txe_hw (struct mei_device*) ;

__attribute__((used)) static int mei_txe_write(struct mei_device *dev,
    const void *hdr, size_t hdr_len,
    const void *data, size_t data_len)
{
 struct mei_txe_hw *hw = to_txe_hw(dev);
 unsigned long rem;
 const u32 *reg_buf;
 u32 slots = TXE_HBUF_DEPTH;
 u32 dw_cnt;
 unsigned long i, j;

 if (WARN_ON(!hdr || !data || hdr_len & 0x3))
  return -EINVAL;

 dev_dbg(dev->dev, MEI_HDR_FMT, MEI_HDR_PRM((struct mei_msg_hdr *)hdr));

 dw_cnt = mei_data2slots(hdr_len + data_len);
 if (dw_cnt > slots)
  return -EMSGSIZE;

 if (WARN(!hw->aliveness, "txe write: aliveness not asserted\n"))
  return -EAGAIN;


 mei_txe_input_ready_interrupt_enable(dev);

 if (!mei_txe_is_input_ready(dev)) {
  char fw_sts_str[MEI_FW_STATUS_STR_SZ];

  mei_fw_status_str(dev, fw_sts_str, MEI_FW_STATUS_STR_SZ);
  dev_err(dev->dev, "Input is not ready %s\n", fw_sts_str);
  return -EAGAIN;
 }

 reg_buf = hdr;
 for (i = 0; i < hdr_len / MEI_SLOT_SIZE; i++)
  mei_txe_input_payload_write(dev, i, reg_buf[i]);

 reg_buf = data;
 for (j = 0; j < data_len / MEI_SLOT_SIZE; j++)
  mei_txe_input_payload_write(dev, i + j, reg_buf[j]);

 rem = data_len & 0x3;
 if (rem > 0) {
  u32 reg = 0;

  memcpy(&reg, (const u8 *)data + data_len - rem, rem);
  mei_txe_input_payload_write(dev, i + j, reg);
 }


 hw->slots = 0;


 mei_txe_input_doorbell_set(hw);

 return 0;
}
