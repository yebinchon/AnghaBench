; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_mcdi_port.c_efx_mcdi_phy_run_tests.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_mcdi_port.c_efx_mcdi_phy_run_tests.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_nic = type { %struct.efx_mcdi_phy_data* }
%struct.efx_mcdi_phy_data = type { i32 }

@MC_CMD_GET_PHY_CFG_OUT_BIST_LBN = common dso_local global i32 0, align 4
@MC_CMD_PHY_BIST = common dso_local global i64 0, align 8
@MC_CMD_GET_PHY_CFG_OUT_BIST_CABLE_SHORT_LBN = common dso_local global i32 0, align 4
@ETH_TEST_FL_OFFLINE = common dso_local global i32 0, align 4
@MC_CMD_GET_PHY_CFG_OUT_BIST_CABLE_LONG_LBN = common dso_local global i32 0, align 4
@MC_CMD_PHY_BIST_CABLE_LONG = common dso_local global i64 0, align 8
@MC_CMD_PHY_BIST_CABLE_SHORT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.efx_nic*, i32*, i32)* @efx_mcdi_phy_run_tests to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @efx_mcdi_phy_run_tests(%struct.efx_nic* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.efx_nic*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.efx_mcdi_phy_data*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.efx_nic* %0, %struct.efx_nic** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %12 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %11, i32 0, i32 0
  %13 = load %struct.efx_mcdi_phy_data*, %struct.efx_mcdi_phy_data** %12, align 8
  store %struct.efx_mcdi_phy_data* %13, %struct.efx_mcdi_phy_data** %8, align 8
  %14 = load %struct.efx_mcdi_phy_data*, %struct.efx_mcdi_phy_data** %8, align 8
  %15 = getelementptr inbounds %struct.efx_mcdi_phy_data, %struct.efx_mcdi_phy_data* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @MC_CMD_GET_PHY_CFG_OUT_BIST_LBN, align 4
  %18 = shl i32 1, %17
  %19 = and i32 %16, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %35

21:                                               ; preds = %3
  %22 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %23 = load i64, i64* @MC_CMD_PHY_BIST, align 8
  %24 = load i32*, i32** %6, align 8
  %25 = call i32 @efx_mcdi_bist(%struct.efx_nic* %22, i64 %23, i32* %24)
  store i32 %25, i32* %10, align 4
  %26 = load i32, i32* %10, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %21
  %29 = load i32, i32* %10, align 4
  store i32 %29, i32* %4, align 4
  br label %90

30:                                               ; preds = %21
  %31 = load i32, i32* %10, align 4
  %32 = load i32*, i32** %6, align 8
  %33 = sext i32 %31 to i64
  %34 = getelementptr inbounds i32, i32* %32, i64 %33
  store i32* %34, i32** %6, align 8
  br label %35

35:                                               ; preds = %30, %3
  store i64 0, i64* %9, align 8
  %36 = load %struct.efx_mcdi_phy_data*, %struct.efx_mcdi_phy_data** %8, align 8
  %37 = getelementptr inbounds %struct.efx_mcdi_phy_data, %struct.efx_mcdi_phy_data* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @MC_CMD_GET_PHY_CFG_OUT_BIST_CABLE_SHORT_LBN, align 4
  %40 = shl i32 1, %39
  %41 = and i32 %38, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %61

43:                                               ; preds = %35
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* @ETH_TEST_FL_OFFLINE, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %58

48:                                               ; preds = %43
  %49 = load %struct.efx_mcdi_phy_data*, %struct.efx_mcdi_phy_data** %8, align 8
  %50 = getelementptr inbounds %struct.efx_mcdi_phy_data, %struct.efx_mcdi_phy_data* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @MC_CMD_GET_PHY_CFG_OUT_BIST_CABLE_LONG_LBN, align 4
  %53 = shl i32 1, %52
  %54 = and i32 %51, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %48
  %57 = load i64, i64* @MC_CMD_PHY_BIST_CABLE_LONG, align 8
  store i64 %57, i64* %9, align 8
  br label %60

58:                                               ; preds = %48, %43
  %59 = load i64, i64* @MC_CMD_PHY_BIST_CABLE_SHORT, align 8
  store i64 %59, i64* %9, align 8
  br label %60

60:                                               ; preds = %58, %56
  br label %72

61:                                               ; preds = %35
  %62 = load %struct.efx_mcdi_phy_data*, %struct.efx_mcdi_phy_data** %8, align 8
  %63 = getelementptr inbounds %struct.efx_mcdi_phy_data, %struct.efx_mcdi_phy_data* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @MC_CMD_GET_PHY_CFG_OUT_BIST_CABLE_LONG_LBN, align 4
  %66 = shl i32 1, %65
  %67 = and i32 %64, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %61
  %70 = load i64, i64* @MC_CMD_PHY_BIST_CABLE_LONG, align 8
  store i64 %70, i64* %9, align 8
  br label %71

71:                                               ; preds = %69, %61
  br label %72

72:                                               ; preds = %71, %60
  %73 = load i64, i64* %9, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %89

75:                                               ; preds = %72
  %76 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %77 = load i64, i64* %9, align 8
  %78 = load i32*, i32** %6, align 8
  %79 = call i32 @efx_mcdi_bist(%struct.efx_nic* %76, i64 %77, i32* %78)
  store i32 %79, i32* %10, align 4
  %80 = load i32, i32* %10, align 4
  %81 = icmp slt i32 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %75
  %83 = load i32, i32* %10, align 4
  store i32 %83, i32* %4, align 4
  br label %90

84:                                               ; preds = %75
  %85 = load i32, i32* %10, align 4
  %86 = load i32*, i32** %6, align 8
  %87 = sext i32 %85 to i64
  %88 = getelementptr inbounds i32, i32* %86, i64 %87
  store i32* %88, i32** %6, align 8
  br label %89

89:                                               ; preds = %84, %72
  store i32 0, i32* %4, align 4
  br label %90

90:                                               ; preds = %89, %82, %28
  %91 = load i32, i32* %4, align 4
  ret i32 %91
}

declare dso_local i32 @efx_mcdi_bist(%struct.efx_nic*, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
