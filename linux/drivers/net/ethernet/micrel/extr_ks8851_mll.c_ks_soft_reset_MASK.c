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
struct ks_net {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  KS_GRR ; 
 int /*<<< orphan*/  KS_IER ; 
 int /*<<< orphan*/  FUNC0 (struct ks_net*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

__attribute__((used)) static void FUNC2(struct ks_net *ks, unsigned op)
{
	/* Disable interrupt first */
	FUNC0(ks, KS_IER, 0x0000);
	FUNC0(ks, KS_GRR, op);
	FUNC1(10);	/* wait a short time to effect reset */
	FUNC0(ks, KS_GRR, 0);
	FUNC1(1);	/* wait for condition to clear */
}