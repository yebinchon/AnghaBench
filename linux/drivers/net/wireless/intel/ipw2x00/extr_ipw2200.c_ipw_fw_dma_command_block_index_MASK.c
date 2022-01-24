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
struct command_block {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int) ; 
 int /*<<< orphan*/  IPW_DMA_I_CURRENT_CB ; 
 int IPW_SHARED_SRAM_DMA_CONTROL ; 
 int FUNC2 (struct ipw_priv*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct ipw_priv *priv)
{
	u32 current_cb_address = 0;
	u32 current_cb_index = 0;

	FUNC0("<< :\n");
	current_cb_address = FUNC2(priv, IPW_DMA_I_CURRENT_CB);

	current_cb_index = (current_cb_address - IPW_SHARED_SRAM_DMA_CONTROL) /
	    sizeof(struct command_block);

	FUNC1("Current CB index 0x%x address = 0x%X\n",
			  current_cb_index, current_cb_address);

	FUNC0(">> :\n");
	return current_cb_index;

}