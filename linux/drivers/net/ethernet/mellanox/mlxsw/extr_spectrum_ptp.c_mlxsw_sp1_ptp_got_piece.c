
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct sk_buff {int dummy; } ;
struct mlxsw_sp1_ptp_unmatched {scalar_t__ timestamp; struct sk_buff* skb; } ;
struct mlxsw_sp1_ptp_key {int ingress; int local_port; } ;
struct mlxsw_sp {TYPE_1__* ptp_state; } ;
struct TYPE_2__ {int unmatched_lock; } ;


 int E2BIG ;
 int WARN_ON_ONCE (int) ;
 int mlxsw_sp1_ptp_packet_finish (struct mlxsw_sp*,struct sk_buff*,int ,int ,int *) ;
 int mlxsw_sp1_ptp_unmatched_finish (struct mlxsw_sp*,struct mlxsw_sp1_ptp_unmatched*) ;
 struct mlxsw_sp1_ptp_unmatched* mlxsw_sp1_ptp_unmatched_lookup (struct mlxsw_sp*,struct mlxsw_sp1_ptp_key,int*) ;
 int mlxsw_sp1_ptp_unmatched_remove (struct mlxsw_sp*,struct mlxsw_sp1_ptp_unmatched*) ;
 int mlxsw_sp1_ptp_unmatched_save (struct mlxsw_sp*,struct mlxsw_sp1_ptp_key,struct sk_buff*,scalar_t__) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void mlxsw_sp1_ptp_got_piece(struct mlxsw_sp *mlxsw_sp,
        struct mlxsw_sp1_ptp_key key,
        struct sk_buff *skb, u64 timestamp)
{
 struct mlxsw_sp1_ptp_unmatched *unmatched;
 int length;
 int err;

 rcu_read_lock();

 spin_lock(&mlxsw_sp->ptp_state->unmatched_lock);

 unmatched = mlxsw_sp1_ptp_unmatched_lookup(mlxsw_sp, key, &length);
 if (skb && unmatched && unmatched->timestamp) {
  unmatched->skb = skb;
 } else if (timestamp && unmatched && unmatched->skb) {
  unmatched->timestamp = timestamp;
 } else {



  if (length < 100)
   err = mlxsw_sp1_ptp_unmatched_save(mlxsw_sp, key,
          skb, timestamp);
  else
   err = -E2BIG;
  if (err && skb)
   mlxsw_sp1_ptp_packet_finish(mlxsw_sp, skb,
          key.local_port,
          key.ingress, ((void*)0));
  unmatched = ((void*)0);
 }

 if (unmatched) {
  err = mlxsw_sp1_ptp_unmatched_remove(mlxsw_sp, unmatched);
  WARN_ON_ONCE(err);
 }

 spin_unlock(&mlxsw_sp->ptp_state->unmatched_lock);

 if (unmatched)
  mlxsw_sp1_ptp_unmatched_finish(mlxsw_sp, unmatched);

 rcu_read_unlock();
}
