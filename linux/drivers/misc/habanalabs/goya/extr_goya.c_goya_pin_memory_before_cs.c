
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct packet_lin_dma {int tsize; } ;
struct hl_userptr {int dma_mapped; int dir; TYPE_2__* sgt; int job_node; } ;
struct hl_device {int dev; TYPE_1__* asic_funcs; } ;
struct hl_cs_parser {int patched_cb_size; int job_userptr_list; } ;
typedef enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;
struct TYPE_4__ {int nents; int sgl; } ;
struct TYPE_3__ {int (* asic_dma_map_sg ) (struct hl_device*,int ,int ,int) ;} ;


 int ENOMEM ;
 int GFP_ATOMIC ;
 int dev_err (int ,char*) ;
 scalar_t__ goya_get_dma_desc_list_size (struct hl_device*,TYPE_2__*) ;
 int hl_pin_host_memory (struct hl_device*,int ,int ,struct hl_userptr*) ;
 int hl_unpin_host_memory (struct hl_device*,struct hl_userptr*) ;
 scalar_t__ hl_userptr_is_pinned (struct hl_device*,int ,int ,int ,struct hl_userptr**) ;
 int kfree (struct hl_userptr*) ;
 struct hl_userptr* kzalloc (int,int ) ;
 int le32_to_cpu (int ) ;
 int list_add_tail (int *,int ) ;
 int stub1 (struct hl_device*,int ,int ,int) ;

__attribute__((used)) static int goya_pin_memory_before_cs(struct hl_device *hdev,
    struct hl_cs_parser *parser,
    struct packet_lin_dma *user_dma_pkt,
    u64 addr, enum dma_data_direction dir)
{
 struct hl_userptr *userptr;
 int rc;

 if (hl_userptr_is_pinned(hdev, addr, le32_to_cpu(user_dma_pkt->tsize),
   parser->job_userptr_list, &userptr))
  goto already_pinned;

 userptr = kzalloc(sizeof(*userptr), GFP_ATOMIC);
 if (!userptr)
  return -ENOMEM;

 rc = hl_pin_host_memory(hdev, addr, le32_to_cpu(user_dma_pkt->tsize),
    userptr);
 if (rc)
  goto free_userptr;

 list_add_tail(&userptr->job_node, parser->job_userptr_list);

 rc = hdev->asic_funcs->asic_dma_map_sg(hdev, userptr->sgt->sgl,
     userptr->sgt->nents, dir);
 if (rc) {
  dev_err(hdev->dev, "failed to map sgt with DMA region\n");
  goto unpin_memory;
 }

 userptr->dma_mapped = 1;
 userptr->dir = dir;

already_pinned:
 parser->patched_cb_size +=
   goya_get_dma_desc_list_size(hdev, userptr->sgt);

 return 0;

unpin_memory:
 hl_unpin_host_memory(hdev, userptr);
free_userptr:
 kfree(userptr);
 return rc;
}
