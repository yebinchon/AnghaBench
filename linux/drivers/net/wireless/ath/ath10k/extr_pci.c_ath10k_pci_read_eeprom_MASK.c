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
typedef  int u32 ;
typedef  int u16 ;
struct ath10k {int dummy; } ;

/* Variables and functions */
 int EIO ; 
 int ETIMEDOUT ; 
 scalar_t__ FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  QCA9887_EEPROM_ADDR_HI ; 
 int /*<<< orphan*/  QCA9887_EEPROM_ADDR_LO ; 
 int QCA9887_EEPROM_SELECT_READ ; 
 scalar_t__ SI_BASE_ADDRESS ; 
 int /*<<< orphan*/  SI_CS_DONE_ERR ; 
 int /*<<< orphan*/  SI_CS_DONE_INT ; 
 scalar_t__ SI_CS_OFFSET ; 
 int /*<<< orphan*/  SI_CS_RX_CNT ; 
 int /*<<< orphan*/  SI_CS_START ; 
 int /*<<< orphan*/  SI_CS_TX_CNT ; 
 scalar_t__ SI_RX_DATA0_OFFSET ; 
 scalar_t__ SI_TX_DATA0_OFFSET ; 
 int FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ath10k*,char*,int) ; 
 int FUNC3 (struct ath10k*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct ath10k*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

__attribute__((used)) static int FUNC6(struct ath10k *ar, u16 addr, u8 *out)
{
	u32 reg;
	int wait_limit;

	/* set device select byte and for the read operation */
	reg = QCA9887_EEPROM_SELECT_READ |
	      FUNC1(addr, QCA9887_EEPROM_ADDR_LO) |
	      FUNC1(addr >> 8, QCA9887_EEPROM_ADDR_HI);
	FUNC4(ar, SI_BASE_ADDRESS + SI_TX_DATA0_OFFSET, reg);

	/* write transmit data, transfer length, and START bit */
	FUNC4(ar, SI_BASE_ADDRESS + SI_CS_OFFSET,
			   FUNC1(1, SI_CS_START) | FUNC1(1, SI_CS_RX_CNT) |
			   FUNC1(4, SI_CS_TX_CNT));

	/* wait max 1 sec */
	wait_limit = 100000;

	/* wait for SI_CS_DONE_INT */
	do {
		reg = FUNC3(ar, SI_BASE_ADDRESS + SI_CS_OFFSET);
		if (FUNC0(reg, SI_CS_DONE_INT))
			break;

		wait_limit--;
		FUNC5(10);
	} while (wait_limit > 0);

	if (!FUNC0(reg, SI_CS_DONE_INT)) {
		FUNC2(ar, "timeout while reading device EEPROM at %04x\n",
			   addr);
		return -ETIMEDOUT;
	}

	/* clear SI_CS_DONE_INT */
	FUNC4(ar, SI_BASE_ADDRESS + SI_CS_OFFSET, reg);

	if (FUNC0(reg, SI_CS_DONE_ERR)) {
		FUNC2(ar, "failed to read device EEPROM at %04x\n", addr);
		return -EIO;
	}

	/* extract receive data */
	reg = FUNC3(ar, SI_BASE_ADDRESS + SI_RX_DATA0_OFFSET);
	*out = reg;

	return 0;
}