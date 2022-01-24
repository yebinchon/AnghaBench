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
typedef  int /*<<< orphan*/  u16 ;
struct TYPE_2__ {int sectorsize; } ;
struct atmel_pmecc_user_req {TYPE_1__ ecc; } ;
typedef  struct atmel_pmecc_gf_tables {void* alpha_to; void* index_of; } const atmel_pmecc_gf_tables ;

/* Variables and functions */
 int ENOMEM ; 
 struct atmel_pmecc_gf_tables const* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 unsigned int PMECC_GF_13_PRIMITIVE_POLY ; 
 unsigned int PMECC_GF_14_PRIMITIVE_POLY ; 
 unsigned int PMECC_GF_DIMENSION_13 ; 
 unsigned int PMECC_GF_DIMENSION_14 ; 
 unsigned int PMECC_LOOKUP_TABLE_SIZE_1024 ; 
 unsigned int PMECC_LOOKUP_TABLE_SIZE_512 ; 
 int FUNC1 (unsigned int,unsigned int,struct atmel_pmecc_gf_tables const*) ; 
 int /*<<< orphan*/  FUNC2 (struct atmel_pmecc_gf_tables const*) ; 
 struct atmel_pmecc_gf_tables const* FUNC3 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static const struct atmel_pmecc_gf_tables *
FUNC4(const struct atmel_pmecc_user_req *req)
{
	struct atmel_pmecc_gf_tables *gf_tables;
	unsigned int poly, degree, table_size;
	int ret;

	if (req->ecc.sectorsize == 512) {
		degree = PMECC_GF_DIMENSION_13;
		poly = PMECC_GF_13_PRIMITIVE_POLY;
		table_size = PMECC_LOOKUP_TABLE_SIZE_512;
	} else {
		degree = PMECC_GF_DIMENSION_14;
		poly = PMECC_GF_14_PRIMITIVE_POLY;
		table_size = PMECC_LOOKUP_TABLE_SIZE_1024;
	}

	gf_tables = FUNC3(sizeof(*gf_tables) +
			    (2 * table_size * sizeof(u16)),
			    GFP_KERNEL);
	if (!gf_tables)
		return FUNC0(-ENOMEM);

	gf_tables->alpha_to = (void *)(gf_tables + 1);
	gf_tables->index_of = gf_tables->alpha_to + table_size;

	ret = FUNC1(degree, poly, gf_tables);
	if (ret) {
		FUNC2(gf_tables);
		return FUNC0(ret);
	}

	return gf_tables;
}