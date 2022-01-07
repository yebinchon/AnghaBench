
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int sizeimage; } ;
struct sd {TYPE_1__ mode; } ;
struct gspca_dev {int last_packet_type; } ;


 int DISCARD_PACKET ;
 int FIRST_PACKET ;
 int LAST_PACKET ;
 int gspca_frame_add (struct gspca_dev*,int ,int *,int) ;

__attribute__((used)) static void sd_pkt_scan(struct gspca_dev *gspca_dev,
   u8 *data,
   int len)
{
 struct sd *sd = (struct sd *) gspca_dev;





 if (len != sd->mode.sizeimage) {
  gspca_dev->last_packet_type = DISCARD_PACKET;
  return;
 }




 gspca_frame_add(gspca_dev, LAST_PACKET, ((void*)0), 0);


 gspca_frame_add(gspca_dev, FIRST_PACKET, data, len);
}
