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
struct enetc_si {int /*<<< orphan*/  cbd_ring; int /*<<< orphan*/  hw; } ;
struct enetc_ndev_priv {int /*<<< orphan*/  cls_rules; int /*<<< orphan*/  dev; struct enetc_si* si; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

void FUNC3(struct enetc_ndev_priv *priv)
{
	struct enetc_si *si = priv->si;

	FUNC0(&si->hw);
	FUNC1(priv->dev, &si->cbd_ring);

	FUNC2(priv->cls_rules);
}