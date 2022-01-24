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
struct nfp_pf {int /*<<< orphan*/  cpp; int /*<<< orphan*/  hwinfo; } ;
struct nfp_nsp {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;
struct devlink_info_req {int dummy; } ;
struct devlink {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct nfp_nsp*) ; 
 int /*<<< orphan*/  NFP_NSP_VERSION_BUFSZ ; 
 int /*<<< orphan*/  FUNC1 (struct netlink_ext_ack*,char*) ; 
 int FUNC2 (struct nfp_nsp*) ; 
 int FUNC3 (struct devlink_info_req*,char*) ; 
 int FUNC4 (struct devlink_info_req*,char*) ; 
 struct nfp_pf* FUNC5 (struct devlink*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 char* FUNC7 (scalar_t__,int /*<<< orphan*/ ) ; 
 char* FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC9 (struct nfp_pf*,struct devlink_info_req*) ; 
 int FUNC10 (struct devlink_info_req*,int,char*,int /*<<< orphan*/ ) ; 
 char* FUNC11 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC12 (struct nfp_nsp*) ; 
 scalar_t__ FUNC13 (struct nfp_nsp*) ; 
 struct nfp_nsp* FUNC14 (int /*<<< orphan*/ ) ; 
 int FUNC15 (struct nfp_nsp*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (char*,char const*) ; 
 scalar_t__ FUNC17 (char const*) ; 

__attribute__((used)) static int
FUNC18(struct devlink *devlink, struct devlink_info_req *req,
		     struct netlink_ext_ack *extack)
{
	struct nfp_pf *pf = FUNC5(devlink);
	const char *sn, *vendor, *part;
	struct nfp_nsp *nsp;
	char *buf = NULL;
	int err;

	err = FUNC3(req, "nfp");
	if (err)
		return err;

	vendor = FUNC11(pf->hwinfo, "assembly.vendor");
	part = FUNC11(pf->hwinfo, "assembly.partno");
	sn = FUNC11(pf->hwinfo, "assembly.serial");
	if (vendor && part && sn) {
		char *buf;

		buf = FUNC7(FUNC17(vendor) + FUNC17(part) + FUNC17(sn) + 1,
			      GFP_KERNEL);
		if (!buf)
			return -ENOMEM;

		buf[0] = '\0';
		FUNC16(buf, vendor);
		FUNC16(buf, part);
		FUNC16(buf, sn);

		err = FUNC4(req, buf);
		FUNC6(buf);
		if (err)
			return err;
	}

	nsp = FUNC14(pf->cpp);
	if (FUNC0(nsp)) {
		FUNC1(extack, "can't access NSP");
		return FUNC2(nsp);
	}

	if (FUNC13(nsp)) {
		buf = FUNC8(NFP_NSP_VERSION_BUFSZ, GFP_KERNEL);
		if (!buf) {
			err = -ENOMEM;
			goto err_close_nsp;
		}

		err = FUNC15(nsp, buf, NFP_NSP_VERSION_BUFSZ);
		if (err)
			goto err_free_buf;

		err = FUNC10(req, false,
						   buf, NFP_NSP_VERSION_BUFSZ);
		if (err)
			goto err_free_buf;

		err = FUNC10(req, true,
						   buf, NFP_NSP_VERSION_BUFSZ);
		if (err)
			goto err_free_buf;

		FUNC6(buf);
	}

	FUNC12(nsp);

	return FUNC9(pf, req);

err_free_buf:
	FUNC6(buf);
err_close_nsp:
	FUNC12(nsp);
	return err;
}