
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int ktime_get_real () ;
 int ktime_to_us (int ) ;

__attribute__((used)) static inline u64 mac80211_hwsim_get_tsf_raw(void)
{
 return ktime_to_us(ktime_get_real());
}
