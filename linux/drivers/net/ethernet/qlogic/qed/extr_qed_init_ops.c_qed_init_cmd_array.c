
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int data; } ;
union init_array_hdr {TYPE_3__ raw; } ;
typedef int u8 ;
typedef int u32 ;
struct qed_ptt {int dummy; } ;
struct qed_hwfn {int const* unzip_buf; struct qed_dev* cdev; } ;
struct qed_dev {TYPE_2__* fw_data; } ;
struct TYPE_4__ {int array_offset; } ;
struct init_write_op {int data; TYPE_1__ args; } ;
struct TYPE_5__ {int* arr_data; } ;


 int DP_NOTICE (struct qed_hwfn*,char*) ;
 int EINVAL ;
 int GET_FIELD (int,int ) ;
 int INIT_ARRAY_PATTERN_HDR_PATTERN_SIZE ;
 int INIT_ARRAY_PATTERN_HDR_REPETITIONS ;
 int INIT_ARRAY_RAW_HDR_TYPE ;
 int INIT_ARRAY_STANDARD_HDR_SIZE ;
 int INIT_ARRAY_ZIPPED_HDR_ZIPPED_SIZE ;



 int INIT_WRITE_OP_ADDRESS ;
 int MAX_ZIPPED_SIZE ;
 int le32_to_cpu (int ) ;
 int memset (int const*,int ,int) ;
 int qed_init_array_dmae (struct qed_hwfn*,struct qed_ptt*,int,int,int,int const*,int,int) ;
 int qed_unzip_data (struct qed_hwfn*,int,int *,int,int *) ;

__attribute__((used)) static int qed_init_cmd_array(struct qed_hwfn *p_hwfn,
         struct qed_ptt *p_ptt,
         struct init_write_op *cmd,
         bool b_must_dmae, bool b_can_dmae)
{
 u32 dmae_array_offset = le32_to_cpu(cmd->args.array_offset);
 u32 data = le32_to_cpu(cmd->data);
 u32 addr = GET_FIELD(data, INIT_WRITE_OP_ADDRESS) << 2;

 u32 offset, output_len, input_len, max_size;
 struct qed_dev *cdev = p_hwfn->cdev;
 union init_array_hdr *hdr;
 const u32 *array_data;
 int rc = 0;
 u32 size;

 array_data = cdev->fw_data->arr_data;

 hdr = (union init_array_hdr *)(array_data + dmae_array_offset);
 data = le32_to_cpu(hdr->raw.data);
 switch (GET_FIELD(data, INIT_ARRAY_RAW_HDR_TYPE)) {
 case 128:
  offset = dmae_array_offset + 1;
  input_len = GET_FIELD(data,
          INIT_ARRAY_ZIPPED_HDR_ZIPPED_SIZE);
  max_size = MAX_ZIPPED_SIZE * 4;
  memset(p_hwfn->unzip_buf, 0, max_size);

  output_len = qed_unzip_data(p_hwfn, input_len,
         (u8 *)&array_data[offset],
         max_size, (u8 *)p_hwfn->unzip_buf);
  if (output_len) {
   rc = qed_init_array_dmae(p_hwfn, p_ptt, addr, 0,
       output_len,
       p_hwfn->unzip_buf,
       b_must_dmae, b_can_dmae);
  } else {
   DP_NOTICE(p_hwfn, "Failed to unzip dmae data\n");
   rc = -EINVAL;
  }
  break;
 case 130:
 {
  u32 repeats = GET_FIELD(data,
     INIT_ARRAY_PATTERN_HDR_REPETITIONS);
  u32 i;

  size = GET_FIELD(data, INIT_ARRAY_PATTERN_HDR_PATTERN_SIZE);

  for (i = 0; i < repeats; i++, addr += size << 2) {
   rc = qed_init_array_dmae(p_hwfn, p_ptt, addr,
       dmae_array_offset + 1,
       size, array_data,
       b_must_dmae, b_can_dmae);
   if (rc)
    break;
  }
  break;
 }
 case 129:
  size = GET_FIELD(data, INIT_ARRAY_STANDARD_HDR_SIZE);
  rc = qed_init_array_dmae(p_hwfn, p_ptt, addr,
      dmae_array_offset + 1,
      size, array_data,
      b_must_dmae, b_can_dmae);
  break;
 }

 return rc;
}
