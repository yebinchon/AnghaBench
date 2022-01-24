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
typedef  enum mlxsw_reg_sfd_rec_type { ____Placeholder_mlxsw_reg_sfd_rec_type } mlxsw_reg_sfd_rec_type ;
typedef  enum mlxsw_reg_sfd_rec_action { ____Placeholder_mlxsw_reg_sfd_rec_action } mlxsw_reg_sfd_rec_action ;

/* Variables and functions */
 int FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,char const*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,int) ; 

__attribute__((used)) static inline void FUNC6(char *payload, int rec_index,
					  enum mlxsw_reg_sfd_rec_type rec_type,
					  const char *mac,
					  enum mlxsw_reg_sfd_rec_action action)
{
	u8 num_rec = FUNC0(payload);

	if (rec_index >= num_rec)
		FUNC1(payload, rec_index + 1);
	FUNC4(payload, rec_index, 0);
	FUNC5(payload, rec_index, rec_type);
	FUNC3(payload, rec_index, mac);
	FUNC2(payload, rec_index, action);
}