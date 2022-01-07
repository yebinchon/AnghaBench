; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/dvm/extr_rs.c_rs_tl_get_load.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/dvm/extr_rs.c_rs_tl_get_load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_lq_sta = type { %struct.iwl_traffic_load* }
%struct.iwl_traffic_load = type { i32, i32 }

@jiffies = common dso_local global i32 0, align 4
@IWL_MAX_TID_COUNT = common dso_local global i64 0, align 8
@TID_ROUND_VALUE = common dso_local global i32 0, align 4
@TID_QUEUE_CELL_SPACING = common dso_local global i32 0, align 4
@TID_QUEUE_MAX_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iwl_lq_sta*, i64)* @rs_tl_get_load to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rs_tl_get_load(%struct.iwl_lq_sta* %0, i64 %1) #0 {
  %3 = alloca %struct.iwl_lq_sta*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.iwl_traffic_load*, align 8
  store %struct.iwl_lq_sta* %0, %struct.iwl_lq_sta** %3, align 8
  store i64 %1, i64* %4, align 8
  %9 = load i32, i32* @jiffies, align 4
  %10 = call i32 @jiffies_to_msecs(i32 %9)
  store i32 %10, i32* %5, align 4
  store %struct.iwl_traffic_load* null, %struct.iwl_traffic_load** %8, align 8
  %11 = load i64, i64* %4, align 8
  %12 = load i64, i64* @IWL_MAX_TID_COUNT, align 8
  %13 = icmp uge i64 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  br label %47

15:                                               ; preds = %2
  %16 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %3, align 8
  %17 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %16, i32 0, i32 0
  %18 = load %struct.iwl_traffic_load*, %struct.iwl_traffic_load** %17, align 8
  %19 = load i64, i64* %4, align 8
  %20 = getelementptr inbounds %struct.iwl_traffic_load, %struct.iwl_traffic_load* %18, i64 %19
  store %struct.iwl_traffic_load* %20, %struct.iwl_traffic_load** %8, align 8
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* @TID_ROUND_VALUE, align 4
  %23 = srem i32 %21, %22
  %24 = load i32, i32* %5, align 4
  %25 = sub nsw i32 %24, %23
  store i32 %25, i32* %5, align 4
  %26 = load %struct.iwl_traffic_load*, %struct.iwl_traffic_load** %8, align 8
  %27 = getelementptr inbounds %struct.iwl_traffic_load, %struct.iwl_traffic_load* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %15
  br label %47

31:                                               ; preds = %15
  %32 = load %struct.iwl_traffic_load*, %struct.iwl_traffic_load** %8, align 8
  %33 = getelementptr inbounds %struct.iwl_traffic_load, %struct.iwl_traffic_load* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %5, align 4
  %36 = call i32 @TIME_WRAP_AROUND(i32 %34, i32 %35)
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* @TID_QUEUE_CELL_SPACING, align 4
  %39 = sdiv i32 %37, %38
  store i32 %39, i32* %7, align 4
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* @TID_QUEUE_MAX_SIZE, align 4
  %42 = icmp sge i32 %40, %41
  br i1 %42, label %43, label %47

43:                                               ; preds = %31
  %44 = load %struct.iwl_traffic_load*, %struct.iwl_traffic_load** %8, align 8
  %45 = load i32, i32* %5, align 4
  %46 = call i32 @rs_tl_rm_old_stats(%struct.iwl_traffic_load* %44, i32 %45)
  br label %47

47:                                               ; preds = %14, %30, %43, %31
  ret void
}

declare dso_local i32 @jiffies_to_msecs(i32) #1

declare dso_local i32 @TIME_WRAP_AROUND(i32, i32) #1

declare dso_local i32 @rs_tl_rm_old_stats(%struct.iwl_traffic_load*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
