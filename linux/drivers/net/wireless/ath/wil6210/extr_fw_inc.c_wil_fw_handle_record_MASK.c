#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct wil6210_priv {int dummy; } ;
struct TYPE_3__ {int type; int (* load_handler ) (struct wil6210_priv*,void const*,size_t) ;int (* parse_handler ) (struct wil6210_priv*,void const*,size_t) ;} ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 int EINVAL ; 
 int FUNC1 (struct wil6210_priv*,void const*,size_t) ; 
 int FUNC2 (struct wil6210_priv*,void const*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (struct wil6210_priv*,char*,int) ; 
 TYPE_1__* wil_fw_handlers ; 

__attribute__((used)) static int FUNC4(struct wil6210_priv *wil, int type,
				const void *data, size_t size, bool load)
{
	int i;

	for (i = 0; i < FUNC0(wil_fw_handlers); i++)
		if (wil_fw_handlers[i].type == type)
			return load ?
				wil_fw_handlers[i].load_handler(
					wil, data, size) :
				wil_fw_handlers[i].parse_handler(
					wil, data, size);

	FUNC3(wil, "unknown record type: %d\n", type);
	return -EINVAL;
}