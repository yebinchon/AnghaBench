
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
 scalar_t__ ustrtoul (char const*,char**,int ) ;

__attribute__((used)) static int parse_num(size_t *num, const char *token)
{
 char *endp;
 size_t n;

 n = (size_t) ustrtoul(token, &endp, 0);
 if (*endp)
  return -EINVAL;

 *num = n;
 return 0;
}
