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
struct carl9170fw_txsq_desc {int /*<<< orphan*/  seq_table_addr; } ;
struct TYPE_2__ {int /*<<< orphan*/  tx_seq_table; } ;
struct ar9170 {TYPE_1__ fw; } ;

/* Variables and functions */
 int /*<<< orphan*/  CARL9170FW_TXSQ_DESC_CUR_VER ; 
 int EINVAL ; 
 int /*<<< orphan*/  TXSQ_MAGIC ; 
 struct carl9170fw_txsq_desc* FUNC0 (struct ar9170*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct ar9170 *ar)
{
	const struct carl9170fw_txsq_desc *txsq_desc;

	txsq_desc = FUNC0(ar, TXSQ_MAGIC, sizeof(*txsq_desc),
					  CARL9170FW_TXSQ_DESC_CUR_VER);
	if (txsq_desc) {
		ar->fw.tx_seq_table = FUNC1(txsq_desc->seq_table_addr);
		if (!FUNC2(ar->fw.tx_seq_table))
			return -EINVAL;
	} else {
		ar->fw.tx_seq_table = 0;
	}

	return 0;
}