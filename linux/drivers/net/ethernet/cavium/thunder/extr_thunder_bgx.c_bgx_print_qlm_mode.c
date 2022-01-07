
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u8 ;
struct lmac {int lmac_type; int use_training; } ;
struct device {int dummy; } ;
struct bgx {int bgx_id; int is_dlm; struct lmac* lmac; TYPE_1__* pdev; } ;
struct TYPE_2__ {struct device dev; } ;
 int dev_info (struct device*,char*,char*) ;
 int sprintf (char*,char*,int,...) ;

__attribute__((used)) static void bgx_print_qlm_mode(struct bgx *bgx, u8 lmacid)
{
 struct device *dev = &bgx->pdev->dev;
 struct lmac *lmac;
 char str[27];

 if (!bgx->is_dlm && lmacid)
  return;

 lmac = &bgx->lmac[lmacid];
 if (!bgx->is_dlm)
  sprintf(str, "BGX%d QLM mode", bgx->bgx_id);
 else
  sprintf(str, "BGX%d LMAC%d mode", bgx->bgx_id, lmacid);

 switch (lmac->lmac_type) {
 case 131:
  dev_info(dev, "%s: SGMII\n", (char *)str);
  break;
 case 130:
  dev_info(dev, "%s: XAUI\n", (char *)str);
  break;
 case 132:
  dev_info(dev, "%s: RXAUI\n", (char *)str);
  break;
 case 129:
  if (!lmac->use_training)
   dev_info(dev, "%s: XFI\n", (char *)str);
  else
   dev_info(dev, "%s: 10G_KR\n", (char *)str);
  break;
 case 128:
  if (!lmac->use_training)
   dev_info(dev, "%s: XLAUI\n", (char *)str);
  else
   dev_info(dev, "%s: 40G_KR4\n", (char *)str);
  break;
 case 134:
  dev_info(dev, "%s: QSGMII\n", (char *)str);
  break;
 case 133:
  dev_info(dev, "%s: RGMII\n", (char *)str);
  break;
 case 135:

  break;
 }
}
