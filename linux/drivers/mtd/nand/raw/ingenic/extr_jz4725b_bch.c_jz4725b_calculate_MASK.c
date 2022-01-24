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
struct ingenic_ecc_params {int /*<<< orphan*/  bytes; int /*<<< orphan*/  size; } ;
struct ingenic_ecc {int /*<<< orphan*/  lock; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  BCH_BHINT_ENCF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct ingenic_ecc*) ; 
 int /*<<< orphan*/  FUNC2 (struct ingenic_ecc*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct ingenic_ecc*,struct ingenic_ecc_params*,int) ; 
 int FUNC4 (struct ingenic_ecc*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct ingenic_ecc*,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct ingenic_ecc *bch,
			     struct ingenic_ecc_params *params,
			     const u8 *buf, u8 *ecc_code)
{
	int ret;

	FUNC6(&bch->lock);

	ret = FUNC3(bch, params, true);
	if (ret) {
		FUNC0(bch->dev, "Unable to init BCH with given parameters\n");
		goto out_disable;
	}

	FUNC5(bch, buf, params->size);

	ret = FUNC4(bch, BCH_BHINT_ENCF, NULL);
	if (ret) {
		FUNC0(bch->dev, "timed out while calculating ECC\n");
		goto out_disable;
	}

	FUNC2(bch, ecc_code, params->bytes);

out_disable:
	FUNC1(bch);
	FUNC7(&bch->lock);

	return ret;
}