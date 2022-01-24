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
struct nfp_prog {int /*<<< orphan*/  n_translated; } ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (struct nfp_prog*) ; 
 int /*<<< orphan*/  FUNC1 (struct nfp_prog*) ; 
 int FUNC2 (struct nfp_prog*) ; 
 int FUNC3 (struct nfp_prog*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,int /*<<< orphan*/ ) ; 

int FUNC5(struct nfp_prog *nfp_prog)
{
	int ret;

	ret = FUNC2(nfp_prog);
	if (ret)
		return ret;

	ret = FUNC0(nfp_prog);
	if (ret)
		return ret;

	ret = FUNC3(nfp_prog);
	if (ret) {
		FUNC4("Translation failed with error %d (translated: %u)\n",
		       ret, nfp_prog->n_translated);
		return -EINVAL;
	}

	FUNC1(nfp_prog);

	return ret;
}