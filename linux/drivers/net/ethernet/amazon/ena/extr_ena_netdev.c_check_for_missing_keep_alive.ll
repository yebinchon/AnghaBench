; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amazon/ena/extr_ena_netdev.c_check_for_missing_keep_alive.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amazon/ena/extr_ena_netdev.c_check_for_missing_keep_alive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ena_adapter = type { i64, i64, i32, i32, i32, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@ENA_HW_HINTS_NO_TIMEOUT = common dso_local global i64 0, align 8
@drv = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Keep alive watchdog timeout.\0A\00", align 1
@ENA_REGS_RESET_KEEP_ALIVE_TO = common dso_local global i32 0, align 4
@ENA_FLAG_TRIGGER_RESET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ena_adapter*)* @check_for_missing_keep_alive to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_for_missing_keep_alive(%struct.ena_adapter* %0) #0 {
  %2 = alloca %struct.ena_adapter*, align 8
  %3 = alloca i64, align 8
  store %struct.ena_adapter* %0, %struct.ena_adapter** %2, align 8
  %4 = load %struct.ena_adapter*, %struct.ena_adapter** %2, align 8
  %5 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %4, i32 0, i32 7
  %6 = load i32, i32* %5, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  br label %54

9:                                                ; preds = %1
  %10 = load %struct.ena_adapter*, %struct.ena_adapter** %2, align 8
  %11 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @ENA_HW_HINTS_NO_TIMEOUT, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %9
  br label %54

16:                                               ; preds = %9
  %17 = load %struct.ena_adapter*, %struct.ena_adapter** %2, align 8
  %18 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.ena_adapter*, %struct.ena_adapter** %2, align 8
  %21 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = add nsw i64 %19, %22
  %24 = call i64 @round_jiffies(i64 %23)
  store i64 %24, i64* %3, align 8
  %25 = load i64, i64* %3, align 8
  %26 = call i32 @time_is_before_jiffies(i64 %25)
  %27 = call i64 @unlikely(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %54

29:                                               ; preds = %16
  %30 = load %struct.ena_adapter*, %struct.ena_adapter** %2, align 8
  %31 = load i32, i32* @drv, align 4
  %32 = load %struct.ena_adapter*, %struct.ena_adapter** %2, align 8
  %33 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %32, i32 0, i32 6
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @netif_err(%struct.ena_adapter* %30, i32 %31, i32 %34, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %36 = load %struct.ena_adapter*, %struct.ena_adapter** %2, align 8
  %37 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %36, i32 0, i32 4
  %38 = call i32 @u64_stats_update_begin(i32* %37)
  %39 = load %struct.ena_adapter*, %struct.ena_adapter** %2, align 8
  %40 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %39, i32 0, i32 5
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %41, align 4
  %44 = load %struct.ena_adapter*, %struct.ena_adapter** %2, align 8
  %45 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %44, i32 0, i32 4
  %46 = call i32 @u64_stats_update_end(i32* %45)
  %47 = load i32, i32* @ENA_REGS_RESET_KEEP_ALIVE_TO, align 4
  %48 = load %struct.ena_adapter*, %struct.ena_adapter** %2, align 8
  %49 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %48, i32 0, i32 3
  store i32 %47, i32* %49, align 4
  %50 = load i32, i32* @ENA_FLAG_TRIGGER_RESET, align 4
  %51 = load %struct.ena_adapter*, %struct.ena_adapter** %2, align 8
  %52 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %51, i32 0, i32 2
  %53 = call i32 @set_bit(i32 %50, i32* %52)
  br label %54

54:                                               ; preds = %8, %15, %29, %16
  ret void
}

declare dso_local i64 @round_jiffies(i64) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @time_is_before_jiffies(i64) #1

declare dso_local i32 @netif_err(%struct.ena_adapter*, i32, i32, i8*) #1

declare dso_local i32 @u64_stats_update_begin(i32*) #1

declare dso_local i32 @u64_stats_update_end(i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
