
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sd {int expo_change_state; } ;
struct gspca_dev {int last_packet_type; } ;


 int DISCARD_PACKET ;



 int LAST_PACKET ;
 int gspca_frame_add (struct gspca_dev*,int ,int *,int) ;

__attribute__((used)) static void sd_complete_frame(struct gspca_dev *gspca_dev, u8 *data, int len)
{
 struct sd *sd = (struct sd *)gspca_dev;

 switch (sd->expo_change_state) {
 case 130:


  sd->expo_change_state = 129;
  break;
 case 129:


  gspca_dev->last_packet_type = DISCARD_PACKET;
  sd->expo_change_state = 128;
  break;
 case 128:
  break;
 }
 gspca_frame_add(gspca_dev, LAST_PACKET, data, len);
}
