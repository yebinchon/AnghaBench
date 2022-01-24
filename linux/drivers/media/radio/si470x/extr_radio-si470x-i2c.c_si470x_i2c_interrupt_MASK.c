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
struct si470x_device {int* registers; size_t wr_index; int buf_size; int rd_index; int /*<<< orphan*/  read_queue; int /*<<< orphan*/ * buffer; int /*<<< orphan*/  completion; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 size_t RDSA ; 
 size_t RDSB ; 
 size_t RDSC ; 
 size_t RDSD ; 
 unsigned char RDS_REGISTER_NUM ; 
 size_t READCHAN ; 
 int READCHAN_BLERB ; 
 int READCHAN_BLERC ; 
 int READCHAN_BLERD ; 
 size_t STATUSRSSI ; 
 int STATUSRSSI_BLERA ; 
 int STATUSRSSI_RDSR ; 
 int STATUSRSSI_STC ; 
 size_t SYSCONFIG1 ; 
 int SYSCONFIG1_RDS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 unsigned short max_rds_errors ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned char**,int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned short,unsigned char**) ; 
 int FUNC3 (struct si470x_device*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static irqreturn_t FUNC5(int irq, void *dev_id)
{
	struct si470x_device *radio = dev_id;
	unsigned char regnr;
	unsigned char blocknum;
	unsigned short bler; /* rds block errors */
	unsigned short rds;
	unsigned char tmpbuf[3];
	int retval = 0;

	/* check Seek/Tune Complete */
	retval = FUNC3(radio, STATUSRSSI);
	if (retval < 0)
		goto end;

	if (radio->registers[STATUSRSSI] & STATUSRSSI_STC)
		FUNC0(&radio->completion);

	/* safety checks */
	if ((radio->registers[SYSCONFIG1] & SYSCONFIG1_RDS) == 0)
		goto end;

	/* Update RDS registers */
	for (regnr = 1; regnr < RDS_REGISTER_NUM; regnr++) {
		retval = FUNC3(radio, STATUSRSSI + regnr);
		if (retval < 0)
			goto end;
	}

	/* get rds blocks */
	if ((radio->registers[STATUSRSSI] & STATUSRSSI_RDSR) == 0)
		/* No RDS group ready, better luck next time */
		goto end;

	for (blocknum = 0; blocknum < 4; blocknum++) {
		switch (blocknum) {
		default:
			bler = (radio->registers[STATUSRSSI] &
					STATUSRSSI_BLERA) >> 9;
			rds = radio->registers[RDSA];
			break;
		case 1:
			bler = (radio->registers[READCHAN] &
					READCHAN_BLERB) >> 14;
			rds = radio->registers[RDSB];
			break;
		case 2:
			bler = (radio->registers[READCHAN] &
					READCHAN_BLERC) >> 12;
			rds = radio->registers[RDSC];
			break;
		case 3:
			bler = (radio->registers[READCHAN] &
					READCHAN_BLERD) >> 10;
			rds = radio->registers[RDSD];
			break;
		}

		/* Fill the V4L2 RDS buffer */
		FUNC2(rds, &tmpbuf);
		tmpbuf[2] = blocknum;		/* offset name */
		tmpbuf[2] |= blocknum << 3;	/* received offset */
		if (bler > max_rds_errors)
			tmpbuf[2] |= 0x80;	/* uncorrectable errors */
		else if (bler > 0)
			tmpbuf[2] |= 0x40;	/* corrected error(s) */

		/* copy RDS block to internal buffer */
		FUNC1(&radio->buffer[radio->wr_index], &tmpbuf, 3);
		radio->wr_index += 3;

		/* wrap write pointer */
		if (radio->wr_index >= radio->buf_size)
			radio->wr_index = 0;

		/* check for overflow */
		if (radio->wr_index == radio->rd_index) {
			/* increment and wrap read pointer */
			radio->rd_index += 3;
			if (radio->rd_index >= radio->buf_size)
				radio->rd_index = 0;
		}
	}

	if (radio->wr_index != radio->rd_index)
		FUNC4(&radio->read_queue);

end:
	return IRQ_HANDLED;
}