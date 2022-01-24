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
struct snd_miro_aci {scalar_t__ aci_port; } ;

/* Variables and functions */
 scalar_t__ ACI_REG_RDS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC1 (struct snd_miro_aci*) ; 

__attribute__((used)) static int FUNC2(struct snd_miro_aci *aci)
{
	FUNC0(0, aci->aci_port + ACI_REG_RDS);
	return FUNC1(aci);
}