
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int mtu; int wq_desc_count; int rq_desc_count; } ;
struct enic {int rq_count; int wq_count; TYPE_1__ config; } ;


 int ENIC_MIN_RQ_DESCS ;
 int ENIC_MIN_WQ_DESCS ;
 int dev_info (int ,char*) ;
 int enic_get_dev (struct enic*) ;
 scalar_t__ is_kdump_kernel () ;
 int min_t (int ,int,int ) ;
 int u16 ;

__attribute__((used)) static void enic_kdump_kernel_config(struct enic *enic)
{
 if (is_kdump_kernel()) {
  dev_info(enic_get_dev(enic), "Running from within kdump kernel. Using minimal resources\n");
  enic->rq_count = 1;
  enic->wq_count = 1;
  enic->config.rq_desc_count = ENIC_MIN_RQ_DESCS;
  enic->config.wq_desc_count = ENIC_MIN_WQ_DESCS;
  enic->config.mtu = min_t(u16, 1500, enic->config.mtu);
 }
}
