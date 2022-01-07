; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgb/extr_ixgb_main.c_ixgb_watchdog.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgb/extr_ixgb_main.c_ixgb_watchdog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgb_adapter = type { i32, i32, i32, %struct.TYPE_6__, i32, i64, %struct.ixgb_desc_ring, %struct.net_device* }
%struct.TYPE_6__ = type { %struct.TYPE_5__, i64 }
%struct.TYPE_5__ = type { i64 }
%struct.ixgb_desc_ring = type { i64 }
%struct.net_device = type { i32 }
%struct.timer_list = type { i32 }

@watchdog_timer = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"NIC Link is Up 10 Gbps Full Duplex, Flow Control: %s\0A\00", align 1
@ixgb_fc_full = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [6 x i8] c"RX/TX\00", align 1
@ixgb_fc_rx_pause = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [3 x i8] c"RX\00", align 1
@ixgb_fc_tx_pause = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [3 x i8] c"TX\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"None\00", align 1
@FULL_DUPLEX = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [18 x i8] c"NIC Link is Down\0A\00", align 1
@ICS = common dso_local global i32 0, align 4
@IXGB_INT_TXDW = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@adapter = common dso_local global %struct.ixgb_adapter* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @ixgb_watchdog to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ixgb_watchdog(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.ixgb_adapter*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ixgb_desc_ring*, align 8
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %6 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %3, align 8
  %7 = ptrtoint %struct.ixgb_adapter* %6 to i32
  %8 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %9 = load i32, i32* @watchdog_timer, align 4
  %10 = call %struct.ixgb_adapter* @from_timer(i32 %7, %struct.timer_list* %8, i32 %9)
  store %struct.ixgb_adapter* %10, %struct.ixgb_adapter** %3, align 8
  %11 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %3, align 8
  %12 = getelementptr inbounds %struct.ixgb_adapter, %struct.ixgb_adapter* %11, i32 0, i32 7
  %13 = load %struct.net_device*, %struct.net_device** %12, align 8
  store %struct.net_device* %13, %struct.net_device** %4, align 8
  %14 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %3, align 8
  %15 = getelementptr inbounds %struct.ixgb_adapter, %struct.ixgb_adapter* %14, i32 0, i32 6
  store %struct.ixgb_desc_ring* %15, %struct.ixgb_desc_ring** %5, align 8
  %16 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %3, align 8
  %17 = getelementptr inbounds %struct.ixgb_adapter, %struct.ixgb_adapter* %16, i32 0, i32 3
  %18 = call i32 @ixgb_check_for_link(%struct.TYPE_6__* %17)
  %19 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %3, align 8
  %20 = getelementptr inbounds %struct.ixgb_adapter, %struct.ixgb_adapter* %19, i32 0, i32 3
  %21 = call i64 @ixgb_check_for_bad_link(%struct.TYPE_6__* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %1
  %24 = load %struct.net_device*, %struct.net_device** %4, align 8
  %25 = call i32 @netif_stop_queue(%struct.net_device* %24)
  br label %26

26:                                               ; preds = %23, %1
  %27 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %3, align 8
  %28 = getelementptr inbounds %struct.ixgb_adapter, %struct.ixgb_adapter* %27, i32 0, i32 3
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %78

32:                                               ; preds = %26
  %33 = load %struct.net_device*, %struct.net_device** %4, align 8
  %34 = call i64 @netif_carrier_ok(%struct.net_device* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %77, label %36

36:                                               ; preds = %32
  %37 = load %struct.net_device*, %struct.net_device** %4, align 8
  %38 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %3, align 8
  %39 = getelementptr inbounds %struct.ixgb_adapter, %struct.ixgb_adapter* %38, i32 0, i32 3
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @ixgb_fc_full, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %36
  br label %67

46:                                               ; preds = %36
  %47 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %3, align 8
  %48 = getelementptr inbounds %struct.ixgb_adapter, %struct.ixgb_adapter* %47, i32 0, i32 3
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @ixgb_fc_rx_pause, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %46
  br label %65

55:                                               ; preds = %46
  %56 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %3, align 8
  %57 = getelementptr inbounds %struct.ixgb_adapter, %struct.ixgb_adapter* %56, i32 0, i32 3
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @ixgb_fc_tx_pause, align 8
  %62 = icmp eq i64 %60, %61
  %63 = zext i1 %62 to i64
  %64 = select i1 %62, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0)
  br label %65

65:                                               ; preds = %55, %54
  %66 = phi i8* [ getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), %54 ], [ %64, %55 ]
  br label %67

67:                                               ; preds = %65, %45
  %68 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), %45 ], [ %66, %65 ]
  %69 = call i32 (%struct.net_device*, i8*, ...) @netdev_info(%struct.net_device* %37, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i8* %68)
  %70 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %3, align 8
  %71 = getelementptr inbounds %struct.ixgb_adapter, %struct.ixgb_adapter* %70, i32 0, i32 0
  store i32 10000, i32* %71, align 8
  %72 = load i64, i64* @FULL_DUPLEX, align 8
  %73 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %3, align 8
  %74 = getelementptr inbounds %struct.ixgb_adapter, %struct.ixgb_adapter* %73, i32 0, i32 5
  store i64 %72, i64* %74, align 8
  %75 = load %struct.net_device*, %struct.net_device** %4, align 8
  %76 = call i32 @netif_carrier_on(%struct.net_device* %75)
  br label %77

77:                                               ; preds = %67, %32
  br label %92

78:                                               ; preds = %26
  %79 = load %struct.net_device*, %struct.net_device** %4, align 8
  %80 = call i64 @netif_carrier_ok(%struct.net_device* %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %91

82:                                               ; preds = %78
  %83 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %3, align 8
  %84 = getelementptr inbounds %struct.ixgb_adapter, %struct.ixgb_adapter* %83, i32 0, i32 0
  store i32 0, i32* %84, align 8
  %85 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %3, align 8
  %86 = getelementptr inbounds %struct.ixgb_adapter, %struct.ixgb_adapter* %85, i32 0, i32 5
  store i64 0, i64* %86, align 8
  %87 = load %struct.net_device*, %struct.net_device** %4, align 8
  %88 = call i32 (%struct.net_device*, i8*, ...) @netdev_info(%struct.net_device* %87, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0))
  %89 = load %struct.net_device*, %struct.net_device** %4, align 8
  %90 = call i32 @netif_carrier_off(%struct.net_device* %89)
  br label %91

91:                                               ; preds = %82, %78
  br label %92

92:                                               ; preds = %91, %77
  %93 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %3, align 8
  %94 = call i32 @ixgb_update_stats(%struct.ixgb_adapter* %93)
  %95 = load %struct.net_device*, %struct.net_device** %4, align 8
  %96 = call i64 @netif_carrier_ok(%struct.net_device* %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %111, label %98

98:                                               ; preds = %92
  %99 = load %struct.ixgb_desc_ring*, %struct.ixgb_desc_ring** %5, align 8
  %100 = call i64 @IXGB_DESC_UNUSED(%struct.ixgb_desc_ring* %99)
  %101 = add nsw i64 %100, 1
  %102 = load %struct.ixgb_desc_ring*, %struct.ixgb_desc_ring** %5, align 8
  %103 = getelementptr inbounds %struct.ixgb_desc_ring, %struct.ixgb_desc_ring* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = icmp slt i64 %101, %104
  br i1 %105, label %106, label %110

106:                                              ; preds = %98
  %107 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %3, align 8
  %108 = getelementptr inbounds %struct.ixgb_adapter, %struct.ixgb_adapter* %107, i32 0, i32 4
  %109 = call i32 @schedule_work(i32* %108)
  br label %127

110:                                              ; preds = %98
  br label %111

111:                                              ; preds = %110, %92
  %112 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %3, align 8
  %113 = getelementptr inbounds %struct.ixgb_adapter, %struct.ixgb_adapter* %112, i32 0, i32 1
  store i32 1, i32* %113, align 4
  %114 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %3, align 8
  %115 = getelementptr inbounds %struct.ixgb_adapter, %struct.ixgb_adapter* %114, i32 0, i32 3
  %116 = load i32, i32* @ICS, align 4
  %117 = load i32, i32* @IXGB_INT_TXDW, align 4
  %118 = call i32 @IXGB_WRITE_REG(%struct.TYPE_6__* %115, i32 %116, i32 %117)
  %119 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %3, align 8
  %120 = getelementptr inbounds %struct.ixgb_adapter, %struct.ixgb_adapter* %119, i32 0, i32 2
  %121 = load i64, i64* @jiffies, align 8
  %122 = load i32, i32* @HZ, align 4
  %123 = mul nsw i32 2, %122
  %124 = sext i32 %123 to i64
  %125 = add nsw i64 %121, %124
  %126 = call i32 @mod_timer(i32* %120, i64 %125)
  br label %127

127:                                              ; preds = %111, %106
  ret void
}

declare dso_local %struct.ixgb_adapter* @from_timer(i32, %struct.timer_list*, i32) #1

declare dso_local i32 @ixgb_check_for_link(%struct.TYPE_6__*) #1

declare dso_local i64 @ixgb_check_for_bad_link(%struct.TYPE_6__*) #1

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

declare dso_local i64 @netif_carrier_ok(%struct.net_device*) #1

declare dso_local i32 @netdev_info(%struct.net_device*, i8*, ...) #1

declare dso_local i32 @netif_carrier_on(%struct.net_device*) #1

declare dso_local i32 @netif_carrier_off(%struct.net_device*) #1

declare dso_local i32 @ixgb_update_stats(%struct.ixgb_adapter*) #1

declare dso_local i64 @IXGB_DESC_UNUSED(%struct.ixgb_desc_ring*) #1

declare dso_local i32 @schedule_work(i32*) #1

declare dso_local i32 @IXGB_WRITE_REG(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
