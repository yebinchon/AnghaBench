
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_12__ {int FreeQlock; int mfcnt; int FreeQ; } ;
struct TYPE_10__ {int arg1; int list; } ;
struct TYPE_8__ {TYPE_3__ linkage; } ;
struct TYPE_9__ {TYPE_1__ frame; } ;
struct TYPE_11__ {TYPE_2__ u; } ;
typedef TYPE_4__ MPT_FRAME_HDR ;
typedef TYPE_5__ MPT_ADAPTER ;


 int cpu_to_le32 (int) ;
 int list_add (int *,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void
mpt_free_msg_frame(MPT_ADAPTER *ioc, MPT_FRAME_HDR *mf)
{
 unsigned long flags;


 spin_lock_irqsave(&ioc->FreeQlock, flags);
 if (cpu_to_le32(mf->u.frame.linkage.arg1) == 0xdeadbeaf)
  goto out;

 mf->u.frame.linkage.arg1 = cpu_to_le32(0xdeadbeaf);
 list_add(&mf->u.frame.linkage.list, &ioc->FreeQ);



 out:
 spin_unlock_irqrestore(&ioc->FreeQlock, flags);
}
