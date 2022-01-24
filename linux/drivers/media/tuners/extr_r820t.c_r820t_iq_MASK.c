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
struct r820t_sect_type {int /*<<< orphan*/  phase_y; int /*<<< orphan*/  gain_x; } ;
struct r820t_priv {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct r820t_sect_type*) ; 
 int FUNC1 (struct r820t_priv*,struct r820t_sect_type*,int) ; 
 int FUNC2 (struct r820t_priv*,struct r820t_sect_type*,int*) ; 
 int FUNC3 (struct r820t_priv*,struct r820t_sect_type*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (struct r820t_priv*,struct r820t_sect_type*) ; 
 int /*<<< orphan*/  FUNC5 (struct r820t_priv*) ; 
 int FUNC6 (struct r820t_priv*,int,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC7(struct r820t_priv *priv, struct r820t_sect_type *iq_pont)
{
	struct r820t_sect_type compare_iq[3];
	int rc;
	u8 x_direction = 0;  /* 1:x, 0:y */
	u8 dir_reg, other_reg;

	FUNC5(priv);

	rc = FUNC2(priv, compare_iq, &x_direction);
	if (rc < 0)
		return rc;

	if (x_direction == 1) {
		dir_reg   = 0x08;
		other_reg = 0x09;
	} else {
		dir_reg   = 0x09;
		other_reg = 0x08;
	}

	/* compare and find min of 3 points. determine i/q direction */
	FUNC0(compare_iq);

	/* increase step to find min value of this direction */
	rc = FUNC1(priv, compare_iq, dir_reg);
	if (rc < 0)
		return rc;

	/* the other direction */
	rc = FUNC3(priv, compare_iq,  compare_iq[0].gain_x,
				compare_iq[0].phase_y, dir_reg);
	if (rc < 0)
		return rc;

	/* compare and find min of 3 points. determine i/q direction */
	FUNC0(compare_iq);

	/* increase step to find min value on this direction */
	rc = FUNC1(priv, compare_iq, other_reg);
	if (rc < 0)
		return rc;

	/* check 3 points again */
	rc = FUNC3(priv, compare_iq,  compare_iq[0].gain_x,
				compare_iq[0].phase_y, other_reg);
	if (rc < 0)
		return rc;

	FUNC0(compare_iq);

	/* section-9 check */
	rc = FUNC4(priv, compare_iq);

	*iq_pont = compare_iq[0];

	/* reset gain/phase control setting */
	rc = FUNC6(priv, 0x08, 0, 0x3f);
	if (rc < 0)
		return rc;

	rc = FUNC6(priv, 0x09, 0, 0x3f);

	return rc;
}