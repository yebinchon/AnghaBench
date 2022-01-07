
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct softing {TYPE_1__* pdev; } ;
typedef int int16_t ;
struct TYPE_2__ {int dev; } ;


 int EIO ;
 int _softing_fct_cmd (struct softing*,int ,int ,char const*) ;
 int dev_alert (int *,char*,char const*,int) ;

__attribute__((used)) static int softing_fct_cmd(struct softing *card, int16_t cmd, const char *msg)
{
 int ret;

 ret = _softing_fct_cmd(card, cmd, 0, msg);
 if (ret > 0) {
  dev_alert(&card->pdev->dev, "%s returned %u\n", msg, ret);
  ret = -EIO;
 }
 return ret;
}
