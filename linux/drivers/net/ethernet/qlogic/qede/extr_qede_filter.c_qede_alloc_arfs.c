
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct qede_dev {TYPE_2__* arfs; TYPE_1__* ndev; } ;
struct TYPE_4__ {struct TYPE_4__* arfs_fltr_bmap; int arfs_list_lock; } ;
struct TYPE_3__ {int rx_cpu_rmap; } ;


 int BITS_TO_LONGS (int ) ;
 int ENOMEM ;
 int INIT_HLIST_HEAD (int ) ;
 int QEDE_ARFS_BUCKET_HEAD (struct qede_dev*,int) ;
 int QEDE_RFS_FLW_MASK ;
 int QEDE_RFS_MAX_FLTR ;
 int QEDE_RSS_COUNT (struct qede_dev*) ;
 int alloc_irq_cpu_rmap (int ) ;
 int array_size (int,int ) ;
 int spin_lock_init (int *) ;
 int vfree (TYPE_2__*) ;
 void* vzalloc (int) ;

int qede_alloc_arfs(struct qede_dev *edev)
{
 int i;

 edev->arfs = vzalloc(sizeof(*edev->arfs));
 if (!edev->arfs)
  return -ENOMEM;

 spin_lock_init(&edev->arfs->arfs_list_lock);

 for (i = 0; i <= QEDE_RFS_FLW_MASK; i++)
  INIT_HLIST_HEAD(QEDE_ARFS_BUCKET_HEAD(edev, i));

 edev->arfs->arfs_fltr_bmap =
  vzalloc(array_size(sizeof(long),
       BITS_TO_LONGS(QEDE_RFS_MAX_FLTR)));
 if (!edev->arfs->arfs_fltr_bmap) {
  vfree(edev->arfs);
  edev->arfs = ((void*)0);
  return -ENOMEM;
 }
 return 0;
}
