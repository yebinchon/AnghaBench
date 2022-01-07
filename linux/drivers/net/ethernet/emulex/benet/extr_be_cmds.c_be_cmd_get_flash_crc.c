
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
typedef scalar_t__ u16 ;
struct be_mcc_wrb {int dummy; } ;
struct TYPE_2__ {void* data_buf_size; void* op_code; void* offset; void* op_type; } ;
struct be_cmd_read_flash_crc {int crc; TYPE_1__ params; int hdr; } ;
struct be_adapter {int mcc_lock; } ;


 int CMD_SUBSYSTEM_COMMON ;
 int EBUSY ;
 int FLASHROM_OPER_REPORT ;
 int OPCODE_COMMON_READ_FLASHROM ;
 scalar_t__ OPTYPE_OFFSET_SPECIFIED ;
 int be_mcc_notify_wait (struct be_adapter*) ;
 int be_wrb_cmd_hdr_prepare (int *,int ,int ,int,struct be_mcc_wrb*,int *) ;
 void* cpu_to_le32 (int) ;
 struct be_cmd_read_flash_crc* embedded_payload (struct be_mcc_wrb*) ;
 int memcpy (int *,int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct be_mcc_wrb* wrb_from_mccq (struct be_adapter*) ;

__attribute__((used)) static int be_cmd_get_flash_crc(struct be_adapter *adapter, u8 *flashed_crc,
    u16 img_optype, u32 img_offset, u32 crc_offset)
{
 struct be_cmd_read_flash_crc *req;
 struct be_mcc_wrb *wrb;
 int status;

 mutex_lock(&adapter->mcc_lock);

 wrb = wrb_from_mccq(adapter);
 if (!wrb) {
  status = -EBUSY;
  goto err;
 }
 req = embedded_payload(wrb);

 be_wrb_cmd_hdr_prepare(&req->hdr, CMD_SUBSYSTEM_COMMON,
          OPCODE_COMMON_READ_FLASHROM, sizeof(*req),
          wrb, ((void*)0));

 req->params.op_type = cpu_to_le32(img_optype);
 if (img_optype == OPTYPE_OFFSET_SPECIFIED)
  req->params.offset = cpu_to_le32(img_offset + crc_offset);
 else
  req->params.offset = cpu_to_le32(crc_offset);

 req->params.op_code = cpu_to_le32(FLASHROM_OPER_REPORT);
 req->params.data_buf_size = cpu_to_le32(0x4);

 status = be_mcc_notify_wait(adapter);
 if (!status)
  memcpy(flashed_crc, req->crc, 4);

err:
 mutex_unlock(&adapter->mcc_lock);
 return status;
}
