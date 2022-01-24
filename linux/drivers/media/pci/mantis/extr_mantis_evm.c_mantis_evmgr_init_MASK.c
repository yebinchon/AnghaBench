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
struct mantis_pci {int dummy; } ;
struct mantis_ca {int /*<<< orphan*/  hif_evm_work; struct mantis_pci* ca_priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MANTIS_DEBUG ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct mantis_ca*) ; 
 int /*<<< orphan*/  mantis_hifevm_work ; 
 int /*<<< orphan*/  FUNC3 (struct mantis_ca*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

int FUNC5(struct mantis_ca *ca)
{
	struct mantis_pci *mantis = ca->ca_priv;

	FUNC1(MANTIS_DEBUG, 1, "Initializing Mantis Host I/F Event manager");
	FUNC0(&ca->hif_evm_work, mantis_hifevm_work);
	FUNC3(ca);
	FUNC4(&ca->hif_evm_work);
	FUNC2(ca);
	return 0;
}