
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_4__ {TYPE_1__* cam_mode; } ;
struct gspca_dev {size_t curr_mode; TYPE_2__ cam; } ;
struct TYPE_3__ {int priv; } ;


 int sd_pkt_scan_bayer (struct gspca_dev*,int *,int) ;
 int sd_pkt_scan_janggu (struct gspca_dev*,int *,int) ;

__attribute__((used)) static void sd_pkt_scan(struct gspca_dev *gspca_dev, u8 *data, int len)
{
 int mult = gspca_dev->cam.cam_mode[gspca_dev->curr_mode].priv;

 if (len == 0)
  return;

 if (mult == 1)
  sd_pkt_scan_bayer(gspca_dev, data, len);
 else
  sd_pkt_scan_janggu(gspca_dev, data, len);
}
