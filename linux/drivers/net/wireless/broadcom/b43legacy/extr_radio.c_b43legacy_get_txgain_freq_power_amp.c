
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;


 int B43legacy_WARN_ON (int) ;

__attribute__((used)) static u16 b43legacy_get_txgain_freq_power_amp(u16 txpower)
{
 u16 ret;

 B43legacy_WARN_ON(txpower > 63);

 if (txpower >= 32)
  ret = 0;
 else if (txpower >= 25)
  ret = 1;
 else if (txpower >= 20)
  ret = 2;
 else if (txpower >= 12)
  ret = 3;
 else
  ret = 4;

 return ret;
}
