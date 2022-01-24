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
struct hix5hd2_priv {scalar_t__ base; } ;

/* Variables and functions */
 int BITS_RX_EN ; 
 int BITS_TX_EN ; 
 scalar_t__ DESC_WR_RD_ENA ; 
 scalar_t__ PORT_EN ; 
 int /*<<< orphan*/  FUNC0 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC1(struct hix5hd2_priv *priv)
{
	FUNC0(0xf, priv->base + DESC_WR_RD_ENA);
	FUNC0(BITS_RX_EN | BITS_TX_EN, priv->base + PORT_EN);
}