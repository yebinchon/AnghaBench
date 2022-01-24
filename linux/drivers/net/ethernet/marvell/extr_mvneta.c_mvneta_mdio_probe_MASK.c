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
struct mvneta_port {TYPE_1__* dev; int /*<<< orphan*/  phylink; int /*<<< orphan*/  dn; } ;
struct ethtool_wolinfo {int /*<<< orphan*/  supported; int /*<<< orphan*/  cmd; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETHTOOL_GWOL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct ethtool_wolinfo*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct mvneta_port *pp)
{
	struct ethtool_wolinfo wol = { .cmd = ETHTOOL_GWOL };
	int err = FUNC3(pp->phylink, pp->dn, 0);

	if (err)
		FUNC1(pp->dev, "could not attach PHY: %d\n", err);

	FUNC2(pp->phylink, &wol);
	FUNC0(&pp->dev->dev, !!wol.supported);

	return err;
}