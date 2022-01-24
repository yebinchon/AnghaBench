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
struct snd_miro_aci {scalar_t__ aci_port; } ;

/* Variables and functions */
 scalar_t__ ACI_REG_RDS ; 
 int RDS_BUSYMASK ; 
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

__attribute__((used)) static int FUNC2(struct snd_miro_aci *aci)
{
	u8 byte;
	int i = 2000;

	do {
		byte = FUNC0(aci->aci_port + ACI_REG_RDS);
		i--;
	} while ((byte & RDS_BUSYMASK) && i);

	/*
	 * It's magic, but without this the data that you read later on
	 * is unreliable and full of bit errors. With this 1 usec delay
	 * everything is fine.
	 */
	FUNC1(1);
	return i ? byte : -1;
}