
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nlattr {int dummy; } ;


 int EINVAL ;
 size_t MACSEC_ATTR_SA_CONFIG ;
 int MACSEC_SA_ATTR_MAX ;
 int macsec_genl_sa_policy ;
 scalar_t__ nla_parse_nested_deprecated (struct nlattr**,int ,struct nlattr*,int ,int *) ;

__attribute__((used)) static int parse_sa_config(struct nlattr **attrs, struct nlattr **tb_sa)
{
 if (!attrs[MACSEC_ATTR_SA_CONFIG])
  return -EINVAL;

 if (nla_parse_nested_deprecated(tb_sa, MACSEC_SA_ATTR_MAX, attrs[MACSEC_ATTR_SA_CONFIG], macsec_genl_sa_policy, ((void*)0)))
  return -EINVAL;

 return 0;
}
