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
struct phylink_link_state {int /*<<< orphan*/  interface; } ;
struct mvpp2_port {int nqvecs; int /*<<< orphan*/  dev; int /*<<< orphan*/  phy_interface; int /*<<< orphan*/  phylink_config; scalar_t__ phylink; TYPE_2__* priv; TYPE_1__* qvecs; } ;
struct TYPE_4__ {scalar_t__ hw_version; } ;
struct TYPE_3__ {int /*<<< orphan*/  napi; } ;

/* Variables and functions */
 int /*<<< orphan*/  MLO_AN_INBAND ; 
 scalar_t__ MVPP22 ; 
 int /*<<< orphan*/  FUNC0 (struct mvpp2_port*) ; 
 int /*<<< orphan*/  FUNC1 (struct mvpp2_port*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct phylink_link_state*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct mvpp2_port*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 

__attribute__((used)) static void FUNC8(struct mvpp2_port *port)
{
	int i;

	FUNC4(port);

	for (i = 0; i < port->nqvecs; i++)
		FUNC5(&port->qvecs[i].napi);

	/* Enable interrupts on all threads */
	FUNC1(port);

	if (port->priv->hw_version == MVPP22)
		FUNC0(port);

	if (port->phylink) {
		FUNC7(port->phylink);
	} else {
		/* Phylink isn't used as of now for ACPI, so the MAC has to be
		 * configured manually when the interface is started. This will
		 * be removed as soon as the phylink ACPI support lands in.
		 */
		struct phylink_link_state state = {
			.interface = port->phy_interface,
		};
		FUNC2(&port->phylink_config, MLO_AN_INBAND, &state);
		FUNC3(&port->phylink_config, MLO_AN_INBAND,
				  port->phy_interface, NULL);
	}

	FUNC6(port->dev);
}