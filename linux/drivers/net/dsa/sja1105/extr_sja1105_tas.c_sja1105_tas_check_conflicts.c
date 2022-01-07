
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct tc_taprio_qopt_offload {scalar_t__ cycle_time; scalar_t__ base_time; int num_entries; TYPE_1__* entries; } ;
struct sja1105_tas_data {struct tc_taprio_qopt_offload** offload; } ;
struct sja1105_private {TYPE_2__* ds; struct sja1105_tas_data tas_data; } ;
typedef scalar_t__ s64 ;
typedef scalar_t__ s32 ;
struct TYPE_4__ {int dev; } ;
struct TYPE_3__ {scalar_t__ interval; } ;


 int dev_warn (int ,char*,int,int,int) ;
 int div_s64_rem (scalar_t__,scalar_t__,scalar_t__*) ;
 scalar_t__ max (scalar_t__,scalar_t__) ;
 scalar_t__ min (scalar_t__,scalar_t__) ;

__attribute__((used)) static bool
sja1105_tas_check_conflicts(struct sja1105_private *priv, int port,
       const struct tc_taprio_qopt_offload *admin)
{
 struct sja1105_tas_data *tas_data = &priv->tas_data;
 const struct tc_taprio_qopt_offload *offload;
 s64 max_cycle_time, min_cycle_time;
 s64 delta1, delta2;
 s64 rbt1, rbt2;
 s64 stop_time;
 s64 t1, t2;
 int i, j;
 s32 rem;

 offload = tas_data->offload[port];
 if (!offload)
  return 0;




 max_cycle_time = max(offload->cycle_time, admin->cycle_time);
 min_cycle_time = min(offload->cycle_time, admin->cycle_time);
 div_s64_rem(max_cycle_time, min_cycle_time, &rem);
 if (rem)
  return 1;





 div_s64_rem(offload->base_time, offload->cycle_time, &rem);
 rbt1 = rem;

 div_s64_rem(admin->base_time, admin->cycle_time, &rem);
 rbt2 = rem;

 stop_time = max_cycle_time + max(rbt1, rbt2);




 for (i = 0, delta1 = 0;
      i < offload->num_entries;
      delta1 += offload->entries[i].interval, i++) {



  for (j = 0, delta2 = 0;
       j < admin->num_entries;
       delta2 += admin->entries[j].interval, j++) {




   for (t1 = rbt1 + delta1;
        t1 <= stop_time;
        t1 += offload->cycle_time) {




    for (t2 = rbt2 + delta2;
         t2 <= stop_time;
         t2 += admin->cycle_time) {
     if (t1 == t2) {
      dev_warn(priv->ds->dev,
        "GCL entry %d collides with entry %d of port %d\n",
        j, i, port);
      return 1;
     }
    }
   }
  }
 }

 return 0;
}
