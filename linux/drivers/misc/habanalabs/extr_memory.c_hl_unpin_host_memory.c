
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct page {int dummy; } ;
struct hl_userptr {TYPE_2__* sgt; int job_node; int vec; int dir; scalar_t__ dma_mapped; } ;
struct hl_device {TYPE_1__* asic_funcs; } ;
struct TYPE_5__ {int nents; int sgl; } ;
struct TYPE_4__ {int (* hl_dma_unmap_sg ) (struct hl_device*,int ,int ,int ) ;} ;


 int IS_ERR (struct page**) ;
 int frame_vector_count (int ) ;
 int frame_vector_destroy (int ) ;
 struct page** frame_vector_pages (int ) ;
 int hl_debugfs_remove_userptr (struct hl_device*,struct hl_userptr*) ;
 int kfree (TYPE_2__*) ;
 int list_del (int *) ;
 int put_vaddr_frames (int ) ;
 int set_page_dirty_lock (struct page*) ;
 int sg_free_table (TYPE_2__*) ;
 int stub1 (struct hl_device*,int ,int ,int ) ;

int hl_unpin_host_memory(struct hl_device *hdev, struct hl_userptr *userptr)
{
 struct page **pages;

 hl_debugfs_remove_userptr(hdev, userptr);

 if (userptr->dma_mapped)
  hdev->asic_funcs->hl_dma_unmap_sg(hdev,
    userptr->sgt->sgl,
    userptr->sgt->nents,
    userptr->dir);

 pages = frame_vector_pages(userptr->vec);
 if (!IS_ERR(pages)) {
  int i;

  for (i = 0; i < frame_vector_count(userptr->vec); i++)
   set_page_dirty_lock(pages[i]);
 }
 put_vaddr_frames(userptr->vec);
 frame_vector_destroy(userptr->vec);

 list_del(&userptr->job_node);

 sg_free_table(userptr->sgt);
 kfree(userptr->sgt);

 return 0;
}
