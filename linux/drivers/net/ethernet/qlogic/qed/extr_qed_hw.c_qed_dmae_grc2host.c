
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct qed_ptt {int dummy; } ;
struct TYPE_2__ {int mutex; } ;
struct qed_hwfn {TYPE_1__ dmae_info; } ;
struct qed_dmae_params {int dummy; } ;
typedef int dma_addr_t ;


 int QED_DMAE_ADDRESS_GRC ;
 int QED_DMAE_ADDRESS_HOST_VIRT ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int qed_dmae_execute_command (struct qed_hwfn*,struct qed_ptt*,int,int ,int ,int ,int,struct qed_dmae_params*) ;

int qed_dmae_grc2host(struct qed_hwfn *p_hwfn,
        struct qed_ptt *p_ptt,
        u32 grc_addr,
        dma_addr_t dest_addr, u32 size_in_dwords,
        struct qed_dmae_params *p_params)
{
 u32 grc_addr_in_dw = grc_addr / sizeof(u32);
 int rc;


 mutex_lock(&p_hwfn->dmae_info.mutex);

 rc = qed_dmae_execute_command(p_hwfn, p_ptt, grc_addr_in_dw,
          dest_addr, QED_DMAE_ADDRESS_GRC,
          QED_DMAE_ADDRESS_HOST_VIRT,
          size_in_dwords, p_params);

 mutex_unlock(&p_hwfn->dmae_info.mutex);

 return rc;
}
