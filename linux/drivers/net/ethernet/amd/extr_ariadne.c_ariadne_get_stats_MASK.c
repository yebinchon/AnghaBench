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
struct net_device_stats {int /*<<< orphan*/  rx_missed_errors; } ;
struct net_device {struct net_device_stats stats; scalar_t__ base_addr; } ;
struct Am79C960 {short RAP; int /*<<< orphan*/  RDP; } ;

/* Variables and functions */
 short CSR112 ; 
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct net_device_stats *FUNC3(struct net_device *dev)
{
	volatile struct Am79C960 *lance = (struct Am79C960 *)dev->base_addr;
	short saved_addr;
	unsigned long flags;

	FUNC1(flags);
	saved_addr = lance->RAP;
	lance->RAP = CSR112;		/* Missed Frame Count */
	dev->stats.rx_missed_errors = FUNC2(lance->RDP);
	lance->RAP = saved_addr;
	FUNC0(flags);

	return &dev->stats;
}