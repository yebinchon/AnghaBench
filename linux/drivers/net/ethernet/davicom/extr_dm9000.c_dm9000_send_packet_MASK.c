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
typedef  int u16 ;
struct net_device {int dummy; } ;
struct board_info {int ip_summed; } ;

/* Variables and functions */
 int CHECKSUM_NONE ; 
 int /*<<< orphan*/  DM9000_TCCR ; 
 int /*<<< orphan*/  DM9000_TCR ; 
 int /*<<< orphan*/  DM9000_TXPLH ; 
 int /*<<< orphan*/  DM9000_TXPLL ; 
 int TCCR_IP ; 
 int TCCR_TCP ; 
 int TCCR_UDP ; 
 int TCR_TXREQ ; 
 int /*<<< orphan*/  FUNC0 (struct board_info*,int /*<<< orphan*/ ,int) ; 
 struct board_info* FUNC1 (struct net_device*) ; 

__attribute__((used)) static void FUNC2(struct net_device *dev,
			       int ip_summed,
			       u16 pkt_len)
{
	struct board_info *dm = FUNC1(dev);

	/* The DM9000 is not smart enough to leave fragmented packets alone. */
	if (dm->ip_summed != ip_summed) {
		if (ip_summed == CHECKSUM_NONE)
			FUNC0(dm, DM9000_TCCR, 0);
		else
			FUNC0(dm, DM9000_TCCR, TCCR_IP | TCCR_UDP | TCCR_TCP);
		dm->ip_summed = ip_summed;
	}

	/* Set TX length to DM9000 */
	FUNC0(dm, DM9000_TXPLL, pkt_len);
	FUNC0(dm, DM9000_TXPLH, pkt_len >> 8);

	/* Issue TX polling command */
	FUNC0(dm, DM9000_TCR, TCR_TXREQ);	/* Cleared after TX complete */
}