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
typedef  int u32 ;
typedef  enum xgene_cle_prot_version { ____Placeholder_xgene_cle_prot_version } xgene_cle_prot_version ;
typedef  enum xgene_cle_prot_type { ____Placeholder_xgene_cle_prot_type } xgene_cle_prot_type ;

/* Variables and functions */
 int /*<<< orphan*/  SB_HDRLEN ; 
 int /*<<< orphan*/  SB_IPFRAG ; 
 int /*<<< orphan*/  SB_IPPROT ; 
 int /*<<< orphan*/  SB_IPVER ; 
 int FUNC0 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC1(u8 frag, enum xgene_cle_prot_version ver,
				  enum xgene_cle_prot_type type, u32 len,
				  u32 *reg)
{
	*reg =  FUNC0(SB_IPFRAG, frag) |
		FUNC0(SB_IPPROT, type) |
		FUNC0(SB_IPVER, ver) |
		FUNC0(SB_HDRLEN, len);
}