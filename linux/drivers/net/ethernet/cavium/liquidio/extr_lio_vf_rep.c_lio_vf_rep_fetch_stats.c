
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct work_struct {int dummy; } ;
struct octeon_device {int dummy; } ;
struct lio_vf_rep_stats {int dummy; } ;
struct lio_vf_rep_req {int ifidx; int req_type; } ;
struct TYPE_2__ {int work; } ;
struct lio_vf_rep_desc {TYPE_1__ stats_wk; int stats; int ifidx; struct octeon_device* oct; } ;
struct cavium_wk {struct lio_vf_rep_desc* ctxptr; } ;
typedef int stats ;
typedef int rep_cfg ;


 int LIO_VF_REP_REQ_STATS ;
 int LIO_VF_REP_STATS_POLL_TIME_MS ;
 int lio_vf_rep_send_soft_command (struct octeon_device*,struct lio_vf_rep_req*,int,struct lio_vf_rep_stats*,int) ;
 int memcpy (int *,struct lio_vf_rep_stats*,int) ;
 int memset (struct lio_vf_rep_req*,int ,int) ;
 int msecs_to_jiffies (int ) ;
 int octeon_swap_8B_data (int *,int) ;
 int schedule_delayed_work (int *,int ) ;

__attribute__((used)) static void
lio_vf_rep_fetch_stats(struct work_struct *work)
{
 struct cavium_wk *wk = (struct cavium_wk *)work;
 struct lio_vf_rep_desc *vf_rep = wk->ctxptr;
 struct lio_vf_rep_stats stats;
 struct lio_vf_rep_req rep_cfg;
 struct octeon_device *oct;
 int ret;

 oct = vf_rep->oct;

 memset(&rep_cfg, 0, sizeof(rep_cfg));
 rep_cfg.req_type = LIO_VF_REP_REQ_STATS;
 rep_cfg.ifidx = vf_rep->ifidx;

 ret = lio_vf_rep_send_soft_command(oct, &rep_cfg, sizeof(rep_cfg),
        &stats, sizeof(stats));

 if (!ret) {
  octeon_swap_8B_data((u64 *)&stats, (sizeof(stats) >> 3));
  memcpy(&vf_rep->stats, &stats, sizeof(stats));
 }

 schedule_delayed_work(&vf_rep->stats_wk.work,
         msecs_to_jiffies(LIO_VF_REP_STATS_POLL_TIME_MS));
}
