
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;


 int DIV_ROUND_UP_ULL (int,int ) ;
 int NSEC_PER_SEC ;

__attribute__((used)) static u32 to_ticks(int kHz, int ps)
{
 return DIV_ROUND_UP_ULL((u64)kHz * ps, NSEC_PER_SEC);
}
