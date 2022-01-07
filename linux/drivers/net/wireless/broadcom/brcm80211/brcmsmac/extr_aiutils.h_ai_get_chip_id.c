
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint ;
struct si_pub {int chip; } ;



__attribute__((used)) static inline uint ai_get_chip_id(struct si_pub *sih)
{
 return sih->chip;
}
