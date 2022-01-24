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
struct TYPE_2__ {int width; int /*<<< orphan*/  xfer_func; int /*<<< orphan*/  quantization; int /*<<< orphan*/  ycbcr_enc; int /*<<< orphan*/  colorspace; int /*<<< orphan*/  field; int /*<<< orphan*/  height; int /*<<< orphan*/  code; } ;
struct vimc_sen_device {TYPE_1__ mbus_format; int /*<<< orphan*/  tpg; } ;
struct vimc_pix_map {int bpp; int /*<<< orphan*/  pixelformat; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct vimc_pix_map* FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC10(struct vimc_sen_device *vsen)
{
	const struct vimc_pix_map *vpix =
				FUNC9(vsen->mbus_format.code);

	FUNC0(&vsen->tpg, vsen->mbus_format.width,
			 vsen->mbus_format.height, vsen->mbus_format.field);
	FUNC2(&vsen->tpg, 0, vsen->mbus_format.width * vpix->bpp);
	FUNC1(&vsen->tpg, vsen->mbus_format.height);
	FUNC5(&vsen->tpg, vpix->pixelformat);
	/* TODO: add support for V4L2_FIELD_ALTERNATE */
	FUNC4(&vsen->tpg, vsen->mbus_format.field, false);
	FUNC3(&vsen->tpg, vsen->mbus_format.colorspace);
	FUNC8(&vsen->tpg, vsen->mbus_format.ycbcr_enc);
	FUNC6(&vsen->tpg, vsen->mbus_format.quantization);
	FUNC7(&vsen->tpg, vsen->mbus_format.xfer_func);
}