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
typedef  int /*<<< orphan*/  u16 ;
typedef  enum mlxsw_reg_svfa_mt { ____Placeholder_mlxsw_reg_svfa_mt } mlxsw_reg_svfa_mt ;

/* Variables and functions */
 int MLXSW_REG_SVFA_MT_VID_TO_FID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,int) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  svfa ; 

__attribute__((used)) static inline void FUNC7(char *payload, u8 local_port,
				       enum mlxsw_reg_svfa_mt mt, bool valid,
				       u16 fid, u16 vid)
{
	FUNC0(svfa, payload);
	local_port = mt == MLXSW_REG_SVFA_MT_VID_TO_FID ? 0 : local_port;
	FUNC4(payload, 0);
	FUNC2(payload, local_port);
	FUNC3(payload, mt);
	FUNC5(payload, valid);
	FUNC1(payload, fid);
	FUNC6(payload, vid);
}