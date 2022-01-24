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
struct brcmf_wsec_key_le {int dummy; } ;
struct brcmf_wsec_key {int dummy; } ;
struct brcmf_pub {int dummy; } ;
struct brcmf_if {struct brcmf_pub* drvr; } ;
typedef  int /*<<< orphan*/  key_le ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct brcmf_pub*,char*,int) ; 
 int FUNC1 (struct brcmf_if*,char*,struct brcmf_wsec_key_le*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct brcmf_if*) ; 
 int /*<<< orphan*/  FUNC3 (struct brcmf_wsec_key*,struct brcmf_wsec_key_le*) ; 

__attribute__((used)) static int
FUNC4(struct brcmf_if *ifp, struct brcmf_wsec_key *key)
{
	struct brcmf_pub *drvr = ifp->drvr;
	int err;
	struct brcmf_wsec_key_le key_le;

	FUNC3(key, &key_le);

	FUNC2(ifp);

	err = FUNC1(ifp, "wsec_key", &key_le,
					sizeof(key_le));

	if (err)
		FUNC0(drvr, "wsec_key error (%d)\n", err);
	return err;
}