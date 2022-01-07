
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char u8 ;



__attribute__((used)) static char *bnxt_parse_pkglog(int desired_field, u8 *data, size_t datalen)
{
 char *retval = ((void*)0);
 char *p;
 char *value;
 int field = 0;

 if (datalen < 1)
  return ((void*)0);

 data[datalen - 1] = 0;
 for (p = data; *p != 0; p++) {
  field = 0;
  retval = ((void*)0);
  while (*p != 0 && *p != '\n') {
   value = p;
   while (*p != 0 && *p != '\t' && *p != '\n')
    p++;
   if (field == desired_field)
    retval = value;
   if (*p != '\t')
    break;
   *p = 0;
   field++;
   p++;
  }
  if (*p == 0)
   break;
  *p = 0;
 }
 return retval;
}
