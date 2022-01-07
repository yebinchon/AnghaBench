
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sd {int bridge; } ;
struct gspca_dev {int dummy; } ;
 int ov511_pkt_scan (struct gspca_dev*,int *,int) ;
 int ov518_pkt_scan (struct gspca_dev*,int *,int) ;
 int ov519_pkt_scan (struct gspca_dev*,int *,int) ;
 int ovfx2_pkt_scan (struct gspca_dev*,int *,int) ;
 int w9968cf_pkt_scan (struct gspca_dev*,int *,int) ;

__attribute__((used)) static void sd_pkt_scan(struct gspca_dev *gspca_dev,
   u8 *data,
   int len)
{
 struct sd *sd = (struct sd *) gspca_dev;

 switch (sd->bridge) {
 case 134:
 case 133:
  ov511_pkt_scan(gspca_dev, data, len);
  break;
 case 132:
 case 131:
  ov518_pkt_scan(gspca_dev, data, len);
  break;
 case 130:
  ov519_pkt_scan(gspca_dev, data, len);
  break;
 case 129:
  ovfx2_pkt_scan(gspca_dev, data, len);
  break;
 case 128:
  w9968cf_pkt_scan(gspca_dev, data, len);
  break;
 }
}
