
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;


 int ARRAY_SIZE (scalar_t__ const*) ;
 scalar_t__ const* hwsim_ciphers ;

__attribute__((used)) static bool hwsim_known_ciphers(const u32 *ciphers, int n_ciphers)
{
 int i;

 for (i = 0; i < n_ciphers; i++) {
  int j;
  int found = 0;

  for (j = 0; j < ARRAY_SIZE(hwsim_ciphers); j++) {
   if (ciphers[i] == hwsim_ciphers[j]) {
    found = 1;
    break;
   }
  }

  if (!found)
   return 0;
 }

 return 1;
}
