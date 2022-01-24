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
typedef  int /*<<< orphan*/  u_char ;
struct mtd_info {struct bcm47xxsflash* priv; } ;
struct bcm47xxsflash {int type; } ;
typedef  scalar_t__ loff_t ;

/* Variables and functions */
#define  BCM47XXSFLASH_TYPE_ATMEL 129 
#define  BCM47XXSFLASH_TYPE_ST 128 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (struct mtd_info*,scalar_t__,size_t,int /*<<< orphan*/  const*) ; 
 int FUNC2 (struct mtd_info*,scalar_t__,size_t,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC3 (char*,scalar_t__) ; 

__attribute__((used)) static int FUNC4(struct mtd_info *mtd, loff_t to, size_t len,
			       size_t *retlen, const u_char *buf)
{
	struct bcm47xxsflash *b47s = mtd->priv;
	int written;

	/* Writing functions can return without writing all passed data, for
	 * example when the hardware is too old or when we git page boundary.
	 */
	while (len > 0) {
		switch (b47s->type) {
		case BCM47XXSFLASH_TYPE_ST:
			written = FUNC2(mtd, to, len, buf);
			break;
		case BCM47XXSFLASH_TYPE_ATMEL:
			written = FUNC1(mtd, to, len, buf);
			break;
		default:
			FUNC0(1);
		}
		if (written < 0) {
			FUNC3("Error writing at offset 0x%llX\n", to);
			return written;
		}
		to += (loff_t)written;
		len -= written;
		*retlen += written;
		buf += written;
	}

	return 0;
}