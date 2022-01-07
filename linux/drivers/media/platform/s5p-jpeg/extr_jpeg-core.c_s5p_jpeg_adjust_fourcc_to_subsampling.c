
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct s5p_jpeg_ctx {int subsampling; } ;
typedef enum v4l2_jpeg_chroma_subsampling { ____Placeholder_v4l2_jpeg_chroma_subsampling } v4l2_jpeg_chroma_subsampling ;


 int ARRAY_SIZE (int *) ;
 int EINVAL ;



 int V4L2_PIX_FMT_GREY ;
 int s5p_jpeg_get_dwngrd_sch_id_by_fourcc (int ) ;
 int * subs420_fourcc_dwngrd_schema ;
 int * subs422_fourcc_dwngrd_schema ;

__attribute__((used)) static int s5p_jpeg_adjust_fourcc_to_subsampling(
     enum v4l2_jpeg_chroma_subsampling subs,
     u32 in_fourcc,
     u32 *out_fourcc,
     struct s5p_jpeg_ctx *ctx)
{
 int dwngrd_sch_id;

 if (ctx->subsampling != 128) {
  dwngrd_sch_id =
   s5p_jpeg_get_dwngrd_sch_id_by_fourcc(in_fourcc);
  if (dwngrd_sch_id < 0)
   return -EINVAL;
 }

 switch (ctx->subsampling) {
 case 128:
  *out_fourcc = V4L2_PIX_FMT_GREY;
  break;
 case 130:
  if (dwngrd_sch_id >
    ARRAY_SIZE(subs420_fourcc_dwngrd_schema) - 1)
   return -EINVAL;
  *out_fourcc = subs420_fourcc_dwngrd_schema[dwngrd_sch_id];
  break;
 case 129:
  if (dwngrd_sch_id >
    ARRAY_SIZE(subs422_fourcc_dwngrd_schema) - 1)
   return -EINVAL;
  *out_fourcc = subs422_fourcc_dwngrd_schema[dwngrd_sch_id];
  break;
 default:
  *out_fourcc = V4L2_PIX_FMT_GREY;
  break;
 }

 return 0;
}
