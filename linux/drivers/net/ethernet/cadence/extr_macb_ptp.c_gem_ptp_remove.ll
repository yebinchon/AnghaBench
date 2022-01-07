; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cadence/extr_macb_ptp.c_gem_ptp_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cadence/extr_macb_ptp.c_gem_ptp_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.macb = type { %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [28 x i8] c"%s ptp clock unregistered.\0A\00", align 1
@GEM_PTP_TIMER_NAME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gem_ptp_remove(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.macb*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %4 = load %struct.net_device*, %struct.net_device** %2, align 8
  %5 = call %struct.macb* @netdev_priv(%struct.net_device* %4)
  store %struct.macb* %5, %struct.macb** %3, align 8
  %6 = load %struct.macb*, %struct.macb** %3, align 8
  %7 = getelementptr inbounds %struct.macb, %struct.macb* %6, i32 0, i32 1
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %15

10:                                               ; preds = %1
  %11 = load %struct.macb*, %struct.macb** %3, align 8
  %12 = getelementptr inbounds %struct.macb, %struct.macb* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = call i32 @ptp_clock_unregister(i64 %13)
  br label %15

15:                                               ; preds = %10, %1
  %16 = load %struct.macb*, %struct.macb** %3, align 8
  %17 = call i32 @gem_ptp_clear_timer(%struct.macb* %16)
  %18 = load %struct.macb*, %struct.macb** %3, align 8
  %19 = getelementptr inbounds %struct.macb, %struct.macb* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* @GEM_PTP_TIMER_NAME, align 4
  %23 = call i32 @dev_info(i32* %21, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %22)
  ret void
}

declare dso_local %struct.macb* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @ptp_clock_unregister(i64) #1

declare dso_local i32 @gem_ptp_clear_timer(%struct.macb*) #1

declare dso_local i32 @dev_info(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
