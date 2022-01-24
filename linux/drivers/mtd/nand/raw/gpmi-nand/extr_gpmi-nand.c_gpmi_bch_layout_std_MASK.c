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
struct bch_geometry {int ecc_strength; unsigned int gf_len; unsigned int ecc_chunk_size; int /*<<< orphan*/  page_size; int /*<<< orphan*/  metadata_size; scalar_t__ ecc_chunk_count; } ;
struct gpmi_nand_data {int bch_flashlayout0; int bch_flashlayout1; struct bch_geometry bch_geometry; } ;

/* Variables and functions */
 int FUNC0 (unsigned int,struct gpmi_nand_data*) ; 
 int FUNC1 (unsigned int,struct gpmi_nand_data*) ; 
 int FUNC2 (unsigned int,struct gpmi_nand_data*) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (scalar_t__) ; 
 int FUNC5 (unsigned int,struct gpmi_nand_data*) ; 
 int FUNC6 (unsigned int,struct gpmi_nand_data*) ; 
 int FUNC7 (unsigned int,struct gpmi_nand_data*) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC9(struct gpmi_nand_data *this)
{
	struct bch_geometry *geo = &this->bch_geometry;
	unsigned int ecc_strength = geo->ecc_strength >> 1;
	unsigned int gf_len = geo->gf_len;
	unsigned int block_size = geo->ecc_chunk_size;

	this->bch_flashlayout0 =
		FUNC4(geo->ecc_chunk_count - 1) |
		FUNC3(geo->metadata_size) |
		FUNC1(ecc_strength, this) |
		FUNC2(gf_len, this) |
		FUNC0(block_size, this);

	this->bch_flashlayout1 =
		FUNC8(geo->page_size) |
		FUNC6(ecc_strength, this) |
		FUNC7(gf_len, this) |
		FUNC5(block_size, this);
}