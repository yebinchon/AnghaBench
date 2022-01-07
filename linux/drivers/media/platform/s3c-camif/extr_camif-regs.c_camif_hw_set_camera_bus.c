
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_5__ {unsigned int flags; } ;
struct TYPE_6__ {TYPE_2__ sensor; } ;
struct camif_dev {TYPE_1__* variant; TYPE_3__ pdata; } ;
struct TYPE_4__ {scalar_t__ ip_revision; } ;


 int CIGCTRL_FIELDMODE ;
 int CIGCTRL_INVPOLFIELD ;
 int CIGCTRL_INVPOLHREF ;
 int CIGCTRL_INVPOLPCLK ;
 int CIGCTRL_INVPOLVSYNC ;
 scalar_t__ S3C6410_CAMIF_IP_REV ;
 int S3C_CAMIF_REG_CIGCTRL ;
 unsigned int V4L2_MBUS_FIELD_EVEN_LOW ;
 unsigned int V4L2_MBUS_HSYNC_ACTIVE_HIGH ;
 unsigned int V4L2_MBUS_PCLK_SAMPLE_FALLING ;
 unsigned int V4L2_MBUS_VSYNC_ACTIVE_LOW ;
 int camif_read (struct camif_dev*,int ) ;
 int camif_write (struct camif_dev*,int ,int) ;
 int pr_debug (char*,int) ;

void camif_hw_set_camera_bus(struct camif_dev *camif)
{
 unsigned int flags = camif->pdata.sensor.flags;

 u32 cfg = camif_read(camif, S3C_CAMIF_REG_CIGCTRL);

 cfg &= ~(CIGCTRL_INVPOLPCLK | CIGCTRL_INVPOLVSYNC |
   CIGCTRL_INVPOLHREF | CIGCTRL_INVPOLFIELD);

 if (flags & V4L2_MBUS_PCLK_SAMPLE_FALLING)
  cfg |= CIGCTRL_INVPOLPCLK;

 if (flags & V4L2_MBUS_VSYNC_ACTIVE_LOW)
  cfg |= CIGCTRL_INVPOLVSYNC;





 if (flags & V4L2_MBUS_HSYNC_ACTIVE_HIGH)
  cfg |= CIGCTRL_INVPOLHREF;

 if (camif->variant->ip_revision == S3C6410_CAMIF_IP_REV) {
  if (flags & V4L2_MBUS_FIELD_EVEN_LOW)
   cfg |= CIGCTRL_INVPOLFIELD;
  cfg |= CIGCTRL_FIELDMODE;
 }

 pr_debug("Setting CIGCTRL to: %#x\n", cfg);

 camif_write(camif, S3C_CAMIF_REG_CIGCTRL, cfg);
}
