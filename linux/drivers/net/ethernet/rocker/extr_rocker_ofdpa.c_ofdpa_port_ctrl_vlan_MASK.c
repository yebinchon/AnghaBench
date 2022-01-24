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
struct ofdpa_port {int dummy; } ;
struct ofdpa_ctrl {scalar_t__ term; scalar_t__ bridge; scalar_t__ acl; } ;
typedef  int /*<<< orphan*/  __be16 ;

/* Variables and functions */
 int EOPNOTSUPP ; 
 int FUNC0 (struct ofdpa_port*,int,struct ofdpa_ctrl const*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct ofdpa_port*,int,struct ofdpa_ctrl const*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct ofdpa_port*,int,struct ofdpa_ctrl const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct ofdpa_port *ofdpa_port, int flags,
				const struct ofdpa_ctrl *ctrl, __be16 vlan_id)
{
	if (ctrl->acl)
		return FUNC0(ofdpa_port, flags,
						ctrl, vlan_id);
	if (ctrl->bridge)
		return FUNC1(ofdpa_port, flags,
						   ctrl, vlan_id);

	if (ctrl->term)
		return FUNC2(ofdpa_port, flags,
						 ctrl, vlan_id);

	return -EOPNOTSUPP;
}