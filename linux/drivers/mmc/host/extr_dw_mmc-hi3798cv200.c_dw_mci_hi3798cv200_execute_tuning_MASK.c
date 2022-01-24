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
typedef  int /*<<< orphan*/  u32 ;
struct hi3798cv200_priv {int /*<<< orphan*/  sample_clk; } ;
struct dw_mci_slot {int /*<<< orphan*/  mmc; struct dw_mci* host; } ;
struct dw_mci {int /*<<< orphan*/  dev; struct hi3798cv200_priv* priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  ALL_INT_CLR ; 
 int FUNC0 (int const*) ; 
 int EINVAL ; 
 int /*<<< orphan*/  RINTSTS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int const) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int,int,int const) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct dw_mci*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct dw_mci_slot *slot,
					     u32 opcode)
{
	static const int degrees[] = { 0, 45, 90, 135, 180, 225, 270, 315 };
	struct dw_mci *host = slot->host;
	struct hi3798cv200_priv *priv = host->priv;
	int raise_point = -1, fall_point = -1;
	int err, prev_err = -1;
	int found = 0;
	int i;

	for (i = 0; i < FUNC0(degrees); i++) {
		FUNC1(priv->sample_clk, degrees[i]);
		FUNC4(host, RINTSTS, ALL_INT_CLR);

		err = FUNC5(slot->mmc, opcode, NULL);
		if (!err)
			found = 1;

		if (i > 0) {
			if (err && !prev_err)
				fall_point = i - 1;
			if (!err && prev_err)
				raise_point = i;
		}

		if (raise_point != -1 && fall_point != -1)
			goto tuning_out;

		prev_err = err;
		err = 0;
	}

tuning_out:
	if (found) {
		if (raise_point == -1)
			raise_point = 0;
		if (fall_point == -1)
			fall_point = FUNC0(degrees) - 1;
		if (fall_point < raise_point) {
			if ((raise_point + fall_point) >
			    (FUNC0(degrees) - 1))
				i = fall_point / 2;
			else
				i = (raise_point + FUNC0(degrees) - 1) / 2;
		} else {
			i = (raise_point + fall_point) / 2;
		}

		FUNC1(priv->sample_clk, degrees[i]);
		FUNC2(host->dev, "Tuning clk_sample[%d, %d], set[%d]\n",
			raise_point, fall_point, degrees[i]);
	} else {
		FUNC3(host->dev, "No valid clk_sample shift! use default\n");
		err = -EINVAL;
	}

	FUNC4(host, RINTSTS, ALL_INT_CLR);
	return err;
}