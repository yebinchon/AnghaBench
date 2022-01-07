
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct gspca_dev {int dummy; } ;


 int FIRST_PACKET ;
 int INTER_PACKET ;
 int LAST_PACKET ;
 int gspca_frame_add (struct gspca_dev*,int ,int*,int) ;

__attribute__((used)) static void sd_pkt_scan(struct gspca_dev *gspca_dev,
   u8 *data,
   int len)
{







 if (data[0] == 0x00 && data[1] == 0x00
  && data[6] == 0xff && data[7] == 0xff) {
  gspca_frame_add(gspca_dev, LAST_PACKET, ((void*)0), 0);
  gspca_frame_add(gspca_dev, FIRST_PACKET, data + 8, len - 8);
 } else {
  gspca_frame_add(gspca_dev, INTER_PACKET, data, len);
 }
}
