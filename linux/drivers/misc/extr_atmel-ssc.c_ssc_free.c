
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ssc_device {int clk; TYPE_1__* pdev; scalar_t__ user; } ;
struct TYPE_2__ {int dev; } ;


 int clk_unprepare (int ) ;
 int dev_dbg (int *,char*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int user_lock ;

void ssc_free(struct ssc_device *ssc)
{
 bool disable_clk = 1;

 spin_lock(&user_lock);
 if (ssc->user)
  ssc->user--;
 else {
  disable_clk = 0;
  dev_dbg(&ssc->pdev->dev, "device already free\n");
 }
 spin_unlock(&user_lock);

 if (disable_clk)
  clk_unprepare(ssc->clk);
}
