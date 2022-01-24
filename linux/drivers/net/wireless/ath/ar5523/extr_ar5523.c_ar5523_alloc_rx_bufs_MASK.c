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
struct ar5523_rx_data {int /*<<< orphan*/  list; int /*<<< orphan*/  urb; struct ar5523* ar; } ;
struct ar5523 {int /*<<< orphan*/  rx_data_free_cnt; int /*<<< orphan*/  rx_data_free; struct ar5523_rx_data* rx_data; } ;

/* Variables and functions */
 int AR5523_RX_DATA_COUNT ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct ar5523*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct ar5523 *ar)
{
	int i;

	for (i = 0; i < AR5523_RX_DATA_COUNT; i++) {
		struct ar5523_rx_data *data = &ar->rx_data[i];

		data->ar = ar;
		data->urb = FUNC3(0, GFP_KERNEL);
		if (!data->urb)
			goto err;
		FUNC2(&data->list, &ar->rx_data_free);
		FUNC1(&ar->rx_data_free_cnt);
	}
	return 0;

err:
	FUNC0(ar);
	return -ENOMEM;
}