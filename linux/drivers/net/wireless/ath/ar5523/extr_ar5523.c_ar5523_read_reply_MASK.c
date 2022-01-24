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
struct ar5523_tx_cmd {int olen; int /*<<< orphan*/  done; int /*<<< orphan*/  res; scalar_t__ odata; } ;
struct ar5523_cmd_hdr {int /*<<< orphan*/  code; int /*<<< orphan*/  len; } ;
struct ar5523 {int dummy; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int /*<<< orphan*/  EOVERFLOW ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct ar5523*,char*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct ar5523*,char*,int,int) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC6(struct ar5523 *ar, struct ar5523_cmd_hdr *hdr,
			      struct ar5523_tx_cmd *cmd)
{
	int dlen, olen;
	__be32 *rp;

	dlen = FUNC3(hdr->len) - sizeof(*hdr);

	if (dlen < 0) {
		FUNC0(1);
		goto out;
	}

	FUNC1(ar, "Code = %d len = %d\n", FUNC3(hdr->code) & 0xff,
		   dlen);

	rp = (__be32 *)(hdr + 1);
	if (dlen >= sizeof(u32)) {
		olen = FUNC3(rp[0]);
		dlen -= sizeof(u32);
		if (olen == 0) {
			/* convention is 0 =>'s one word */
			olen = sizeof(u32);
		}
	} else
		olen = 0;

	if (cmd->odata) {
		if (cmd->olen < olen) {
			FUNC2(ar, "olen to small %d < %d\n",
				   cmd->olen, olen);
			cmd->olen = 0;
			cmd->res = -EOVERFLOW;
		} else {
			cmd->olen = olen;
			FUNC5(cmd->odata, &rp[1], olen);
			cmd->res = 0;
		}
	}

out:
	FUNC4(&cmd->done);
}