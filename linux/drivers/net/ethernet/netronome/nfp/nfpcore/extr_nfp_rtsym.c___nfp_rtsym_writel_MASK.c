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
typedef  int /*<<< orphan*/  u8 ;
typedef  scalar_t__ u64 ;
typedef  int /*<<< orphan*/  u32 ;
struct nfp_rtsym {int /*<<< orphan*/  name; } ;
struct nfp_cpp {int dummy; } ;

/* Variables and functions */
 int ENXIO ; 
 int FUNC0 (struct nfp_cpp*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct nfp_cpp*,char*,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC2 (struct nfp_rtsym const*) ; 
 int FUNC3 (struct nfp_cpp*,struct nfp_rtsym const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *,scalar_t__*) ; 

int FUNC4(struct nfp_cpp *cpp, const struct nfp_rtsym *sym,
		       u8 action, u8 token, u64 off, u32 value)
{
	u32 cpp_id;
	u64 addr;
	int err;

	if (off + 4 > FUNC2(sym)) {
		FUNC1(cpp, "rtsym '%s': writel out of bounds: off: %lld + 4 > size: %lld\n",
			sym->name, off, FUNC2(sym));
		return -ENXIO;
	}

	err = FUNC3(cpp, sym, action, token, off, &cpp_id, &addr);
	if (err)
		return err;

	return FUNC0(cpp, cpp_id, addr, value);
}