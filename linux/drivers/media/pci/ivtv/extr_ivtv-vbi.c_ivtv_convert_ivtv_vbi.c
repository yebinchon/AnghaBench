
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct TYPE_4__ {TYPE_1__* sliced_dec_data; } ;
struct ivtv {TYPE_2__ vbi; } ;
struct TYPE_3__ {int line; int field; int id; int* data; } ;






 int V4L2_SLICED_CAPTION_525 ;
 int V4L2_SLICED_TELETEXT_B ;
 int V4L2_SLICED_VPS ;
 int V4L2_SLICED_WSS_625 ;
 int memcmp (int*,char*,int) ;
 int memcpy (int*,int*,int) ;
 int odd_parity (int) ;

__attribute__((used)) static int ivtv_convert_ivtv_vbi(struct ivtv *itv, u8 *p)
{
 u32 linemask[2];
 int i, l, id2;
 int line = 0;

 if (!memcmp(p, "itv0", 4)) {
  memcpy(linemask, p + 4, 8);
  p += 12;
 } else if (!memcmp(p, "ITV0", 4)) {
  linemask[0] = 0xffffffff;
  linemask[1] = 0xf;
  p += 4;
 } else {

  linemask[0] = linemask[1] = 0;
 }
 for (i = 0; i < 36; i++) {
  int err = 0;

  if (i < 32 && !(linemask[0] & (1 << i)))
   continue;
  if (i >= 32 && !(linemask[1] & (1 << (i - 32))))
   continue;
  id2 = *p & 0xf;
  switch (id2) {
  case 130:
   id2 = V4L2_SLICED_TELETEXT_B;
   break;
  case 131:
   id2 = V4L2_SLICED_CAPTION_525;
   err = !odd_parity(p[1]) || !odd_parity(p[2]);
   break;
  case 129:
   id2 = V4L2_SLICED_VPS;
   break;
  case 128:
   id2 = V4L2_SLICED_WSS_625;
   break;
  default:
   id2 = 0;
   break;
  }
  if (err == 0) {
   l = (i < 18) ? i + 6 : i - 18 + 6;
   itv->vbi.sliced_dec_data[line].line = l;
   itv->vbi.sliced_dec_data[line].field = i >= 18;
   itv->vbi.sliced_dec_data[line].id = id2;
   memcpy(itv->vbi.sliced_dec_data[line].data, p + 1, 42);
   line++;
  }
  p += 43;
 }
 while (line < 36) {
  itv->vbi.sliced_dec_data[line].id = 0;
  itv->vbi.sliced_dec_data[line].line = 0;
  itv->vbi.sliced_dec_data[line].field = 0;
  line++;
 }
 return line * sizeof(itv->vbi.sliced_dec_data[0]);
}
