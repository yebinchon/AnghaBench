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
struct ipw_priv {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int IPW_DMA_I_CURRENT_CB ; 
 int IPW_DMA_I_DMA_CONTROL ; 
 int FUNC2 (struct ipw_priv*,int) ; 

__attribute__((used)) static void FUNC3(struct ipw_priv *priv)
{
	u32 address;
	u32 register_value = 0;
	u32 cb_fields_address = 0;

	FUNC0(">> :\n");
	address = FUNC2(priv, IPW_DMA_I_CURRENT_CB);
	FUNC1("Current CB is 0x%x\n", address);

	/* Read the DMA Controlor register */
	register_value = FUNC2(priv, IPW_DMA_I_DMA_CONTROL);
	FUNC1("IPW_DMA_I_DMA_CONTROL is 0x%x\n", register_value);

	/* Print the CB values */
	cb_fields_address = address;
	register_value = FUNC2(priv, cb_fields_address);
	FUNC1("Current CB Control Field is 0x%x\n", register_value);

	cb_fields_address += sizeof(u32);
	register_value = FUNC2(priv, cb_fields_address);
	FUNC1("Current CB Source Field is 0x%x\n", register_value);

	cb_fields_address += sizeof(u32);
	register_value = FUNC2(priv, cb_fields_address);
	FUNC1("Current CB Destination Field is 0x%x\n",
			  register_value);

	cb_fields_address += sizeof(u32);
	register_value = FUNC2(priv, cb_fields_address);
	FUNC1("Current CB Status Field is 0x%x\n", register_value);

	FUNC0(">> :\n");
}