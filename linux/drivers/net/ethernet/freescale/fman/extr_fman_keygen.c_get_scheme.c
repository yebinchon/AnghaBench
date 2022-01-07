
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
struct keygen_scheme {int dummy; } ;
struct fman_keygen {struct keygen_scheme* schemes; } ;


 size_t FM_KG_MAX_NUM_OF_SCHEMES ;

__attribute__((used)) static struct keygen_scheme *get_scheme(struct fman_keygen *keygen,
     u8 scheme_id)
{
 if (scheme_id >= FM_KG_MAX_NUM_OF_SCHEMES)
  return ((void*)0);
 return &keygen->schemes[scheme_id];
}
