
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cfv_info {int genpool; } ;
struct buf_info {int size; scalar_t__ vaddr; } ;


 int gen_pool_free (int ,unsigned long,int ) ;
 int kfree (struct buf_info*) ;

__attribute__((used)) static void free_buf_info(struct cfv_info *cfv, struct buf_info *buf_info)
{
 if (!buf_info)
  return;
 gen_pool_free(cfv->genpool, (unsigned long) buf_info->vaddr,
        buf_info->size);
 kfree(buf_info);
}
