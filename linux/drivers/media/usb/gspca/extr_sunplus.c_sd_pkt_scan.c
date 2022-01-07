
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sd {int bridge; int* jpeg_hdr; } ;
struct gspca_dev {int dummy; } ;





 int FIRST_PACKET ;
 int INTER_PACKET ;
 int JPEG_HDR_SZ ;
 int LAST_PACKET ;
 int SPCA504_PCCAM600_OFFSET_DATA ;
 int SPCA50X_OFFSET_DATA ;
 int SPCA533_OFFSET_DATA ;
 int SPCA536_OFFSET_DATA ;
 int gspca_frame_add (struct gspca_dev*,int ,int*,int) ;

__attribute__((used)) static void sd_pkt_scan(struct gspca_dev *gspca_dev,
   u8 *data,
   int len)
{
 struct sd *sd = (struct sd *) gspca_dev;
 int i, sof = 0;
 static u8 ffd9[] = {0xff, 0xd9};


 switch (sd->bridge) {
 case 129:
  if (data[0] == 0xff) {
   if (data[1] != 0x01) {

    return;
   }
   sof = 1;
   data += SPCA533_OFFSET_DATA;
   len -= SPCA533_OFFSET_DATA;
  } else {
   data += 1;
   len -= 1;
  }
  break;
 case 128:
  if (data[0] == 0xff) {
   sof = 1;
   data += SPCA536_OFFSET_DATA;
   len -= SPCA536_OFFSET_DATA;
  } else {
   data += 2;
   len -= 2;
  }
  break;
 default:


  switch (data[0]) {
  case 0xfe:
   sof = 1;
   data += SPCA50X_OFFSET_DATA;
   len -= SPCA50X_OFFSET_DATA;
   break;
  case 0xff:

   return;
  default:
   data += 1;
   len -= 1;
   break;
  }
  break;
 case 130:
  switch (data[0]) {
  case 0xfe:
   sof = 1;
   data += SPCA504_PCCAM600_OFFSET_DATA;
   len -= SPCA504_PCCAM600_OFFSET_DATA;
   break;
  case 0xff:

   return;
  default:
   data += 1;
   len -= 1;
   break;
  }
  break;
 }
 if (sof) {
  gspca_frame_add(gspca_dev, LAST_PACKET,
    ffd9, 2);


  gspca_frame_add(gspca_dev, FIRST_PACKET,
   sd->jpeg_hdr, JPEG_HDR_SZ);
 }


 i = 0;
 do {
  if (data[i] == 0xff) {
   gspca_frame_add(gspca_dev, INTER_PACKET,
     data, i + 1);
   len -= i;
   data += i;
   *data = 0x00;
   i = 0;
  }
  i++;
 } while (i < len);
 gspca_frame_add(gspca_dev, INTER_PACKET, data, len);
}
