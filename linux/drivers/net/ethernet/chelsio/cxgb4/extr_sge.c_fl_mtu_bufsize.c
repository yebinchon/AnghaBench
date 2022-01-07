
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sge {int fl_align; scalar_t__ pktshift; } ;
struct adapter {struct sge sge; } ;


 unsigned int ALIGN (scalar_t__,int ) ;
 scalar_t__ ETH_HLEN ;
 scalar_t__ VLAN_HLEN ;

__attribute__((used)) static inline unsigned int fl_mtu_bufsize(struct adapter *adapter,
       unsigned int mtu)
{
 struct sge *s = &adapter->sge;

 return ALIGN(s->pktshift + ETH_HLEN + VLAN_HLEN + mtu, s->fl_align);
}
