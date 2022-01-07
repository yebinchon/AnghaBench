
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pvc_device {struct net_device* main; struct net_device* ether; } ;
struct net_device {int dummy; } ;


 int ARPHRD_ETHER ;

__attribute__((used)) static inline struct net_device **get_dev_p(struct pvc_device *pvc,
         int type)
{
 if (type == ARPHRD_ETHER)
  return &pvc->ether;
 else
  return &pvc->main;
}
