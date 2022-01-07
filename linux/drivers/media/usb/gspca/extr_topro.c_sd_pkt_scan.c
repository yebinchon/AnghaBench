
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sd {scalar_t__ bridge; int quality; int* jpeg_hdr; } ;
struct gspca_dev {void* last_packet_type; } ;


 scalar_t__ BRIDGE_TP6810 ;
 void* DISCARD_PACKET ;
 int D_FRAM ;
 int FIRST_PACKET ;
 int INTER_PACKET ;
 int JPEG_HDR_SZ ;
 int LAST_PACKET ;
 int gspca_dbg (struct gspca_dev*,int ,char*) ;
 int gspca_frame_add (struct gspca_dev*,int ,int*,int) ;
 int set_dqt (struct gspca_dev*,int) ;

__attribute__((used)) static void sd_pkt_scan(struct gspca_dev *gspca_dev,
   u8 *data,
   int len)
{
 struct sd *sd = (struct sd *) gspca_dev;
 if (sd->bridge == BRIDGE_TP6810) {
  if (*data != 0x5a) {

   if (*data == 0xaa || *data == 0x00)
    return;
   if (*data > 0xc0) {
    gspca_dbg(gspca_dev, D_FRAM, "bad frame\n");
    gspca_dev->last_packet_type = DISCARD_PACKET;
    return;
   }
  }
  data++;
  len--;
  if (len < 2) {
   gspca_dev->last_packet_type = DISCARD_PACKET;
   return;
  }
  if (*data == 0xff && data[1] == 0xd8) {

   if (len < 7) {
    gspca_dev->last_packet_type = DISCARD_PACKET;
    return;
   }
   if ((data[6] & 0x0f) != sd->quality)
    set_dqt(gspca_dev, data[6] & 0x0f);
   gspca_frame_add(gspca_dev, FIRST_PACKET,
     sd->jpeg_hdr, JPEG_HDR_SZ);
   gspca_frame_add(gspca_dev, INTER_PACKET,
     data + 7, len - 7);
  } else if (data[len - 2] == 0xff && data[len - 1] == 0xd9) {
   gspca_frame_add(gspca_dev, LAST_PACKET,
     data, len);
  } else {
   gspca_frame_add(gspca_dev, INTER_PACKET,
     data, len);
  }
  return;
 }

 switch (*data) {
 case 0x55:
  gspca_frame_add(gspca_dev, LAST_PACKET, data, 0);

  if (len < 8
   || data[1] != 0xff || data[2] != 0xd8
   || data[3] != 0xff || data[4] != 0xfe) {


   gspca_dev->last_packet_type = DISCARD_PACKET;
   return;
  }
  if (data[7] != sd->quality)
   set_dqt(gspca_dev, data[7]);
  gspca_frame_add(gspca_dev, FIRST_PACKET,
    sd->jpeg_hdr, JPEG_HDR_SZ);
  gspca_frame_add(gspca_dev, INTER_PACKET,
    data + 8, len - 8);
  break;
 case 0xaa:
  gspca_dev->last_packet_type = DISCARD_PACKET;
  break;
 case 0xcc:
  if (len >= 3 && (data[1] != 0xff || data[2] != 0xd8))
   gspca_frame_add(gspca_dev, INTER_PACKET,
     data + 1, len - 1);
  else
   gspca_dev->last_packet_type = DISCARD_PACKET;
  break;
 }
}
