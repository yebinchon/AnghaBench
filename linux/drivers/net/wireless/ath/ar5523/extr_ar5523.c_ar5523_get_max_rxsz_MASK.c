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
struct ar5523 {int /*<<< orphan*/  rxbufsz; } ;
typedef  int /*<<< orphan*/  rxsize ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int /*<<< orphan*/  AR5523_SANE_RXBUFSZ ; 
 int /*<<< orphan*/  ST_WDC_TRANSPORT_CHUNK_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct ar5523*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ar5523*,char*,...) ; 
 int FUNC2 (struct ar5523*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct ar5523 *ar)
{
	int error;
	__be32 rxsize;

	/* Get max rx size */
	error = FUNC2(ar, ST_WDC_TRANSPORT_CHUNK_SIZE, &rxsize,
				  sizeof(rxsize));
	if (error != 0) {
		FUNC1(ar, "could not read max RX size\n");
		return error;
	}

	ar->rxbufsz = FUNC3(rxsize);

	if (!ar->rxbufsz || ar->rxbufsz > AR5523_SANE_RXBUFSZ) {
		FUNC1(ar, "Bad rxbufsz from device. Using %d instead\n",
			   AR5523_SANE_RXBUFSZ);
		ar->rxbufsz = AR5523_SANE_RXBUFSZ;
	}

	FUNC0(ar, "Max RX buf size: %d\n", ar->rxbufsz);
	return 0;
}