
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtk_vcodec_pm {int dev; } ;


 int mtk_v4l2_err (char*,int) ;
 int pm_runtime_put_sync (int ) ;

void mtk_vcodec_dec_pw_off(struct mtk_vcodec_pm *pm)
{
 int ret;

 ret = pm_runtime_put_sync(pm->dev);
 if (ret)
  mtk_v4l2_err("pm_runtime_put_sync fail %d", ret);
}
