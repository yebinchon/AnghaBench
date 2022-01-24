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
 int FUNC1 (struct mv643xx_eth_private*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static unsigned int FUNC2(struct mv643xx_eth_private *mp)
{
	u64 temp;

	temp = (FUNC1(mp, TX_FIFO_URGENT_THRESHOLD) & 0x3fff0) >> 4;
	temp *= 64000000;
	temp += mp->t_clk / 2;
	FUNC0(temp, mp->t_clk);

	return (unsigned int)temp;
}