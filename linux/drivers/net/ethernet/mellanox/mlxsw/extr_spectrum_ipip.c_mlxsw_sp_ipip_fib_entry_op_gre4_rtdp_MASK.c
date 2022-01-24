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
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct mlxsw_sp_ipip_entry {int /*<<< orphan*/  ol_dev; int /*<<< orphan*/  ol_lb; } ;
struct mlxsw_sp {int /*<<< orphan*/  core; } ;
struct ip_tunnel_parm {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MLXSW_REG_RTDP_IPIP_SIP_CHECK_FILTER_IPV4 ; 
 unsigned int MLXSW_REG_RTDP_IPIP_TYPE_CHECK_ALLOW_GRE ; 
 unsigned int MLXSW_REG_RTDP_IPIP_TYPE_CHECK_ALLOW_GRE_KEY ; 
 int MLXSW_REG_RTDP_LEN ; 
 int /*<<< orphan*/  MLXSW_REG_RTDP_TYPE_IPIP ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 struct ip_tunnel_parm FUNC9 (int /*<<< orphan*/ ) ; 
 int FUNC10 (struct ip_tunnel_parm) ; 
 int /*<<< orphan*/  FUNC11 (struct ip_tunnel_parm) ; 
 int /*<<< orphan*/  rtdp ; 

__attribute__((used)) static int
FUNC12(struct mlxsw_sp *mlxsw_sp,
				     u32 tunnel_index,
				     struct mlxsw_sp_ipip_entry *ipip_entry)
{
	u16 rif_index = FUNC6(ipip_entry->ol_lb);
	u16 ul_rif_id = FUNC7(ipip_entry->ol_lb);
	char rtdp_pl[MLXSW_REG_RTDP_LEN];
	struct ip_tunnel_parm parms;
	unsigned int type_check;
	bool has_ikey;
	u32 daddr4;
	u32 ikey;

	parms = FUNC9(ipip_entry->ol_dev);
	has_ikey = FUNC10(parms);
	ikey = FUNC11(parms);

	FUNC4(rtdp_pl, MLXSW_REG_RTDP_TYPE_IPIP, tunnel_index);
	FUNC2(rtdp_pl, ul_rif_id);

	type_check = has_ikey ?
		MLXSW_REG_RTDP_IPIP_TYPE_CHECK_ALLOW_GRE_KEY :
		MLXSW_REG_RTDP_IPIP_TYPE_CHECK_ALLOW_GRE;

	/* Linux demuxes tunnels based on packet SIP (which must match tunnel
	 * remote IP). Thus configure decap so that it filters out packets that
	 * are not IPv4 or have the wrong SIP. IPIP_DECAP_ERROR trap is
	 * generated for packets that fail this criterion. Linux then handles
	 * such packets in slow path and generates ICMP destination unreachable.
	 */
	daddr4 = FUNC1(FUNC8(ipip_entry->ol_dev));
	FUNC3(rtdp_pl, rif_index,
				  MLXSW_REG_RTDP_IPIP_SIP_CHECK_FILTER_IPV4,
				  type_check, has_ikey, daddr4, ikey);

	return FUNC5(mlxsw_sp->core, FUNC0(rtdp), rtdp_pl);
}