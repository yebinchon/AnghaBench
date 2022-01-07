
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int release; int * parent; } ;
struct cxl_afu {int slice; struct cxl* adapter; int irqs_max; int prefault_mode; int configured_state; int afu_cntl_lock; int contexts_lock; int contexts_idr; TYPE_1__ dev; } ;
struct cxl {int user_irqs; int dev; } ;
struct TYPE_4__ {int release_afu; } ;


 int CXL_PREFAULT_NONE ;
 int GFP_KERNEL ;
 int atomic_set (int *,int) ;
 TYPE_2__* cxl_ops ;
 int idr_init (int *) ;
 struct cxl_afu* kzalloc (int,int ) ;
 int mutex_init (int *) ;
 int spin_lock_init (int *) ;

struct cxl_afu *cxl_alloc_afu(struct cxl *adapter, int slice)
{
 struct cxl_afu *afu;

 if (!(afu = kzalloc(sizeof(struct cxl_afu), GFP_KERNEL)))
  return ((void*)0);

 afu->adapter = adapter;
 afu->dev.parent = &adapter->dev;
 afu->dev.release = cxl_ops->release_afu;
 afu->slice = slice;
 idr_init(&afu->contexts_idr);
 mutex_init(&afu->contexts_lock);
 spin_lock_init(&afu->afu_cntl_lock);
 atomic_set(&afu->configured_state, -1);
 afu->prefault_mode = CXL_PREFAULT_NONE;
 afu->irqs_max = afu->adapter->user_irqs;

 return afu;
}
