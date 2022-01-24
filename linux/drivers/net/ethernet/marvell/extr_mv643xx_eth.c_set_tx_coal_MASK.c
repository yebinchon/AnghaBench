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
typedef  int u64 ;
struct mv643xx_eth_private {int t_clk; } ;

/* Variables and functions */
 int /*<<< orphan*/  TX_FIFO_URGENT_THRESHOLD ; 
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct mv643xx_eth_private*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC2(struct mv643xx_eth_private *mp, unsigned int usec)
{
	u64 temp;

	temp = (u64)usec * mp->t_clk;
	temp += 31999999;
	FUNC0(temp, 64000000);

	if (temp > 0x3fff)
		temp = 0x3fff;

	FUNC1(mp, TX_FIFO_URGENT_THRESHOLD, temp << 4);
}