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
typedef  int /*<<< orphan*/  u32 ;
struct wil6210_priv {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct wil6210_priv*,char*) ; 
 scalar_t__ FUNC4 (struct wil6210_priv*,void*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct wil6210_priv*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct wil6210_priv*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct wil6210_priv*) ; 

void FUNC8(struct wil6210_priv *wil)
{
	void *fw_dump_data;
	u32 fw_dump_size;

	if (FUNC5(wil, &fw_dump_size, NULL)) {
		FUNC3(wil, "fail to get fw dump size\n");
		return;
	}

	fw_dump_data = FUNC2(fw_dump_size);
	if (!fw_dump_data)
		return;

	if (FUNC4(wil, fw_dump_data, fw_dump_size)) {
		FUNC1(fw_dump_data);
		return;
	}
	/* fw_dump_data will be free in device coredump release function
	 * after 5 min
	 */
	FUNC0(FUNC7(wil), fw_dump_data, fw_dump_size, GFP_KERNEL);
	FUNC6(wil, "fw core dumped, size %d bytes\n", fw_dump_size);
}