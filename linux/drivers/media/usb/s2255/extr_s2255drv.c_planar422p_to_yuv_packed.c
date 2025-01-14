
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int V4L2_PIX_FMT_YUYV ;

__attribute__((used)) static void planar422p_to_yuv_packed(const unsigned char *in,
         unsigned char *out,
         int width, int height,
         int fmt)
{
 unsigned char *pY;
 unsigned char *pCb;
 unsigned char *pCr;
 unsigned long size = height * width;
 unsigned int i;
 pY = (unsigned char *)in;
 pCr = (unsigned char *)in + height * width;
 pCb = (unsigned char *)in + height * width + (height * width / 2);
 for (i = 0; i < size * 2; i += 4) {
  out[i] = (fmt == V4L2_PIX_FMT_YUYV) ? *pY++ : *pCr++;
  out[i + 1] = (fmt == V4L2_PIX_FMT_YUYV) ? *pCr++ : *pY++;
  out[i + 2] = (fmt == V4L2_PIX_FMT_YUYV) ? *pY++ : *pCb++;
  out[i + 3] = (fmt == V4L2_PIX_FMT_YUYV) ? *pCb++ : *pY++;
 }
 return;
}
