
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct cfv_info {int allocsz; int tx_hr; int tx_tr; int reserved_size; int watermark_tx; int vq_tx; int reserved_mem; int genpool; TYPE_4__* ndev; scalar_t__ alloc_addr; int alloc_dma; TYPE_3__* vdev; } ;
typedef int phys_addr_t ;
struct TYPE_9__ {int mtu; } ;
struct TYPE_7__ {TYPE_1__* parent; } ;
struct TYPE_8__ {TYPE_2__ dev; } ;
struct TYPE_6__ {int parent; } ;


 int EINVAL ;
 int ENOMEM ;
 int ETH_DATA_LEN ;
 int GFP_ATOMIC ;
 int cfv_destroy_genpool (struct cfv_info*) ;
 scalar_t__ dma_alloc_coherent (int ,int,int *,int ) ;
 int gen_pool_add_virt (int ,unsigned long,int ,int,int) ;
 int gen_pool_alloc (int ,int) ;
 int gen_pool_create (int,int) ;
 int netdev_dbg (TYPE_4__*,char*,int) ;
 int netdev_info (TYPE_4__*,char*) ;
 int num_possible_cpus () ;
 scalar_t__ virt_to_phys (scalar_t__) ;
 int virtqueue_get_vring_size (int ) ;

__attribute__((used)) static int cfv_create_genpool(struct cfv_info *cfv)
{
 int err;






 err = -ENOMEM;
 cfv->allocsz = (virtqueue_get_vring_size(cfv->vq_tx) *
   (ETH_DATA_LEN + cfv->tx_hr + cfv->tx_tr) * 11)/10;
 if (cfv->allocsz <= (num_possible_cpus() + 1) * cfv->ndev->mtu)
  return -EINVAL;

 for (;;) {
  if (cfv->allocsz <= num_possible_cpus() * cfv->ndev->mtu) {
   netdev_info(cfv->ndev, "Not enough device memory\n");
   return -ENOMEM;
  }

  cfv->alloc_addr = dma_alloc_coherent(
      cfv->vdev->dev.parent->parent,
      cfv->allocsz, &cfv->alloc_dma,
      GFP_ATOMIC);
  if (cfv->alloc_addr)
   break;

  cfv->allocsz = (cfv->allocsz * 3) >> 2;
 }

 netdev_dbg(cfv->ndev, "Allocated %zd bytes from dma-memory\n",
     cfv->allocsz);


 cfv->genpool = gen_pool_create(7, -1);
 if (!cfv->genpool)
  goto err;

 err = gen_pool_add_virt(cfv->genpool, (unsigned long)cfv->alloc_addr,
    (phys_addr_t)virt_to_phys(cfv->alloc_addr),
    cfv->allocsz, -1);
 if (err)
  goto err;




 cfv->reserved_size = num_possible_cpus() * cfv->ndev->mtu;
 cfv->reserved_mem = gen_pool_alloc(cfv->genpool,
        cfv->reserved_size);
 if (!cfv->reserved_mem) {
  err = -ENOMEM;
  goto err;
 }

 cfv->watermark_tx = virtqueue_get_vring_size(cfv->vq_tx);
 return 0;
err:
 cfv_destroy_genpool(cfv);
 return err;
}
