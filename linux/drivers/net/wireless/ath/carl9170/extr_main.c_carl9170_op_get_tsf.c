
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int tsf ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_hw {struct ar9170* priv; } ;
struct carl9170_tsf_rsp {int tsf_64; } ;
struct ar9170 {int mutex; } ;


 int CARL9170_CMD_READ_TSF ;
 scalar_t__ WARN_ON (int) ;
 int carl9170_exec_cmd (struct ar9170*,int ,int ,int *,int,struct carl9170_tsf_rsp*) ;
 int le64_to_cpu (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static u64 carl9170_op_get_tsf(struct ieee80211_hw *hw,
          struct ieee80211_vif *vif)
{
 struct ar9170 *ar = hw->priv;
 struct carl9170_tsf_rsp tsf;
 int err;

 mutex_lock(&ar->mutex);
 err = carl9170_exec_cmd(ar, CARL9170_CMD_READ_TSF,
    0, ((void*)0), sizeof(tsf), &tsf);
 mutex_unlock(&ar->mutex);
 if (WARN_ON(err))
  return 0;

 return le64_to_cpu(tsf.tsf_64);
}
