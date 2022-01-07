
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct nic {TYPE_2__* netdev; } ;
struct TYPE_3__ {int iaaddr; } ;
struct cb {TYPE_1__ u; int command; } ;
struct TYPE_4__ {int dev_addr; } ;


 int ETH_ALEN ;
 int cb_iaaddr ;
 int cpu_to_le16 (int ) ;
 int memcpy (int ,int ,int ) ;

__attribute__((used)) static int e100_setup_iaaddr(struct nic *nic, struct cb *cb,
 struct sk_buff *skb)
{
 cb->command = cpu_to_le16(cb_iaaddr);
 memcpy(cb->u.iaaddr, nic->netdev->dev_addr, ETH_ALEN);
 return 0;
}
