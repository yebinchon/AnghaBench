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
struct rocker_port {struct ofdpa_port* wpriv; } ;
struct ofdpa_port {int dummy; } ;
typedef  int /*<<< orphan*/  __be16 ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (struct ofdpa_port*,unsigned char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ofdpa_port*) ; 
 int /*<<< orphan*/  FUNC2 (struct ofdpa_port*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct rocker_port *rocker_port,
				  u16 vid, const unsigned char *addr)
{
	struct ofdpa_port *ofdpa_port = rocker_port->wpriv;
	__be16 vlan_id = FUNC2(ofdpa_port, vid, NULL);

	if (!FUNC1(ofdpa_port))
		return -EINVAL;

	return FUNC0(ofdpa_port, addr, vlan_id, 0);
}