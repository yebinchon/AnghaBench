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
struct nfp_net {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NFP_NET_MBOX_TLV_LEN ; 
 int /*<<< orphan*/  NFP_NET_MBOX_TLV_TYPE ; 
 int /*<<< orphan*/  FUNC1 (struct nfp_net*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC2(struct nfp_net *nn, u32 off, u32 type, u32 len)
{
	FUNC1(nn, off,
		  FUNC0(NFP_NET_MBOX_TLV_TYPE, type) |
		  FUNC0(NFP_NET_MBOX_TLV_LEN, len));
}