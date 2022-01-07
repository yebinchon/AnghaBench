
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct sk_buff {int dummy; } ;
struct net_device {int dummy; } ;
struct enic_port_profile {int set; int host_uuid; int instance_uuid; int name; int request; } ;
struct enic {int dummy; } ;


 int EMSGSIZE ;
 int ENIC_PORT_REQUEST_APPLIED ;
 int ENIC_PP_BY_INDEX (struct enic*,int,struct enic_port_profile*,int*) ;
 int ENIC_SET_HOST ;
 int ENIC_SET_INSTANCE ;
 int ENIC_SET_NAME ;
 int ENODATA ;
 int IFLA_PORT_HOST_UUID ;
 int IFLA_PORT_INSTANCE_UUID ;
 int IFLA_PORT_PROFILE ;
 int IFLA_PORT_REQUEST ;
 int IFLA_PORT_RESPONSE ;
 int PORT_PROFILE_MAX ;
 int PORT_PROFILE_RESPONSE_SUCCESS ;
 int PORT_UUID_MAX ;
 int enic_process_get_pp_request (struct enic*,int,int ,int *) ;
 struct enic* netdev_priv (struct net_device*) ;
 scalar_t__ nla_put (struct sk_buff*,int ,int ,int ) ;
 scalar_t__ nla_put_u16 (struct sk_buff*,int ,int ) ;

__attribute__((used)) static int enic_get_vf_port(struct net_device *netdev, int vf,
 struct sk_buff *skb)
{
 struct enic *enic = netdev_priv(netdev);
 u16 response = PORT_PROFILE_RESPONSE_SUCCESS;
 struct enic_port_profile *pp;
 int err;

 ENIC_PP_BY_INDEX(enic, vf, pp, &err);
 if (err)
  return err;

 if (!(pp->set & ENIC_PORT_REQUEST_APPLIED))
  return -ENODATA;

 err = enic_process_get_pp_request(enic, vf, pp->request, &response);
 if (err)
  return err;

 if (nla_put_u16(skb, IFLA_PORT_REQUEST, pp->request) ||
     nla_put_u16(skb, IFLA_PORT_RESPONSE, response) ||
     ((pp->set & ENIC_SET_NAME) &&
      nla_put(skb, IFLA_PORT_PROFILE, PORT_PROFILE_MAX, pp->name)) ||
     ((pp->set & ENIC_SET_INSTANCE) &&
      nla_put(skb, IFLA_PORT_INSTANCE_UUID, PORT_UUID_MAX,
       pp->instance_uuid)) ||
     ((pp->set & ENIC_SET_HOST) &&
      nla_put(skb, IFLA_PORT_HOST_UUID, PORT_UUID_MAX, pp->host_uuid)))
  goto nla_put_failure;
 return 0;

nla_put_failure:
 return -EMSGSIZE;
}
