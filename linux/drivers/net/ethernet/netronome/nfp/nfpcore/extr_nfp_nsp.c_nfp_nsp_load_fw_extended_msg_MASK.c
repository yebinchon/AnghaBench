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
struct nfp_nsp {int /*<<< orphan*/  cpp; } ;

/* Variables and functions */
 unsigned int FUNC0 (char const* const*) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* KERN_DEBUG ; 
 char* KERN_ERR ; 
 char* KERN_INFO ; 
 int /*<<< orphan*/  NFP_FW_LOAD_RET_MAJOR ; 
 int /*<<< orphan*/  NFP_FW_LOAD_RET_MINOR ; 
 int /*<<< orphan*/  FUNC2 (struct nfp_nsp*) ; 
 int /*<<< orphan*/  FUNC3 (char const*,int /*<<< orphan*/ ,char*,char const* const,...) ; 

__attribute__((used)) static void FUNC4(struct nfp_nsp *state, u32 ret_val)
{
	static const char * const major_msg[] = {
		/* 0 */ "Firmware from driver loaded",
		/* 1 */ "Firmware from flash loaded",
		/* 2 */ "Firmware loading failure",
	};
	static const char * const minor_msg[] = {
		/*  0 */ "",
		/*  1 */ "no named partition on flash",
		/*  2 */ "error reading from flash",
		/*  3 */ "can not deflate",
		/*  4 */ "not a trusted file",
		/*  5 */ "can not parse FW file",
		/*  6 */ "MIP not found in FW file",
		/*  7 */ "null firmware name in MIP",
		/*  8 */ "FW version none",
		/*  9 */ "FW build number none",
		/* 10 */ "no FW selection policy HWInfo key found",
		/* 11 */ "static FW selection policy",
		/* 12 */ "FW version has precedence",
		/* 13 */ "different FW application load requested",
		/* 14 */ "development build",
	};
	unsigned int major, minor;
	const char *level;

	major = FUNC1(NFP_FW_LOAD_RET_MAJOR, ret_val);
	minor = FUNC1(NFP_FW_LOAD_RET_MINOR, ret_val);

	if (!FUNC2(state))
		return;

	/* Lower the message level in legacy case */
	if (major == 0 && (minor == 0 || minor == 10))
		level = KERN_DEBUG;
	else if (major == 2)
		level = KERN_ERR;
	else
		level = KERN_INFO;

	if (major >= FUNC0(major_msg))
		FUNC3(level, state->cpp, "FW loading status: %x\n",
			   ret_val);
	else if (minor >= FUNC0(minor_msg))
		FUNC3(level, state->cpp, "%s, reason code: %d\n",
			   major_msg[major], minor);
	else
		FUNC3(level, state->cpp, "%s%c %s\n",
			   major_msg[major], minor ? ',' : '.',
			   minor_msg[minor]);
}