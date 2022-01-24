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
struct scif_peer_dev {size_t dnode; } ;
struct scif_dev {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 struct scif_peer_dev* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (struct scif_peer_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct scif_dev*) ; 
 struct scif_dev* scif_dev ; 

__attribute__((used)) static void FUNC3(struct device *d)
{
	struct scif_peer_dev *sdev = FUNC0(d);
	struct scif_dev *scifdev = &scif_dev[sdev->dnode];

	FUNC2(scifdev);
	FUNC1(sdev);
}