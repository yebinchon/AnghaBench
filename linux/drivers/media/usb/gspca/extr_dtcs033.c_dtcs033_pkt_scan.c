
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct gspca_dev {int last_packet_type; } ;


 int DISCARD_PACKET ;
 int DT_COLS ;
 int FIRST_PACKET ;
 int INTER_PACKET ;
 int LAST_PACKET ;
 int gspca_frame_add (struct gspca_dev*,int ,int *,int) ;

__attribute__((used)) static void dtcs033_pkt_scan(struct gspca_dev *gspca_dev,
   u8 *data,
   int len)
{

 if (len != DT_COLS*512) {
  gspca_dev->last_packet_type = DISCARD_PACKET;

  return;
 }


 gspca_frame_add(gspca_dev, FIRST_PACKET, ((void*)0), 0);
 gspca_frame_add(gspca_dev, INTER_PACKET,
  data + 16*DT_COLS,
  len - 32*DT_COLS);
 gspca_frame_add(gspca_dev, LAST_PACKET, ((void*)0), 0);

 return;
}
