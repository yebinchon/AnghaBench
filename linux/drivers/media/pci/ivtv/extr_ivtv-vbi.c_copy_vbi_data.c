
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct TYPE_4__ {int frame; int** sliced_mpeg_data; int* sliced_mpeg_size; TYPE_1__* sliced_data; } ;
struct ivtv {TYPE_2__ vbi; } ;
typedef int mpeg_hdr_data ;
struct TYPE_3__ {scalar_t__ id; int line; int field; int* data; } ;


 int IVTV_VBI_FRAMES ;
 int cpu_to_le32s (int*) ;
 int ivtv_service2vbi (scalar_t__) ;
 int memcpy (int*,...) ;
 int memmove (int*,int*,int) ;

__attribute__((used)) static void copy_vbi_data(struct ivtv *itv, int lines, u32 pts_stamp)
{
 int line = 0;
 int i;
 u32 linemask[2] = { 0, 0 };
 unsigned short size;
 static const u8 mpeg_hdr_data[] = {
  0x00, 0x00, 0x01, 0xba, 0x44, 0x00, 0x0c, 0x66,
  0x24, 0x01, 0x01, 0xd1, 0xd3, 0xfa, 0xff, 0xff,
  0x00, 0x00, 0x01, 0xbd, 0x00, 0x1a, 0x84, 0x80,
  0x07, 0x21, 0x00, 0x5d, 0x63, 0xa7, 0xff, 0xff
 };
 const int sd = sizeof(mpeg_hdr_data);
 int idx = itv->vbi.frame % IVTV_VBI_FRAMES;
 u8 *dst = &itv->vbi.sliced_mpeg_data[idx][0];

 for (i = 0; i < lines; i++) {
  int f, l;

  if (itv->vbi.sliced_data[i].id == 0)
   continue;

  l = itv->vbi.sliced_data[i].line - 6;
  f = itv->vbi.sliced_data[i].field;
  if (f)
   l += 18;
  if (l < 32)
   linemask[0] |= (1 << l);
  else
   linemask[1] |= (1 << (l - 32));
  dst[sd + 12 + line * 43] =
   ivtv_service2vbi(itv->vbi.sliced_data[i].id);
  memcpy(dst + sd + 12 + line * 43 + 1, itv->vbi.sliced_data[i].data, 42);
  line++;
 }
 memcpy(dst, mpeg_hdr_data, sizeof(mpeg_hdr_data));
 if (line == 36) {



  memcpy(dst + sd, "ITV0", 4);
  memmove(dst + sd + 4, dst + sd + 12, line * 43);
  size = 4 + ((43 * line + 3) & ~3);
 } else {
  memcpy(dst + sd, "itv0", 4);
  cpu_to_le32s(&linemask[0]);
  cpu_to_le32s(&linemask[1]);
  memcpy(dst + sd + 4, &linemask[0], 8);
  size = 12 + ((43 * line + 3) & ~3);
 }
 dst[4+16] = (size + 10) >> 8;
 dst[5+16] = (size + 10) & 0xff;
 dst[9+16] = 0x21 | ((pts_stamp >> 29) & 0x6);
 dst[10+16] = (pts_stamp >> 22) & 0xff;
 dst[11+16] = 1 | ((pts_stamp >> 14) & 0xff);
 dst[12+16] = (pts_stamp >> 7) & 0xff;
 dst[13+16] = 1 | ((pts_stamp & 0x7f) << 1);
 itv->vbi.sliced_mpeg_size[idx] = sd + size;
}
