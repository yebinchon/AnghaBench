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
struct w5300_priv {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  S0_CR_CLOSE ; 
 int /*<<< orphan*/  W5300_IMR ; 
 int /*<<< orphan*/  FUNC0 (struct w5300_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct w5300_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct w5300_priv *priv)
{
	FUNC1(priv, W5300_IMR, 0);
	FUNC0(priv, S0_CR_CLOSE);
}