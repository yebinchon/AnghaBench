; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt.c_bnxt_timer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt.c_bnxt_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnxt = type { i32, i32, i64, i32, i32, %struct.net_device*, %struct.TYPE_2__, i64, i32 }
%struct.net_device = type { i32 }
%struct.TYPE_2__ = type { i64, i32, i64 }
%struct.timer_list = type { i32 }

@timer = common dso_local global i32 0, align 4
@BNXT_FW_CAP_ERROR_RECOVERY = common dso_local global i32 0, align 4
@BNXT_FLAG_PORT_STATS = common dso_local global i32 0, align 4
@BNXT_PERIODIC_STATS_SP_EVENT = common dso_local global i32 0, align 4
@BNXT_FLOW_STATS_SP_EVENT = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [54 x i8] c"failed to update phy settings after maximum retries.\0A\00", align 1
@BNXT_UPDATE_PHY_SP_EVENT = common dso_local global i32 0, align 4
@BNXT_FLAG_CHIP_P5 = common dso_local global i32 0, align 4
@BNXT_RING_COAL_NOW_SP_EVENT = common dso_local global i32 0, align 4
@bp = common dso_local global %struct.bnxt* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @bnxt_timer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnxt_timer(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.bnxt*, align 8
  %4 = alloca %struct.net_device*, align 8
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %5 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %6 = ptrtoint %struct.bnxt* %5 to i32
  %7 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %8 = load i32, i32* @timer, align 4
  %9 = call %struct.bnxt* @from_timer(i32 %6, %struct.timer_list* %7, i32 %8)
  store %struct.bnxt* %9, %struct.bnxt** %3, align 8
  %10 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %11 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %10, i32 0, i32 5
  %12 = load %struct.net_device*, %struct.net_device** %11, align 8
  store %struct.net_device* %12, %struct.net_device** %4, align 8
  %13 = load %struct.net_device*, %struct.net_device** %4, align 8
  %14 = call i32 @netif_running(%struct.net_device* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %1
  br label %127

17:                                               ; preds = %1
  %18 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %19 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %18, i32 0, i32 8
  %20 = call i64 @atomic_read(i32* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %17
  br label %118

23:                                               ; preds = %17
  %24 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %25 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @BNXT_FW_CAP_ERROR_RECOVERY, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %23
  %31 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %32 = call i32 @bnxt_fw_health_check(%struct.bnxt* %31)
  br label %33

33:                                               ; preds = %30, %23
  %34 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %35 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %34, i32 0, i32 6
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %58

39:                                               ; preds = %33
  %40 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %41 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @BNXT_FLAG_PORT_STATS, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %58

46:                                               ; preds = %39
  %47 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %48 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %47, i32 0, i32 7
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %58

51:                                               ; preds = %46
  %52 = load i32, i32* @BNXT_PERIODIC_STATS_SP_EVENT, align 4
  %53 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %54 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %53, i32 0, i32 4
  %55 = call i32 @set_bit(i32 %52, i32* %54)
  %56 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %57 = call i32 @bnxt_queue_sp_work(%struct.bnxt* %56)
  br label %58

58:                                               ; preds = %51, %46, %39, %33
  %59 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %60 = call i64 @bnxt_tc_flower_enabled(%struct.bnxt* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %69

62:                                               ; preds = %58
  %63 = load i32, i32* @BNXT_FLOW_STATS_SP_EVENT, align 4
  %64 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %65 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %64, i32 0, i32 4
  %66 = call i32 @set_bit(i32 %63, i32* %65)
  %67 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %68 = call i32 @bnxt_queue_sp_work(%struct.bnxt* %67)
  br label %69

69:                                               ; preds = %62, %58
  %70 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %71 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %70, i32 0, i32 6
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %99

75:                                               ; preds = %69
  %76 = load i64, i64* @jiffies, align 8
  %77 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %78 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %77, i32 0, i32 6
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  %81 = call i64 @time_after(i64 %76, i32 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %91

83:                                               ; preds = %75
  %84 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %85 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %84, i32 0, i32 6
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 0
  store i64 0, i64* %86, align 8
  %87 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %88 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %87, i32 0, i32 5
  %89 = load %struct.net_device*, %struct.net_device** %88, align 8
  %90 = call i32 @netdev_warn(%struct.net_device* %89, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0))
  br label %98

91:                                               ; preds = %75
  %92 = load i32, i32* @BNXT_UPDATE_PHY_SP_EVENT, align 4
  %93 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %94 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %93, i32 0, i32 4
  %95 = call i32 @set_bit(i32 %92, i32* %94)
  %96 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %97 = call i32 @bnxt_queue_sp_work(%struct.bnxt* %96)
  br label %98

98:                                               ; preds = %91, %83
  br label %99

99:                                               ; preds = %98, %69
  %100 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %101 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* @BNXT_FLAG_CHIP_P5, align 4
  %104 = and i32 %102, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %117

106:                                              ; preds = %99
  %107 = load %struct.net_device*, %struct.net_device** %4, align 8
  %108 = call i64 @netif_carrier_ok(%struct.net_device* %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %117

110:                                              ; preds = %106
  %111 = load i32, i32* @BNXT_RING_COAL_NOW_SP_EVENT, align 4
  %112 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %113 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %112, i32 0, i32 4
  %114 = call i32 @set_bit(i32 %111, i32* %113)
  %115 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %116 = call i32 @bnxt_queue_sp_work(%struct.bnxt* %115)
  br label %117

117:                                              ; preds = %110, %106, %99
  br label %118

118:                                              ; preds = %117, %22
  %119 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %120 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %119, i32 0, i32 3
  %121 = load i64, i64* @jiffies, align 8
  %122 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %123 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %122, i32 0, i32 2
  %124 = load i64, i64* %123, align 8
  %125 = add nsw i64 %121, %124
  %126 = call i32 @mod_timer(i32* %120, i64 %125)
  br label %127

127:                                              ; preds = %118, %16
  ret void
}

declare dso_local %struct.bnxt* @from_timer(i32, %struct.timer_list*, i32) #1

declare dso_local i32 @netif_running(%struct.net_device*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @bnxt_fw_health_check(%struct.bnxt*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @bnxt_queue_sp_work(%struct.bnxt*) #1

declare dso_local i64 @bnxt_tc_flower_enabled(%struct.bnxt*) #1

declare dso_local i64 @time_after(i64, i32) #1

declare dso_local i32 @netdev_warn(%struct.net_device*, i8*) #1

declare dso_local i64 @netif_carrier_ok(%struct.net_device*) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
