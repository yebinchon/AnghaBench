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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u32 ;
struct ingenic_ecc_params {int /*<<< orphan*/  bytes; int /*<<< orphan*/  size; } ;
struct ingenic_ecc {int /*<<< orphan*/  lock; scalar_t__ base; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ BCH_BHERR0 ; 
 int BCH_BHERR_INDEX0_MASK ; 
 int BCH_BHERR_INDEX0_SHIFT ; 
 int BCH_BHERR_INDEX1_MASK ; 
 int BCH_BHERR_INDEX1_SHIFT ; 
 int BCH_BHINT_ALL_0 ; 
 int BCH_BHINT_ALL_F ; 
 int /*<<< orphan*/  BCH_BHINT_DECF ; 
 int BCH_BHINT_ERRC_MASK ; 
 int BCH_BHINT_ERRC_SHIFT ; 
 int BCH_BHINT_UNCOR ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EBADMSG ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct ingenic_ecc*) ; 
 int FUNC3 (struct ingenic_ecc*,struct ingenic_ecc_params*,int) ; 
 int FUNC4 (struct ingenic_ecc*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC5 (struct ingenic_ecc*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (scalar_t__) ; 

__attribute__((used)) static int FUNC9(struct ingenic_ecc *bch,
			   struct ingenic_ecc_params *params,
			   u8 *buf, u8 *ecc_code)
{
	u32 reg, errors, bit;
	unsigned int i;
	int ret;

	FUNC6(&bch->lock);

	ret = FUNC3(bch, params, false);
	if (ret) {
		FUNC1(bch->dev, "Unable to init BCH with given parameters\n");
		goto out;
	}

	FUNC5(bch, buf, params->size);
	FUNC5(bch, ecc_code, params->bytes);

	ret = FUNC4(bch, BCH_BHINT_DECF, &reg);
	if (ret) {
		FUNC1(bch->dev, "timed out while correcting data\n");
		goto out;
	}

	if (reg & (BCH_BHINT_ALL_F | BCH_BHINT_ALL_0)) {
		/* Data and ECC is all 0xff or 0x00 - nothing to correct */
		ret = 0;
		goto out;
	}

	if (reg & BCH_BHINT_UNCOR) {
		/* Uncorrectable ECC error */
		ret = -EBADMSG;
		goto out;
	}

	errors = (reg & BCH_BHINT_ERRC_MASK) >> BCH_BHINT_ERRC_SHIFT;

	/* Correct any detected errors. */
	for (i = 0; i < errors; i++) {
		if (i & 1) {
			bit = (reg & BCH_BHERR_INDEX1_MASK) >> BCH_BHERR_INDEX1_SHIFT;
		} else {
			reg = FUNC8(bch->base + BCH_BHERR0 + (i * 4));
			bit = (reg & BCH_BHERR_INDEX0_MASK) >> BCH_BHERR_INDEX0_SHIFT;
		}

		buf[(bit >> 3)] ^= FUNC0(bit & 0x7);
	}

out:
	FUNC2(bch);
	FUNC7(&bch->lock);

	return ret;
}