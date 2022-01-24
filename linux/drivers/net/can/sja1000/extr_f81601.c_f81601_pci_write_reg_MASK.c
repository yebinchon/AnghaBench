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
typedef  int /*<<< orphan*/  u8 ;
struct sja1000_priv {scalar_t__ reg_base; struct f81601_pci_card* priv; } ;
struct f81601_pci_card {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC4(const struct sja1000_priv *priv, int port,
				 u8 val)
{
	struct f81601_pci_card *card = priv->priv;
	unsigned long flags;

	FUNC1(&card->lock, flags);
	FUNC3(val, priv->reg_base + port);
	FUNC0(priv->reg_base);
	FUNC2(&card->lock, flags);
}