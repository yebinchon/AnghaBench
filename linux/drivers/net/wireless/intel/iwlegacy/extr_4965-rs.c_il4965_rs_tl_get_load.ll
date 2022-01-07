; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlegacy/extr_4965-rs.c_il4965_rs_tl_get_load.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlegacy/extr_4965-rs.c_il4965_rs_tl_get_load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.il_lq_sta = type { %struct.il_traffic_load* }
%struct.il_traffic_load = type { i32, i32, i32 }

@jiffies = common dso_local global i32 0, align 4
@TID_MAX_LOAD_COUNT = common dso_local global i64 0, align 8
@TID_ROUND_VALUE = common dso_local global i32 0, align 4
@TID_QUEUE_CELL_SPACING = common dso_local global i32 0, align 4
@TID_QUEUE_MAX_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.il_lq_sta*, i64)* @il4965_rs_tl_get_load to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @il4965_rs_tl_get_load(%struct.il_lq_sta* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.il_lq_sta*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.il_traffic_load*, align 8
  store %struct.il_lq_sta* %0, %struct.il_lq_sta** %4, align 8
  store i64 %1, i64* %5, align 8
  %10 = load i32, i32* @jiffies, align 4
  %11 = call i32 @jiffies_to_msecs(i32 %10)
  store i32 %11, i32* %6, align 4
  store %struct.il_traffic_load* null, %struct.il_traffic_load** %9, align 8
  %12 = load i64, i64* %5, align 8
  %13 = load i64, i64* @TID_MAX_LOAD_COUNT, align 8
  %14 = icmp uge i64 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %52

16:                                               ; preds = %2
  %17 = load %struct.il_lq_sta*, %struct.il_lq_sta** %4, align 8
  %18 = getelementptr inbounds %struct.il_lq_sta, %struct.il_lq_sta* %17, i32 0, i32 0
  %19 = load %struct.il_traffic_load*, %struct.il_traffic_load** %18, align 8
  %20 = load i64, i64* %5, align 8
  %21 = getelementptr inbounds %struct.il_traffic_load, %struct.il_traffic_load* %19, i64 %20
  store %struct.il_traffic_load* %21, %struct.il_traffic_load** %9, align 8
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* @TID_ROUND_VALUE, align 4
  %24 = srem i32 %22, %23
  %25 = load i32, i32* %6, align 4
  %26 = sub nsw i32 %25, %24
  store i32 %26, i32* %6, align 4
  %27 = load %struct.il_traffic_load*, %struct.il_traffic_load** %9, align 8
  %28 = getelementptr inbounds %struct.il_traffic_load, %struct.il_traffic_load* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %16
  store i32 0, i32* %3, align 4
  br label %52

32:                                               ; preds = %16
  %33 = load %struct.il_traffic_load*, %struct.il_traffic_load** %9, align 8
  %34 = getelementptr inbounds %struct.il_traffic_load, %struct.il_traffic_load* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %6, align 4
  %37 = call i32 @TIME_WRAP_AROUND(i32 %35, i32 %36)
  store i32 %37, i32* %7, align 4
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* @TID_QUEUE_CELL_SPACING, align 4
  %40 = sdiv i32 %38, %39
  store i32 %40, i32* %8, align 4
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* @TID_QUEUE_MAX_SIZE, align 4
  %43 = icmp sge i32 %41, %42
  br i1 %43, label %44, label %48

44:                                               ; preds = %32
  %45 = load %struct.il_traffic_load*, %struct.il_traffic_load** %9, align 8
  %46 = load i32, i32* %6, align 4
  %47 = call i32 @il4965_rs_tl_rm_old_stats(%struct.il_traffic_load* %45, i32 %46)
  br label %48

48:                                               ; preds = %44, %32
  %49 = load %struct.il_traffic_load*, %struct.il_traffic_load** %9, align 8
  %50 = getelementptr inbounds %struct.il_traffic_load, %struct.il_traffic_load* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  store i32 %51, i32* %3, align 4
  br label %52

52:                                               ; preds = %48, %31, %15
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local i32 @jiffies_to_msecs(i32) #1

declare dso_local i32 @TIME_WRAP_AROUND(i32, i32) #1

declare dso_local i32 @il4965_rs_tl_rm_old_stats(%struct.il_traffic_load*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
