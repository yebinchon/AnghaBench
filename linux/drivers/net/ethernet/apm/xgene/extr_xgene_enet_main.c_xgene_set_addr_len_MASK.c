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
typedef  int dma_addr_t ;
typedef  int /*<<< orphan*/  __le64 ;

/* Variables and functions */
 int /*<<< orphan*/  BUFDATALEN ; 
 int /*<<< orphan*/  DATAADDR ; 
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

__attribute__((used)) static void FUNC2(__le64 *desc, u32 idx, dma_addr_t addr, u32 len)
{
	desc[idx ^ 1] = FUNC1(FUNC0(DATAADDR, addr) |
				    FUNC0(BUFDATALEN, len));
}