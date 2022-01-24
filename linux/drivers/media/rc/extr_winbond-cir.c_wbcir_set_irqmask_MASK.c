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
typedef  scalar_t__ u8 ;
struct wbcir_data {scalar_t__ irqmask; scalar_t__ sbase; } ;

/* Variables and functions */
 int /*<<< orphan*/  WBCIR_BANK_0 ; 
 scalar_t__ WBCIR_REG_SP3_IER ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct wbcir_data*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void
FUNC2(struct wbcir_data *data, u8 irqmask)
{
	if (data->irqmask == irqmask)
		return;

	FUNC1(data, WBCIR_BANK_0);
	FUNC0(irqmask, data->sbase + WBCIR_REG_SP3_IER);
	data->irqmask = irqmask;
}