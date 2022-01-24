#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int sectorsize; } ;
struct atmel_pmecc_user_req {TYPE_1__ ecc; } ;
struct atmel_pmecc_gf_tables {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct atmel_pmecc_gf_tables const*) ; 
 struct atmel_pmecc_gf_tables* FUNC1 (struct atmel_pmecc_user_req const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct atmel_pmecc_gf_tables* pmecc_gf_tables_1024 ; 
 struct atmel_pmecc_gf_tables* pmecc_gf_tables_512 ; 
 int /*<<< orphan*/  pmecc_gf_tables_lock ; 

__attribute__((used)) static const struct atmel_pmecc_gf_tables *
FUNC4(const struct atmel_pmecc_user_req *req)
{
	const struct atmel_pmecc_gf_tables **gf_tables, *ret;

	FUNC2(&pmecc_gf_tables_lock);
	if (req->ecc.sectorsize == 512)
		gf_tables = &pmecc_gf_tables_512;
	else
		gf_tables = &pmecc_gf_tables_1024;

	ret = *gf_tables;

	if (!ret) {
		ret = FUNC1(req);
		if (!FUNC0(ret))
			*gf_tables = ret;
	}
	FUNC3(&pmecc_gf_tables_lock);

	return ret;
}