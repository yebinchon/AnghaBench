
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bnx2x {TYPE_1__* vfdb; } ;
struct TYPE_2__ {struct TYPE_2__* vfs; struct TYPE_2__* vfqs; } ;


 int kfree (TYPE_1__*) ;

__attribute__((used)) static void __bnx2x_iov_free_vfdb(struct bnx2x *bp)
{
 if (bp->vfdb) {
  kfree(bp->vfdb->vfqs);
  kfree(bp->vfdb->vfs);
  kfree(bp->vfdb);
 }
 bp->vfdb = ((void*)0);
}
