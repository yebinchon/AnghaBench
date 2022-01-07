
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nlattr {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;
struct net_device {int dummy; } ;
struct net {int dummy; } ;
struct ip_tunnel_info {int dummy; } ;
typedef enum ifla_geneve_df { ____Placeholder_ifla_geneve_df } ifla_geneve_df ;


 int GENEVE_DF_UNSET ;
 int GENEVE_UDP_PORT ;
 int geneve_configure (struct net*,struct net_device*,struct netlink_ext_ack*,struct ip_tunnel_info*,int,int,int,int) ;
 int geneve_link_config (struct net_device*,struct ip_tunnel_info*,struct nlattr**) ;
 int geneve_nl2info (struct nlattr**,struct nlattr**,struct netlink_ext_ack*,struct ip_tunnel_info*,int*,int*,int*,int*,int) ;
 int init_tnl_info (struct ip_tunnel_info*,int ) ;

__attribute__((used)) static int geneve_newlink(struct net *net, struct net_device *dev,
     struct nlattr *tb[], struct nlattr *data[],
     struct netlink_ext_ack *extack)
{
 enum ifla_geneve_df df = GENEVE_DF_UNSET;
 bool use_udp6_rx_checksums = 0;
 struct ip_tunnel_info info;
 bool ttl_inherit = 0;
 bool metadata = 0;
 int err;

 init_tnl_info(&info, GENEVE_UDP_PORT);
 err = geneve_nl2info(tb, data, extack, &info, &metadata,
        &use_udp6_rx_checksums, &ttl_inherit, &df, 0);
 if (err)
  return err;

 err = geneve_configure(net, dev, extack, &info, metadata,
          use_udp6_rx_checksums, ttl_inherit, df);
 if (err)
  return err;

 geneve_link_config(dev, &info, tb);

 return 0;
}
