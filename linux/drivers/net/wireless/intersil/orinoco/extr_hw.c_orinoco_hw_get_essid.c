
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct hermes {TYPE_1__* ops; } ;
struct orinoco_private {int port_type; int desired_essid; struct hermes hw; } ;
struct hermes_idstring {int len; int val; } ;
typedef int essidbuf ;
struct TYPE_2__ {int (* read_ltv ) (struct hermes*,int ,int ,int,int *,struct hermes_idstring*) ;} ;


 int BUG_ON (int) ;
 int EBUSY ;
 int HERMES_RID_CNFDESIREDSSID ;
 int HERMES_RID_CNFOWNSSID ;
 int HERMES_RID_CURRENTSSID ;
 int IW_ESSID_MAX_SIZE ;
 int USER_BAP ;
 int le16_to_cpu (int ) ;
 int memcpy (char*,char*,int) ;
 int memset (char*,int ,int) ;
 scalar_t__ orinoco_lock (struct orinoco_private*,unsigned long*) ;
 int orinoco_unlock (struct orinoco_private*,unsigned long*) ;
 scalar_t__ strlen (int ) ;
 int stub1 (struct hermes*,int ,int ,int,int *,struct hermes_idstring*) ;
 int stub2 (struct hermes*,int ,int ,int,int *,struct hermes_idstring*) ;

int orinoco_hw_get_essid(struct orinoco_private *priv, int *active,
    char buf[IW_ESSID_MAX_SIZE + 1])
{
 struct hermes *hw = &priv->hw;
 int err = 0;
 struct hermes_idstring essidbuf;
 char *p = (char *)(&essidbuf.val);
 int len;
 unsigned long flags;

 if (orinoco_lock(priv, &flags) != 0)
  return -EBUSY;

 if (strlen(priv->desired_essid) > 0) {







  u16 rid;

  *active = 1;

  rid = (priv->port_type == 3) ? HERMES_RID_CNFOWNSSID :
   HERMES_RID_CNFDESIREDSSID;

  err = hw->ops->read_ltv(hw, USER_BAP, rid, sizeof(essidbuf),
     ((void*)0), &essidbuf);
  if (err)
   goto fail_unlock;
 } else {
  *active = 0;

  err = hw->ops->read_ltv(hw, USER_BAP, HERMES_RID_CURRENTSSID,
     sizeof(essidbuf), ((void*)0), &essidbuf);
  if (err)
   goto fail_unlock;
 }

 len = le16_to_cpu(essidbuf.len);
 BUG_ON(len > IW_ESSID_MAX_SIZE);

 memset(buf, 0, IW_ESSID_MAX_SIZE);
 memcpy(buf, p, len);
 err = len;

 fail_unlock:
 orinoco_unlock(priv, &flags);

 return err;
}
