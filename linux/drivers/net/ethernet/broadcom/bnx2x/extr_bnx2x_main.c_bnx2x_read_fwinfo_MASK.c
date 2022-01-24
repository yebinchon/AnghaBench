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
typedef  int u8 ;
struct bnx2x {char* fw_ver; int /*<<< orphan*/  pdev; } ;

/* Variables and functions */
 int BNX2X_VPD_LEN ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int PCI_VENDOR_ID_DELL ; 
 scalar_t__ PCI_VPD_INFO_FLD_HDR_SIZE ; 
 int /*<<< orphan*/  PCI_VPD_LRDT_RO_DATA ; 
 int PCI_VPD_LRDT_TAG_SIZE ; 
 int /*<<< orphan*/  PCI_VPD_RO_KEYWORD_MFR_ID ; 
 int /*<<< orphan*/  PCI_VPD_RO_KEYWORD_VENDOR0 ; 
 int VENDOR_ID_LEN ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (int /*<<< orphan*/ ,int,int,char*) ; 
 int FUNC5 (char*,int,int,int /*<<< orphan*/ ) ; 
 int FUNC6 (char*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC7 (char*) ; 
 int FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (char*,int,char*,int) ; 
 int /*<<< orphan*/  FUNC10 (char*,char*,int) ; 

__attribute__((used)) static void FUNC11(struct bnx2x *bp)
{
	int cnt, i, block_end, rodi;
	char vpd_start[BNX2X_VPD_LEN+1];
	char str_id_reg[VENDOR_ID_LEN+1];
	char str_id_cap[VENDOR_ID_LEN+1];
	char *vpd_data;
	char *vpd_extended_data = NULL;
	u8 len;

	cnt = FUNC4(bp->pdev, 0, BNX2X_VPD_LEN, vpd_start);
	FUNC3(bp->fw_ver, 0, sizeof(bp->fw_ver));

	if (cnt < BNX2X_VPD_LEN)
		goto out_not_found;

	/* VPD RO tag should be first tag after identifier string, hence
	 * we should be able to find it in first BNX2X_VPD_LEN chars
	 */
	i = FUNC6(vpd_start, 0, BNX2X_VPD_LEN,
			     PCI_VPD_LRDT_RO_DATA);
	if (i < 0)
		goto out_not_found;

	block_end = i + PCI_VPD_LRDT_TAG_SIZE +
		    FUNC8(&vpd_start[i]);

	i += PCI_VPD_LRDT_TAG_SIZE;

	if (block_end > BNX2X_VPD_LEN) {
		vpd_extended_data = FUNC1(block_end, GFP_KERNEL);
		if (vpd_extended_data  == NULL)
			goto out_not_found;

		/* read rest of vpd image into vpd_extended_data */
		FUNC2(vpd_extended_data, vpd_start, BNX2X_VPD_LEN);
		cnt = FUNC4(bp->pdev, BNX2X_VPD_LEN,
				   block_end - BNX2X_VPD_LEN,
				   vpd_extended_data + BNX2X_VPD_LEN);
		if (cnt < (block_end - BNX2X_VPD_LEN))
			goto out_not_found;
		vpd_data = vpd_extended_data;
	} else
		vpd_data = vpd_start;

	/* now vpd_data holds full vpd content in both cases */

	rodi = FUNC5(vpd_data, i, block_end,
				   PCI_VPD_RO_KEYWORD_MFR_ID);
	if (rodi < 0)
		goto out_not_found;

	len = FUNC7(&vpd_data[rodi]);

	if (len != VENDOR_ID_LEN)
		goto out_not_found;

	rodi += PCI_VPD_INFO_FLD_HDR_SIZE;

	/* vendor specific info */
	FUNC9(str_id_reg, VENDOR_ID_LEN + 1, "%04x", PCI_VENDOR_ID_DELL);
	FUNC9(str_id_cap, VENDOR_ID_LEN + 1, "%04X", PCI_VENDOR_ID_DELL);
	if (!FUNC10(str_id_reg, &vpd_data[rodi], VENDOR_ID_LEN) ||
	    !FUNC10(str_id_cap, &vpd_data[rodi], VENDOR_ID_LEN)) {

		rodi = FUNC5(vpd_data, i, block_end,
						PCI_VPD_RO_KEYWORD_VENDOR0);
		if (rodi >= 0) {
			len = FUNC7(&vpd_data[rodi]);

			rodi += PCI_VPD_INFO_FLD_HDR_SIZE;

			if (len < 32 && (len + rodi) <= BNX2X_VPD_LEN) {
				FUNC2(bp->fw_ver, &vpd_data[rodi], len);
				bp->fw_ver[len] = ' ';
			}
		}
		FUNC0(vpd_extended_data);
		return;
	}
out_not_found:
	FUNC0(vpd_extended_data);
	return;
}