
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gfar_private {int errata; TYPE_1__* ofdev; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device dev; } ;


 int GFAR_ERRATA_A002 ;
 int PVR_VER_E500V1 ;
 int PVR_VER_E500V2 ;
 int __gfar_detect_errata_83xx (struct gfar_private*) ;
 int __gfar_detect_errata_85xx (struct gfar_private*) ;
 int dev_info (struct device*,char*,int ) ;
 scalar_t__ pvr_version_is (int ) ;

__attribute__((used)) static void gfar_detect_errata(struct gfar_private *priv)
{
 struct device *dev = &priv->ofdev->dev;


 priv->errata |= GFAR_ERRATA_A002;
 if (priv->errata)
  dev_info(dev, "enabled errata workarounds, flags: 0x%x\n",
    priv->errata);
}
