
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_6__ {int mutex; int * p_intermediate_buffer; int intermediate_buffer_phys_addr; int * p_dmae_cmd; int dmae_cmd_phys_addr; int * p_completion_word; int completion_word_phys_addr; } ;
struct qed_hwfn {TYPE_3__ dmae_info; TYPE_2__* cdev; } ;
struct dmae_cmd {int dummy; } ;
typedef int dma_addr_t ;
struct TYPE_5__ {TYPE_1__* pdev; } ;
struct TYPE_4__ {int dev; } ;


 int DMAE_MAX_RW_SIZE ;
 int dma_free_coherent (int *,int,int *,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

void qed_dmae_info_free(struct qed_hwfn *p_hwfn)
{
 dma_addr_t p_phys;


 mutex_lock(&p_hwfn->dmae_info.mutex);

 if (p_hwfn->dmae_info.p_completion_word) {
  p_phys = p_hwfn->dmae_info.completion_word_phys_addr;
  dma_free_coherent(&p_hwfn->cdev->pdev->dev,
      sizeof(u32),
      p_hwfn->dmae_info.p_completion_word, p_phys);
  p_hwfn->dmae_info.p_completion_word = ((void*)0);
 }

 if (p_hwfn->dmae_info.p_dmae_cmd) {
  p_phys = p_hwfn->dmae_info.dmae_cmd_phys_addr;
  dma_free_coherent(&p_hwfn->cdev->pdev->dev,
      sizeof(struct dmae_cmd),
      p_hwfn->dmae_info.p_dmae_cmd, p_phys);
  p_hwfn->dmae_info.p_dmae_cmd = ((void*)0);
 }

 if (p_hwfn->dmae_info.p_intermediate_buffer) {
  p_phys = p_hwfn->dmae_info.intermediate_buffer_phys_addr;
  dma_free_coherent(&p_hwfn->cdev->pdev->dev,
      sizeof(u32) * DMAE_MAX_RW_SIZE,
      p_hwfn->dmae_info.p_intermediate_buffer,
      p_phys);
  p_hwfn->dmae_info.p_intermediate_buffer = ((void*)0);
 }

 mutex_unlock(&p_hwfn->dmae_info.mutex);
}
