
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ppp_net {int all_ppp_mutex; int units_idr; } ;
struct TYPE_3__ {int index; } ;
struct ppp {TYPE_1__ file; TYPE_2__* dev; int ppp_net; } ;
struct TYPE_4__ {int name; } ;


 int EEXIST ;
 int IFNAMSIZ ;
 int atomic_inc (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct ppp_net* ppp_pernet (int ) ;
 int ppp_unit_count ;
 int register_netdevice (TYPE_2__*) ;
 int snprintf (int ,int ,char*,int) ;
 scalar_t__ unit_find (int *,int) ;
 int unit_get (int *,struct ppp*) ;
 int unit_put (int *,int) ;
 int unit_set (int *,struct ppp*,int) ;

__attribute__((used)) static int ppp_unit_register(struct ppp *ppp, int unit, bool ifname_is_set)
{
 struct ppp_net *pn = ppp_pernet(ppp->ppp_net);
 int ret;

 mutex_lock(&pn->all_ppp_mutex);

 if (unit < 0) {
  ret = unit_get(&pn->units_idr, ppp);
  if (ret < 0)
   goto err;
 } else {





  if (unit_find(&pn->units_idr, unit)) {
   ret = -EEXIST;
   goto err;
  }
  ret = unit_set(&pn->units_idr, ppp, unit);
  if (ret < 0) {

   ret = -EEXIST;
   goto err;
  }
 }
 ppp->file.index = ret;

 if (!ifname_is_set)
  snprintf(ppp->dev->name, IFNAMSIZ, "ppp%i", ppp->file.index);

 mutex_unlock(&pn->all_ppp_mutex);

 ret = register_netdevice(ppp->dev);
 if (ret < 0)
  goto err_unit;

 atomic_inc(&ppp_unit_count);

 return 0;

err_unit:
 mutex_lock(&pn->all_ppp_mutex);
 unit_put(&pn->units_idr, ppp->file.index);
err:
 mutex_unlock(&pn->all_ppp_mutex);

 return ret;
}
