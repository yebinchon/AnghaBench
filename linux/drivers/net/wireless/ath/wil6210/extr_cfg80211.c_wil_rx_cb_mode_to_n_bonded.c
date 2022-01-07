
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;






__attribute__((used)) static int wil_rx_cb_mode_to_n_bonded(u8 cb_mode)
{
 switch (cb_mode) {
 case 130:
 case 129:
  return 1;
 case 128:
  return 2;
 default:
  return 1;
 }
}
