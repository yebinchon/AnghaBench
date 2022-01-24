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
typedef  scalar_t__ u16 ;
struct nfp_cpp {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct nfp_cpp*) ; 
 int FUNC2 (scalar_t__,int*,unsigned long long) ; 
 int FUNC3 (struct nfp_cpp*,int /*<<< orphan*/  const,unsigned long long,int /*<<< orphan*/ *) ; 
 int FUNC4 (struct nfp_cpp*,int /*<<< orphan*/  const,unsigned long long,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 

int FUNC8(struct nfp_cpp *cpp, int target,
			  unsigned long long address)
{
	const u32 mur = FUNC0(target, 3, 0);	/* atomic_read */
	const u32 muw = FUNC0(target, 4, 0);	/* atomic_write */
	u16 interface = FUNC1(cpp);
	int err;
	u32 tmp;

	err = FUNC2(interface, &target, address);
	if (err)
		return err;

	/* Check lock */
	err = FUNC3(cpp, mur, address, &tmp);
	if (err < 0)
		return err;

	if (FUNC5(tmp) || FUNC6(tmp) != interface)
		return 0;

	/* Bust the lock */
	err = FUNC4(cpp, muw, address, FUNC7(interface));
	if (err < 0)
		return err;

	return 1;
}