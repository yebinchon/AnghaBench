#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct vpfe_device {unsigned long field_off; int /*<<< orphan*/  ccdc; TYPE_2__* next_frm; } ;
struct TYPE_3__ {int /*<<< orphan*/  vb2_buf; } ;
struct TYPE_4__ {TYPE_1__ vb; } ;

/* Variables and functions */
 unsigned long FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static inline void FUNC2(struct vpfe_device *vpfe)
{
	unsigned long addr;

	addr = FUNC0(&vpfe->next_frm->vb.vb2_buf, 0) +
					vpfe->field_off;

	FUNC1(&vpfe->ccdc, addr);
}