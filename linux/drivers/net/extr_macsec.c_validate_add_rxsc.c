
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nlattr {int dummy; } ;


 size_t MACSEC_RXSC_ATTR_ACTIVE ;
 size_t MACSEC_RXSC_ATTR_SCI ;
 int nla_get_u8 (struct nlattr*) ;

__attribute__((used)) static bool validate_add_rxsc(struct nlattr **attrs)
{
 if (!attrs[MACSEC_RXSC_ATTR_SCI])
  return 0;

 if (attrs[MACSEC_RXSC_ATTR_ACTIVE]) {
  if (nla_get_u8(attrs[MACSEC_RXSC_ATTR_ACTIVE]) > 1)
   return 0;
 }

 return 1;
}
