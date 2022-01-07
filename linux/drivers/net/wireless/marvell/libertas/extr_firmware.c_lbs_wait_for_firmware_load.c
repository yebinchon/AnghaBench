
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lbs_private {int * fw_callback; int fw_waitq; } ;


 int wait_event (int ,int ) ;

void lbs_wait_for_firmware_load(struct lbs_private *priv)
{
 wait_event(priv->fw_waitq, priv->fw_callback == ((void*)0));
}
