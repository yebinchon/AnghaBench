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
struct iwl_cfg {scalar_t__ nvm_type; } ;
typedef  int /*<<< orphan*/  __le32 ;
typedef  int /*<<< orphan*/  __le16 ;

/* Variables and functions */
 scalar_t__ IWL_NVM_EXT ; 
 int SKU ; 
 int SKU_FAMILY_8000 ; 
 int FUNC0 (int /*<<< orphan*/  const*) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(const struct iwl_cfg *cfg, const __le16 *nvm_sw,
		       const __le16 *phy_sku)
{
	if (cfg->nvm_type != IWL_NVM_EXT)
		return FUNC0(nvm_sw + SKU);

	return FUNC1((__le32 *)(phy_sku + SKU_FAMILY_8000));
}