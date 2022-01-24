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
typedef  int u64 ;
struct nfp_pf {int /*<<< orphan*/  cpp; int /*<<< orphan*/  rtbl; } ;
typedef  int /*<<< orphan*/  name ;

/* Variables and functions */
 int ENOENT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*) ; 
 int FUNC2 (int /*<<< orphan*/ ,char*,int*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,char const*,int /*<<< orphan*/ ) ; 

int FUNC4(struct nfp_pf *pf, const char *format,
			       unsigned int default_val)
{
	char name[256];
	int err = 0;
	u64 val;

	FUNC3(name, sizeof(name), format, FUNC0(pf->cpp));

	val = FUNC2(pf->rtbl, name, &err);
	if (err) {
		if (err == -ENOENT)
			return default_val;
		FUNC1(pf->cpp, "Unable to read symbol %s\n", name);
		return err;
	}

	return val;
}