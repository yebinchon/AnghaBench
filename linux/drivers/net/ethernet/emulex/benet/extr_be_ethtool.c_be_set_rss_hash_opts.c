
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct ethtool_rxnfc {int data; int flow_type; } ;
struct TYPE_2__ {scalar_t__ rss_flags; int rss_hkey; int rsstable; } ;
struct be_adapter {TYPE_1__ rss_info; } ;


 int BEx_chip (struct be_adapter*) ;
 int EINVAL ;
 int L3_RSS_FLAGS ;
 int L4_RSS_FLAGS ;
 scalar_t__ RSS_ENABLE_IPV4 ;
 scalar_t__ RSS_ENABLE_IPV6 ;
 scalar_t__ RSS_ENABLE_TCP_IPV4 ;
 scalar_t__ RSS_ENABLE_TCP_IPV6 ;
 scalar_t__ RSS_ENABLE_UDP_IPV4 ;
 scalar_t__ RSS_ENABLE_UDP_IPV6 ;
 int RSS_INDIR_TABLE_LEN ;




 int be_cmd_rss_config (struct be_adapter*,int ,scalar_t__,int ,int ) ;
 int be_cmd_status (int) ;

__attribute__((used)) static int be_set_rss_hash_opts(struct be_adapter *adapter,
    struct ethtool_rxnfc *cmd)
{
 int status;
 u32 rss_flags = adapter->rss_info.rss_flags;

 if (cmd->data != L3_RSS_FLAGS &&
     cmd->data != (L3_RSS_FLAGS | L4_RSS_FLAGS))
  return -EINVAL;

 switch (cmd->flow_type) {
 case 131:
  if (cmd->data == L3_RSS_FLAGS)
   rss_flags &= ~RSS_ENABLE_TCP_IPV4;
  else if (cmd->data == (L3_RSS_FLAGS | L4_RSS_FLAGS))
   rss_flags |= RSS_ENABLE_IPV4 |
     RSS_ENABLE_TCP_IPV4;
  break;
 case 130:
  if (cmd->data == L3_RSS_FLAGS)
   rss_flags &= ~RSS_ENABLE_TCP_IPV6;
  else if (cmd->data == (L3_RSS_FLAGS | L4_RSS_FLAGS))
   rss_flags |= RSS_ENABLE_IPV6 |
     RSS_ENABLE_TCP_IPV6;
  break;
 case 129:
  if ((cmd->data == (L3_RSS_FLAGS | L4_RSS_FLAGS)) &&
      BEx_chip(adapter))
   return -EINVAL;

  if (cmd->data == L3_RSS_FLAGS)
   rss_flags &= ~RSS_ENABLE_UDP_IPV4;
  else if (cmd->data == (L3_RSS_FLAGS | L4_RSS_FLAGS))
   rss_flags |= RSS_ENABLE_IPV4 |
     RSS_ENABLE_UDP_IPV4;
  break;
 case 128:
  if ((cmd->data == (L3_RSS_FLAGS | L4_RSS_FLAGS)) &&
      BEx_chip(adapter))
   return -EINVAL;

  if (cmd->data == L3_RSS_FLAGS)
   rss_flags &= ~RSS_ENABLE_UDP_IPV6;
  else if (cmd->data == (L3_RSS_FLAGS | L4_RSS_FLAGS))
   rss_flags |= RSS_ENABLE_IPV6 |
     RSS_ENABLE_UDP_IPV6;
  break;
 default:
  return -EINVAL;
 }

 if (rss_flags == adapter->rss_info.rss_flags)
  return 0;

 status = be_cmd_rss_config(adapter, adapter->rss_info.rsstable,
       rss_flags, RSS_INDIR_TABLE_LEN,
       adapter->rss_info.rss_hkey);
 if (!status)
  adapter->rss_info.rss_flags = rss_flags;

 return be_cmd_status(status);
}
