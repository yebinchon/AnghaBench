
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ieee80211_hw {struct ar5523* priv; } ;
struct ar5523 {int mutex; } ;


 int CFG_USER_RTS_THRESHOLD ;
 int ar5523_config (struct ar5523*,int ,int ) ;
 int ar5523_dbg (struct ar5523*,char*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int ar5523_set_rts_threshold(struct ieee80211_hw *hw, u32 value)
{
 struct ar5523 *ar = hw->priv;
 int ret;

 ar5523_dbg(ar, "set_rts_threshold called\n");
 mutex_lock(&ar->mutex);

 ret = ar5523_config(ar, CFG_USER_RTS_THRESHOLD, value);

 mutex_unlock(&ar->mutex);
 return ret;
}
