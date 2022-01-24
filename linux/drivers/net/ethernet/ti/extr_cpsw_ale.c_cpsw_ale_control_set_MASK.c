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
typedef  int u32 ;
struct TYPE_2__ {int ale_ports; scalar_t__ ale_regs; } ;
struct cpsw_ale {TYPE_1__ params; } ;
struct ale_control_info {int port_offset; int port_shift; int offset; int shift; int /*<<< orphan*/  bits; } ;

/* Variables and functions */
 int FUNC0 (struct ale_control_info*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int EINVAL ; 
 struct ale_control_info* ale_controls ; 
 int FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int,scalar_t__) ; 

int FUNC4(struct cpsw_ale *ale, int port, int control,
			 int value)
{
	const struct ale_control_info *info;
	int offset, shift;
	u32 tmp, mask;

	if (control < 0 || control >= FUNC0(ale_controls))
		return -EINVAL;

	info = &ale_controls[control];
	if (info->port_offset == 0 && info->port_shift == 0)
		port = 0; /* global, port is a dont care */

	if (port < 0 || port >= ale->params.ale_ports)
		return -EINVAL;

	mask = FUNC1(info->bits);
	if (value & ~mask)
		return -EINVAL;

	offset = info->offset + (port * info->port_offset);
	shift  = info->shift  + (port * info->port_shift);

	tmp = FUNC2(ale->params.ale_regs + offset);
	tmp = (tmp & ~(mask << shift)) | (value << shift);
	FUNC3(tmp, ale->params.ale_regs + offset);

	return 0;
}