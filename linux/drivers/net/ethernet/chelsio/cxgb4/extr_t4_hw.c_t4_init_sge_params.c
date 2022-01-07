
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef unsigned int u32 ;
struct sge_params {unsigned int hps; unsigned int eq_qpp; unsigned int iq_qpp; } ;
struct TYPE_2__ {struct sge_params sge; } ;
struct adapter {unsigned int pf; TYPE_1__ params; } ;


 unsigned int HOSTPAGESIZEPF0_M ;
 unsigned int HOSTPAGESIZEPF0_S ;
 unsigned int HOSTPAGESIZEPF1_S ;
 unsigned int QUEUESPERPAGEPF0_M ;
 unsigned int QUEUESPERPAGEPF0_S ;
 unsigned int QUEUESPERPAGEPF1_S ;
 int SGE_EGRESS_QUEUES_PER_PAGE_PF_A ;
 int SGE_HOST_PAGE_SIZE_A ;
 int SGE_INGRESS_QUEUES_PER_PAGE_PF_A ;
 unsigned int t4_read_reg (struct adapter*,int ) ;

int t4_init_sge_params(struct adapter *adapter)
{
 struct sge_params *sge_params = &adapter->params.sge;
 u32 hps, qpp;
 unsigned int s_hps, s_qpp;



 hps = t4_read_reg(adapter, SGE_HOST_PAGE_SIZE_A);
 s_hps = (HOSTPAGESIZEPF0_S +
   (HOSTPAGESIZEPF1_S - HOSTPAGESIZEPF0_S) * adapter->pf);
 sge_params->hps = ((hps >> s_hps) & HOSTPAGESIZEPF0_M);



 s_qpp = (QUEUESPERPAGEPF0_S +
  (QUEUESPERPAGEPF1_S - QUEUESPERPAGEPF0_S) * adapter->pf);
 qpp = t4_read_reg(adapter, SGE_EGRESS_QUEUES_PER_PAGE_PF_A);
 sge_params->eq_qpp = ((qpp >> s_qpp) & QUEUESPERPAGEPF0_M);
 qpp = t4_read_reg(adapter, SGE_INGRESS_QUEUES_PER_PAGE_PF_A);
 sge_params->iq_qpp = ((qpp >> s_qpp) & QUEUESPERPAGEPF0_M);

 return 0;
}
