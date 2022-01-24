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
struct encx24j600_priv {int hw_enabled; } ;

/* Variables and functions */
 int /*<<< orphan*/  DISABLERX ; 
 int /*<<< orphan*/  EIE ; 
 int /*<<< orphan*/  FUNC0 (struct encx24j600_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct encx24j600_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct encx24j600_priv *priv)
{
	/* Disable all interrupts */
	FUNC1(priv, EIE, 0);

	/* Disable RX */
	FUNC0(priv, DISABLERX);

	priv->hw_enabled = false;
}