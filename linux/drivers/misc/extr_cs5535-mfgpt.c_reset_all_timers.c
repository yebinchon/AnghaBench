
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int MSR_MFGPT_SETUP ;
 int wrmsr (int ,int,int) ;

__attribute__((used)) static void reset_all_timers(void)
{
 uint32_t val, dummy;


 val = 0xFF; dummy = 0;
 wrmsr(MSR_MFGPT_SETUP, val, dummy);
}
