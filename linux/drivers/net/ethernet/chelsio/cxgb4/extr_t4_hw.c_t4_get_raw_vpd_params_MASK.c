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
typedef  scalar_t__ u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct vpd_params {char* id; char* ec; char* sn; char* pn; char* na; } ;
struct adapter {int /*<<< orphan*/  pdev_dev; int /*<<< orphan*/  pdev; } ;

/* Variables and functions */
 scalar_t__ CHELSIO_VPD_UNIQUE_ID ; 
 unsigned int EC_LEN ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 unsigned int ID_LEN ; 
 int /*<<< orphan*/  MACADDR_LEN ; 
 int PCI_VPD_INFO_FLD_HDR_SIZE ; 
 scalar_t__ PCI_VPD_LRDT_ID_STRING ; 
 int /*<<< orphan*/  PCI_VPD_LRDT_RO_DATA ; 
 int PCI_VPD_LRDT_TAG_SIZE ; 
 int /*<<< orphan*/  PN_LEN ; 
 int /*<<< orphan*/  SERNUM_LEN ; 
 int VPD_BASE ; 
 int VPD_BASE_OLD ; 
 unsigned int VPD_LEN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (char*,scalar_t__*,unsigned int) ; 
 unsigned int FUNC3 (int,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int,unsigned int,scalar_t__*) ; 
 int FUNC5 (scalar_t__*,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ) ; 
 int FUNC6 (scalar_t__*) ; 
 unsigned int FUNC7 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__*) ; 
 scalar_t__* FUNC10 (unsigned int) ; 

int FUNC11(struct adapter *adapter, struct vpd_params *p)
{
	int i, ret = 0, addr;
	int ec, sn, pn, na;
	u8 *vpd, csum;
	unsigned int vpdr_len, kw_offset, id_len;

	vpd = FUNC10(VPD_LEN);
	if (!vpd)
		return -ENOMEM;

	/* Card information normally starts at VPD_BASE but early cards had
	 * it at 0.
	 */
	ret = FUNC4(adapter->pdev, VPD_BASE, sizeof(u32), vpd);
	if (ret < 0)
		goto out;

	/* The VPD shall have a unique identifier specified by the PCI SIG.
	 * For chelsio adapters, the identifier is 0x82. The first byte of a VPD
	 * shall be CHELSIO_VPD_UNIQUE_ID (0x82). The VPD programming software
	 * is expected to automatically put this entry at the
	 * beginning of the VPD.
	 */
	addr = *vpd == CHELSIO_VPD_UNIQUE_ID ? VPD_BASE : VPD_BASE_OLD;

	ret = FUNC4(adapter->pdev, addr, VPD_LEN, vpd);
	if (ret < 0)
		goto out;

	if (vpd[0] != PCI_VPD_LRDT_ID_STRING) {
		FUNC1(adapter->pdev_dev, "missing VPD ID string\n");
		ret = -EINVAL;
		goto out;
	}

	id_len = FUNC7(vpd);
	if (id_len > ID_LEN)
		id_len = ID_LEN;

	i = FUNC5(vpd, 0, VPD_LEN, PCI_VPD_LRDT_RO_DATA);
	if (i < 0) {
		FUNC1(adapter->pdev_dev, "missing VPD-R section\n");
		ret = -EINVAL;
		goto out;
	}

	vpdr_len = FUNC7(&vpd[i]);
	kw_offset = i + PCI_VPD_LRDT_TAG_SIZE;
	if (vpdr_len + kw_offset > VPD_LEN) {
		FUNC1(adapter->pdev_dev, "bad VPD-R length %u\n", vpdr_len);
		ret = -EINVAL;
		goto out;
	}

#define FIND_VPD_KW(var, name) do { \
	var = pci_vpd_find_info_keyword(vpd, kw_offset, vpdr_len, name); \
	if (var < 0) { \
		dev_err(adapter->pdev_dev, "missing VPD keyword " name "\n"); \
		ret = -EINVAL; \
		goto out; \
	} \
	var += PCI_VPD_INFO_FLD_HDR_SIZE; \
} while (0)

	FIND_VPD_KW(i, "RV");
	for (csum = 0; i >= 0; i--)
		csum += vpd[i];

	if (csum) {
		FUNC1(adapter->pdev_dev,
			"corrupted VPD EEPROM, actual csum %u\n", csum);
		ret = -EINVAL;
		goto out;
	}

	FIND_VPD_KW(ec, "EC");
	FIND_VPD_KW(sn, "SN");
	FIND_VPD_KW(pn, "PN");
	FIND_VPD_KW(na, "NA");
#undef FIND_VPD_KW

	FUNC2(p->id, vpd + PCI_VPD_LRDT_TAG_SIZE, id_len);
	FUNC8(p->id);
	FUNC2(p->ec, vpd + ec, EC_LEN);
	FUNC8(p->ec);
	i = FUNC6(vpd + sn - PCI_VPD_INFO_FLD_HDR_SIZE);
	FUNC2(p->sn, vpd + sn, FUNC3(i, SERNUM_LEN));
	FUNC8(p->sn);
	i = FUNC6(vpd + pn - PCI_VPD_INFO_FLD_HDR_SIZE);
	FUNC2(p->pn, vpd + pn, FUNC3(i, PN_LEN));
	FUNC8(p->pn);
	FUNC2(p->na, vpd + na, FUNC3(i, MACADDR_LEN));
	FUNC8((char *)p->na);

out:
	FUNC9(vpd);
	return ret < 0 ? ret : 0;
}