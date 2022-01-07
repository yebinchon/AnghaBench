
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buf ;


 int EINVAL ;
 scalar_t__ memcmp (char const*,char const*,unsigned int) ;
 int memcpy (char*,char const*,unsigned int) ;
 int simple_strtol (char*,char**,int ) ;
 unsigned int strlen (char const*) ;

__attribute__((used)) static int parse_mtoken(const char *ptr,unsigned int len,
   int *valptr,
   const char **names,int valid_bits)
{
 char buf[33];
 unsigned int slen;
 unsigned int idx;
 char *p2;
 int msk;
 *valptr = 0;
 for (idx = 0, msk = 1; valid_bits; idx++, msk <<= 1) {
  if (!(msk & valid_bits)) continue;
  valid_bits &= ~msk;
  if (!names[idx]) continue;
  slen = strlen(names[idx]);
  if (slen != len) continue;
  if (memcmp(names[idx],ptr,slen)) continue;
  *valptr = msk;
  return 0;
 }
 if (len >= sizeof(buf)) return -EINVAL;
 memcpy(buf,ptr,len);
 buf[len] = 0;
 *valptr = simple_strtol(buf,&p2,0);
 if (*p2) return -EINVAL;
 return 0;
}
