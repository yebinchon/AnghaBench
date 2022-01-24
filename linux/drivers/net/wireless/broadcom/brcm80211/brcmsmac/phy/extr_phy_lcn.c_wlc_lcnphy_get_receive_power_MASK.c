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
typedef  int u32 ;
struct brcms_phy_lcnphy {int /*<<< orphan*/  lcnphy_noise_samples; } ;
struct TYPE_2__ {struct brcms_phy_lcnphy* pi_lcnphy; } ;
struct brcms_phy {TYPE_1__ u; } ;
typedef  scalar_t__ s32 ;

/* Variables and functions */
 int* lcnphy_23bitgaincode_table ; 
 int FUNC0 (struct brcms_phy*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct brcms_phy*,int) ; 

__attribute__((used)) static u32 FUNC2(struct brcms_phy *pi, s32 *gain_index)
{
	u32 received_power = 0;
	s32 max_index = 0;
	u32 gain_code = 0;
	struct brcms_phy_lcnphy *pi_lcn = pi->u.pi_lcnphy;

	max_index = 36;
	if (*gain_index >= 0)
		gain_code = lcnphy_23bitgaincode_table[*gain_index];

	if (-1 == *gain_index) {
		*gain_index = 0;
		while ((*gain_index <= (s32) max_index)
		       && (received_power < 700)) {
			FUNC1(pi,
					       lcnphy_23bitgaincode_table
					       [*gain_index]);
			received_power =
				FUNC0(
					pi,
					pi_lcn->
					lcnphy_noise_samples);
			(*gain_index)++;
		}
		(*gain_index)--;
	} else {
		FUNC1(pi, gain_code);
		received_power =
			FUNC0(pi,
							 pi_lcn->
							 lcnphy_noise_samples);
	}

	return received_power;
}