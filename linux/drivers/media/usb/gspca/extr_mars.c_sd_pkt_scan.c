
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sd {int* jpeg_hdr; } ;
struct gspca_dev {int dummy; } ;


 int D_PACK ;
 int FIRST_PACKET ;
 int INTER_PACKET ;
 int JPEG_HDR_SZ ;
 int LAST_PACKET ;
 int gspca_dbg (struct gspca_dev*,int ,char*,int,int) ;
 int gspca_frame_add (struct gspca_dev*,int ,int*,int) ;

__attribute__((used)) static void sd_pkt_scan(struct gspca_dev *gspca_dev,
   u8 *data,
   int len)
{
 struct sd *sd = (struct sd *) gspca_dev;
 int p;

 if (len < 6) {

  return;
 }
 for (p = 0; p < len - 6; p++) {
  if (data[0 + p] == 0xff
      && data[1 + p] == 0xff
      && data[2 + p] == 0x00
      && data[3 + p] == 0xff
      && data[4 + p] == 0x96) {
   if (data[5 + p] == 0x64
       || data[5 + p] == 0x65
       || data[5 + p] == 0x66
       || data[5 + p] == 0x67) {
    gspca_dbg(gspca_dev, D_PACK, "sof offset: %d len: %d\n",
       p, len);
    gspca_frame_add(gspca_dev, LAST_PACKET,
      data, p);


    gspca_frame_add(gspca_dev, FIRST_PACKET,
     sd->jpeg_hdr, JPEG_HDR_SZ);
    data += p + 16;
    len -= p + 16;
    break;
   }
  }
 }
 gspca_frame_add(gspca_dev, INTER_PACKET, data, len);
}
