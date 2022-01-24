#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_4__ {void* cstd_en; int /*<<< orphan*/  cs_thres; void* cscn_en; } ;
struct qm_mcc_initcgr {TYPE_1__ cgr; int /*<<< orphan*/  we_mask; } ;
struct TYPE_6__ {int /*<<< orphan*/  cgrid; } ;
struct dpaa_priv {int use_ingress_cgr; TYPE_2__* mac_dev; TYPE_3__ ingress_cgr; } ;
typedef  int /*<<< orphan*/  initcgr ;
struct TYPE_5__ {int /*<<< orphan*/  addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  DPAA_INGRESS_CS_THRESHOLD ; 
 int /*<<< orphan*/  QMAN_CGR_FLAG_USE_INIT ; 
 void* QM_CGR_EN ; 
 int /*<<< orphan*/  QM_CGR_WE_CSTD_EN ; 
 int /*<<< orphan*/  QM_CGR_WE_CS_THRES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct qm_mcc_initcgr*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC2 (struct dpaa_priv*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,...) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (TYPE_3__*,int /*<<< orphan*/ ,struct qm_mcc_initcgr*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct dpaa_priv *priv)
{
	struct qm_mcc_initcgr initcgr;
	u32 cs_th;
	int err;

	err = FUNC6(&priv->ingress_cgr.cgrid);
	if (err < 0) {
		if (FUNC2(priv))
			FUNC4("Error %d allocating CGR ID\n", err);
		goto out_error;
	}

	/* Enable CS TD, but disable Congestion State Change Notifications. */
	FUNC1(&initcgr, 0, sizeof(initcgr));
	initcgr.we_mask = FUNC0(QM_CGR_WE_CS_THRES);
	initcgr.cgr.cscn_en = QM_CGR_EN;
	cs_th = DPAA_INGRESS_CS_THRESHOLD;
	FUNC5(&initcgr.cgr.cs_thres, cs_th, 1);

	initcgr.we_mask |= FUNC0(QM_CGR_WE_CSTD_EN);
	initcgr.cgr.cstd_en = QM_CGR_EN;

	/* This CGR will be associated with the SWP affined to the current CPU.
	 * However, we'll place all our ingress FQs in it.
	 */
	err = FUNC7(&priv->ingress_cgr, QMAN_CGR_FLAG_USE_INIT,
			      &initcgr);
	if (err < 0) {
		if (FUNC2(priv))
			FUNC4("Error %d creating ingress CGR with ID %d\n",
			       err, priv->ingress_cgr.cgrid);
		FUNC8(priv->ingress_cgr.cgrid);
		goto out_error;
	}
	if (FUNC2(priv))
		FUNC3("Created ingress CGR %d for netdev with hwaddr %pM\n",
			 priv->ingress_cgr.cgrid, priv->mac_dev->addr);

	priv->use_ingress_cgr = true;

out_error:
	return err;
}