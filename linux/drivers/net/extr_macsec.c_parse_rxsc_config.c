
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nlattr {int dummy; } ;


 int EINVAL ;
 size_t MACSEC_ATTR_RXSC_CONFIG ;
 int MACSEC_RXSC_ATTR_MAX ;
 int macsec_genl_rxsc_policy ;
 scalar_t__ nla_parse_nested_deprecated (struct nlattr**,int ,struct nlattr*,int ,int *) ;

__attribute__((used)) static int parse_rxsc_config(struct nlattr **attrs, struct nlattr **tb_rxsc)
{
 if (!attrs[MACSEC_ATTR_RXSC_CONFIG])
  return -EINVAL;

 if (nla_parse_nested_deprecated(tb_rxsc, MACSEC_RXSC_ATTR_MAX, attrs[MACSEC_ATTR_RXSC_CONFIG], macsec_genl_rxsc_policy, ((void*)0)))
  return -EINVAL;

 return 0;
}
