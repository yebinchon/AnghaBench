
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct atmel_pmecc_user {int* partial_syn; int* si; TYPE_1__* gf_tables; } ;
typedef int s16 ;
struct TYPE_2__ {int* alpha_to; int* index_of; } ;


 int BIT (int) ;
 int get_sectorsize (struct atmel_pmecc_user*) ;
 int get_strength (struct atmel_pmecc_user*) ;
 int memset (int*,int ,int) ;

__attribute__((used)) static void atmel_pmecc_substitute(struct atmel_pmecc_user *user)
{
 int degree = get_sectorsize(user) == 512 ? 13 : 14;
 int cw_len = BIT(degree) - 1;
 int strength = get_strength(user);
 s16 *alpha_to = user->gf_tables->alpha_to;
 s16 *index_of = user->gf_tables->index_of;
 s16 *partial_syn = user->partial_syn;
 s16 *si;
 int i, j;





 si = user->si;

 memset(&si[1], 0, sizeof(s16) * ((2 * strength) - 1));



 for (i = 1; i < 2 * strength; i += 2) {
  for (j = 0; j < degree; j++) {
   if (partial_syn[i] & BIT(j))
    si[i] = alpha_to[i * j] ^ si[i];
  }
 }

 for (i = 2, j = 1; j <= strength; i = ++j << 1) {
  if (si[j] == 0) {
   si[i] = 0;
  } else {
   s16 tmp;

   tmp = index_of[si[j]];
   tmp = (tmp * 2) % cw_len;
   si[i] = alpha_to[tmp];
  }
 }
}
