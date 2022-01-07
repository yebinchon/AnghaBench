; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_common.c_ice_cfg_phy_fec.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_common.c_ice_cfg_phy_fec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ice_aqc_set_phy_cfg_data = type { i32, i32 }

@ICE_AQC_PHY_FEC_10G_KR_40G_KR4_EN = common dso_local global i32 0, align 4
@ICE_AQC_PHY_FEC_25G_KR_CLAUSE74_EN = common dso_local global i32 0, align 4
@ICE_AQC_PHY_FEC_10G_KR_40G_KR4_REQ = common dso_local global i32 0, align 4
@ICE_AQC_PHY_FEC_25G_KR_REQ = common dso_local global i32 0, align 4
@ICE_AQC_PHY_FEC_25G_RS_CLAUSE91_EN = common dso_local global i32 0, align 4
@ICE_AQC_PHY_FEC_25G_RS_528_REQ = common dso_local global i32 0, align 4
@ICE_AQC_PHY_FEC_25G_RS_544_REQ = common dso_local global i32 0, align 4
@ICE_AQC_PHY_FEC_MASK = common dso_local global i32 0, align 4
@ICE_AQC_PHY_CAPS_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ice_cfg_phy_fec(%struct.ice_aqc_set_phy_cfg_data* %0, i32 %1) #0 {
  %3 = alloca %struct.ice_aqc_set_phy_cfg_data*, align 8
  %4 = alloca i32, align 4
  store %struct.ice_aqc_set_phy_cfg_data* %0, %struct.ice_aqc_set_phy_cfg_data** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  switch i32 %5, label %47 [
    i32 130, label %6
    i32 128, label %21
    i32 129, label %34
    i32 131, label %41
  ]

6:                                                ; preds = %2
  %7 = load i32, i32* @ICE_AQC_PHY_FEC_10G_KR_40G_KR4_EN, align 4
  %8 = load i32, i32* @ICE_AQC_PHY_FEC_25G_KR_CLAUSE74_EN, align 4
  %9 = or i32 %7, %8
  %10 = load %struct.ice_aqc_set_phy_cfg_data*, %struct.ice_aqc_set_phy_cfg_data** %3, align 8
  %11 = getelementptr inbounds %struct.ice_aqc_set_phy_cfg_data, %struct.ice_aqc_set_phy_cfg_data* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = and i32 %12, %9
  store i32 %13, i32* %11, align 4
  %14 = load i32, i32* @ICE_AQC_PHY_FEC_10G_KR_40G_KR4_REQ, align 4
  %15 = load i32, i32* @ICE_AQC_PHY_FEC_25G_KR_REQ, align 4
  %16 = or i32 %14, %15
  %17 = load %struct.ice_aqc_set_phy_cfg_data*, %struct.ice_aqc_set_phy_cfg_data** %3, align 8
  %18 = getelementptr inbounds %struct.ice_aqc_set_phy_cfg_data, %struct.ice_aqc_set_phy_cfg_data* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = or i32 %19, %16
  store i32 %20, i32* %18, align 4
  br label %47

21:                                               ; preds = %2
  %22 = load i32, i32* @ICE_AQC_PHY_FEC_25G_RS_CLAUSE91_EN, align 4
  %23 = load %struct.ice_aqc_set_phy_cfg_data*, %struct.ice_aqc_set_phy_cfg_data** %3, align 8
  %24 = getelementptr inbounds %struct.ice_aqc_set_phy_cfg_data, %struct.ice_aqc_set_phy_cfg_data* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = and i32 %25, %22
  store i32 %26, i32* %24, align 4
  %27 = load i32, i32* @ICE_AQC_PHY_FEC_25G_RS_528_REQ, align 4
  %28 = load i32, i32* @ICE_AQC_PHY_FEC_25G_RS_544_REQ, align 4
  %29 = or i32 %27, %28
  %30 = load %struct.ice_aqc_set_phy_cfg_data*, %struct.ice_aqc_set_phy_cfg_data** %3, align 8
  %31 = getelementptr inbounds %struct.ice_aqc_set_phy_cfg_data, %struct.ice_aqc_set_phy_cfg_data* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = or i32 %32, %29
  store i32 %33, i32* %31, align 4
  br label %47

34:                                               ; preds = %2
  %35 = load i32, i32* @ICE_AQC_PHY_FEC_MASK, align 4
  %36 = xor i32 %35, -1
  %37 = load %struct.ice_aqc_set_phy_cfg_data*, %struct.ice_aqc_set_phy_cfg_data** %3, align 8
  %38 = getelementptr inbounds %struct.ice_aqc_set_phy_cfg_data, %struct.ice_aqc_set_phy_cfg_data* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = and i32 %39, %36
  store i32 %40, i32* %38, align 4
  br label %47

41:                                               ; preds = %2
  %42 = load i32, i32* @ICE_AQC_PHY_CAPS_MASK, align 4
  %43 = load %struct.ice_aqc_set_phy_cfg_data*, %struct.ice_aqc_set_phy_cfg_data** %3, align 8
  %44 = getelementptr inbounds %struct.ice_aqc_set_phy_cfg_data, %struct.ice_aqc_set_phy_cfg_data* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = and i32 %45, %42
  store i32 %46, i32* %44, align 4
  br label %47

47:                                               ; preds = %2, %41, %34, %21, %6
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
