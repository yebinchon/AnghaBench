
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sfp {int timeout; int poll; int st_mutex; int sm_mutex; struct device* dev; } ;
struct device {int dummy; } ;


 int ENOMEM ;
 struct sfp* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 int INIT_DELAYED_WORK (int *,int ) ;
 struct sfp* kzalloc (int,int ) ;
 int mutex_init (int *) ;
 int sfp_poll ;
 int sfp_timeout ;

__attribute__((used)) static struct sfp *sfp_alloc(struct device *dev)
{
 struct sfp *sfp;

 sfp = kzalloc(sizeof(*sfp), GFP_KERNEL);
 if (!sfp)
  return ERR_PTR(-ENOMEM);

 sfp->dev = dev;

 mutex_init(&sfp->sm_mutex);
 mutex_init(&sfp->st_mutex);
 INIT_DELAYED_WORK(&sfp->poll, sfp_poll);
 INIT_DELAYED_WORK(&sfp->timeout, sfp_timeout);

 return sfp;
}
