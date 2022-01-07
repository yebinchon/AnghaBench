
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int rn5t618_trigger_poweroff_sequence (int) ;

__attribute__((used)) static void rn5t618_power_off(void)
{
 rn5t618_trigger_poweroff_sequence(0);
}
