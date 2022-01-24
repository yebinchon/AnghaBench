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
struct enc28j60_net {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENC28J60_SOFT_RESET ; 
 int /*<<< orphan*/  FUNC0 (struct enc28j60_net*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

__attribute__((used)) static void FUNC2(struct enc28j60_net *priv)
{
	FUNC0(priv, ENC28J60_SOFT_RESET, 0, ENC28J60_SOFT_RESET);
	/* Errata workaround #1, CLKRDY check is unreliable,
	 * delay at least 1 ms instead */
	FUNC1(2000);
}