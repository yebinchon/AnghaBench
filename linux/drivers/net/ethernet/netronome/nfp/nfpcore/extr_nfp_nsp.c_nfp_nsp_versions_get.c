
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef enum nfp_nsp_versions { ____Placeholder_nfp_nsp_versions } nfp_nsp_versions ;


 int ARRAY_SIZE (int const*) ;
 int EINVAL ;
 int ENOENT ;
 char const* ERR_PTR (int ) ;
 unsigned int get_unaligned_le16 (int const*) ;
 unsigned int strnlen (int const*,unsigned int) ;

const char *nfp_nsp_versions_get(enum nfp_nsp_versions id, bool flash,
     const u8 *buf, unsigned int size)
{
 static const u32 id2off[] = {
  [139] = 138,
  [133] = 132,
  [141] = 140,
  [137] = 136,
  [129] = 128,
  [131] = 130,
  [135] = 134,
 };
 unsigned int field, buf_field_cnt, buf_off;

 if (id >= ARRAY_SIZE(id2off) || !id2off[id])
  return ERR_PTR(-EINVAL);

 field = id * 2 + flash;

 buf_field_cnt = get_unaligned_le16(buf);
 if (buf_field_cnt <= field)
  return ERR_PTR(-ENOENT);

 buf_off = get_unaligned_le16(buf + id2off[id] + flash * 2);
 if (!buf_off)
  return ERR_PTR(-ENOENT);

 if (buf_off >= size)
  return ERR_PTR(-EINVAL);
 if (strnlen(&buf[buf_off], size - buf_off) == size - buf_off)
  return ERR_PTR(-EINVAL);

 return (const char *)&buf[buf_off];
}
