; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/oki-semi/pch_gbe/extr_pch_gbe_main.c_pch_gbe_watchdog.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/oki-semi/pch_gbe/extr_pch_gbe_main.c_pch_gbe_watchdog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pch_gbe_adapter = type { i32, i32, i32, %struct.pch_gbe_hw, %struct.net_device* }
%struct.pch_gbe_hw = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32 }
%struct.net_device = type { i32 }
%struct.timer_list = type { i32 }
%struct.ethtool_cmd = type { i64, i32 }

@watchdog_timer = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"right now = %ld\0A\00", align 1
@jiffies = common dso_local global i64 0, align 8
@ETHTOOL_GSET = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"ethtool get setting Error\0A\00", align 1
@PCH_GBE_WATCHDOG_PERIOD = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [30 x i8] c"Link is Up %d Mbps %s-Duplex\0A\00", align 1
@DUPLEX_FULL = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [5 x i8] c"Full\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"Half\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"NIC Link is Down\0A\00", align 1
@SPEED_10 = common dso_local global i32 0, align 4
@DUPLEX_HALF = common dso_local global i64 0, align 8
@adapter = common dso_local global %struct.pch_gbe_adapter* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @pch_gbe_watchdog to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pch_gbe_watchdog(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.pch_gbe_adapter*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.pch_gbe_hw*, align 8
  %6 = alloca %struct.ethtool_cmd, align 8
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %7 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %3, align 8
  %8 = ptrtoint %struct.pch_gbe_adapter* %7 to i32
  %9 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %10 = load i32, i32* @watchdog_timer, align 4
  %11 = call %struct.pch_gbe_adapter* @from_timer(i32 %8, %struct.timer_list* %9, i32 %10)
  store %struct.pch_gbe_adapter* %11, %struct.pch_gbe_adapter** %3, align 8
  %12 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %3, align 8
  %13 = getelementptr inbounds %struct.pch_gbe_adapter, %struct.pch_gbe_adapter* %12, i32 0, i32 4
  %14 = load %struct.net_device*, %struct.net_device** %13, align 8
  store %struct.net_device* %14, %struct.net_device** %4, align 8
  %15 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %3, align 8
  %16 = getelementptr inbounds %struct.pch_gbe_adapter, %struct.pch_gbe_adapter* %15, i32 0, i32 3
  store %struct.pch_gbe_hw* %16, %struct.pch_gbe_hw** %5, align 8
  %17 = load %struct.net_device*, %struct.net_device** %4, align 8
  %18 = load i64, i64* @jiffies, align 8
  %19 = call i32 (%struct.net_device*, i8*, ...) @netdev_dbg(%struct.net_device* %17, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i64 %18)
  %20 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %3, align 8
  %21 = call i32 @pch_gbe_update_stats(%struct.pch_gbe_adapter* %20)
  %22 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %3, align 8
  %23 = getelementptr inbounds %struct.pch_gbe_adapter, %struct.pch_gbe_adapter* %22, i32 0, i32 1
  %24 = call i64 @mii_link_ok(i32* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %99

26:                                               ; preds = %1
  %27 = load %struct.net_device*, %struct.net_device** %4, align 8
  %28 = call i64 @netif_carrier_ok(%struct.net_device* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %99, label %30

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %6, i32 0, i32 0
  store i64 0, i64* %31, align 8
  %32 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %6, i32 0, i32 1
  %33 = load i32, i32* @ETHTOOL_GSET, align 4
  store i32 %33, i32* %32, align 8
  %34 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %3, align 8
  %35 = getelementptr inbounds %struct.pch_gbe_adapter, %struct.pch_gbe_adapter* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.net_device*, %struct.net_device** %4, align 8
  %38 = getelementptr inbounds %struct.net_device, %struct.net_device* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 4
  %39 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %3, align 8
  %40 = getelementptr inbounds %struct.pch_gbe_adapter, %struct.pch_gbe_adapter* %39, i32 0, i32 1
  %41 = call i64 @mii_ethtool_gset(i32* %40, %struct.ethtool_cmd* %6)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %53

43:                                               ; preds = %30
  %44 = load %struct.net_device*, %struct.net_device** %4, align 8
  %45 = call i32 @netdev_err(%struct.net_device* %44, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %46 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %3, align 8
  %47 = getelementptr inbounds %struct.pch_gbe_adapter, %struct.pch_gbe_adapter* %46, i32 0, i32 0
  %48 = load i64, i64* @jiffies, align 8
  %49 = load i64, i64* @PCH_GBE_WATCHDOG_PERIOD, align 8
  %50 = add nsw i64 %48, %49
  %51 = call i32 @round_jiffies(i64 %50)
  %52 = call i32 @mod_timer(i32* %47, i32 %51)
  br label %132

53:                                               ; preds = %30
  %54 = call i32 @ethtool_cmd_speed(%struct.ethtool_cmd* %6)
  %55 = load %struct.pch_gbe_hw*, %struct.pch_gbe_hw** %5, align 8
  %56 = getelementptr inbounds %struct.pch_gbe_hw, %struct.pch_gbe_hw* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 1
  store i32 %54, i32* %57, align 8
  %58 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %6, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.pch_gbe_hw*, %struct.pch_gbe_hw** %5, align 8
  %61 = getelementptr inbounds %struct.pch_gbe_hw, %struct.pch_gbe_hw* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  store i64 %59, i64* %62, align 8
  %63 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %3, align 8
  %64 = load %struct.pch_gbe_hw*, %struct.pch_gbe_hw** %5, align 8
  %65 = getelementptr inbounds %struct.pch_gbe_hw, %struct.pch_gbe_hw* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.pch_gbe_hw*, %struct.pch_gbe_hw** %5, align 8
  %69 = getelementptr inbounds %struct.pch_gbe_hw, %struct.pch_gbe_hw* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = call i32 @pch_gbe_set_rgmii_ctrl(%struct.pch_gbe_adapter* %63, i32 %67, i64 %71)
  %73 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %3, align 8
  %74 = load %struct.pch_gbe_hw*, %struct.pch_gbe_hw** %5, align 8
  %75 = getelementptr inbounds %struct.pch_gbe_hw, %struct.pch_gbe_hw* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.pch_gbe_hw*, %struct.pch_gbe_hw** %5, align 8
  %79 = getelementptr inbounds %struct.pch_gbe_hw, %struct.pch_gbe_hw* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = call i32 @pch_gbe_set_mode(%struct.pch_gbe_adapter* %73, i32 %77, i64 %81)
  %83 = load %struct.net_device*, %struct.net_device** %4, align 8
  %84 = load %struct.pch_gbe_hw*, %struct.pch_gbe_hw** %5, align 8
  %85 = getelementptr inbounds %struct.pch_gbe_hw, %struct.pch_gbe_hw* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 8
  %88 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %6, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @DUPLEX_FULL, align 8
  %91 = icmp eq i64 %89, %90
  %92 = zext i1 %91 to i64
  %93 = select i1 %91, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0)
  %94 = call i32 (%struct.net_device*, i8*, ...) @netdev_dbg(%struct.net_device* %83, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %87, i8* %93)
  %95 = load %struct.net_device*, %struct.net_device** %4, align 8
  %96 = call i32 @netif_carrier_on(%struct.net_device* %95)
  %97 = load %struct.net_device*, %struct.net_device** %4, align 8
  %98 = call i32 @netif_wake_queue(%struct.net_device* %97)
  br label %124

99:                                               ; preds = %26, %1
  %100 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %3, align 8
  %101 = getelementptr inbounds %struct.pch_gbe_adapter, %struct.pch_gbe_adapter* %100, i32 0, i32 1
  %102 = call i64 @mii_link_ok(i32* %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %123, label %104

104:                                              ; preds = %99
  %105 = load %struct.net_device*, %struct.net_device** %4, align 8
  %106 = call i64 @netif_carrier_ok(%struct.net_device* %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %123

108:                                              ; preds = %104
  %109 = load %struct.net_device*, %struct.net_device** %4, align 8
  %110 = call i32 (%struct.net_device*, i8*, ...) @netdev_dbg(%struct.net_device* %109, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0))
  %111 = load i32, i32* @SPEED_10, align 4
  %112 = load %struct.pch_gbe_hw*, %struct.pch_gbe_hw** %5, align 8
  %113 = getelementptr inbounds %struct.pch_gbe_hw, %struct.pch_gbe_hw* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i32 0, i32 1
  store i32 %111, i32* %114, align 8
  %115 = load i64, i64* @DUPLEX_HALF, align 8
  %116 = load %struct.pch_gbe_hw*, %struct.pch_gbe_hw** %5, align 8
  %117 = getelementptr inbounds %struct.pch_gbe_hw, %struct.pch_gbe_hw* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %117, i32 0, i32 0
  store i64 %115, i64* %118, align 8
  %119 = load %struct.net_device*, %struct.net_device** %4, align 8
  %120 = call i32 @netif_carrier_off(%struct.net_device* %119)
  %121 = load %struct.net_device*, %struct.net_device** %4, align 8
  %122 = call i32 @netif_stop_queue(%struct.net_device* %121)
  br label %123

123:                                              ; preds = %108, %104, %99
  br label %124

124:                                              ; preds = %123, %53
  %125 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %3, align 8
  %126 = getelementptr inbounds %struct.pch_gbe_adapter, %struct.pch_gbe_adapter* %125, i32 0, i32 0
  %127 = load i64, i64* @jiffies, align 8
  %128 = load i64, i64* @PCH_GBE_WATCHDOG_PERIOD, align 8
  %129 = add nsw i64 %127, %128
  %130 = call i32 @round_jiffies(i64 %129)
  %131 = call i32 @mod_timer(i32* %126, i32 %130)
  br label %132

132:                                              ; preds = %124, %43
  ret void
}

declare dso_local %struct.pch_gbe_adapter* @from_timer(i32, %struct.timer_list*, i32) #1

declare dso_local i32 @netdev_dbg(%struct.net_device*, i8*, ...) #1

declare dso_local i32 @pch_gbe_update_stats(%struct.pch_gbe_adapter*) #1

declare dso_local i64 @mii_link_ok(i32*) #1

declare dso_local i64 @netif_carrier_ok(%struct.net_device*) #1

declare dso_local i64 @mii_ethtool_gset(i32*, %struct.ethtool_cmd*) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*) #1

declare dso_local i32 @mod_timer(i32*, i32) #1

declare dso_local i32 @round_jiffies(i64) #1

declare dso_local i32 @ethtool_cmd_speed(%struct.ethtool_cmd*) #1

declare dso_local i32 @pch_gbe_set_rgmii_ctrl(%struct.pch_gbe_adapter*, i32, i64) #1

declare dso_local i32 @pch_gbe_set_mode(%struct.pch_gbe_adapter*, i32, i64) #1

declare dso_local i32 @netif_carrier_on(%struct.net_device*) #1

declare dso_local i32 @netif_wake_queue(%struct.net_device*) #1

declare dso_local i32 @netif_carrier_off(%struct.net_device*) #1

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
