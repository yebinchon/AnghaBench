
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint ;
typedef int u32 ;


 int snprintf (char*,int ,char const*,int,int) ;

char *brcmf_chip_name(u32 id, u32 rev, char *buf, uint len)
{
 const char *fmt;

 fmt = ((id > 0xa000) || (id < 0x4000)) ? "BCM%d/%u" : "BCM%x/%u";
 snprintf(buf, len, fmt, id, rev);
 return buf;
}
