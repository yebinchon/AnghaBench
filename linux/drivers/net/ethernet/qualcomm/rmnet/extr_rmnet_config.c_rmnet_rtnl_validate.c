
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct nlattr {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;


 int EINVAL ;
 int ERANGE ;
 size_t IFLA_RMNET_MUX_ID ;
 int RMNET_MAX_LOGICAL_EP ;
 int nla_get_u16 (struct nlattr*) ;

__attribute__((used)) static int rmnet_rtnl_validate(struct nlattr *tb[], struct nlattr *data[],
          struct netlink_ext_ack *extack)
{
 u16 mux_id;

 if (!data || !data[IFLA_RMNET_MUX_ID])
  return -EINVAL;

 mux_id = nla_get_u16(data[IFLA_RMNET_MUX_ID]);
 if (mux_id > (RMNET_MAX_LOGICAL_EP - 1))
  return -ERANGE;

 return 0;
}
