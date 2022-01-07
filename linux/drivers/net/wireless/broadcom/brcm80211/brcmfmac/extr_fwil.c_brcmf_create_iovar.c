
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;


 int memcpy (char*,char const*,scalar_t__) ;
 scalar_t__ strlen (char*) ;

__attribute__((used)) static u32
brcmf_create_iovar(char *name, const char *data, u32 datalen,
     char *buf, u32 buflen)
{
 u32 len;

 len = strlen(name) + 1;

 if ((len + datalen) > buflen)
  return 0;

 memcpy(buf, name, len);


 if (data && datalen)
  memcpy(&buf[len], data, datalen);

 return len + datalen;
}
