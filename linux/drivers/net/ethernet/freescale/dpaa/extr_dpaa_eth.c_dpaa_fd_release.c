
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qm_sg_entry {int dummy; } ;
struct qm_fd {int bpid; } ;
struct net_device {int dummy; } ;
struct dpaa_bp {int dev; int size; } ;
struct bm_buffer {scalar_t__ data; } ;
typedef int dma_addr_t ;


 int DMA_FROM_DEVICE ;
 int bm_buffer_set64 (struct bm_buffer*,int ) ;
 int dev_err (int ,char*) ;
 int dma_map_single (int ,void*,int ,int ) ;
 scalar_t__ dma_mapping_error (int ,int ) ;
 int dma_unmap_single (int ,int ,int ,int ) ;
 int dpaa_bman_release (struct dpaa_bp*,struct bm_buffer*,int) ;
 struct dpaa_bp* dpaa_bpid2pool (int ) ;
 int dpaa_release_sgt_members (struct qm_sg_entry*) ;
 void* phys_to_virt (int ) ;
 int qm_fd_addr (struct qm_fd const*) ;
 scalar_t__ qm_fd_get_format (struct qm_fd const*) ;
 int qm_fd_get_offset (struct qm_fd const*) ;
 scalar_t__ qm_fd_sg ;

__attribute__((used)) static void dpaa_fd_release(const struct net_device *net_dev,
       const struct qm_fd *fd)
{
 struct qm_sg_entry *sgt;
 struct dpaa_bp *dpaa_bp;
 struct bm_buffer bmb;
 dma_addr_t addr;
 void *vaddr;

 bmb.data = 0;
 bm_buffer_set64(&bmb, qm_fd_addr(fd));

 dpaa_bp = dpaa_bpid2pool(fd->bpid);
 if (!dpaa_bp)
  return;

 if (qm_fd_get_format(fd) == qm_fd_sg) {
  vaddr = phys_to_virt(qm_fd_addr(fd));
  sgt = vaddr + qm_fd_get_offset(fd);

  dma_unmap_single(dpaa_bp->dev, qm_fd_addr(fd), dpaa_bp->size,
     DMA_FROM_DEVICE);

  dpaa_release_sgt_members(sgt);

  addr = dma_map_single(dpaa_bp->dev, vaddr, dpaa_bp->size,
          DMA_FROM_DEVICE);
  if (dma_mapping_error(dpaa_bp->dev, addr)) {
   dev_err(dpaa_bp->dev, "DMA mapping failed");
   return;
  }
  bm_buffer_set64(&bmb, addr);
 }

 dpaa_bman_release(dpaa_bp, &bmb, 1);
}
