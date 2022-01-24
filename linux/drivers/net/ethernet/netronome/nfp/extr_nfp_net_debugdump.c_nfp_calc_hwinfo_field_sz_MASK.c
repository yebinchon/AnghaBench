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
typedef  scalar_t__ u32 ;
struct nfp_pf {int /*<<< orphan*/  hwinfo; } ;
struct nfp_dump_tl {int /*<<< orphan*/  data; int /*<<< orphan*/  length; } ;

/* Variables and functions */
 int FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct nfp_dump_tl*) ; 
 char* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (char const*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC6(struct nfp_pf *pf, struct nfp_dump_tl *spec)
{
	u32 tl_len, key_len;
	const char *value;

	tl_len = FUNC1(spec->length);
	key_len = FUNC5(spec->data, tl_len);
	if (key_len == tl_len)
		return FUNC2(spec);

	value = FUNC3(pf->hwinfo, spec->data);
	if (!value)
		return FUNC2(spec);

	return sizeof(struct nfp_dump_tl) + FUNC0(key_len + FUNC4(value) + 2);
}