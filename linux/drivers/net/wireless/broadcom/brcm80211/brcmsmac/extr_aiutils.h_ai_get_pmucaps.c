
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct si_pub {int pmucaps; } ;



__attribute__((used)) static inline u32 ai_get_pmucaps(struct si_pub *sih)
{
 return sih->pmucaps;
}
