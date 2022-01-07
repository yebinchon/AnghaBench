
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct vim2m_q_data {struct vim2m_fmt* fmt; } ;
struct vim2m_fmt {int fourcc; } ;
typedef int __le16 ;
typedef int __be16 ;
 int be16_to_cpu (int ) ;
 int cpu_to_be16 (int) ;
 int cpu_to_le16 (int) ;
 int le16_to_cpu (int ) ;

__attribute__((used)) static void copy_two_pixels(struct vim2m_q_data *q_data_in,
       struct vim2m_q_data *q_data_out,
       u8 *src[2], u8 **dst, int ypos, bool reverse)
{
 struct vim2m_fmt *out = q_data_out->fmt;
 struct vim2m_fmt *in = q_data_in->fmt;
 u8 _r[2], _g[2], _b[2], *r, *g, *b;
 int i;



 r = _r;
 g = _g;
 b = _b;

 switch (in->fourcc) {
 case 134:
  for (i = 0; i < 2; i++) {
   u16 pix = le16_to_cpu(*(__le16 *)(src[i]));

   *r++ = (u8)(((pix & 0xf800) >> 11) << 3) | 0x07;
   *g++ = (u8)((((pix & 0x07e0) >> 5)) << 2) | 0x03;
   *b++ = (u8)((pix & 0x1f) << 3) | 0x07;
  }
  break;
 case 133:
  for (i = 0; i < 2; i++) {
   u16 pix = be16_to_cpu(*(__be16 *)(src[i]));

   *r++ = (u8)(((pix & 0xf800) >> 11) << 3) | 0x07;
   *g++ = (u8)((((pix & 0x07e0) >> 5)) << 2) | 0x03;
   *b++ = (u8)((pix & 0x1f) << 3) | 0x07;
  }
  break;
 default:
 case 135:
  for (i = 0; i < 2; i++) {
   *r++ = src[i][0];
   *g++ = src[i][1];
   *b++ = src[i][2];
  }
  break;
 case 136:
  for (i = 0; i < 2; i++) {
   *b++ = src[i][0];
   *g++ = src[i][1];
   *r++ = src[i][2];
  }
  break;
 }



 r = _r;
 g = _g;
 b = _b;

 switch (out->fourcc) {
 case 134:
  for (i = 0; i < 2; i++) {
   u16 pix;
   __le16 *dst_pix = (__le16 *)*dst;

   pix = ((*r << 8) & 0xf800) | ((*g << 3) & 0x07e0) |
         (*b >> 3);

   *dst_pix = cpu_to_le16(pix);

   *dst += 2;
  }
  return;
 case 133:
  for (i = 0; i < 2; i++) {
   u16 pix;
   __be16 *dst_pix = (__be16 *)*dst;

   pix = ((*r << 8) & 0xf800) | ((*g << 3) & 0x07e0) |
         (*b >> 3);

   *dst_pix = cpu_to_be16(pix);

   *dst += 2;
  }
  return;
 case 135:
  for (i = 0; i < 2; i++) {
   *(*dst)++ = *r++;
   *(*dst)++ = *g++;
   *(*dst)++ = *b++;
  }
  return;
 case 136:
  for (i = 0; i < 2; i++) {
   *(*dst)++ = *b++;
   *(*dst)++ = *g++;
   *(*dst)++ = *r++;
  }
  return;
 case 128:
 default:
 {
  u8 y, y1, u, v;

  y = ((8453 * (*r) + 16594 * (*g) + 3223 * (*b)
       + 524288) >> 15);
  u = ((-4878 * (*r) - 9578 * (*g) + 14456 * (*b)
       + 4210688) >> 15);
  v = ((14456 * (*r++) - 12105 * (*g++) - 2351 * (*b++)
       + 4210688) >> 15);
  y1 = ((8453 * (*r) + 16594 * (*g) + 3223 * (*b)
       + 524288) >> 15);

  *(*dst)++ = y;
  *(*dst)++ = u;

  *(*dst)++ = y1;
  *(*dst)++ = v;
  return;
 }
 case 132:
  if (!(ypos & 1)) {
   *(*dst)++ = *b;
   *(*dst)++ = *++g;
  } else {
   *(*dst)++ = *g;
   *(*dst)++ = *++r;
  }
  return;
 case 131:
  if (!(ypos & 1)) {
   *(*dst)++ = *g;
   *(*dst)++ = *++b;
  } else {
   *(*dst)++ = *r;
   *(*dst)++ = *++g;
  }
  return;
 case 130:
  if (!(ypos & 1)) {
   *(*dst)++ = *g;
   *(*dst)++ = *++r;
  } else {
   *(*dst)++ = *b;
   *(*dst)++ = *++g;
  }
  return;
 case 129:
  if (!(ypos & 1)) {
   *(*dst)++ = *r;
   *(*dst)++ = *++g;
  } else {
   *(*dst)++ = *g;
   *(*dst)++ = *++b;
  }
  return;
 }
}
