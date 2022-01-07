; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/falcon/extr_qt202x_phy.c_qt202x_phy_reconfigure.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/falcon/extr_qt202x_phy.c_qt202x_phy_reconfigure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ef4_nic = type { i64, i32, i64, %struct.TYPE_2__, %struct.qt202x_phy_data* }
%struct.TYPE_2__ = type { i32 }
%struct.qt202x_phy_data = type { i32 }

@PHY_TYPE_QT2025C = common dso_local global i64 0, align 8
@MDIO_MMD_PMAPMD = common dso_local global i32 0, align 4
@PMA_PMD_FTX_CTRL2_REG = common dso_local global i32 0, align 4
@PMA_PMD_FTX_STATIC_LBN = common dso_local global i32 0, align 4
@PHY_MODE_TX_DISABLED = common dso_local global i32 0, align 4
@PHY_MODE_LOW_POWER = common dso_local global i32 0, align 4
@LOOPBACK_PCS = common dso_local global i64 0, align 8
@LOOPBACK_PMAPMD = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ef4_nic*)* @qt202x_phy_reconfigure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qt202x_phy_reconfigure(%struct.ef4_nic* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ef4_nic*, align 8
  %4 = alloca %struct.qt202x_phy_data*, align 8
  %5 = alloca i32, align 4
  store %struct.ef4_nic* %0, %struct.ef4_nic** %3, align 8
  %6 = load %struct.ef4_nic*, %struct.ef4_nic** %3, align 8
  %7 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %6, i32 0, i32 4
  %8 = load %struct.qt202x_phy_data*, %struct.qt202x_phy_data** %7, align 8
  store %struct.qt202x_phy_data* %8, %struct.qt202x_phy_data** %4, align 8
  %9 = load %struct.ef4_nic*, %struct.ef4_nic** %3, align 8
  %10 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @PHY_TYPE_QT2025C, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %61

14:                                               ; preds = %1
  %15 = load %struct.ef4_nic*, %struct.ef4_nic** %3, align 8
  %16 = call i32 @qt2025c_select_phy_mode(%struct.ef4_nic* %15)
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %5, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %14
  %20 = load i32, i32* %5, align 4
  store i32 %20, i32* %2, align 4
  br label %89

21:                                               ; preds = %14
  %22 = load %struct.ef4_nic*, %struct.ef4_nic** %3, align 8
  %23 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %22, i32 0, i32 3
  %24 = load %struct.ef4_nic*, %struct.ef4_nic** %3, align 8
  %25 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %24, i32 0, i32 3
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @MDIO_MMD_PMAPMD, align 4
  %29 = load i32, i32* @PMA_PMD_FTX_CTRL2_REG, align 4
  %30 = load i32, i32* @PMA_PMD_FTX_STATIC_LBN, align 4
  %31 = shl i32 1, %30
  %32 = load %struct.ef4_nic*, %struct.ef4_nic** %3, align 8
  %33 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @PHY_MODE_TX_DISABLED, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %57, label %38

38:                                               ; preds = %21
  %39 = load %struct.ef4_nic*, %struct.ef4_nic** %3, align 8
  %40 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @PHY_MODE_LOW_POWER, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %57, label %45

45:                                               ; preds = %38
  %46 = load %struct.ef4_nic*, %struct.ef4_nic** %3, align 8
  %47 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @LOOPBACK_PCS, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %57, label %51

51:                                               ; preds = %45
  %52 = load %struct.ef4_nic*, %struct.ef4_nic** %3, align 8
  %53 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %52, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @LOOPBACK_PMAPMD, align 8
  %56 = icmp eq i64 %54, %55
  br label %57

57:                                               ; preds = %51, %45, %38, %21
  %58 = phi i1 [ true, %45 ], [ true, %38 ], [ true, %21 ], [ %56, %51 ]
  %59 = zext i1 %58 to i32
  %60 = call i32 @mdio_set_flag(%struct.TYPE_2__* %23, i32 %27, i32 %28, i32 %29, i32 %31, i32 %59)
  br label %81

61:                                               ; preds = %1
  %62 = load %struct.ef4_nic*, %struct.ef4_nic** %3, align 8
  %63 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* @PHY_MODE_TX_DISABLED, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %78, label %68

68:                                               ; preds = %61
  %69 = load %struct.qt202x_phy_data*, %struct.qt202x_phy_data** %4, align 8
  %70 = getelementptr inbounds %struct.qt202x_phy_data, %struct.qt202x_phy_data* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @PHY_MODE_TX_DISABLED, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %68
  %76 = load %struct.ef4_nic*, %struct.ef4_nic** %3, align 8
  %77 = call i32 @qt202x_reset_phy(%struct.ef4_nic* %76)
  br label %78

78:                                               ; preds = %75, %68, %61
  %79 = load %struct.ef4_nic*, %struct.ef4_nic** %3, align 8
  %80 = call i32 @ef4_mdio_transmit_disable(%struct.ef4_nic* %79)
  br label %81

81:                                               ; preds = %78, %57
  %82 = load %struct.ef4_nic*, %struct.ef4_nic** %3, align 8
  %83 = call i32 @ef4_mdio_phy_reconfigure(%struct.ef4_nic* %82)
  %84 = load %struct.ef4_nic*, %struct.ef4_nic** %3, align 8
  %85 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 8
  %87 = load %struct.qt202x_phy_data*, %struct.qt202x_phy_data** %4, align 8
  %88 = getelementptr inbounds %struct.qt202x_phy_data, %struct.qt202x_phy_data* %87, i32 0, i32 0
  store i32 %86, i32* %88, align 4
  store i32 0, i32* %2, align 4
  br label %89

89:                                               ; preds = %81, %19
  %90 = load i32, i32* %2, align 4
  ret i32 %90
}

declare dso_local i32 @qt2025c_select_phy_mode(%struct.ef4_nic*) #1

declare dso_local i32 @mdio_set_flag(%struct.TYPE_2__*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @qt202x_reset_phy(%struct.ef4_nic*) #1

declare dso_local i32 @ef4_mdio_transmit_disable(%struct.ef4_nic*) #1

declare dso_local i32 @ef4_mdio_phy_reconfigure(%struct.ef4_nic*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
