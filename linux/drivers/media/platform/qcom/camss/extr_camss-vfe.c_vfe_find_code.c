
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;



__attribute__((used)) static u32 vfe_find_code(u32 *code, unsigned int n_code,
    unsigned int index, u32 req_code)
{
 int i;

 if (!req_code && (index >= n_code))
  return 0;

 for (i = 0; i < n_code; i++)
  if (req_code) {
   if (req_code == code[i])
    return req_code;
  } else {
   if (i == index)
    return code[i];
  }

 return code[0];
}
