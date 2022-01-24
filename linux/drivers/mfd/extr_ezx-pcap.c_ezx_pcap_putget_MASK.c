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
typedef  int /*<<< orphan*/  u8 ;
typedef  scalar_t__ u32 ;
typedef  int /*<<< orphan*/  t ;
struct spi_transfer {int len; int /*<<< orphan*/ * rx_buf; int /*<<< orphan*/ * tx_buf; } ;
struct spi_message {int dummy; } ;
struct pcap_chip {scalar_t__ buf; int /*<<< orphan*/  spi; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct spi_transfer*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct spi_transfer*,struct spi_message*) ; 
 int /*<<< orphan*/  FUNC2 (struct spi_message*) ; 
 int FUNC3 (int /*<<< orphan*/ ,struct spi_message*) ; 

__attribute__((used)) static int FUNC4(struct pcap_chip *pcap, u32 *data)
{
	struct spi_transfer t;
	struct spi_message m;
	int status;

	FUNC0(&t, 0, sizeof(t));
	FUNC2(&m);
	t.len = sizeof(u32);
	FUNC1(&t, &m);

	pcap->buf = *data;
	t.tx_buf = (u8 *) &pcap->buf;
	t.rx_buf = (u8 *) &pcap->buf;
	status = FUNC3(pcap->spi, &m);

	if (status == 0)
		*data = pcap->buf;

	return status;
}