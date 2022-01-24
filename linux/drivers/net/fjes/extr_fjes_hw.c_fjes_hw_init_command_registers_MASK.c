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
struct fjes_hw {int dummy; } ;
struct fjes_device_command_param {int req_start; int res_start; int share_start; scalar_t__ res_len; scalar_t__ req_len; } ;
typedef  int /*<<< orphan*/  __le32 ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 int /*<<< orphan*/  XSCT_REQBAH ; 
 int /*<<< orphan*/  XSCT_REQBAL ; 
 int /*<<< orphan*/  XSCT_REQBL ; 
 int /*<<< orphan*/  XSCT_RESPBAH ; 
 int /*<<< orphan*/  XSCT_RESPBAL ; 
 int /*<<< orphan*/  XSCT_RESPBL ; 
 int /*<<< orphan*/  XSCT_SHSTSAH ; 
 int /*<<< orphan*/  XSCT_SHSTSAL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC2(struct fjes_hw *hw,
			       struct fjes_device_command_param *param)
{
	/* Request Buffer length */
	FUNC1(XSCT_REQBL, (__le32)(param->req_len));
	/* Response Buffer Length */
	FUNC1(XSCT_RESPBL, (__le32)(param->res_len));

	/* Request Buffer Address */
	FUNC1(XSCT_REQBAL,
	     (__le32)(param->req_start & FUNC0(31, 0)));
	FUNC1(XSCT_REQBAH,
	     (__le32)((param->req_start & FUNC0(63, 32)) >> 32));

	/* Response Buffer Address */
	FUNC1(XSCT_RESPBAL,
	     (__le32)(param->res_start & FUNC0(31, 0)));
	FUNC1(XSCT_RESPBAH,
	     (__le32)((param->res_start & FUNC0(63, 32)) >> 32));

	/* Share status address */
	FUNC1(XSCT_SHSTSAL,
	     (__le32)(param->share_start & FUNC0(31, 0)));
	FUNC1(XSCT_SHSTSAH,
	     (__le32)((param->share_start & FUNC0(63, 32)) >> 32));
}