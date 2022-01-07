; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_x550.c_ixgbe_setup_sfi_x550a.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_x550.c_ixgbe_setup_sfi_x550a.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { %struct.TYPE_3__, %struct.ixgbe_mac_info }
%struct.TYPE_3__ = type { i32 }
%struct.ixgbe_mac_info = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 (%struct.ixgbe_hw.0*, i32, i32, i32)*, i64 (%struct.ixgbe_hw.1*, i32, i32, i32*)* }
%struct.ixgbe_hw.0 = type opaque
%struct.ixgbe_hw.1 = type opaque

@IXGBE_SB_IOSF_TARGET_KR_PHY = common dso_local global i32 0, align 4
@IXGBE_KRM_PMD_FLX_MASK_ST20_AN_EN = common dso_local global i32 0, align 4
@IXGBE_KRM_PMD_FLX_MASK_ST20_AN37_EN = common dso_local global i32 0, align 4
@IXGBE_KRM_PMD_FLX_MASK_ST20_SGMII_EN = common dso_local global i32 0, align 4
@IXGBE_KRM_PMD_FLX_MASK_ST20_SPEED_MASK = common dso_local global i32 0, align 4
@IXGBE_KRM_PMD_FLX_MASK_ST20_SPEED_10G = common dso_local global i32 0, align 4
@IXGBE_KRM_PMD_FLX_MASK_ST20_SPEED_1G = common dso_local global i32 0, align 4
@IXGBE_ERR_LINK_SETUP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.ixgbe_hw*, i32*)* @ixgbe_setup_sfi_x550a to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ixgbe_setup_sfi_x550a(%struct.ixgbe_hw* %0, i32* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.ixgbe_hw*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.ixgbe_mac_info*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %10 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %9, i32 0, i32 1
  store %struct.ixgbe_mac_info* %10, %struct.ixgbe_mac_info** %6, align 8
  %11 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %6, align 8
  %12 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 1
  %14 = load i64 (%struct.ixgbe_hw.1*, i32, i32, i32*)*, i64 (%struct.ixgbe_hw.1*, i32, i32, i32*)** %13, align 8
  %15 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %16 = bitcast %struct.ixgbe_hw* %15 to %struct.ixgbe_hw.1*
  %17 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %18 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @IXGBE_KRM_PMD_FLX_MASK_ST20(i32 %20)
  %22 = load i32, i32* @IXGBE_SB_IOSF_TARGET_KR_PHY, align 4
  %23 = call i64 %14(%struct.ixgbe_hw.1* %16, i32 %21, i32 %22, i32* %8)
  store i64 %23, i64* %7, align 8
  %24 = load i64, i64* %7, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %2
  %27 = load i64, i64* %7, align 8
  store i64 %27, i64* %3, align 8
  br label %75

28:                                               ; preds = %2
  %29 = load i32, i32* @IXGBE_KRM_PMD_FLX_MASK_ST20_AN_EN, align 4
  %30 = xor i32 %29, -1
  %31 = load i32, i32* %8, align 4
  %32 = and i32 %31, %30
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* @IXGBE_KRM_PMD_FLX_MASK_ST20_AN37_EN, align 4
  %34 = xor i32 %33, -1
  %35 = load i32, i32* %8, align 4
  %36 = and i32 %35, %34
  store i32 %36, i32* %8, align 4
  %37 = load i32, i32* @IXGBE_KRM_PMD_FLX_MASK_ST20_SGMII_EN, align 4
  %38 = xor i32 %37, -1
  %39 = load i32, i32* %8, align 4
  %40 = and i32 %39, %38
  store i32 %40, i32* %8, align 4
  %41 = load i32, i32* @IXGBE_KRM_PMD_FLX_MASK_ST20_SPEED_MASK, align 4
  %42 = xor i32 %41, -1
  %43 = load i32, i32* %8, align 4
  %44 = and i32 %43, %42
  store i32 %44, i32* %8, align 4
  %45 = load i32*, i32** %5, align 8
  %46 = load i32, i32* %45, align 4
  switch i32 %46, label %55 [
    i32 129, label %47
    i32 128, label %51
  ]

47:                                               ; preds = %28
  %48 = load i32, i32* @IXGBE_KRM_PMD_FLX_MASK_ST20_SPEED_10G, align 4
  %49 = load i32, i32* %8, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %8, align 4
  br label %57

51:                                               ; preds = %28
  %52 = load i32, i32* @IXGBE_KRM_PMD_FLX_MASK_ST20_SPEED_1G, align 4
  %53 = load i32, i32* %8, align 4
  %54 = or i32 %53, %52
  store i32 %54, i32* %8, align 4
  br label %57

55:                                               ; preds = %28
  %56 = load i64, i64* @IXGBE_ERR_LINK_SETUP, align 8
  store i64 %56, i64* %3, align 8
  br label %75

57:                                               ; preds = %51, %47
  %58 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %6, align 8
  %59 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = load i64 (%struct.ixgbe_hw.0*, i32, i32, i32)*, i64 (%struct.ixgbe_hw.0*, i32, i32, i32)** %60, align 8
  %62 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %63 = bitcast %struct.ixgbe_hw* %62 to %struct.ixgbe_hw.0*
  %64 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %65 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @IXGBE_KRM_PMD_FLX_MASK_ST20(i32 %67)
  %69 = load i32, i32* @IXGBE_SB_IOSF_TARGET_KR_PHY, align 4
  %70 = load i32, i32* %8, align 4
  %71 = call i64 %61(%struct.ixgbe_hw.0* %63, i32 %68, i32 %69, i32 %70)
  store i64 %71, i64* %7, align 8
  %72 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %73 = call i64 @ixgbe_restart_an_internal_phy_x550em(%struct.ixgbe_hw* %72)
  store i64 %73, i64* %7, align 8
  %74 = load i64, i64* %7, align 8
  store i64 %74, i64* %3, align 8
  br label %75

75:                                               ; preds = %57, %55, %26
  %76 = load i64, i64* %3, align 8
  ret i64 %76
}

declare dso_local i32 @IXGBE_KRM_PMD_FLX_MASK_ST20(i32) #1

declare dso_local i64 @ixgbe_restart_an_internal_phy_x550em(%struct.ixgbe_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
