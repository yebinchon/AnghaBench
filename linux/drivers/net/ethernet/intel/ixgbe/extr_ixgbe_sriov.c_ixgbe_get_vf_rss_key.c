
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u32 ;
struct ixgbe_adapter {int rss_key; TYPE_1__* vfinfo; } ;
struct TYPE_2__ {int vf_api; int rss_query_enabled; } ;


 int EOPNOTSUPP ;
 int EPERM ;
 int IXGBE_RSS_KEY_SIZE ;



 int memcpy (size_t*,int ,int ) ;

__attribute__((used)) static int ixgbe_get_vf_rss_key(struct ixgbe_adapter *adapter,
    u32 *msgbuf, u32 vf)
{
 u32 *rss_key = &msgbuf[1];


 if (!adapter->vfinfo[vf].rss_query_enabled)
  return -EPERM;


 switch (adapter->vfinfo[vf].vf_api) {
 case 128:
 case 129:
 case 130:
  break;
 default:
  return -EOPNOTSUPP;
 }

 memcpy(rss_key, adapter->rss_key, IXGBE_RSS_KEY_SIZE);

 return 0;
}
