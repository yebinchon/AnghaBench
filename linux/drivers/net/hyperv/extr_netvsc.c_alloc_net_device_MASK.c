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
struct netvsc_device {int destroy; int tx_disable; int /*<<< orphan*/  subchan_work; int /*<<< orphan*/  subchan_open; int /*<<< orphan*/  channel_init_wait; int /*<<< orphan*/  pkt_align; int /*<<< orphan*/  max_pkt; int /*<<< orphan*/  wait_drain; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RNDIS_MAX_PKT_DEFAULT ; 
 int /*<<< orphan*/  RNDIS_PKT_ALIGN_DEFAULT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct netvsc_device* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  netvsc_subchan_work ; 

__attribute__((used)) static struct netvsc_device *FUNC4(void)
{
	struct netvsc_device *net_device;

	net_device = FUNC3(sizeof(struct netvsc_device), GFP_KERNEL);
	if (!net_device)
		return NULL;

	FUNC2(&net_device->wait_drain);
	net_device->destroy = false;
	net_device->tx_disable = false;

	net_device->max_pkt = RNDIS_MAX_PKT_DEFAULT;
	net_device->pkt_align = RNDIS_PKT_ALIGN_DEFAULT;

	FUNC1(&net_device->channel_init_wait);
	FUNC2(&net_device->subchan_open);
	FUNC0(&net_device->subchan_work, netvsc_subchan_work);

	return net_device;
}