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
typedef  int u16 ;
struct lbs_private {scalar_t__ card; } ;
struct if_cs_card {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int IF_CS_BIT_TX ; 
 int /*<<< orphan*/  IF_CS_CARD_STATUS ; 
 int /*<<< orphan*/  IF_CS_HOST_INT_CAUSE ; 
 int /*<<< orphan*/  IF_CS_HOST_STATUS ; 
 int /*<<< orphan*/  IF_CS_WRITE ; 
 int /*<<< orphan*/  IF_CS_WRITE_LEN ; 
 int /*<<< orphan*/  FUNC1 (struct if_cs_card*) ; 
 int /*<<< orphan*/  FUNC2 (struct if_cs_card*) ; 
 int FUNC3 (struct if_cs_card*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct if_cs_card*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct if_cs_card*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (struct if_cs_card*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct lbs_private *priv, u8 *buf, u16 nb)
{
	struct if_cs_card *card = (struct if_cs_card *)priv->card;
	u16 status;

	FUNC1(card);

	status = FUNC3(card, IF_CS_CARD_STATUS);
	FUNC0((status & IF_CS_BIT_TX) == 0);

	FUNC4(card, IF_CS_WRITE_LEN, nb);

	/* write even number of bytes, then odd byte if necessary */
	FUNC5(card, IF_CS_WRITE, buf, nb / 2);
	if (nb & 1)
		FUNC6(card, IF_CS_WRITE, buf[nb-1]);

	FUNC4(card, IF_CS_HOST_STATUS, IF_CS_BIT_TX);
	FUNC4(card, IF_CS_HOST_INT_CAUSE, IF_CS_BIT_TX);
	FUNC2(card);
}