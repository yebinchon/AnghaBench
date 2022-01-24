#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u64 ;
struct TYPE_4__ {int /*<<< orphan*/  (* napi_fn ) (struct octeon_droq*) ;scalar_t__ poll_mode; } ;
struct octeon_droq {TYPE_2__ ops; struct octeon_device* oct_dev; } ;
struct octeon_device_priv {int /*<<< orphan*/  droq_tasklet; } ;
struct octeon_device {TYPE_1__* pci_dev; scalar_t__ priv; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int MSIX_PI_INT ; 
 int MSIX_PO_INT ; 
 scalar_t__ FUNC0 (struct octeon_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct octeon_droq*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static
int FUNC4(struct octeon_droq *droq, u64 ret)
{
	struct octeon_device *oct = droq->oct_dev;
	struct octeon_device_priv *oct_priv =
	    (struct octeon_device_priv *)oct->priv;

	if (droq->ops.poll_mode) {
		droq->ops.napi_fn(droq);
	} else {
		if (ret & MSIX_PO_INT) {
			if (FUNC0(oct))
				FUNC1(&oct->pci_dev->dev,
					"should not come here should not get rx when poll mode = 0 for vf\n");
			FUNC3(&oct_priv->droq_tasklet);
			return 1;
		}
		/* this will be flushed periodically by check iq db */
		if (ret & MSIX_PI_INT)
			return 0;
	}

	return 0;
}