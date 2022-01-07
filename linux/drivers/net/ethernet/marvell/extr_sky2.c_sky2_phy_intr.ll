; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_sky2.c_sky2_phy_intr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_sky2.c_sky2_phy_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sky2_hw = type { %struct.net_device** }
%struct.net_device = type { i32 }
%struct.sky2_port = type { i32, i32, i32, i32 }

@PHY_MARV_INT_STAT = common dso_local global i32 0, align 4
@PHY_MARV_PHY_STAT = common dso_local global i32 0, align 4
@intr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"phy interrupt status 0x%x 0x%x\0A\00", align 1
@PHY_M_IS_AN_COMPL = common dso_local global i32 0, align 4
@PHY_M_IS_LSP_CHANGE = common dso_local global i32 0, align 4
@PHY_M_IS_DUP_CHANGE = common dso_local global i32 0, align 4
@PHY_M_PS_FULL_DUP = common dso_local global i32 0, align 4
@DUPLEX_FULL = common dso_local global i32 0, align 4
@DUPLEX_HALF = common dso_local global i32 0, align 4
@PHY_M_IS_LST_CHANGE = common dso_local global i32 0, align 4
@PHY_M_PS_LINK_UP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sky2_hw*, i32)* @sky2_phy_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sky2_phy_intr(%struct.sky2_hw* %0, i32 %1) #0 {
  %3 = alloca %struct.sky2_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.sky2_port*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.sky2_hw* %0, %struct.sky2_hw** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %10 = getelementptr inbounds %struct.sky2_hw, %struct.sky2_hw* %9, i32 0, i32 0
  %11 = load %struct.net_device**, %struct.net_device*** %10, align 8
  %12 = load i32, i32* %4, align 4
  %13 = zext i32 %12 to i64
  %14 = getelementptr inbounds %struct.net_device*, %struct.net_device** %11, i64 %13
  %15 = load %struct.net_device*, %struct.net_device** %14, align 8
  store %struct.net_device* %15, %struct.net_device** %5, align 8
  %16 = load %struct.net_device*, %struct.net_device** %5, align 8
  %17 = call %struct.sky2_port* @netdev_priv(%struct.net_device* %16)
  store %struct.sky2_port* %17, %struct.sky2_port** %6, align 8
  %18 = load %struct.net_device*, %struct.net_device** %5, align 8
  %19 = call i32 @netif_running(%struct.net_device* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %2
  br label %110

22:                                               ; preds = %2
  %23 = load %struct.sky2_port*, %struct.sky2_port** %6, align 8
  %24 = getelementptr inbounds %struct.sky2_port, %struct.sky2_port* %23, i32 0, i32 0
  %25 = call i32 @spin_lock(i32* %24)
  %26 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %27 = load i32, i32* %4, align 4
  %28 = load i32, i32* @PHY_MARV_INT_STAT, align 4
  %29 = call i32 @gm_phy_read(%struct.sky2_hw* %26, i32 %27, i32 %28)
  store i32 %29, i32* %7, align 4
  %30 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %31 = load i32, i32* %4, align 4
  %32 = load i32, i32* @PHY_MARV_PHY_STAT, align 4
  %33 = call i32 @gm_phy_read(%struct.sky2_hw* %30, i32 %31, i32 %32)
  store i32 %33, i32* %8, align 4
  %34 = load %struct.sky2_port*, %struct.sky2_port** %6, align 8
  %35 = load i32, i32* @intr, align 4
  %36 = load %struct.sky2_port*, %struct.sky2_port** %6, align 8
  %37 = getelementptr inbounds %struct.sky2_port, %struct.sky2_port* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* %8, align 4
  %41 = call i32 @netif_info(%struct.sky2_port* %34, i32 %35, i32 %38, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %39, i32 %40)
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* @PHY_M_IS_AN_COMPL, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %59

46:                                               ; preds = %22
  %47 = load %struct.sky2_port*, %struct.sky2_port** %6, align 8
  %48 = load i32, i32* %8, align 4
  %49 = call i64 @sky2_autoneg_done(%struct.sky2_port* %47, i32 %48)
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %51, label %58

51:                                               ; preds = %46
  %52 = load %struct.net_device*, %struct.net_device** %5, align 8
  %53 = call i32 @netif_carrier_ok(%struct.net_device* %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %58, label %55

55:                                               ; preds = %51
  %56 = load %struct.sky2_port*, %struct.sky2_port** %6, align 8
  %57 = call i32 @sky2_link_up(%struct.sky2_port* %56)
  br label %58

58:                                               ; preds = %55, %51, %46
  br label %106

59:                                               ; preds = %22
  %60 = load i32, i32* %7, align 4
  %61 = load i32, i32* @PHY_M_IS_LSP_CHANGE, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %70

64:                                               ; preds = %59
  %65 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %66 = load i32, i32* %8, align 4
  %67 = call i32 @sky2_phy_speed(%struct.sky2_hw* %65, i32 %66)
  %68 = load %struct.sky2_port*, %struct.sky2_port** %6, align 8
  %69 = getelementptr inbounds %struct.sky2_port, %struct.sky2_port* %68, i32 0, i32 2
  store i32 %67, i32* %69, align 4
  br label %70

70:                                               ; preds = %64, %59
  %71 = load i32, i32* %7, align 4
  %72 = load i32, i32* @PHY_M_IS_DUP_CHANGE, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %88

75:                                               ; preds = %70
  %76 = load i32, i32* %8, align 4
  %77 = load i32, i32* @PHY_M_PS_FULL_DUP, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %75
  %81 = load i32, i32* @DUPLEX_FULL, align 4
  br label %84

82:                                               ; preds = %75
  %83 = load i32, i32* @DUPLEX_HALF, align 4
  br label %84

84:                                               ; preds = %82, %80
  %85 = phi i32 [ %81, %80 ], [ %83, %82 ]
  %86 = load %struct.sky2_port*, %struct.sky2_port** %6, align 8
  %87 = getelementptr inbounds %struct.sky2_port, %struct.sky2_port* %86, i32 0, i32 1
  store i32 %85, i32* %87, align 4
  br label %88

88:                                               ; preds = %84, %70
  %89 = load i32, i32* %7, align 4
  %90 = load i32, i32* @PHY_M_IS_LST_CHANGE, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %105

93:                                               ; preds = %88
  %94 = load i32, i32* %8, align 4
  %95 = load i32, i32* @PHY_M_PS_LINK_UP, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %101

98:                                               ; preds = %93
  %99 = load %struct.sky2_port*, %struct.sky2_port** %6, align 8
  %100 = call i32 @sky2_link_up(%struct.sky2_port* %99)
  br label %104

101:                                              ; preds = %93
  %102 = load %struct.sky2_port*, %struct.sky2_port** %6, align 8
  %103 = call i32 @sky2_link_down(%struct.sky2_port* %102)
  br label %104

104:                                              ; preds = %101, %98
  br label %105

105:                                              ; preds = %104, %88
  br label %106

106:                                              ; preds = %105, %58
  %107 = load %struct.sky2_port*, %struct.sky2_port** %6, align 8
  %108 = getelementptr inbounds %struct.sky2_port, %struct.sky2_port* %107, i32 0, i32 0
  %109 = call i32 @spin_unlock(i32* %108)
  br label %110

110:                                              ; preds = %106, %21
  ret void
}

declare dso_local %struct.sky2_port* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netif_running(%struct.net_device*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @gm_phy_read(%struct.sky2_hw*, i32, i32) #1

declare dso_local i32 @netif_info(%struct.sky2_port*, i32, i32, i8*, i32, i32) #1

declare dso_local i64 @sky2_autoneg_done(%struct.sky2_port*, i32) #1

declare dso_local i32 @netif_carrier_ok(%struct.net_device*) #1

declare dso_local i32 @sky2_link_up(%struct.sky2_port*) #1

declare dso_local i32 @sky2_phy_speed(%struct.sky2_hw*, i32) #1

declare dso_local i32 @sky2_link_down(%struct.sky2_port*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
