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
typedef  struct nfp_mip {scalar_t__* name; } const nfp_mip ;
struct nfp_cpp {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct nfp_mip const*) ; 
 struct nfp_mip const* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct nfp_cpp*,struct nfp_mip const*) ; 

const struct nfp_mip *FUNC3(struct nfp_cpp *cpp)
{
	struct nfp_mip *mip;
	int err;

	mip = FUNC1(sizeof(*mip), GFP_KERNEL);
	if (!mip)
		return NULL;

	err = FUNC2(cpp, mip);
	if (err) {
		FUNC0(mip);
		return NULL;
	}

	mip->name[sizeof(mip->name) - 1] = 0;

	return mip;
}