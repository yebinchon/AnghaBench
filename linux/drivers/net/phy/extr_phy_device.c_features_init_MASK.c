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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  phy_10_100_features_array ; 
 int /*<<< orphan*/  phy_10gbit_features ; 
 int /*<<< orphan*/  phy_10gbit_features_array ; 
 int /*<<< orphan*/  phy_10gbit_fec_features ; 
 int /*<<< orphan*/  phy_10gbit_fec_features_array ; 
 int /*<<< orphan*/  phy_10gbit_full_features ; 
 int /*<<< orphan*/  phy_10gbit_full_features_array ; 
 int /*<<< orphan*/  phy_all_ports_features_array ; 
 int /*<<< orphan*/  phy_basic_features ; 
 int /*<<< orphan*/  phy_basic_ports_array ; 
 int /*<<< orphan*/  phy_basic_t1_features ; 
 int /*<<< orphan*/  phy_basic_t1_features_array ; 
 int /*<<< orphan*/  phy_fibre_port_array ; 
 int /*<<< orphan*/  phy_gbit_all_ports_features ; 
 int /*<<< orphan*/  phy_gbit_features ; 
 int /*<<< orphan*/  phy_gbit_features_array ; 
 int /*<<< orphan*/  phy_gbit_fibre_features ; 

__attribute__((used)) static void FUNC2(void)
{
	/* 10/100 half/full*/
	FUNC1(phy_basic_ports_array,
			       FUNC0(phy_basic_ports_array),
			       phy_basic_features);
	FUNC1(phy_10_100_features_array,
			       FUNC0(phy_10_100_features_array),
			       phy_basic_features);

	/* 100 full, TP */
	FUNC1(phy_basic_t1_features_array,
			       FUNC0(phy_basic_t1_features_array),
			       phy_basic_t1_features);

	/* 10/100 half/full + 1000 half/full */
	FUNC1(phy_basic_ports_array,
			       FUNC0(phy_basic_ports_array),
			       phy_gbit_features);
	FUNC1(phy_10_100_features_array,
			       FUNC0(phy_10_100_features_array),
			       phy_gbit_features);
	FUNC1(phy_gbit_features_array,
			       FUNC0(phy_gbit_features_array),
			       phy_gbit_features);

	/* 10/100 half/full + 1000 half/full + fibre*/
	FUNC1(phy_basic_ports_array,
			       FUNC0(phy_basic_ports_array),
			       phy_gbit_fibre_features);
	FUNC1(phy_10_100_features_array,
			       FUNC0(phy_10_100_features_array),
			       phy_gbit_fibre_features);
	FUNC1(phy_gbit_features_array,
			       FUNC0(phy_gbit_features_array),
			       phy_gbit_fibre_features);
	FUNC1(phy_fibre_port_array,
			       FUNC0(phy_fibre_port_array),
			       phy_gbit_fibre_features);

	/* 10/100 half/full + 1000 half/full + TP/MII/FIBRE/AUI/BNC/Backplane*/
	FUNC1(phy_all_ports_features_array,
			       FUNC0(phy_all_ports_features_array),
			       phy_gbit_all_ports_features);
	FUNC1(phy_10_100_features_array,
			       FUNC0(phy_10_100_features_array),
			       phy_gbit_all_ports_features);
	FUNC1(phy_gbit_features_array,
			       FUNC0(phy_gbit_features_array),
			       phy_gbit_all_ports_features);

	/* 10/100 half/full + 1000 half/full + 10G full*/
	FUNC1(phy_all_ports_features_array,
			       FUNC0(phy_all_ports_features_array),
			       phy_10gbit_features);
	FUNC1(phy_10_100_features_array,
			       FUNC0(phy_10_100_features_array),
			       phy_10gbit_features);
	FUNC1(phy_gbit_features_array,
			       FUNC0(phy_gbit_features_array),
			       phy_10gbit_features);
	FUNC1(phy_10gbit_features_array,
			       FUNC0(phy_10gbit_features_array),
			       phy_10gbit_features);

	/* 10/100/1000/10G full */
	FUNC1(phy_all_ports_features_array,
			       FUNC0(phy_all_ports_features_array),
			       phy_10gbit_full_features);
	FUNC1(phy_10gbit_full_features_array,
			       FUNC0(phy_10gbit_full_features_array),
			       phy_10gbit_full_features);
	/* 10G FEC only */
	FUNC1(phy_10gbit_fec_features_array,
			       FUNC0(phy_10gbit_fec_features_array),
			       phy_10gbit_fec_features);
}