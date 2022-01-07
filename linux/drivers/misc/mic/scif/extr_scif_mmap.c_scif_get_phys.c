
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct scif_hw_dev {TYPE_1__* aper; scalar_t__ card_rel_da; } ;
struct scif_endpt {scalar_t__ remote_dev; } ;
struct scif_dev {struct scif_hw_dev* sdev; } ;
typedef scalar_t__ phys_addr_t ;
struct TYPE_2__ {scalar_t__ pa; } ;


 int scifdev_self (struct scif_dev*) ;

__attribute__((used)) static phys_addr_t scif_get_phys(phys_addr_t phys, struct scif_endpt *ep)
{
 struct scif_dev *scifdev = (struct scif_dev *)ep->remote_dev;
 struct scif_hw_dev *sdev = scifdev->sdev;
 phys_addr_t out_phys, apt_base = 0;





 if (!scifdev_self(scifdev) && sdev->aper && sdev->card_rel_da)
  apt_base = sdev->aper->pa;
 out_phys = apt_base + phys;
 return out_phys;
}
