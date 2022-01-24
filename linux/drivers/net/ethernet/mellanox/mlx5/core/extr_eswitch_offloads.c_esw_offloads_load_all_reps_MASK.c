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
typedef  scalar_t__ u8 ;
struct mlx5_eswitch {int dummy; } ;

/* Variables and functions */
 scalar_t__ NUM_REP_TYPES ; 
 int FUNC0 (struct mlx5_eswitch*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct mlx5_eswitch*,scalar_t__) ; 

__attribute__((used)) static int FUNC2(struct mlx5_eswitch *esw)
{
	u8 rep_type = 0;
	int err;

	for (rep_type = 0; rep_type < NUM_REP_TYPES; rep_type++) {
		err = FUNC0(esw, rep_type);
		if (err)
			goto err_reps;
	}

	return err;

err_reps:
	while (rep_type-- > 0)
		FUNC1(esw, rep_type);
	return err;
}