
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lbs_private {int scan_work; } ;


 int cancel_delayed_work_sync (int *) ;

void lbs_scan_deinit(struct lbs_private *priv)
{
 cancel_delayed_work_sync(&priv->scan_work);
}
