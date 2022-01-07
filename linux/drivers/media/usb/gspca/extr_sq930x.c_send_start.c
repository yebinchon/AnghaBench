
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sd {size_t sensor; } ;
struct TYPE_4__ {TYPE_1__* cam_mode; } ;
struct gspca_dev {size_t curr_mode; TYPE_2__ cam; } ;
struct cap_s {int cc_sizeid; int cc_bytes; } ;
struct TYPE_3__ {int priv; } ;


 int SQ930_CTRL_CAP_START ;
 struct cap_s** capconfig ;
 int reg_wb (struct gspca_dev*,int,int,int ,int) ;

__attribute__((used)) static void send_start(struct gspca_dev *gspca_dev)
{
 struct sd *sd = (struct sd *) gspca_dev;
 const struct cap_s *cap;
 int mode;

 mode = gspca_dev->cam.cam_mode[gspca_dev->curr_mode].priv;
 cap = &capconfig[sd->sensor][mode];
 reg_wb(gspca_dev, 0x0900 | SQ930_CTRL_CAP_START,
   0x0a00 | cap->cc_sizeid,
   cap->cc_bytes, 32);
}
