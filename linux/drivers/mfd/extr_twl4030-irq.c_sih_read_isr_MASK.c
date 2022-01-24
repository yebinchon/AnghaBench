#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  scalar_t__ u32 ;
struct sih {int /*<<< orphan*/  bytes_ixr; TYPE_1__* mask; int /*<<< orphan*/  module; } ;
struct TYPE_2__ {int /*<<< orphan*/  isr_offset; } ;

/* Variables and functions */
 size_t irq_line ; 
 int FUNC0 (scalar_t__) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline int FUNC2(const struct sih *sih)
{
	int status;
	union {
		u8 bytes[4];
		u32 word;
	} isr;

	/* FIXME need retry-on-error ... */

	isr.word = 0;
	status = FUNC1(sih->module, isr.bytes,
			sih->mask[irq_line].isr_offset, sih->bytes_ixr);

	return (status < 0) ? status : FUNC0(isr.word);
}