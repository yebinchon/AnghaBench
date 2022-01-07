
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int gtp_h_initval ;
 int jhash_1word (int ,int ) ;

__attribute__((used)) static inline u32 gtp1u_hashfn(u32 tid)
{
 return jhash_1word(tid, gtp_h_initval);
}
