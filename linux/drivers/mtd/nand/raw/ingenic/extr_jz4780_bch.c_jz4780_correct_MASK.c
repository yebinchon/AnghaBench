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
typedef  int u8 ;
typedef  int u32 ;
struct ingenic_ecc_params {int /*<<< orphan*/  bytes; int /*<<< orphan*/  size; } ;
struct ingenic_ecc {int /*<<< orphan*/  lock; scalar_t__ base; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ BCH_BHERR0 ; 
 int BCH_BHERR_INDEX_MASK ; 
 int BCH_BHERR_INDEX_SHIFT ; 
 int BCH_BHERR_MASK_MASK ; 
 int BCH_BHERR_MASK_SHIFT ; 
 int /*<<< orphan*/  BCH_BHINT_DECF ; 
 int BCH_BHINT_ERR ; 
 int BCH_BHINT_ERRC_MASK ; 
 int BCH_BHINT_ERRC_SHIFT ; 
 int BCH_BHINT_TERRC_MASK ; 
 int BCH_BHINT_TERRC_SHIFT ; 
 int BCH_BHINT_UNCOR ; 
 int EBADMSG ; 
 int ETIMEDOUT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct ingenic_ecc*) ; 
 int /*<<< orphan*/  FUNC3 (struct ingenic_ecc*,struct ingenic_ecc_params*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct ingenic_ecc*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC5 (struct ingenic_ecc*,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (scalar_t__) ; 

__attribute__((used)) static int FUNC9(struct ingenic_ecc *bch,
			  struct ingenic_ecc_params *params,
			  u8 *buf, u8 *ecc_code)
{
	u32 reg, mask, index;
	int i, ret, count;

	FUNC6(&bch->lock);

	FUNC3(bch, params, false);
	FUNC5(bch, buf, params->size);
	FUNC5(bch, ecc_code, params->bytes);

	if (!FUNC4(bch, BCH_BHINT_DECF, &reg)) {
		FUNC0(bch->dev, "timed out while correcting data\n");
		ret = -ETIMEDOUT;
		goto out;
	}

	if (reg & BCH_BHINT_UNCOR) {
		FUNC1(bch->dev, "uncorrectable ECC error\n");
		ret = -EBADMSG;
		goto out;
	}

	/* Correct any detected errors. */
	if (reg & BCH_BHINT_ERR) {
		count = (reg & BCH_BHINT_ERRC_MASK) >> BCH_BHINT_ERRC_SHIFT;
		ret = (reg & BCH_BHINT_TERRC_MASK) >> BCH_BHINT_TERRC_SHIFT;

		for (i = 0; i < count; i++) {
			reg = FUNC8(bch->base + BCH_BHERR0 + (i * 4));
			mask = (reg & BCH_BHERR_MASK_MASK) >>
						BCH_BHERR_MASK_SHIFT;
			index = (reg & BCH_BHERR_INDEX_MASK) >>
						BCH_BHERR_INDEX_SHIFT;
			buf[(index * 2) + 0] ^= mask;
			buf[(index * 2) + 1] ^= mask >> 8;
		}
	} else {
		ret = 0;
	}

out:
	FUNC2(bch);
	FUNC7(&bch->lock);
	return ret;
}