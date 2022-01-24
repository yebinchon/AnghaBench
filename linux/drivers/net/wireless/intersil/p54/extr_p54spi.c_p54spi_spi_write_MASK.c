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
typedef  int u8 ;
typedef  int /*<<< orphan*/  t ;
struct spi_transfer {int len; int /*<<< orphan*/ * tx_buf; } ;
struct spi_message {int dummy; } ;
struct p54s_priv {int /*<<< orphan*/  spi; } ;
typedef  int /*<<< orphan*/  last_word ;
typedef  int /*<<< orphan*/  addr ;
typedef  int /*<<< orphan*/  __le16 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct spi_transfer*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct spi_transfer*,struct spi_message*) ; 
 int /*<<< orphan*/  FUNC3 (struct spi_message*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct spi_message*) ; 

__attribute__((used)) static void FUNC5(struct p54s_priv *priv, u8 address,
			     const void *buf, size_t len)
{
	struct spi_transfer t[3];
	struct spi_message m;
	__le16 addr;

	/* We first push the address */
	addr = FUNC0(address << 8);

	FUNC3(&m);
	FUNC1(t, 0, sizeof(t));

	t[0].tx_buf = &addr;
	t[0].len = sizeof(addr);
	FUNC2(&t[0], &m);

	t[1].tx_buf = buf;
	t[1].len = len & ~1;
	FUNC2(&t[1], &m);

	if (len % 2) {
		__le16 last_word;
		last_word = FUNC0(((u8 *)buf)[len - 1]);

		t[2].tx_buf = &last_word;
		t[2].len = sizeof(last_word);
		FUNC2(&t[2], &m);
	}

	FUNC4(priv->spi, &m);
}