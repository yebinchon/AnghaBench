
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u32 ;
struct sd {int blocks_left; int* jpeg_hdr; } ;
struct gspca_dev {int last_packet_type; } ;


 int DISCARD_PACKET ;
 int D_PACK ;
 int D_STREAM ;
 int FIRST_PACKET ;
 int FRAME_HEADER_LEN ;
 scalar_t__ FRAME_START ;
 int INTER_PACKET ;
 int JEILINJ_MAX_TRANSFER ;
 int JPEG_HDR_SZ ;
 int LAST_PACKET ;
 int gspca_dbg (struct gspca_dev*,int ,char*,...) ;
 int gspca_frame_add (struct gspca_dev*,int,int*,int) ;

__attribute__((used)) static void sd_pkt_scan(struct gspca_dev *gspca_dev,
   u8 *data, int len)
{
 struct sd *sd = (struct sd *) gspca_dev;
 int packet_type;
 u32 header_marker;

 gspca_dbg(gspca_dev, D_STREAM, "Got %d bytes out of %d for Block 0\n",
    len, JEILINJ_MAX_TRANSFER);
 if (len != JEILINJ_MAX_TRANSFER) {
  gspca_dbg(gspca_dev, D_PACK, "bad length\n");
  goto discard;
 }

 header_marker = ((u32 *)data)[0];
 if (header_marker == FRAME_START) {
  sd->blocks_left = data[0x0a] - 1;
  gspca_dbg(gspca_dev, D_STREAM, "blocks_left = 0x%x\n",
     sd->blocks_left);

  gspca_frame_add(gspca_dev, FIRST_PACKET,
    sd->jpeg_hdr, JPEG_HDR_SZ);

  gspca_frame_add(gspca_dev, INTER_PACKET,
    data + FRAME_HEADER_LEN,
    JEILINJ_MAX_TRANSFER - FRAME_HEADER_LEN);
 } else if (sd->blocks_left > 0) {
  gspca_dbg(gspca_dev, D_STREAM, "%d blocks remaining for frame\n",
     sd->blocks_left);
  sd->blocks_left -= 1;
  if (sd->blocks_left == 0)
   packet_type = LAST_PACKET;
  else
   packet_type = INTER_PACKET;
  gspca_frame_add(gspca_dev, packet_type,
    data, JEILINJ_MAX_TRANSFER);
 } else
  goto discard;
 return;
discard:

 gspca_dev->last_packet_type = DISCARD_PACKET;
}
