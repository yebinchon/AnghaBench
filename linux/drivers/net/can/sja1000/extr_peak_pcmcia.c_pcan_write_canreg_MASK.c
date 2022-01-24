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
typedef  int u8 ;
struct sja1000_priv {int reg_base; struct pcan_pccard* priv; } ;
struct pcan_pccard {int ioport_addr; } ;

/* Variables and functions */
#define  MOD_RM 128 
 int PCC_CHAN_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  PCC_LED_ON ; 
 int /*<<< orphan*/  PCC_LED_SLOW ; 
 int SJA1000_MOD ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct pcan_pccard*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct pcan_pccard*) ; 

__attribute__((used)) static void FUNC4(const struct sja1000_priv *priv, int port, u8 v)
{
	struct pcan_pccard *card = priv->priv;
	int c = (priv->reg_base - card->ioport_addr) / PCC_CHAN_SIZE;

	/* sja1000 register changes control the leds state */
	if (port == SJA1000_MOD)
		switch (v) {
		case MOD_RM:
			/* Reset Mode: set led on */
			FUNC2(card, FUNC0(c), PCC_LED_ON);
			break;
		case 0x00:
			/* Normal Mode: led slow blinking and start led timer */
			FUNC2(card, FUNC0(c), PCC_LED_SLOW);
			FUNC3(card);
			break;
		default:
			break;
		}

	FUNC1(v, priv->reg_base + port);
}