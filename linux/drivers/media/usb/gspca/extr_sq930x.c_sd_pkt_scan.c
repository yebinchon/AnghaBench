
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct sd {scalar_t__ do_ctrl; } ;
struct TYPE_2__ {scalar_t__ bulk_nurbs; } ;
struct gspca_dev {TYPE_1__ cam; } ;


 int FIRST_PACKET ;
 int INTER_PACKET ;
 int LAST_PACKET ;
 int gspca_frame_add (struct gspca_dev*,int ,int *,int) ;

__attribute__((used)) static void sd_pkt_scan(struct gspca_dev *gspca_dev,
   u8 *data,
   int len)
{
 struct sd *sd = (struct sd *) gspca_dev;

 if (sd->do_ctrl)
  gspca_dev->cam.bulk_nurbs = 0;
 gspca_frame_add(gspca_dev, FIRST_PACKET, ((void*)0), 0);
 gspca_frame_add(gspca_dev, INTER_PACKET, data, len - 8);
 gspca_frame_add(gspca_dev, LAST_PACKET, ((void*)0), 0);
}
