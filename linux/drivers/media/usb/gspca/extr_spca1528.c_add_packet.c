
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct gspca_dev {int dummy; } ;


 int INTER_PACKET ;
 int gspca_frame_add (struct gspca_dev*,int ,int*,int) ;

__attribute__((used)) static void add_packet(struct gspca_dev *gspca_dev,
   u8 *data,
   int len)
{
 int i;

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
 } while (++i < len);
 gspca_frame_add(gspca_dev, INTER_PACKET, data, len);
}
