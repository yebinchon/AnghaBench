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
struct v4l2_frequency {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  subdev; } ;
struct rcar_drif_sdr {TYPE_1__ ep; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  g_frequency ; 
 int /*<<< orphan*/  tuner ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct v4l2_frequency*) ; 
 struct rcar_drif_sdr* FUNC1 (struct file*) ; 

__attribute__((used)) static int FUNC2(struct file *file, void *priv,
				 struct v4l2_frequency *f)
{
	struct rcar_drif_sdr *sdr = FUNC1(file);

	return FUNC0(sdr->ep.subdev, tuner, g_frequency, f);
}