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
typedef  int u32 ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 int FUNC1 (int,int) ; 
 int SZ_16K ; 
 int SZ_4K ; 
 int FUNC2 (int,int) ; 

__attribute__((used)) static u32 FUNC3(u32 width, u32 height)
{
	u32 y_meta_stride, y_meta_plane;
	u32 y_stride, y_plane;
	u32 uv_meta_stride, uv_meta_plane;
	u32 uv_stride, uv_plane;
	u32 extradata = SZ_16K;

	y_meta_stride = FUNC0(FUNC1(width, 32), 64);
	y_meta_plane = y_meta_stride * FUNC0(FUNC1(height, 8), 16);
	y_meta_plane = FUNC0(y_meta_plane, SZ_4K);

	y_stride = FUNC0(width, 128);
	y_plane = FUNC0(y_stride * FUNC0(height, 32), SZ_4K);

	uv_meta_stride = FUNC0(FUNC1(width / 2, 16), 64);
	uv_meta_plane = uv_meta_stride * FUNC0(FUNC1(height / 2, 8), 16);
	uv_meta_plane = FUNC0(uv_meta_plane, SZ_4K);

	uv_stride = FUNC0(width, 128);
	uv_plane = FUNC0(uv_stride * FUNC0(height / 2, 32), SZ_4K);

	return FUNC0(y_meta_plane + y_plane + uv_meta_plane + uv_plane +
		     FUNC2(extradata, y_stride * 48), SZ_4K);
}