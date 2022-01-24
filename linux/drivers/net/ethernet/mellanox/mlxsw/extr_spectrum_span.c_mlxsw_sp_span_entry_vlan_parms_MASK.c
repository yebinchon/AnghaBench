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
typedef  int /*<<< orphan*/  u16 ;
struct net_device {int flags; } ;
struct mlxsw_sp_span_parms {int /*<<< orphan*/  vid; int /*<<< orphan*/  dest_port; } ;

/* Variables and functions */
 int IFF_UP ; 
 int FUNC0 (struct mlxsw_sp_span_parms*) ; 
 struct net_device* FUNC1 (struct net_device const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 

__attribute__((used)) static int
FUNC3(const struct net_device *to_dev,
			       struct mlxsw_sp_span_parms *sparmsp)
{
	struct net_device *real_dev;
	u16 vid;

	if (!(to_dev->flags & IFF_UP))
		return FUNC0(sparmsp);

	real_dev = FUNC1(to_dev, &vid);
	sparmsp->dest_port = FUNC2(real_dev);
	sparmsp->vid = vid;
	return 0;
}