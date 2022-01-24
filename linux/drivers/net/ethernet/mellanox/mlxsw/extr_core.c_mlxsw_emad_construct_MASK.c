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
typedef  int /*<<< orphan*/  u64 ;
typedef  int /*<<< orphan*/  u32 ;
struct sk_buff {int dummy; } ;
struct mlxsw_reg_info {int len; } ;
typedef  enum mlxsw_core_reg_access_type { ____Placeholder_mlxsw_core_reg_access_type } mlxsw_core_reg_access_type ;

/* Variables and functions */
 int MLXSW_EMAD_END_TLV_LEN ; 
 int MLXSW_EMAD_OP_TLV_LEN ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,struct mlxsw_reg_info const*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,struct mlxsw_reg_info const*,char*) ; 
 char* FUNC4 (struct sk_buff*,int) ; 

__attribute__((used)) static void FUNC5(struct sk_buff *skb,
				 const struct mlxsw_reg_info *reg,
				 char *payload,
				 enum mlxsw_core_reg_access_type type,
				 u64 tid)
{
	char *buf;

	buf = FUNC4(skb, MLXSW_EMAD_END_TLV_LEN * sizeof(u32));
	FUNC1(buf);

	buf = FUNC4(skb, reg->len + sizeof(u32));
	FUNC3(buf, reg, payload);

	buf = FUNC4(skb, MLXSW_EMAD_OP_TLV_LEN * sizeof(u32));
	FUNC2(buf, reg, type, tid);

	FUNC0(skb);
}