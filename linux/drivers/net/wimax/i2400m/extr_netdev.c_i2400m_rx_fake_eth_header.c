
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dev_addr; } ;
struct i2400m {int src_mac_addr; } ;
struct ethhdr {int h_proto; int h_source; int h_dest; } ;
typedef int __be16 ;


 int memcpy (int ,int ,int) ;
 struct i2400m* net_dev_to_i2400m (struct net_device*) ;

__attribute__((used)) static
void i2400m_rx_fake_eth_header(struct net_device *net_dev,
          void *_eth_hdr, __be16 protocol)
{
 struct i2400m *i2400m = net_dev_to_i2400m(net_dev);
 struct ethhdr *eth_hdr = _eth_hdr;

 memcpy(eth_hdr->h_dest, net_dev->dev_addr, sizeof(eth_hdr->h_dest));
 memcpy(eth_hdr->h_source, i2400m->src_mac_addr,
        sizeof(eth_hdr->h_source));
 eth_hdr->h_proto = protocol;
}
