
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int msix_bmap; } ;
struct adapter {TYPE_1__ msix_bmap_ulds; int msix_info_ulds; scalar_t__ num_ofld_uld; scalar_t__ num_uld; } ;


 int kfree (int ) ;

__attribute__((used)) static void free_msix_info(struct adapter *adap)
{
 if (!(adap->num_uld && adap->num_ofld_uld))
  return;

 kfree(adap->msix_info_ulds);
 kfree(adap->msix_bmap_ulds.msix_bmap);
}
