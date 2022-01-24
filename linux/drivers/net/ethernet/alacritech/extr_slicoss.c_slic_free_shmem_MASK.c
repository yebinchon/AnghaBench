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
struct slic_shmem_data {int dummy; } ;
struct slic_shmem {int /*<<< orphan*/  isr_paddr; struct slic_shmem_data* shmem_data; } ;
struct slic_device {TYPE_1__* pdev; struct slic_shmem shmem; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,struct slic_shmem_data*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(struct slic_device *sdev)
{
	struct slic_shmem *sm = &sdev->shmem;
	struct slic_shmem_data *sm_data = sm->shmem_data;

	FUNC0(&sdev->pdev->dev, sizeof(*sm_data), sm_data,
			  sm->isr_paddr);
}