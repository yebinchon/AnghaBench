
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u8 ;
typedef int u64 ;
typedef int u32 ;
struct TYPE_7__ {int key; } ;
struct mlx4_fmr {unsigned long long page_shift; TYPE_5__* mpt; int dma_handle; void** mtts; TYPE_2__ mr; int maps; } ;
struct TYPE_6__ {scalar_t__ num_mpts; } ;
struct mlx4_dev {TYPE_4__* persist; TYPE_1__ caps; } ;
struct TYPE_10__ {void* start; void* length; void* lkey; void* key; } ;
struct TYPE_9__ {TYPE_3__* pdev; } ;
struct TYPE_8__ {int dev; } ;


 int DMA_TO_DEVICE ;
 int MLX4_MPT_STATUS_HW ;
 int MLX4_MPT_STATUS_SW ;
 int MLX4_MTT_FLAG_PRESENT ;
 void* cpu_to_be32 (int ) ;
 void* cpu_to_be64 (int) ;
 int dma_sync_single_for_cpu (int *,int ,int,int ) ;
 int dma_sync_single_for_device (int *,int ,int,int ) ;
 int hw_index_to_key (int ) ;
 int key_to_hw_index (int ) ;
 int mlx4_check_fmr (struct mlx4_fmr*,int*,int,int) ;
 int wmb () ;

int mlx4_map_phys_fmr(struct mlx4_dev *dev, struct mlx4_fmr *fmr, u64 *page_list,
        int npages, u64 iova, u32 *lkey, u32 *rkey)
{
 u32 key;
 int i, err;

 err = mlx4_check_fmr(fmr, page_list, npages, iova);
 if (err)
  return err;

 ++fmr->maps;

 key = key_to_hw_index(fmr->mr.key);
 key += dev->caps.num_mpts;
 *lkey = *rkey = fmr->mr.key = hw_index_to_key(key);

 *(u8 *) fmr->mpt = MLX4_MPT_STATUS_SW;


 wmb();

 dma_sync_single_for_cpu(&dev->persist->pdev->dev, fmr->dma_handle,
    npages * sizeof(u64), DMA_TO_DEVICE);

 for (i = 0; i < npages; ++i)
  fmr->mtts[i] = cpu_to_be64(page_list[i] | MLX4_MTT_FLAG_PRESENT);

 dma_sync_single_for_device(&dev->persist->pdev->dev, fmr->dma_handle,
       npages * sizeof(u64), DMA_TO_DEVICE);

 fmr->mpt->key = cpu_to_be32(key);
 fmr->mpt->lkey = cpu_to_be32(key);
 fmr->mpt->length = cpu_to_be64(npages * (1ull << fmr->page_shift));
 fmr->mpt->start = cpu_to_be64(iova);


 wmb();

 *(u8 *) fmr->mpt = MLX4_MPT_STATUS_HW;


 wmb();

 return 0;
}
