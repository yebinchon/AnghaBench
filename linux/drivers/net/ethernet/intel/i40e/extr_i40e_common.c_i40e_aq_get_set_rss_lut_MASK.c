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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u16 ;
struct i40e_hw {int dummy; } ;
struct i40e_aqc_get_set_rss_lut {int /*<<< orphan*/  flags; int /*<<< orphan*/  vsi_id; } ;
struct TYPE_2__ {int /*<<< orphan*/  raw; } ;
struct i40e_aq_desc {int /*<<< orphan*/  flags; TYPE_1__ params; } ;
typedef  int /*<<< orphan*/  i40e_status ;

/* Variables and functions */
 int I40E_AQC_SET_RSS_LUT_TABLE_TYPE_MASK ; 
 int I40E_AQC_SET_RSS_LUT_TABLE_TYPE_PF ; 
 int I40E_AQC_SET_RSS_LUT_TABLE_TYPE_SHIFT ; 
 int I40E_AQC_SET_RSS_LUT_TABLE_TYPE_VSI ; 
 int I40E_AQC_SET_RSS_LUT_VSI_ID_MASK ; 
 int I40E_AQC_SET_RSS_LUT_VSI_ID_SHIFT ; 
 scalar_t__ I40E_AQC_SET_RSS_LUT_VSI_VALID ; 
 scalar_t__ I40E_AQ_FLAG_BUF ; 
 scalar_t__ I40E_AQ_FLAG_RD ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  i40e_aqc_opc_get_rss_lut ; 
 int /*<<< orphan*/  i40e_aqc_opc_set_rss_lut ; 
 int /*<<< orphan*/  FUNC1 (struct i40e_hw*,struct i40e_aq_desc*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct i40e_aq_desc*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static i40e_status FUNC3(struct i40e_hw *hw,
					   u16 vsi_id, bool pf_lut,
					   u8 *lut, u16 lut_size,
					   bool set)
{
	i40e_status status;
	struct i40e_aq_desc desc;
	struct i40e_aqc_get_set_rss_lut *cmd_resp =
		   (struct i40e_aqc_get_set_rss_lut *)&desc.params.raw;

	if (set)
		FUNC2(&desc,
						  i40e_aqc_opc_set_rss_lut);
	else
		FUNC2(&desc,
						  i40e_aqc_opc_get_rss_lut);

	/* Indirect command */
	desc.flags |= FUNC0((u16)I40E_AQ_FLAG_BUF);
	desc.flags |= FUNC0((u16)I40E_AQ_FLAG_RD);

	cmd_resp->vsi_id =
			FUNC0((u16)((vsi_id <<
					  I40E_AQC_SET_RSS_LUT_VSI_ID_SHIFT) &
					  I40E_AQC_SET_RSS_LUT_VSI_ID_MASK));
	cmd_resp->vsi_id |= FUNC0((u16)I40E_AQC_SET_RSS_LUT_VSI_VALID);

	if (pf_lut)
		cmd_resp->flags |= FUNC0((u16)
					((I40E_AQC_SET_RSS_LUT_TABLE_TYPE_PF <<
					I40E_AQC_SET_RSS_LUT_TABLE_TYPE_SHIFT) &
					I40E_AQC_SET_RSS_LUT_TABLE_TYPE_MASK));
	else
		cmd_resp->flags |= FUNC0((u16)
					((I40E_AQC_SET_RSS_LUT_TABLE_TYPE_VSI <<
					I40E_AQC_SET_RSS_LUT_TABLE_TYPE_SHIFT) &
					I40E_AQC_SET_RSS_LUT_TABLE_TYPE_MASK));

	status = FUNC1(hw, &desc, lut, lut_size, NULL);

	return status;
}