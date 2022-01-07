; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_main.c_ixgbe_watchdog_link_is_up.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_main.c_ixgbe_watchdog_link_is_up.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_adapter = type { i32, %struct.net_device*, i32, i32, i32, %struct.ixgbe_hw }
%struct.net_device = type { i32 }
%struct.ixgbe_hw = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@IXGBE_FLAG2_SEARCH_FOR_SFP = common dso_local global i32 0, align 4
@IXGBE_FCTRL = common dso_local global i32 0, align 4
@IXGBE_RMCS = common dso_local global i32 0, align 4
@IXGBE_FCTRL_RFCE = common dso_local global i32 0, align 4
@IXGBE_RMCS_TFCE_802_3X = common dso_local global i32 0, align 4
@IXGBE_MFLCN = common dso_local global i32 0, align 4
@IXGBE_FCCFG = common dso_local global i32 0, align 4
@IXGBE_MFLCN_RFCE = common dso_local global i32 0, align 4
@IXGBE_FCCFG_TFCE_802_3X = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@__IXGBE_PTP_RUNNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"10 Gbps\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"5 Gbps\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"2.5 Gbps\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"1 Gbps\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"100 Mbps\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"10 Mbps\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"unknown speed\00", align 1
@drv = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [37 x i8] c"NIC Link is Up %s, Flow Control: %s\0A\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"RX/TX\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"RX\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"TX\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"None\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ixgbe_adapter*)* @ixgbe_watchdog_link_is_up to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ixgbe_watchdog_link_is_up(%struct.ixgbe_adapter* %0) #0 {
  %2 = alloca %struct.ixgbe_adapter*, align 8
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ixgbe_hw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.ixgbe_adapter* %0, %struct.ixgbe_adapter** %2, align 8
  %13 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %14 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %13, i32 0, i32 1
  %15 = load %struct.net_device*, %struct.net_device** %14, align 8
  store %struct.net_device* %15, %struct.net_device** %3, align 8
  %16 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %17 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %16, i32 0, i32 5
  store %struct.ixgbe_hw* %17, %struct.ixgbe_hw** %4, align 8
  %18 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %19 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %5, align 4
  %21 = load %struct.net_device*, %struct.net_device** %3, align 8
  %22 = call i64 @netif_carrier_ok(%struct.net_device* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %1
  br label %135

25:                                               ; preds = %1
  %26 = load i32, i32* @IXGBE_FLAG2_SEARCH_FOR_SFP, align 4
  %27 = xor i32 %26, -1
  %28 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %29 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %28, i32 0, i32 4
  %30 = load i32, i32* %29, align 8
  %31 = and i32 %30, %27
  store i32 %31, i32* %29, align 8
  %32 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %33 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  switch i32 %35, label %78 [
    i32 133, label %36
    i32 131, label %57
    i32 130, label %57
    i32 129, label %57
    i32 128, label %57
    i32 132, label %57
  ]

36:                                               ; preds = %25
  %37 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %38 = load i32, i32* @IXGBE_FCTRL, align 4
  %39 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %37, i32 %38)
  store i32 %39, i32* %9, align 4
  %40 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %41 = load i32, i32* @IXGBE_RMCS, align 4
  %42 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %40, i32 %41)
  store i32 %42, i32* %10, align 4
  %43 = load i32, i32* %9, align 4
  %44 = load i32, i32* @IXGBE_FCTRL_RFCE, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  %47 = xor i1 %46, true
  %48 = xor i1 %47, true
  %49 = zext i1 %48 to i32
  store i32 %49, i32* %7, align 4
  %50 = load i32, i32* %10, align 4
  %51 = load i32, i32* @IXGBE_RMCS_TFCE_802_3X, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  %54 = xor i1 %53, true
  %55 = xor i1 %54, true
  %56 = zext i1 %55 to i32
  store i32 %56, i32* %8, align 4
  br label %79

57:                                               ; preds = %25, %25, %25, %25, %25
  %58 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %59 = load i32, i32* @IXGBE_MFLCN, align 4
  %60 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %58, i32 %59)
  store i32 %60, i32* %11, align 4
  %61 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %62 = load i32, i32* @IXGBE_FCCFG, align 4
  %63 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %61, i32 %62)
  store i32 %63, i32* %12, align 4
  %64 = load i32, i32* %11, align 4
  %65 = load i32, i32* @IXGBE_MFLCN_RFCE, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  %68 = xor i1 %67, true
  %69 = xor i1 %68, true
  %70 = zext i1 %69 to i32
  store i32 %70, i32* %7, align 4
  %71 = load i32, i32* %12, align 4
  %72 = load i32, i32* @IXGBE_FCCFG_TFCE_802_3X, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  %75 = xor i1 %74, true
  %76 = xor i1 %75, true
  %77 = zext i1 %76 to i32
  store i32 %77, i32* %8, align 4
  br label %79

78:                                               ; preds = %25
  store i32 0, i32* %8, align 4
  store i32 0, i32* %7, align 4
  br label %79

79:                                               ; preds = %78, %57, %36
  %80 = load i32, i32* @jiffies, align 4
  %81 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %82 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %81, i32 0, i32 3
  store i32 %80, i32* %82, align 4
  %83 = load i32, i32* @__IXGBE_PTP_RUNNING, align 4
  %84 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %85 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %84, i32 0, i32 2
  %86 = call i64 @test_bit(i32 %83, i32* %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %79
  %89 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %90 = call i32 @ixgbe_ptp_start_cyclecounter(%struct.ixgbe_adapter* %89)
  br label %91

91:                                               ; preds = %88, %79
  %92 = load i32, i32* %5, align 4
  switch i32 %92, label %99 [
    i32 138, label %93
    i32 134, label %94
    i32 135, label %95
    i32 136, label %96
    i32 139, label %97
    i32 137, label %98
  ]

93:                                               ; preds = %91
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8** %6, align 8
  br label %100

94:                                               ; preds = %91
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8** %6, align 8
  br label %100

95:                                               ; preds = %91
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8** %6, align 8
  br label %100

96:                                               ; preds = %91
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8** %6, align 8
  br label %100

97:                                               ; preds = %91
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i8** %6, align 8
  br label %100

98:                                               ; preds = %91
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i8** %6, align 8
  br label %100

99:                                               ; preds = %91
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0), i8** %6, align 8
  br label %100

100:                                              ; preds = %99, %98, %97, %96, %95, %94, %93
  %101 = load i32, i32* @drv, align 4
  %102 = load i8*, i8** %6, align 8
  %103 = load i32, i32* %7, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %109

105:                                              ; preds = %100
  %106 = load i32, i32* %8, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %105
  br label %120

109:                                              ; preds = %105, %100
  %110 = load i32, i32* %7, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %109
  br label %118

113:                                              ; preds = %109
  %114 = load i32, i32* %8, align 4
  %115 = icmp ne i32 %114, 0
  %116 = zext i1 %115 to i64
  %117 = select i1 %115, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0)
  br label %118

118:                                              ; preds = %113, %112
  %119 = phi i8* [ getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0), %112 ], [ %117, %113 ]
  br label %120

120:                                              ; preds = %118, %108
  %121 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), %108 ], [ %119, %118 ]
  %122 = call i32 @e_info(i32 %101, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.7, i64 0, i64 0), i8* %102, i8* %121)
  %123 = load %struct.net_device*, %struct.net_device** %3, align 8
  %124 = call i32 @netif_carrier_on(%struct.net_device* %123)
  %125 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %126 = call i32 @ixgbe_check_vf_rate_limit(%struct.ixgbe_adapter* %125)
  %127 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %128 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %127, i32 0, i32 1
  %129 = load %struct.net_device*, %struct.net_device** %128, align 8
  %130 = call i32 @netif_tx_wake_all_queues(%struct.net_device* %129)
  %131 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %132 = call i32 @ixgbe_update_default_up(%struct.ixgbe_adapter* %131)
  %133 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %134 = call i32 @ixgbe_ping_all_vfs(%struct.ixgbe_adapter* %133)
  br label %135

135:                                              ; preds = %120, %24
  ret void
}

declare dso_local i64 @netif_carrier_ok(%struct.net_device*) #1

declare dso_local i32 @IXGBE_READ_REG(%struct.ixgbe_hw*, i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @ixgbe_ptp_start_cyclecounter(%struct.ixgbe_adapter*) #1

declare dso_local i32 @e_info(i32, i8*, i8*, i8*) #1

declare dso_local i32 @netif_carrier_on(%struct.net_device*) #1

declare dso_local i32 @ixgbe_check_vf_rate_limit(%struct.ixgbe_adapter*) #1

declare dso_local i32 @netif_tx_wake_all_queues(%struct.net_device*) #1

declare dso_local i32 @ixgbe_update_default_up(%struct.ixgbe_adapter*) #1

declare dso_local i32 @ixgbe_ping_all_vfs(%struct.ixgbe_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
