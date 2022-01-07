
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct hva_h264_stereo_video_sei {int field_views_flag; int top_field_is_left_view_flag; int current_frame_is_left_view_flag; int next_frame_is_second_view_flag; int left_view_self_contained_flag; int right_view_self_contained_flag; } ;
struct hva_ctx {int name; } ;
struct device {int dummy; } ;
typedef int start ;
typedef int info ;
typedef enum hva_h264_sei_payload_type { ____Placeholder_hva_h264_sei_payload_type } hva_h264_sei_payload_type ;


 int EINVAL ;
 int NALU_TYPE_SEI ;




 struct device* ctx_to_dev (struct hva_ctx*) ;
 int dev_err (struct device*,char*,int ,int) ;
 int memcpy (int*,int const*,int) ;
 int memset (struct hva_h264_stereo_video_sei*,int ,int) ;

__attribute__((used)) static int hva_h264_fill_sei_nal(struct hva_ctx *pctx,
     enum hva_h264_sei_payload_type type,
     u8 *addr, u32 *size)
{
 struct device *dev = ctx_to_dev(pctx);
 const u8 start[] = { 0x00, 0x00, 0x00, 0x01 };
 struct hva_h264_stereo_video_sei info;
 u8 offset = 7;
 u8 msg = 0;


 memcpy(addr + *size, start, sizeof(start));
 *size += sizeof(start);


 addr[*size] = NALU_TYPE_SEI;
 *size += 1;


 addr[*size] = type;
 *size += 1;

 switch (type) {
 case 128:
  memset(&info, 0, sizeof(info));


  info.field_views_flag = 1;
  info.top_field_is_left_view_flag = 1;


  addr[*size] = 1;
  *size += 1;


  msg = info.field_views_flag << offset--;

  if (info.field_views_flag) {
   msg |= info.top_field_is_left_view_flag <<
          offset--;
  } else {
   msg |= info.current_frame_is_left_view_flag <<
          offset--;
   msg |= info.next_frame_is_second_view_flag <<
          offset--;
  }
  msg |= info.left_view_self_contained_flag << offset--;
  msg |= info.right_view_self_contained_flag << offset--;

  addr[*size] = msg;
  *size += 1;

  addr[*size] = 0x80;
  *size += 1;

  return 0;
 case 131:
 case 129:
 case 130:
 default:
  dev_err(dev, "%s   sei nal type not supported %d\n",
   pctx->name, type);
  return -EINVAL;
 }
}
