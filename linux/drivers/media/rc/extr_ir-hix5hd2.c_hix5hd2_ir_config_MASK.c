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
typedef  int u32 ;
struct hix5hd2_ir_priv {scalar_t__ base; int /*<<< orphan*/  rate; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 int ETIMEDOUT ; 
 scalar_t__ IR_BUSY ; 
 int IR_CFG_FORMAT_MASK ; 
 int IR_CFG_FORMAT_SHIFT ; 
 int IR_CFG_FREQ_MASK ; 
 int IR_CFG_FREQ_SHIFT ; 
 int IR_CFG_INT_LEVEL_MASK ; 
 int IR_CFG_INT_LEVEL_SHIFT ; 
 int IR_CFG_INT_THRESHOLD ; 
 int IR_CFG_MODE_RAW ; 
 int IR_CFG_SYMBOL_FMT ; 
 int IR_CFG_SYMBOL_MAXWIDTH ; 
 int IR_CFG_WIDTH_MASK ; 
 int IR_CFG_WIDTH_SHIFT ; 
 scalar_t__ IR_CONFIG ; 
 scalar_t__ IR_ENABLE ; 
 scalar_t__ IR_INTM ; 
 scalar_t__ IR_START ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC5(struct hix5hd2_ir_priv *priv)
{
	int timeout = 10000;
	u32 val, rate;

	FUNC4(0x01, priv->base + IR_ENABLE);
	while (FUNC2(priv->base + IR_BUSY)) {
		if (timeout--) {
			FUNC3(1);
		} else {
			FUNC1(priv->dev, "IR_BUSY timeout\n");
			return -ETIMEDOUT;
		}
	}

	/* Now only support raw mode, with symbol start from low to high */
	rate = FUNC0(priv->rate, 1000000);
	val = IR_CFG_SYMBOL_MAXWIDTH & IR_CFG_WIDTH_MASK << IR_CFG_WIDTH_SHIFT;
	val |= IR_CFG_SYMBOL_FMT & IR_CFG_FORMAT_MASK << IR_CFG_FORMAT_SHIFT;
	val |= (IR_CFG_INT_THRESHOLD - 1) & IR_CFG_INT_LEVEL_MASK
	       << IR_CFG_INT_LEVEL_SHIFT;
	val |= IR_CFG_MODE_RAW;
	val |= (rate - 1) & IR_CFG_FREQ_MASK << IR_CFG_FREQ_SHIFT;
	FUNC4(val, priv->base + IR_CONFIG);

	FUNC4(0x00, priv->base + IR_INTM);
	/* write arbitrary value to start  */
	FUNC4(0x01, priv->base + IR_START);
	return 0;
}