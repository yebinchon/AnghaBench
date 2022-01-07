
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nlattr {int dummy; } ;


 scalar_t__ MACSEC_KEYID_LEN ;
 int MACSEC_NUM_AN ;
 size_t MACSEC_SA_ATTR_ACTIVE ;
 size_t MACSEC_SA_ATTR_AN ;
 size_t MACSEC_SA_ATTR_KEY ;
 size_t MACSEC_SA_ATTR_KEYID ;
 size_t MACSEC_SA_ATTR_PN ;
 scalar_t__ nla_get_u32 (struct nlattr*) ;
 int nla_get_u8 (struct nlattr*) ;
 scalar_t__ nla_len (struct nlattr*) ;

__attribute__((used)) static bool validate_add_txsa(struct nlattr **attrs)
{
 if (!attrs[MACSEC_SA_ATTR_AN] ||
     !attrs[MACSEC_SA_ATTR_PN] ||
     !attrs[MACSEC_SA_ATTR_KEY] ||
     !attrs[MACSEC_SA_ATTR_KEYID])
  return 0;

 if (nla_get_u8(attrs[MACSEC_SA_ATTR_AN]) >= MACSEC_NUM_AN)
  return 0;

 if (nla_get_u32(attrs[MACSEC_SA_ATTR_PN]) == 0)
  return 0;

 if (attrs[MACSEC_SA_ATTR_ACTIVE]) {
  if (nla_get_u8(attrs[MACSEC_SA_ATTR_ACTIVE]) > 1)
   return 0;
 }

 if (nla_len(attrs[MACSEC_SA_ATTR_KEYID]) != MACSEC_KEYID_LEN)
  return 0;

 return 1;
}
