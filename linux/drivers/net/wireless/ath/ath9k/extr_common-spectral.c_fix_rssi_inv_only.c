
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int s8 ;



__attribute__((used)) static s8 fix_rssi_inv_only(u8 rssi_val)
{
 if (rssi_val == 128)
  rssi_val = 0;
 return (s8) rssi_val;
}
