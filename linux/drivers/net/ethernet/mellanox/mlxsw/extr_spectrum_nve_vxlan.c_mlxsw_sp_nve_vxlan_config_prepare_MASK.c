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
typedef  int /*<<< orphan*/  udp_sport ;
typedef  int u8 ;
struct TYPE_2__ {int /*<<< orphan*/  addr4; } ;
struct mlxsw_sp_nve_config {TYPE_1__ ul_sip; int /*<<< orphan*/  ttl; } ;

/* Variables and functions */
 int /*<<< orphan*/  MLXSW_REG_TNGCR_TYPE_VXLAN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(char *tngcr_pl,
				  const struct mlxsw_sp_nve_config *config)
{
	u8 udp_sport;

	FUNC3(tngcr_pl, MLXSW_REG_TNGCR_TYPE_VXLAN, true,
			     config->ttl);
	/* VxLAN driver's default UDP source port range is 32768 (0x8000)
	 * to 60999 (0xee47). Set the upper 8 bits of the UDP source port
	 * to a random number between 0x80 and 0xee
	 */
	FUNC1(&udp_sport, sizeof(udp_sport));
	udp_sport = (udp_sport % (0xee - 0x80 + 1)) + 0x80;
	FUNC2(tngcr_pl, udp_sport);
	FUNC4(tngcr_pl, FUNC0(config->ul_sip.addr4));
}