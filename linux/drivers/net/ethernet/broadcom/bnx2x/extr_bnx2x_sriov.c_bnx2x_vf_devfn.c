
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_dev {int devfn; } ;
struct bnx2x_sriov {int offset; int stride; } ;
struct bnx2x {TYPE_1__* vfdb; struct pci_dev* pdev; } ;
struct TYPE_2__ {struct bnx2x_sriov sriov; } ;



__attribute__((used)) static int bnx2x_vf_devfn(struct bnx2x *bp, int vfid)
{
 struct pci_dev *dev = bp->pdev;
 struct bnx2x_sriov *iov = &bp->vfdb->sriov;

 return (dev->devfn + iov->offset + iov->stride * vfid) & 0xff;
}
