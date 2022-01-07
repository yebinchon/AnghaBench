; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_skge.c_xm_check_link.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_skge.c_xm_check_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.skge_port = type { i32, i64, i64, i32, i32, i32, %struct.skge_hw* }
%struct.skge_hw = type { i32 }

@PHY_XMAC_STAT = common dso_local global i32 0, align 4
@PHY_ST_LSYNC = common dso_local global i32 0, align 4
@AUTONEG_ENABLE = common dso_local global i64 0, align 8
@PHY_ST_AN_OVER = common dso_local global i32 0, align 4
@PHY_XMAC_AUNE_LP = common dso_local global i32 0, align 4
@PHY_B_AN_RF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"remote fault\0A\00", align 1
@PHY_XMAC_RES_ABI = common dso_local global i32 0, align 4
@DUPLEX_FULL = common dso_local global i32 0, align 4
@DUPLEX_HALF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"duplex mismatch\0A\00", align 1
@FLOW_MODE_SYMMETRIC = common dso_local global i64 0, align 8
@FLOW_MODE_SYM_OR_REM = common dso_local global i64 0, align 8
@PHY_X_P_SYM_MD = common dso_local global i32 0, align 4
@FLOW_STAT_SYMMETRIC = common dso_local global i32 0, align 4
@PHY_X_RS_PAUSE = common dso_local global i32 0, align 4
@PHY_X_P_ASYM_MD = common dso_local global i32 0, align 4
@FLOW_STAT_REM_SEND = common dso_local global i32 0, align 4
@FLOW_MODE_LOC_SEND = common dso_local global i64 0, align 8
@PHY_X_P_BOTH_MD = common dso_local global i32 0, align 4
@FLOW_STAT_LOC_SEND = common dso_local global i32 0, align 4
@FLOW_STAT_NONE = common dso_local global i32 0, align 4
@SPEED_1000 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @xm_check_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xm_check_link(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.skge_port*, align 8
  %5 = alloca %struct.skge_hw*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %10 = load %struct.net_device*, %struct.net_device** %3, align 8
  %11 = call %struct.skge_port* @netdev_priv(%struct.net_device* %10)
  store %struct.skge_port* %11, %struct.skge_port** %4, align 8
  %12 = load %struct.skge_port*, %struct.skge_port** %4, align 8
  %13 = getelementptr inbounds %struct.skge_port, %struct.skge_port* %12, i32 0, i32 6
  %14 = load %struct.skge_hw*, %struct.skge_hw** %13, align 8
  store %struct.skge_hw* %14, %struct.skge_hw** %5, align 8
  %15 = load %struct.skge_port*, %struct.skge_port** %4, align 8
  %16 = getelementptr inbounds %struct.skge_port, %struct.skge_port* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %6, align 4
  %18 = load %struct.skge_hw*, %struct.skge_hw** %5, align 8
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* @PHY_XMAC_STAT, align 4
  %21 = call i32 @xm_phy_read(%struct.skge_hw* %18, i32 %19, i32 %20)
  %22 = load %struct.skge_hw*, %struct.skge_hw** %5, align 8
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* @PHY_XMAC_STAT, align 4
  %25 = call i32 @xm_phy_read(%struct.skge_hw* %22, i32 %23, i32 %24)
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* @PHY_ST_LSYNC, align 4
  %28 = and i32 %26, %27
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %1
  %31 = load %struct.skge_hw*, %struct.skge_hw** %5, align 8
  %32 = load i32, i32* %6, align 4
  %33 = call i32 @xm_link_down(%struct.skge_hw* %31, i32 %32)
  store i32 0, i32* %2, align 4
  br label %147

34:                                               ; preds = %1
  %35 = load %struct.skge_port*, %struct.skge_port** %4, align 8
  %36 = getelementptr inbounds %struct.skge_port, %struct.skge_port* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @AUTONEG_ENABLE, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %139

40:                                               ; preds = %34
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* @PHY_ST_AN_OVER, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %40
  store i32 0, i32* %2, align 4
  br label %147

46:                                               ; preds = %40
  %47 = load %struct.skge_hw*, %struct.skge_hw** %5, align 8
  %48 = load i32, i32* %6, align 4
  %49 = load i32, i32* @PHY_XMAC_AUNE_LP, align 4
  %50 = call i32 @xm_phy_read(%struct.skge_hw* %47, i32 %48, i32 %49)
  store i32 %50, i32* %8, align 4
  %51 = load i32, i32* %8, align 4
  %52 = load i32, i32* @PHY_B_AN_RF, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %46
  %56 = load %struct.net_device*, %struct.net_device** %3, align 8
  %57 = call i32 @netdev_notice(%struct.net_device* %56, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %147

58:                                               ; preds = %46
  %59 = load %struct.skge_hw*, %struct.skge_hw** %5, align 8
  %60 = load i32, i32* %6, align 4
  %61 = load i32, i32* @PHY_XMAC_RES_ABI, align 4
  %62 = call i32 @xm_phy_read(%struct.skge_hw* %59, i32 %60, i32 %61)
  store i32 %62, i32* %9, align 4
  %63 = load i32, i32* %9, align 4
  %64 = and i32 %63, 129
  switch i32 %64, label %73 [
    i32 129, label %65
    i32 128, label %69
  ]

65:                                               ; preds = %58
  %66 = load i32, i32* @DUPLEX_FULL, align 4
  %67 = load %struct.skge_port*, %struct.skge_port** %4, align 8
  %68 = getelementptr inbounds %struct.skge_port, %struct.skge_port* %67, i32 0, i32 5
  store i32 %66, i32* %68, align 8
  br label %76

69:                                               ; preds = %58
  %70 = load i32, i32* @DUPLEX_HALF, align 4
  %71 = load %struct.skge_port*, %struct.skge_port** %4, align 8
  %72 = getelementptr inbounds %struct.skge_port, %struct.skge_port* %71, i32 0, i32 5
  store i32 %70, i32* %72, align 8
  br label %76

73:                                               ; preds = %58
  %74 = load %struct.net_device*, %struct.net_device** %3, align 8
  %75 = call i32 @netdev_notice(%struct.net_device* %74, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %147

76:                                               ; preds = %69, %65
  %77 = load %struct.skge_port*, %struct.skge_port** %4, align 8
  %78 = getelementptr inbounds %struct.skge_port, %struct.skge_port* %77, i32 0, i32 2
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @FLOW_MODE_SYMMETRIC, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %88, label %82

82:                                               ; preds = %76
  %83 = load %struct.skge_port*, %struct.skge_port** %4, align 8
  %84 = getelementptr inbounds %struct.skge_port, %struct.skge_port* %83, i32 0, i32 2
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @FLOW_MODE_SYM_OR_REM, align 8
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %88, label %97

88:                                               ; preds = %82, %76
  %89 = load i32, i32* %8, align 4
  %90 = load i32, i32* @PHY_X_P_SYM_MD, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %97

93:                                               ; preds = %88
  %94 = load i32, i32* @FLOW_STAT_SYMMETRIC, align 4
  %95 = load %struct.skge_port*, %struct.skge_port** %4, align 8
  %96 = getelementptr inbounds %struct.skge_port, %struct.skge_port* %95, i32 0, i32 4
  store i32 %94, i32* %96, align 4
  br label %135

97:                                               ; preds = %88, %82
  %98 = load %struct.skge_port*, %struct.skge_port** %4, align 8
  %99 = getelementptr inbounds %struct.skge_port, %struct.skge_port* %98, i32 0, i32 2
  %100 = load i64, i64* %99, align 8
  %101 = load i64, i64* @FLOW_MODE_SYM_OR_REM, align 8
  %102 = icmp eq i64 %100, %101
  br i1 %102, label %103, label %113

103:                                              ; preds = %97
  %104 = load i32, i32* %8, align 4
  %105 = load i32, i32* @PHY_X_RS_PAUSE, align 4
  %106 = and i32 %104, %105
  %107 = load i32, i32* @PHY_X_P_ASYM_MD, align 4
  %108 = icmp eq i32 %106, %107
  br i1 %108, label %109, label %113

109:                                              ; preds = %103
  %110 = load i32, i32* @FLOW_STAT_REM_SEND, align 4
  %111 = load %struct.skge_port*, %struct.skge_port** %4, align 8
  %112 = getelementptr inbounds %struct.skge_port, %struct.skge_port* %111, i32 0, i32 4
  store i32 %110, i32* %112, align 4
  br label %134

113:                                              ; preds = %103, %97
  %114 = load %struct.skge_port*, %struct.skge_port** %4, align 8
  %115 = getelementptr inbounds %struct.skge_port, %struct.skge_port* %114, i32 0, i32 2
  %116 = load i64, i64* %115, align 8
  %117 = load i64, i64* @FLOW_MODE_LOC_SEND, align 8
  %118 = icmp eq i64 %116, %117
  br i1 %118, label %119, label %129

119:                                              ; preds = %113
  %120 = load i32, i32* %8, align 4
  %121 = load i32, i32* @PHY_X_RS_PAUSE, align 4
  %122 = and i32 %120, %121
  %123 = load i32, i32* @PHY_X_P_BOTH_MD, align 4
  %124 = icmp eq i32 %122, %123
  br i1 %124, label %125, label %129

125:                                              ; preds = %119
  %126 = load i32, i32* @FLOW_STAT_LOC_SEND, align 4
  %127 = load %struct.skge_port*, %struct.skge_port** %4, align 8
  %128 = getelementptr inbounds %struct.skge_port, %struct.skge_port* %127, i32 0, i32 4
  store i32 %126, i32* %128, align 4
  br label %133

129:                                              ; preds = %119, %113
  %130 = load i32, i32* @FLOW_STAT_NONE, align 4
  %131 = load %struct.skge_port*, %struct.skge_port** %4, align 8
  %132 = getelementptr inbounds %struct.skge_port, %struct.skge_port* %131, i32 0, i32 4
  store i32 %130, i32* %132, align 4
  br label %133

133:                                              ; preds = %129, %125
  br label %134

134:                                              ; preds = %133, %109
  br label %135

135:                                              ; preds = %134, %93
  %136 = load i32, i32* @SPEED_1000, align 4
  %137 = load %struct.skge_port*, %struct.skge_port** %4, align 8
  %138 = getelementptr inbounds %struct.skge_port, %struct.skge_port* %137, i32 0, i32 3
  store i32 %136, i32* %138, align 8
  br label %139

139:                                              ; preds = %135, %34
  %140 = load %struct.net_device*, %struct.net_device** %3, align 8
  %141 = call i32 @netif_carrier_ok(%struct.net_device* %140)
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %146, label %143

143:                                              ; preds = %139
  %144 = load %struct.skge_port*, %struct.skge_port** %4, align 8
  %145 = call i32 @genesis_link_up(%struct.skge_port* %144)
  br label %146

146:                                              ; preds = %143, %139
  store i32 1, i32* %2, align 4
  br label %147

147:                                              ; preds = %146, %73, %55, %45, %30
  %148 = load i32, i32* %2, align 4
  ret i32 %148
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
