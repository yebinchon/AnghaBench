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
struct mtk_jpeg_dec_param {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mtk_jpeg_dec_param*) ; 
 scalar_t__ FUNC1 (struct mtk_jpeg_dec_param*) ; 
 int /*<<< orphan*/  FUNC2 (struct mtk_jpeg_dec_param*) ; 
 scalar_t__ FUNC3 (struct mtk_jpeg_dec_param*) ; 

int FUNC4(struct mtk_jpeg_dec_param *param)
{
	if (FUNC3(param))
		return -1;

	FUNC2(param);
	FUNC0(param);
	if (FUNC1(param))
		return -2;

	return 0;
}