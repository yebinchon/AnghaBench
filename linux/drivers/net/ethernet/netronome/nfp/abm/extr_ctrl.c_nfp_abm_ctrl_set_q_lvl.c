
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nfp_abm_link {unsigned int queue_base; int abm; } ;


 unsigned int NFP_NET_MAX_RX_RINGS ;
 int __nfp_abm_ctrl_set_q_lvl (int ,unsigned int,int ) ;

int nfp_abm_ctrl_set_q_lvl(struct nfp_abm_link *alink, unsigned int band,
      unsigned int queue, u32 val)
{
 unsigned int threshold;

 threshold = band * NFP_NET_MAX_RX_RINGS + alink->queue_base + queue;

 return __nfp_abm_ctrl_set_q_lvl(alink->abm, threshold, val);
}
