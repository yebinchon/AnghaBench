
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;



__attribute__((used)) static unsigned int vimc_deb_get_val(const u8 *bytes,
         const unsigned int n_bytes)
{
 unsigned int i;
 unsigned int acc = 0;

 for (i = 0; i < n_bytes; i++)
  acc = acc + (bytes[i] << (8 * i));

 return acc;
}
