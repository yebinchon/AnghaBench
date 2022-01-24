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
struct nfp_sensors {int /*<<< orphan*/  assembly_3v3_power; int /*<<< orphan*/  assembly_12v_power; int /*<<< orphan*/  assembly_power; int /*<<< orphan*/  chip_temp; } ;
struct nfp_nsp {int dummy; } ;
struct nfp_cpp {int dummy; } ;
typedef  int /*<<< orphan*/  s ;
typedef  enum nfp_nsp_sensor_id { ____Placeholder_nfp_nsp_sensor_id } nfp_nsp_sensor_id ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EINVAL ; 
 scalar_t__ FUNC1 (struct nfp_nsp*) ; 
#define  NFP_SENSOR_ASSEMBLY_12V_POWER 131 
#define  NFP_SENSOR_ASSEMBLY_3V3_POWER 130 
#define  NFP_SENSOR_ASSEMBLY_POWER 129 
#define  NFP_SENSOR_CHIP_TEMPERATURE 128 
 int FUNC2 (struct nfp_nsp*) ; 
 long FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct nfp_nsp*) ; 
 struct nfp_nsp* FUNC5 (struct nfp_cpp*) ; 
 int FUNC6 (struct nfp_nsp*,int /*<<< orphan*/ ,struct nfp_sensors*,int) ; 

int FUNC7(struct nfp_cpp *cpp, enum nfp_nsp_sensor_id id,
			  long *val)
{
	struct nfp_sensors s;
	struct nfp_nsp *nsp;
	int ret;

	nsp = FUNC5(cpp);
	if (FUNC1(nsp))
		return FUNC2(nsp);

	ret = FUNC6(nsp, FUNC0(id), &s, sizeof(s));
	FUNC4(nsp);

	if (ret < 0)
		return ret;

	switch (id) {
	case NFP_SENSOR_CHIP_TEMPERATURE:
		*val = FUNC3(s.chip_temp);
		break;
	case NFP_SENSOR_ASSEMBLY_POWER:
		*val = FUNC3(s.assembly_power);
		break;
	case NFP_SENSOR_ASSEMBLY_12V_POWER:
		*val = FUNC3(s.assembly_12v_power);
		break;
	case NFP_SENSOR_ASSEMBLY_3V3_POWER:
		*val = FUNC3(s.assembly_3v3_power);
		break;
	default:
		return -EINVAL;
	}
	return 0;
}