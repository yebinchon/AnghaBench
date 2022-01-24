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
typedef  int u16 ;
struct xc2028_data {int /*<<< orphan*/  lock; } ;
struct dvb_frontend {struct xc2028_data* tuner_priv; } ;
typedef  int s32 ;
typedef  int s16 ;

/* Variables and functions */
 int /*<<< orphan*/  XREG_FREQ_ERROR ; 
 int /*<<< orphan*/  XREG_LOCK ; 
 int FUNC0 (struct xc2028_data*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 
 int FUNC5 (struct xc2028_data*,int /*<<< orphan*/ ,int*) ; 

__attribute__((used)) static int FUNC6(struct dvb_frontend *fe, s32 *afc)
{
	struct xc2028_data *priv = fe->tuner_priv;
	int i, rc;
	u16 frq_lock = 0;
	s16 afc_reg = 0;

	rc = FUNC0(priv);
	if (rc < 0)
		return rc;

	/* If the device is sleeping, no channel is tuned */
	if (!rc) {
		*afc = 0;
		return 0;
	}

	FUNC2(&priv->lock);

	/* Sync Lock Indicator */
	for (i = 0; i < 3; i++) {
		rc = FUNC5(priv, XREG_LOCK, &frq_lock);
		if (rc < 0)
			goto ret;

		if (frq_lock)
			break;
		FUNC1(6);
	}

	/* Frequency didn't lock */
	if (frq_lock == 2)
		goto ret;

	/* Get AFC */
	rc = FUNC5(priv, XREG_FREQ_ERROR, &afc_reg);
	if (rc < 0)
		goto ret;

	*afc = afc_reg * 15625; /* Hz */

	FUNC4("AFC is %d Hz\n", *afc);

ret:
	FUNC3(&priv->lock);

	return rc;
}