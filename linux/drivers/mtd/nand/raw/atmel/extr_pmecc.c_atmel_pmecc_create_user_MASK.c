#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u16 ;
struct TYPE_6__ {int strength; int bytes; int nsectors; int sectorsize; scalar_t__ ooboffset; } ;
struct atmel_pmecc_user_req {TYPE_3__ ecc; scalar_t__ oobsize; } ;
struct TYPE_5__ {int cfg; scalar_t__ eaddr; scalar_t__ saddr; scalar_t__ sarea; } ;
struct atmel_pmecc_user {int eccbytes; TYPE_2__ cache; struct atmel_pmecc_gf_tables const* gf_tables; int /*<<< orphan*/ * dmu; int /*<<< orphan*/ * delta; int /*<<< orphan*/ * mu; struct atmel_pmecc_user* smu; struct atmel_pmecc_user* lmu; struct atmel_pmecc_user* si; struct atmel_pmecc_user* partial_syn; struct atmel_pmecc* pmecc; } ;
struct atmel_pmecc_gf_tables {int dummy; } ;
struct atmel_pmecc {TYPE_1__* caps; } ;
typedef  int /*<<< orphan*/  s32 ;
typedef  struct atmel_pmecc_user s16 ;
struct TYPE_4__ {int nstrengths; int* strengths; } ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 int ENOMEM ; 
 struct atmel_pmecc_user* FUNC1 (struct atmel_pmecc_gf_tables const*) ; 
 struct atmel_pmecc_user* FUNC2 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC3 (struct atmel_pmecc_gf_tables const*) ; 
 int FUNC4 (int) ; 
 int FUNC5 (int) ; 
 int PMECC_CFG_SECTOR1024 ; 
 scalar_t__ FUNC6 (struct atmel_pmecc_user*,int) ; 
 struct atmel_pmecc_gf_tables* FUNC7 (struct atmel_pmecc_user_req*) ; 
 int FUNC8 (struct atmel_pmecc*,struct atmel_pmecc_user_req*) ; 
 int /*<<< orphan*/  FUNC9 (struct atmel_pmecc_user*) ; 
 struct atmel_pmecc_user* FUNC10 (int,int /*<<< orphan*/ ) ; 

struct atmel_pmecc_user *
FUNC11(struct atmel_pmecc *pmecc,
			struct atmel_pmecc_user_req *req)
{
	struct atmel_pmecc_user *user;
	const struct atmel_pmecc_gf_tables *gf_tables;
	int strength, size, ret;

	ret = FUNC8(pmecc, req);
	if (ret)
		return FUNC2(ret);

	size = sizeof(*user);
	size = FUNC0(size, sizeof(u16));
	/* Reserve space for partial_syn, si and smu */
	size += ((2 * req->ecc.strength) + 1) * sizeof(u16) *
		(2 + req->ecc.strength + 2);
	/* Reserve space for lmu. */
	size += (req->ecc.strength + 1) * sizeof(u16);
	/* Reserve space for mu, dmu and delta. */
	size = FUNC0(size, sizeof(s32));
	size += (req->ecc.strength + 1) * sizeof(s32) * 3;

	user = FUNC10(size, GFP_KERNEL);
	if (!user)
		return FUNC2(-ENOMEM);

	user->pmecc = pmecc;

	user->partial_syn = (s16 *)FUNC6(user + 1, sizeof(u16));
	user->si = user->partial_syn + ((2 * req->ecc.strength) + 1);
	user->lmu = user->si + ((2 * req->ecc.strength) + 1);
	user->smu = user->lmu + (req->ecc.strength + 1);
	user->mu = (s32 *)FUNC6(user->smu +
				    (((2 * req->ecc.strength) + 1) *
				     (req->ecc.strength + 2)),
				    sizeof(s32));
	user->dmu = user->mu + req->ecc.strength + 1;
	user->delta = user->dmu + req->ecc.strength + 1;

	gf_tables = FUNC7(req);
	if (FUNC3(gf_tables)) {
		FUNC9(user);
		return FUNC1(gf_tables);
	}

	user->gf_tables = gf_tables;

	user->eccbytes = req->ecc.bytes / req->ecc.nsectors;

	for (strength = 0; strength < pmecc->caps->nstrengths; strength++) {
		if (pmecc->caps->strengths[strength] == req->ecc.strength)
			break;
	}

	user->cache.cfg = FUNC4(strength) |
			  FUNC5(req->ecc.nsectors);

	if (req->ecc.sectorsize == 1024)
		user->cache.cfg |= PMECC_CFG_SECTOR1024;

	user->cache.sarea = req->oobsize - 1;
	user->cache.saddr = req->ecc.ooboffset;
	user->cache.eaddr = req->ecc.ooboffset + req->ecc.bytes - 1;

	return user;
}