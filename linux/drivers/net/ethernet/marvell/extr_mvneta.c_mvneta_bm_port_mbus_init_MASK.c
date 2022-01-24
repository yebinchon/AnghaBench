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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct mvneta_port {int bm_win_id; int /*<<< orphan*/  dev; TYPE_1__* bm_priv; } ;
struct TYPE_2__ {int /*<<< orphan*/  bppi_phys_addr; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC1 (struct mvneta_port*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static  int FUNC3(struct mvneta_port *pp)
{
	u32 wsize;
	u8 target, attr;
	int err;

	/* Get BM window information */
	err = FUNC0(pp->bm_priv->bppi_phys_addr, &wsize,
					 &target, &attr);
	if (err < 0)
		return err;

	pp->bm_win_id = -1;

	/* Open NETA -> BM window */
	err = FUNC1(pp, pp->bm_priv->bppi_phys_addr, wsize,
				     target, attr);
	if (err < 0) {
		FUNC2(pp->dev, "fail to configure mbus window to BM\n");
		return err;
	}
	return 0;
}