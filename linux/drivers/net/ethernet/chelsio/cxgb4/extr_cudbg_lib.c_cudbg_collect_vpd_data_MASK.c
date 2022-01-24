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
typedef  char u32 ;
struct vpd_params {int /*<<< orphan*/  id; int /*<<< orphan*/  na; int /*<<< orphan*/  pn; int /*<<< orphan*/  sn; int /*<<< orphan*/  member_0; } ;
struct cudbg_vpd_data {char scfg_vers; char vpd_vers; int /*<<< orphan*/  fw_build; int /*<<< orphan*/  fw_micro; int /*<<< orphan*/  fw_minor; int /*<<< orphan*/  fw_major; int /*<<< orphan*/  mn; int /*<<< orphan*/  na; int /*<<< orphan*/  bn; int /*<<< orphan*/  sn; } ;
struct cudbg_init {struct adapter* adap; } ;
struct cudbg_error {int dummy; } ;
struct cudbg_buffer {scalar_t__ data; int /*<<< orphan*/  member_0; } ;
struct adapter {int /*<<< orphan*/  pdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  CUDBG_SCFG_VER_ADDR ; 
 int CUDBG_SCFG_VER_LEN ; 
 int /*<<< orphan*/  CUDBG_VPD_PF_SIZE ; 
 int /*<<< orphan*/  CUDBG_VPD_VER_ADDR ; 
 int CUDBG_VPD_VER_LEN ; 
 int /*<<< orphan*/  EEPROMVSIZE ; 
 int /*<<< orphan*/  FUNC0 (char) ; 
 int /*<<< orphan*/  FUNC1 (char) ; 
 int /*<<< orphan*/  FUNC2 (char) ; 
 int /*<<< orphan*/  FUNC3 (char) ; 
 scalar_t__ ID_LEN ; 
 scalar_t__ MACADDR_LEN ; 
 scalar_t__ PN_LEN ; 
 scalar_t__ SERNUM_LEN ; 
 int FUNC4 (struct cudbg_init*,struct cudbg_buffer*,int,struct cudbg_buffer*) ; 
 int FUNC5 (struct adapter*,int /*<<< orphan*/ ,int,char*) ; 
 int FUNC6 (struct cudbg_init*,struct cudbg_buffer*,struct cudbg_buffer*) ; 
 int FUNC7 (char*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC10 (struct adapter*,char*) ; 
 int FUNC11 (struct adapter*,struct vpd_params*) ; 

int FUNC12(struct cudbg_init *pdbg_init,
			   struct cudbg_buffer *dbg_buff,
			   struct cudbg_error *cudbg_err)
{
	struct adapter *padap = pdbg_init->adap;
	struct cudbg_buffer temp_buff = { 0 };
	char vpd_str[CUDBG_VPD_VER_LEN + 1];
	u32 scfg_vers, vpd_vers, fw_vers;
	struct cudbg_vpd_data *vpd_data;
	struct vpd_params vpd = { 0 };
	int rc, ret;

	rc = FUNC11(padap, &vpd);
	if (rc)
		return rc;

	rc = FUNC10(padap, &fw_vers);
	if (rc)
		return rc;

	/* Serial Configuration Version is located beyond the PF's vpd size.
	 * Temporarily give access to entire EEPROM to get it.
	 */
	rc = FUNC9(padap->pdev, EEPROMVSIZE);
	if (rc < 0)
		return rc;

	ret = FUNC5(padap, CUDBG_SCFG_VER_ADDR, CUDBG_SCFG_VER_LEN,
				 &scfg_vers);

	/* Restore back to original PF's vpd size */
	rc = FUNC9(padap->pdev, CUDBG_VPD_PF_SIZE);
	if (rc < 0)
		return rc;

	if (ret)
		return ret;

	rc = FUNC5(padap, CUDBG_VPD_VER_ADDR, CUDBG_VPD_VER_LEN,
				vpd_str);
	if (rc)
		return rc;

	vpd_str[CUDBG_VPD_VER_LEN] = '\0';
	rc = FUNC7(vpd_str, 0, &vpd_vers);
	if (rc)
		return rc;

	rc = FUNC4(pdbg_init, dbg_buff, sizeof(struct cudbg_vpd_data),
			    &temp_buff);
	if (rc)
		return rc;

	vpd_data = (struct cudbg_vpd_data *)temp_buff.data;
	FUNC8(vpd_data->sn, vpd.sn, SERNUM_LEN + 1);
	FUNC8(vpd_data->bn, vpd.pn, PN_LEN + 1);
	FUNC8(vpd_data->na, vpd.na, MACADDR_LEN + 1);
	FUNC8(vpd_data->mn, vpd.id, ID_LEN + 1);
	vpd_data->scfg_vers = scfg_vers;
	vpd_data->vpd_vers = vpd_vers;
	vpd_data->fw_major = FUNC1(fw_vers);
	vpd_data->fw_minor = FUNC3(fw_vers);
	vpd_data->fw_micro = FUNC2(fw_vers);
	vpd_data->fw_build = FUNC0(fw_vers);
	return FUNC6(pdbg_init, &temp_buff, dbg_buff);
}