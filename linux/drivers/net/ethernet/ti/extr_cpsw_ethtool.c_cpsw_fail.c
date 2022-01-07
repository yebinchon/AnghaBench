
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct TYPE_3__ {int slaves; } ;
struct cpsw_common {TYPE_2__* slaves; TYPE_1__ data; } ;
struct TYPE_4__ {struct net_device* ndev; } ;


 int dev_close (struct net_device*) ;

__attribute__((used)) static void cpsw_fail(struct cpsw_common *cpsw)
{
 struct net_device *ndev;
 int i;

 for (i = 0; i < cpsw->data.slaves; i++) {
  ndev = cpsw->slaves[i].ndev;
  if (ndev)
   dev_close(ndev);
 }
}
