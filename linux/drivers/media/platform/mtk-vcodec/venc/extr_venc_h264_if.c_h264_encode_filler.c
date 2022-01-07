
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct venc_h264_inst {int dummy; } ;


 int ARRAY_SIZE (int ) ;
 int H264_FILLER_MARKER_SIZE ;
 int h264_filler_marker ;
 int memcpy (unsigned char*,int ,int ) ;
 int memset (unsigned char*,int,int) ;
 int mtk_vcodec_err (struct venc_h264_inst*,char*,int) ;

__attribute__((used)) static void h264_encode_filler(struct venc_h264_inst *inst, void *buf,
          int size)
{
 unsigned char *p = buf;

 if (size < H264_FILLER_MARKER_SIZE) {
  mtk_vcodec_err(inst, "filler size too small %d", size);
  return;
 }

 memcpy(p, h264_filler_marker, ARRAY_SIZE(h264_filler_marker));
 size -= H264_FILLER_MARKER_SIZE;
 p += H264_FILLER_MARKER_SIZE;
 memset(p, 0xff, size);
}
