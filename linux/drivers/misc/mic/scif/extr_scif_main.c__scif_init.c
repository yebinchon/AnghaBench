
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int p2p_enable; int conn_work; int mmu_notif_work; int misc_work; scalar_t__ en_msg_log; int rma_tc_limit; int exitwq; int nb_connect_list; int fence; int mmu_notif_cleanup; int rma_tc; int rma; int disconnected; int connected; int zombie; int listen; int uaccept; int fencelock; int connlock; int conflock; int port_lock; int nb_connect_lock; int rmalock; int eplock; } ;


 int ENOMEM ;
 int INIT_LIST_HEAD (int *) ;
 int INIT_WORK (int *,int ) ;
 int SCIF_KMEM_UNALIGNED_BUF_SIZE ;
 int SCIF_RMA_TEMP_CACHE_LIMIT ;
 int SLAB_HWCACHE_ALIGN ;
 int idr_init (int *) ;
 int init_waitqueue_head (int *) ;
 int kmem_cache_create (char*,int ,int ,int ,int *) ;
 int mutex_init (int *) ;
 int scif_conn_handler ;
 int scif_destroy_scifdev () ;
 TYPE_1__ scif_info ;
 int scif_misc_handler ;
 int scif_mmu_notif_handler ;
 int scif_ports ;
 int scif_setup_scifdev () ;
 int spin_lock_init (int *) ;
 int unaligned_cache ;

__attribute__((used)) static int _scif_init(void)
{
 int rc;

 mutex_init(&scif_info.eplock);
 spin_lock_init(&scif_info.rmalock);
 spin_lock_init(&scif_info.nb_connect_lock);
 spin_lock_init(&scif_info.port_lock);
 mutex_init(&scif_info.conflock);
 mutex_init(&scif_info.connlock);
 mutex_init(&scif_info.fencelock);
 INIT_LIST_HEAD(&scif_info.uaccept);
 INIT_LIST_HEAD(&scif_info.listen);
 INIT_LIST_HEAD(&scif_info.zombie);
 INIT_LIST_HEAD(&scif_info.connected);
 INIT_LIST_HEAD(&scif_info.disconnected);
 INIT_LIST_HEAD(&scif_info.rma);
 INIT_LIST_HEAD(&scif_info.rma_tc);
 INIT_LIST_HEAD(&scif_info.mmu_notif_cleanup);
 INIT_LIST_HEAD(&scif_info.fence);
 INIT_LIST_HEAD(&scif_info.nb_connect_list);
 init_waitqueue_head(&scif_info.exitwq);
 scif_info.rma_tc_limit = SCIF_RMA_TEMP_CACHE_LIMIT;
 scif_info.en_msg_log = 0;
 scif_info.p2p_enable = 1;
 rc = scif_setup_scifdev();
 if (rc)
  goto error;
 unaligned_cache = kmem_cache_create("Unaligned_DMA",
         SCIF_KMEM_UNALIGNED_BUF_SIZE,
         0, SLAB_HWCACHE_ALIGN, ((void*)0));
 if (!unaligned_cache) {
  rc = -ENOMEM;
  goto free_sdev;
 }
 INIT_WORK(&scif_info.misc_work, scif_misc_handler);
 INIT_WORK(&scif_info.mmu_notif_work, scif_mmu_notif_handler);
 INIT_WORK(&scif_info.conn_work, scif_conn_handler);
 idr_init(&scif_ports);
 return 0;
free_sdev:
 scif_destroy_scifdev();
error:
 return rc;
}
