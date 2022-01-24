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
struct snd_miro_aci {int aci_version; } ;
struct pcm20 {struct snd_miro_aci* aci; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACI_WRITE_TUNE ; 
 int /*<<< orphan*/  RDS_RESET ; 
 int /*<<< orphan*/  FUNC0 (struct snd_miro_aci*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct snd_miro_aci*,int /*<<< orphan*/ ,unsigned char,unsigned char) ; 

__attribute__((used)) static int FUNC2(struct pcm20 *dev, unsigned long freq)
{
	unsigned char freql;
	unsigned char freqh;
	struct snd_miro_aci *aci = dev->aci;

	freq /= 160;
	if (!(aci->aci_version == 0x07 || aci->aci_version >= 0xb0))
		freq /= 10;  /* I don't know exactly which version
			      * needs this hack */
	freql = freq & 0xff;
	freqh = freq >> 8;

	FUNC0(aci, RDS_RESET, NULL, 0);
	return FUNC1(aci, ACI_WRITE_TUNE, freql, freqh);
}