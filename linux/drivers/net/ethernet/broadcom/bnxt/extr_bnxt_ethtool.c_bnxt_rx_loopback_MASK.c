#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u8 ;
typedef  int u32 ;
typedef  size_t u16 ;
struct rx_cmp {size_t rx_cmp_opaque; int /*<<< orphan*/  rx_cmp_len_flags_type; } ;
struct bnxt_sw_rx_bd {scalar_t__* data_ptr; } ;
struct bnxt_rx_ring_info {struct bnxt_sw_rx_bd* rx_buf_ring; } ;
struct bnxt_napi {TYPE_2__* bp; struct bnxt_rx_ring_info* rx_ring; } ;
struct bnxt_cp_ring_info {int /*<<< orphan*/ ** cp_desc_ring; struct bnxt_napi* bnapi; } ;
struct bnxt {int dummy; } ;
struct TYPE_4__ {TYPE_1__* dev; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev_addr; } ;

/* Variables and functions */
 size_t FUNC0 (size_t) ; 
 size_t FUNC1 (size_t) ; 
 int EIO ; 
 int ETH_ALEN ; 
 size_t FUNC2 (int) ; 
 int RX_CMP_LEN_SHIFT ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__*,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct bnxt *bp, struct bnxt_cp_ring_info *cpr,
			    u32 raw_cons, int pkt_size)
{
	struct bnxt_napi *bnapi = cpr->bnapi;
	struct bnxt_rx_ring_info *rxr;
	struct bnxt_sw_rx_bd *rx_buf;
	struct rx_cmp *rxcmp;
	u16 cp_cons, cons;
	u8 *data;
	u32 len;
	int i;

	rxr = bnapi->rx_ring;
	cp_cons = FUNC2(raw_cons);
	rxcmp = (struct rx_cmp *)
		&cpr->cp_desc_ring[FUNC1(cp_cons)][FUNC0(cp_cons)];
	cons = rxcmp->rx_cmp_opaque;
	rx_buf = &rxr->rx_buf_ring[cons];
	data = rx_buf->data_ptr;
	len = FUNC4(rxcmp->rx_cmp_len_flags_type) >> RX_CMP_LEN_SHIFT;
	if (len != pkt_size)
		return -EIO;
	i = ETH_ALEN;
	if (!FUNC3(data + i, bnapi->bp->dev->dev_addr))
		return -EIO;
	i += ETH_ALEN;
	for (  ; i < pkt_size; i++) {
		if (data[i] != (u8)(i & 0xff))
			return -EIO;
	}
	return 0;
}