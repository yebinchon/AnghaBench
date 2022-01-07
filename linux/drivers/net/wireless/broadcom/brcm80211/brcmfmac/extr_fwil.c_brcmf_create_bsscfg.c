
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
typedef char s8 ;
typedef scalar_t__ s32 ;
typedef int bsscfgidx_le ;
typedef char __le32 ;


 scalar_t__ brcmf_create_iovar (char*,char*,scalar_t__,char*,scalar_t__) ;
 int brcmf_err (char*) ;
 char cpu_to_le32 (scalar_t__) ;
 int memcpy (char*,char const*,scalar_t__) ;
 scalar_t__ strlen (char const*) ;

__attribute__((used)) static u32
brcmf_create_bsscfg(s32 bsscfgidx, char *name, char *data, u32 datalen,
      char *buf, u32 buflen)
{
 const s8 *prefix = "bsscfg:";
 s8 *p;
 u32 prefixlen;
 u32 namelen;
 u32 iolen;
 __le32 bsscfgidx_le;

 if (bsscfgidx == 0)
  return brcmf_create_iovar(name, data, datalen, buf, buflen);

 prefixlen = strlen(prefix);
 namelen = strlen(name) + 1;
 iolen = prefixlen + namelen + sizeof(bsscfgidx_le) + datalen;

 if (buflen < iolen) {
  brcmf_err("buffer is too short\n");
  return 0;
 }

 p = buf;


 memcpy(p, prefix, prefixlen);
 p += prefixlen;


 memcpy(p, name, namelen);
 p += namelen;


 bsscfgidx_le = cpu_to_le32(bsscfgidx);
 memcpy(p, &bsscfgidx_le, sizeof(bsscfgidx_le));
 p += sizeof(bsscfgidx_le);


 if (datalen)
  memcpy(p, data, datalen);

 return iolen;
}
