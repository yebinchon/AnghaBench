
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;


 int gtp_h_initval ;
 int jhash_2words (int ,int ,int ) ;

__attribute__((used)) static inline u32 gtp0_hashfn(u64 tid)
{
 u32 *tid32 = (u32 *) &tid;
 return jhash_2words(tid32[0], tid32[1], gtp_h_initval);
}
