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
typedef  scalar_t__ u8 ;
struct snd_miro_aci {int dummy; } ;

/* Variables and functions */
 int EIO ; 
 int FUNC0 (int) ; 
 scalar_t__ RDS_RESET ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__*,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC2 (struct snd_miro_aci*) ; 
 int FUNC3 (struct snd_miro_aci*) ; 
 scalar_t__ FUNC4 (struct snd_miro_aci*) ; 
 int /*<<< orphan*/  FUNC5 (struct snd_miro_aci*,scalar_t__) ; 

__attribute__((used)) static int FUNC6(struct snd_miro_aci *aci, u8 cmd, u8 databuffer[], u8 datasize)
{
	int i, j;

	FUNC5(aci, cmd);

	/* RDS_RESET doesn't need further processing */
	if (cmd == RDS_RESET)
		return 0;
	if (FUNC2(aci))
		return -EIO;
	if (datasize == 0)
		return 0;

	/* to be able to use rds_readcycle_nowait()
	   I have to waitread() here */
	if (FUNC4(aci) < 0)
		return -1;

	FUNC1(databuffer, 0, datasize);

	for (i = 0; i < 8 * datasize; i++) {
		j = FUNC3(aci);
		if (j < 0)
			return -EIO;
		databuffer[i / 8] |= FUNC0(j) << (7 - (i % 8));
	}
	return 0;
}