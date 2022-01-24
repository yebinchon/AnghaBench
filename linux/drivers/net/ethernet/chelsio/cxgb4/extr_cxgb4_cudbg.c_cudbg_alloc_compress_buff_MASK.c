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
typedef  int u32 ;
struct cudbg_init {int compress_buff_size; scalar_t__ compress_buff; int /*<<< orphan*/ * workspace; } ;

/* Variables and functions */
 int CUDBG_COMPRESS_BUFF_SIZE ; 
 int ENOMEM ; 
 int FUNC0 () ; 
 scalar_t__ FUNC1 (int) ; 

__attribute__((used)) static int FUNC2(struct cudbg_init *pdbg_init)
{
	u32 workspace_size;

	workspace_size = FUNC0();
	pdbg_init->compress_buff = FUNC1(CUDBG_COMPRESS_BUFF_SIZE +
					   workspace_size);
	if (!pdbg_init->compress_buff)
		return -ENOMEM;

	pdbg_init->compress_buff_size = CUDBG_COMPRESS_BUFF_SIZE;
	pdbg_init->workspace = (u8 *)pdbg_init->compress_buff +
			       CUDBG_COMPRESS_BUFF_SIZE - workspace_size;
	return 0;
}