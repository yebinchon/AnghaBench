
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u8 ;
struct fman_keygen {TYPE_1__* schemes; } ;
struct TYPE_2__ {int used; } ;


 int EINVAL ;
 size_t FM_KG_MAX_NUM_OF_SCHEMES ;

__attribute__((used)) static int get_free_scheme_id(struct fman_keygen *keygen, u8 *scheme_id)
{
 u8 i;

 for (i = 0; i < FM_KG_MAX_NUM_OF_SCHEMES; i++)
  if (!keygen->schemes[i].used) {
   *scheme_id = i;
   return 0;
  }

 return -EINVAL;
}
