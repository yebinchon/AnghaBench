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
struct nfp_dump_tl {char* data; int /*<<< orphan*/  length; } ;
struct nfp_dump_state {struct nfp_dump_tl* p; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ENOENT ; 
 int /*<<< orphan*/  NFP_DUMPSPEC_TYPE_HWINFO_FIELD ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,char const*,scalar_t__) ; 
 int FUNC3 (int /*<<< orphan*/ ,scalar_t__,struct nfp_dump_state*) ; 
 int FUNC4 (struct nfp_dump_tl*,int /*<<< orphan*/ ,struct nfp_dump_state*) ; 
 char* FUNC5 (int /*<<< orphan*/ ,char const*) ; 
 scalar_t__ FUNC6 (char const*) ; 
 scalar_t__ FUNC7 (char*,scalar_t__) ; 

__attribute__((used)) static int FUNC8(struct nfp_pf *pf, struct nfp_dump_tl *spec,
				 struct nfp_dump_state *dump)
{
	struct nfp_dump_tl *dump_header = dump->p;
	u32 tl_len, key_len, val_len;
	const char *key, *value;
	u32 total_size;
	int err;

	tl_len = FUNC1(spec->length);
	key_len = FUNC7(spec->data, tl_len);
	if (key_len == tl_len)
		return FUNC4(spec, -EINVAL, dump);

	key = spec->data;
	value = FUNC5(pf->hwinfo, key);
	if (!value)
		return FUNC4(spec, -ENOENT, dump);

	val_len = FUNC6(value);
	total_size = sizeof(*dump_header) + FUNC0(key_len + val_len + 2);
	err = FUNC3(NFP_DUMPSPEC_TYPE_HWINFO_FIELD, total_size, dump);
	if (err)
		return err;

	FUNC2(dump_header->data, key, key_len + 1);
	FUNC2(dump_header->data + key_len + 1, value, val_len + 1);

	return 0;
}