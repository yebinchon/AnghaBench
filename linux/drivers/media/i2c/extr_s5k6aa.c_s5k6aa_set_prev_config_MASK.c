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
typedef  scalar_t__ u16 ;
struct s5k6aa_preset {int index; scalar_t__ clk_id; } ;
struct s5k6aa {scalar_t__ pclk_fmax; scalar_t__ pclk_fmin; TYPE_1__* fiv; scalar_t__ apply_cfg; int /*<<< orphan*/  sd; } ;
struct i2c_client {int dummy; } ;
struct TYPE_2__ {scalar_t__ reg_fr_time; } ;

/* Variables and functions */
 scalar_t__ FR_RATE_DYNAMIC ; 
 scalar_t__ FR_RATE_Q_BEST_FRRATE ; 
 scalar_t__ FR_RATE_Q_BEST_QUALITY ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 scalar_t__ S5K6AA_MAX_HIGHRES_FR_TIME ; 
 int /*<<< orphan*/  debug ; 
 int FUNC7 (struct i2c_client*,int,int) ; 
 int FUNC8 (struct i2c_client*) ; 
 int FUNC9 (struct s5k6aa*,struct s5k6aa_preset*) ; 
 int FUNC10 (struct i2c_client*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (int,int /*<<< orphan*/ ,struct i2c_client*,char*,scalar_t__,int) ; 
 struct i2c_client* FUNC12 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC13(struct s5k6aa *s5k6aa,
				  struct s5k6aa_preset *preset)
{
	struct i2c_client *client = FUNC12(&s5k6aa->sd);
	int idx = preset->index;
	u16 frame_rate_q;
	int ret;

	if (s5k6aa->fiv->reg_fr_time >= S5K6AA_MAX_HIGHRES_FR_TIME)
		frame_rate_q = FR_RATE_Q_BEST_FRRATE;
	else
		frame_rate_q = FR_RATE_Q_BEST_QUALITY;

	ret = FUNC9(s5k6aa, preset);
	if (!ret)
		ret = FUNC10(client, FUNC4(idx),
				   s5k6aa->pclk_fmax);
	if (!ret)
		ret = FUNC10(client, FUNC6(idx),
				   s5k6aa->pclk_fmin);
	if (!ret)
		ret = FUNC10(client, FUNC0(idx),
				   preset->clk_id);
	if (!ret)
		ret = FUNC10(client, FUNC2(idx),
				   FR_RATE_DYNAMIC);
	if (!ret)
		ret = FUNC10(client, FUNC1(idx),
				   frame_rate_q);
	if (!ret)
		ret = FUNC10(client, FUNC3(idx),
				   s5k6aa->fiv->reg_fr_time + 33);
	if (!ret)
		ret = FUNC10(client, FUNC5(idx),
				   s5k6aa->fiv->reg_fr_time - 33);
	if (!ret)
		ret = FUNC7(client, 250, idx);
	if (!ret)
		ret = FUNC8(client);
	if (!ret)
		s5k6aa->apply_cfg = 0;

	FUNC11(1, debug, client, "Frame interval: %d +/- 3.3ms. (%d)\n",
		 s5k6aa->fiv->reg_fr_time, ret);
	return ret;
}