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
struct hl_device {struct goya_device* asic_specific; } ;
struct hl_cs_parser {int /*<<< orphan*/  ext_queue; } ;
struct goya_device {int hw_cap_initialized; } ;

/* Variables and functions */
 int HW_CAP_MMU ; 
 int FUNC0 (struct hl_device*,struct hl_cs_parser*) ; 
 int FUNC1 (struct hl_device*,struct hl_cs_parser*) ; 
 int FUNC2 (struct hl_device*,struct hl_cs_parser*) ; 

int FUNC3(struct hl_device *hdev, struct hl_cs_parser *parser)
{
	struct goya_device *goya = hdev->asic_specific;

	if (!parser->ext_queue)
		return FUNC1(hdev, parser);

	if (goya->hw_cap_initialized & HW_CAP_MMU)
		return FUNC0(hdev, parser);
	else
		return FUNC2(hdev, parser);
}