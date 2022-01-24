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
typedef  int /*<<< orphan*/  t ;
struct spi_transfer {int len; char* rx_buf; int /*<<< orphan*/ * tx_buf; } ;
struct spi_message {int dummy; } ;
struct ks8995_switch {int /*<<< orphan*/  lock; int /*<<< orphan*/  spi; } ;
typedef  int /*<<< orphan*/  cmd ;
typedef  int /*<<< orphan*/  __be16 ;

/* Variables and functions */
 int /*<<< orphan*/  KS8995_CMD_READ ; 
 int /*<<< orphan*/  FUNC0 (struct ks8995_switch*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (struct spi_transfer**,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct spi_transfer*,struct spi_message*) ; 
 int /*<<< orphan*/  FUNC5 (struct spi_message*) ; 
 int FUNC6 (int /*<<< orphan*/ ,struct spi_message*) ; 

__attribute__((used)) static int FUNC7(struct ks8995_switch *ks, char *buf,
		 unsigned offset, size_t count)
{
	__be16 cmd;
	struct spi_transfer t[2];
	struct spi_message m;
	int err;

	cmd = FUNC0(ks, KS8995_CMD_READ, offset);
	FUNC5(&m);

	FUNC1(&t, 0, sizeof(t));

	t[0].tx_buf = &cmd;
	t[0].len = sizeof(cmd);
	FUNC4(&t[0], &m);

	t[1].rx_buf = buf;
	t[1].len = count;
	FUNC4(&t[1], &m);

	FUNC2(&ks->lock);
	err = FUNC6(ks->spi, &m);
	FUNC3(&ks->lock);

	return err ? err : count;
}