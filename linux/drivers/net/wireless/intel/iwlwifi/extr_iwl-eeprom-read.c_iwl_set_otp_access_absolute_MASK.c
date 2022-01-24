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
struct iwl_trans {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CSR_OTP_GP_REG ; 
 int /*<<< orphan*/  CSR_OTP_GP_REG_OTP_ACCESS_MODE ; 
 int /*<<< orphan*/  FUNC0 (struct iwl_trans*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct iwl_trans*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct iwl_trans *trans)
{
	FUNC1(trans, CSR_OTP_GP_REG);

	FUNC0(trans, CSR_OTP_GP_REG,
		      CSR_OTP_GP_REG_OTP_ACCESS_MODE);
}