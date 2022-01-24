#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct net_device {int /*<<< orphan*/  dev_addr; } ;
struct i2400m {int /*<<< orphan*/  src_mac_addr; } ;
struct ethhdr {int /*<<< orphan*/  h_proto; int /*<<< orphan*/  h_source; int /*<<< orphan*/  h_dest; } ;
typedef  int /*<<< orphan*/  __be16 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct i2400m* FUNC1 (struct net_device*) ; 

__attribute__((used)) static
void FUNC2(struct net_device *net_dev,
			       void *_eth_hdr, __be16 protocol)
{
	struct i2400m *i2400m = FUNC1(net_dev);
	struct ethhdr *eth_hdr = _eth_hdr;

	FUNC0(eth_hdr->h_dest, net_dev->dev_addr, sizeof(eth_hdr->h_dest));
	FUNC0(eth_hdr->h_source, i2400m->src_mac_addr,
	       sizeof(eth_hdr->h_source));
	eth_hdr->h_proto = protocol;
}