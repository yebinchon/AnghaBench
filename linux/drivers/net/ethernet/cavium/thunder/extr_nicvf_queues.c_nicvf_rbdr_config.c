
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct rbdr_cfg {int ena; int lines; scalar_t__ avg_con; int qsize; scalar_t__ ldwb; scalar_t__ reset; } ;
struct TYPE_2__ {scalar_t__ phys_base; } ;
struct rbdr {int dma_size; scalar_t__ thresh; TYPE_1__ dmem; } ;
struct queue_set {scalar_t__ rbdr_len; struct rbdr* rbdr; } ;
struct nicvf {int dummy; } ;


 int NIC_QSET_RBDR_0_1_BASE ;
 int NIC_QSET_RBDR_0_1_CFG ;
 int NIC_QSET_RBDR_0_1_DOOR ;
 int NIC_QSET_RBDR_0_1_THRESH ;
 int RBDR_SIZE ;
 int memset (struct rbdr_cfg*,int ,int) ;
 int nicvf_queue_reg_write (struct nicvf*,int ,int,scalar_t__) ;
 int nicvf_reclaim_rbdr (struct nicvf*,struct rbdr*,int) ;

__attribute__((used)) static void nicvf_rbdr_config(struct nicvf *nic, struct queue_set *qs,
         int qidx, bool enable)
{
 struct rbdr *rbdr;
 struct rbdr_cfg rbdr_cfg;

 rbdr = &qs->rbdr[qidx];
 nicvf_reclaim_rbdr(nic, rbdr, qidx);
 if (!enable)
  return;


 nicvf_queue_reg_write(nic, NIC_QSET_RBDR_0_1_BASE,
         qidx, (u64)(rbdr->dmem.phys_base));



 memset(&rbdr_cfg, 0, sizeof(struct rbdr_cfg));
 rbdr_cfg.ena = 1;
 rbdr_cfg.reset = 0;
 rbdr_cfg.ldwb = 0;
 rbdr_cfg.qsize = RBDR_SIZE;
 rbdr_cfg.avg_con = 0;
 rbdr_cfg.lines = rbdr->dma_size / 128;
 nicvf_queue_reg_write(nic, NIC_QSET_RBDR_0_1_CFG,
         qidx, *(u64 *)&rbdr_cfg);


 nicvf_queue_reg_write(nic, NIC_QSET_RBDR_0_1_DOOR,
         qidx, qs->rbdr_len - 1);


 nicvf_queue_reg_write(nic, NIC_QSET_RBDR_0_1_THRESH,
         qidx, rbdr->thresh - 1);
}
