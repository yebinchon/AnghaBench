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
typedef  scalar_t__ u32 ;
struct ipw_priv {int dummy; } ;
struct command_block {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ IPW_SHARED_SRAM_DMA_CONTROL ; 
 int /*<<< orphan*/  FUNC1 (struct ipw_priv*,scalar_t__,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC2(struct ipw_priv *priv, int index,
					  struct command_block *cb)
{
	u32 address =
	    IPW_SHARED_SRAM_DMA_CONTROL +
	    (sizeof(struct command_block) * index);
	FUNC0(">> :\n");

	FUNC1(priv, address, (u8 *) cb,
			   (int)sizeof(struct command_block));

	FUNC0("<< :\n");
	return 0;

}