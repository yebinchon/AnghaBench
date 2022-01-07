
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int memcmp (char const*,char const*,unsigned int) ;
 unsigned int strlen (char const*) ;

__attribute__((used)) static int debugifc_match_keyword(const char *buf,unsigned int count,
      const char *keyword)
{
 unsigned int kl;
 if (!keyword) return 0;
 kl = strlen(keyword);
 if (kl != count) return 0;
 return !memcmp(buf,keyword,kl);
}
