; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/socionext/extr_netsec.c_netsec_mac_update_to_phy_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/socionext/extr_netsec.c_netsec_mac_update_to_phy_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netsec_priv = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.phy_device* }
%struct.phy_device = type { i64, i64 }

@NETSEC_GMAC_MCR_REG_FULL_DUPLEX_COMMON = common dso_local global i32 0, align 4
@NETSEC_GMAC_MCR_REG_HALF_DUPLEX_COMMON = common dso_local global i32 0, align 4
@SPEED_1000 = common dso_local global i64 0, align 8
@NETSEC_MCR_PS = common dso_local global i32 0, align 4
@PHY_INTERFACE_MODE_GMII = common dso_local global i64 0, align 8
@SPEED_100 = common dso_local global i64 0, align 8
@NETSEC_GMAC_MCR_REG_FES = common dso_local global i32 0, align 4
@NETSEC_GMAC_MCR_REG_CST = common dso_local global i32 0, align 4
@NETSEC_GMAC_MCR_REG_JE = common dso_local global i32 0, align 4
@NETSEC_GMAC_MCR_REG_IBN = common dso_local global i32 0, align 4
@GMAC_REG_MCR = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.netsec_priv*)* @netsec_mac_update_to_phy_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @netsec_mac_update_to_phy_state(%struct.netsec_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.netsec_priv*, align 8
  %4 = alloca %struct.phy_device*, align 8
  %5 = alloca i32, align 4
  store %struct.netsec_priv* %0, %struct.netsec_priv** %3, align 8
  %6 = load %struct.netsec_priv*, %struct.netsec_priv** %3, align 8
  %7 = getelementptr inbounds %struct.netsec_priv, %struct.netsec_priv* %6, i32 0, i32 1
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load %struct.phy_device*, %struct.phy_device** %9, align 8
  store %struct.phy_device* %10, %struct.phy_device** %4, align 8
  store i32 0, i32* %5, align 4
  %11 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %12 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = load i32, i32* @NETSEC_GMAC_MCR_REG_FULL_DUPLEX_COMMON, align 4
  br label %19

17:                                               ; preds = %1
  %18 = load i32, i32* @NETSEC_GMAC_MCR_REG_HALF_DUPLEX_COMMON, align 4
  br label %19

19:                                               ; preds = %17, %15
  %20 = phi i32 [ %16, %15 ], [ %18, %17 ]
  store i32 %20, i32* %5, align 4
  %21 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %22 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @SPEED_1000, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %30

26:                                               ; preds = %19
  %27 = load i32, i32* @NETSEC_MCR_PS, align 4
  %28 = load i32, i32* %5, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %5, align 4
  br label %30

30:                                               ; preds = %26, %19
  %31 = load %struct.netsec_priv*, %struct.netsec_priv** %3, align 8
  %32 = getelementptr inbounds %struct.netsec_priv, %struct.netsec_priv* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @PHY_INTERFACE_MODE_GMII, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %46

36:                                               ; preds = %30
  %37 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %38 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @SPEED_100, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %46

42:                                               ; preds = %36
  %43 = load i32, i32* @NETSEC_GMAC_MCR_REG_FES, align 4
  %44 = load i32, i32* %5, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %5, align 4
  br label %46

46:                                               ; preds = %42, %36, %30
  %47 = load i32, i32* @NETSEC_GMAC_MCR_REG_CST, align 4
  %48 = load i32, i32* @NETSEC_GMAC_MCR_REG_JE, align 4
  %49 = or i32 %47, %48
  %50 = load i32, i32* %5, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %5, align 4
  %52 = load %struct.netsec_priv*, %struct.netsec_priv** %3, align 8
  %53 = getelementptr inbounds %struct.netsec_priv, %struct.netsec_priv* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = call i64 @phy_interface_mode_is_rgmii(i64 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %46
  %58 = load i32, i32* @NETSEC_GMAC_MCR_REG_IBN, align 4
  %59 = load i32, i32* %5, align 4
  %60 = or i32 %59, %58
  store i32 %60, i32* %5, align 4
  br label %61

61:                                               ; preds = %57, %46
  %62 = load %struct.netsec_priv*, %struct.netsec_priv** %3, align 8
  %63 = load i32, i32* @GMAC_REG_MCR, align 4
  %64 = load i32, i32* %5, align 4
  %65 = call i64 @netsec_mac_write(%struct.netsec_priv* %62, i32 %63, i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %61
  %68 = load i32, i32* @ETIMEDOUT, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %2, align 4
  br label %71

70:                                               ; preds = %61
  store i32 0, i32* %2, align 4
  br label %71

71:                                               ; preds = %70, %67
  %72 = load i32, i32* %2, align 4
  ret i32 %72
}

declare dso_local i64 @phy_interface_mode_is_rgmii(i64) #1

declare dso_local i64 @netsec_mac_write(%struct.netsec_priv*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
