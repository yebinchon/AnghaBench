; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_skge.c_bcom_check_link.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_skge.c_bcom_check_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.skge_hw = type { %struct.net_device** }
%struct.net_device = type { i32 }
%struct.skge_port = type { i64, i32, i32, i32 }

@PHY_BCOM_STAT = common dso_local global i32 0, align 4
@PHY_ST_LSYNC = common dso_local global i32 0, align 4
@AUTONEG_ENABLE = common dso_local global i64 0, align 8
@PHY_ST_AN_OVER = common dso_local global i32 0, align 4
@PHY_XMAC_AUNE_LP = common dso_local global i32 0, align 4
@PHY_B_AN_RF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"remote fault\0A\00", align 1
@PHY_BCOM_AUX_STAT = common dso_local global i32 0, align 4
@PHY_B_AS_AN_RES_MSK = common dso_local global i32 0, align 4
@DUPLEX_FULL = common dso_local global i32 0, align 4
@DUPLEX_HALF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"duplex mismatch\0A\00", align 1
@FLOW_STAT_SYMMETRIC = common dso_local global i32 0, align 4
@FLOW_STAT_REM_SEND = common dso_local global i32 0, align 4
@FLOW_STAT_LOC_SEND = common dso_local global i32 0, align 4
@FLOW_STAT_NONE = common dso_local global i32 0, align 4
@SPEED_1000 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.skge_hw*, i32)* @bcom_check_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bcom_check_link(%struct.skge_hw* %0, i32 %1) #0 {
  %3 = alloca %struct.skge_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.skge_port*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.skge_hw* %0, %struct.skge_hw** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %11 = getelementptr inbounds %struct.skge_hw, %struct.skge_hw* %10, i32 0, i32 0
  %12 = load %struct.net_device**, %struct.net_device*** %11, align 8
  %13 = load i32, i32* %4, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.net_device*, %struct.net_device** %12, i64 %14
  %16 = load %struct.net_device*, %struct.net_device** %15, align 8
  store %struct.net_device* %16, %struct.net_device** %5, align 8
  %17 = load %struct.net_device*, %struct.net_device** %5, align 8
  %18 = call %struct.skge_port* @netdev_priv(%struct.net_device* %17)
  store %struct.skge_port* %18, %struct.skge_port** %6, align 8
  %19 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* @PHY_BCOM_STAT, align 4
  %22 = call i32 @xm_phy_read(%struct.skge_hw* %19, i32 %20, i32 %21)
  %23 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* @PHY_BCOM_STAT, align 4
  %26 = call i32 @xm_phy_read(%struct.skge_hw* %23, i32 %24, i32 %25)
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* @PHY_ST_LSYNC, align 4
  %29 = and i32 %27, %28
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %2
  %32 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %33 = load i32, i32* %4, align 4
  %34 = call i32 @xm_link_down(%struct.skge_hw* %32, i32 %33)
  br label %108

35:                                               ; preds = %2
  %36 = load %struct.skge_port*, %struct.skge_port** %6, align 8
  %37 = getelementptr inbounds %struct.skge_port, %struct.skge_port* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @AUTONEG_ENABLE, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %101

41:                                               ; preds = %35
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* @PHY_ST_AN_OVER, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %41
  br label %108

47:                                               ; preds = %41
  %48 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %49 = load i32, i32* %4, align 4
  %50 = load i32, i32* @PHY_XMAC_AUNE_LP, align 4
  %51 = call i32 @xm_phy_read(%struct.skge_hw* %48, i32 %49, i32 %50)
  store i32 %51, i32* %8, align 4
  %52 = load i32, i32* %8, align 4
  %53 = load i32, i32* @PHY_B_AN_RF, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %47
  %57 = load %struct.net_device*, %struct.net_device** %5, align 8
  %58 = call i32 @netdev_notice(%struct.net_device* %57, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %108

59:                                               ; preds = %47
  %60 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %61 = load i32, i32* %4, align 4
  %62 = load i32, i32* @PHY_BCOM_AUX_STAT, align 4
  %63 = call i32 @xm_phy_read(%struct.skge_hw* %60, i32 %61, i32 %62)
  store i32 %63, i32* %9, align 4
  %64 = load i32, i32* %9, align 4
  %65 = load i32, i32* @PHY_B_AS_AN_RES_MSK, align 4
  %66 = and i32 %64, %65
  switch i32 %66, label %75 [
    i32 129, label %67
    i32 128, label %71
  ]

67:                                               ; preds = %59
  %68 = load i32, i32* @DUPLEX_FULL, align 4
  %69 = load %struct.skge_port*, %struct.skge_port** %6, align 8
  %70 = getelementptr inbounds %struct.skge_port, %struct.skge_port* %69, i32 0, i32 3
  store i32 %68, i32* %70, align 8
  br label %78

71:                                               ; preds = %59
  %72 = load i32, i32* @DUPLEX_HALF, align 4
  %73 = load %struct.skge_port*, %struct.skge_port** %6, align 8
  %74 = getelementptr inbounds %struct.skge_port, %struct.skge_port* %73, i32 0, i32 3
  store i32 %72, i32* %74, align 8
  br label %78

75:                                               ; preds = %59
  %76 = load %struct.net_device*, %struct.net_device** %5, align 8
  %77 = call i32 @netdev_notice(%struct.net_device* %76, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  br label %108

78:                                               ; preds = %71, %67
  %79 = load i32, i32* %9, align 4
  %80 = and i32 %79, 132
  switch i32 %80, label %93 [
    i32 132, label %81
    i32 131, label %85
    i32 130, label %89
  ]

81:                                               ; preds = %78
  %82 = load i32, i32* @FLOW_STAT_SYMMETRIC, align 4
  %83 = load %struct.skge_port*, %struct.skge_port** %6, align 8
  %84 = getelementptr inbounds %struct.skge_port, %struct.skge_port* %83, i32 0, i32 2
  store i32 %82, i32* %84, align 4
  br label %97

85:                                               ; preds = %78
  %86 = load i32, i32* @FLOW_STAT_REM_SEND, align 4
  %87 = load %struct.skge_port*, %struct.skge_port** %6, align 8
  %88 = getelementptr inbounds %struct.skge_port, %struct.skge_port* %87, i32 0, i32 2
  store i32 %86, i32* %88, align 4
  br label %97

89:                                               ; preds = %78
  %90 = load i32, i32* @FLOW_STAT_LOC_SEND, align 4
  %91 = load %struct.skge_port*, %struct.skge_port** %6, align 8
  %92 = getelementptr inbounds %struct.skge_port, %struct.skge_port* %91, i32 0, i32 2
  store i32 %90, i32* %92, align 4
  br label %97

93:                                               ; preds = %78
  %94 = load i32, i32* @FLOW_STAT_NONE, align 4
  %95 = load %struct.skge_port*, %struct.skge_port** %6, align 8
  %96 = getelementptr inbounds %struct.skge_port, %struct.skge_port* %95, i32 0, i32 2
  store i32 %94, i32* %96, align 4
  br label %97

97:                                               ; preds = %93, %89, %85, %81
  %98 = load i32, i32* @SPEED_1000, align 4
  %99 = load %struct.skge_port*, %struct.skge_port** %6, align 8
  %100 = getelementptr inbounds %struct.skge_port, %struct.skge_port* %99, i32 0, i32 1
  store i32 %98, i32* %100, align 8
  br label %101

101:                                              ; preds = %97, %35
  %102 = load %struct.net_device*, %struct.net_device** %5, align 8
  %103 = call i32 @netif_carrier_ok(%struct.net_device* %102)
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %108, label %105

105:                                              ; preds = %101
  %106 = load %struct.skge_port*, %struct.skge_port** %6, align 8
  %107 = call i32 @genesis_link_up(%struct.skge_port* %106)
  br label %108

108:                                              ; preds = %31, %46, %56, %75, %105, %101
  ret void
}

declare dso_local %struct.skge_port* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @xm_phy_read(%struct.skge_hw*, i32, i32) #1

declare dso_local i32 @xm_link_down(%struct.skge_hw*, i32) #1

declare dso_local i32 @netdev_notice(%struct.net_device*, i8*) #1

declare dso_local i32 @netif_carrier_ok(%struct.net_device*) #1

declare dso_local i32 @genesis_link_up(%struct.skge_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
