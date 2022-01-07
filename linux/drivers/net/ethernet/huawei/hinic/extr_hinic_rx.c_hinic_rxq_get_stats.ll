; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/huawei/hinic/extr_hinic_rx.c_hinic_rxq_get_stats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/huawei/hinic/extr_hinic_rx.c_hinic_rxq_get_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hinic_rxq = type { %struct.hinic_rxq_stats }
%struct.hinic_rxq_stats = type { i32, i64, i64, i64, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hinic_rxq_get_stats(%struct.hinic_rxq* %0, %struct.hinic_rxq_stats* %1) #0 {
  %3 = alloca %struct.hinic_rxq*, align 8
  %4 = alloca %struct.hinic_rxq_stats*, align 8
  %5 = alloca %struct.hinic_rxq_stats*, align 8
  %6 = alloca i32, align 4
  store %struct.hinic_rxq* %0, %struct.hinic_rxq** %3, align 8
  store %struct.hinic_rxq_stats* %1, %struct.hinic_rxq_stats** %4, align 8
  %7 = load %struct.hinic_rxq*, %struct.hinic_rxq** %3, align 8
  %8 = getelementptr inbounds %struct.hinic_rxq, %struct.hinic_rxq* %7, i32 0, i32 0
  store %struct.hinic_rxq_stats* %8, %struct.hinic_rxq_stats** %5, align 8
  %9 = load %struct.hinic_rxq_stats*, %struct.hinic_rxq_stats** %4, align 8
  %10 = getelementptr inbounds %struct.hinic_rxq_stats, %struct.hinic_rxq_stats* %9, i32 0, i32 0
  %11 = call i32 @u64_stats_update_begin(i32* %10)
  br label %12

12:                                               ; preds = %45, %2
  %13 = load %struct.hinic_rxq_stats*, %struct.hinic_rxq_stats** %5, align 8
  %14 = getelementptr inbounds %struct.hinic_rxq_stats, %struct.hinic_rxq_stats* %13, i32 0, i32 0
  %15 = call i32 @u64_stats_fetch_begin(i32* %14)
  store i32 %15, i32* %6, align 4
  %16 = load %struct.hinic_rxq_stats*, %struct.hinic_rxq_stats** %5, align 8
  %17 = getelementptr inbounds %struct.hinic_rxq_stats, %struct.hinic_rxq_stats* %16, i32 0, i32 5
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.hinic_rxq_stats*, %struct.hinic_rxq_stats** %4, align 8
  %20 = getelementptr inbounds %struct.hinic_rxq_stats, %struct.hinic_rxq_stats* %19, i32 0, i32 5
  store i32 %18, i32* %20, align 4
  %21 = load %struct.hinic_rxq_stats*, %struct.hinic_rxq_stats** %5, align 8
  %22 = getelementptr inbounds %struct.hinic_rxq_stats, %struct.hinic_rxq_stats* %21, i32 0, i32 4
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.hinic_rxq_stats*, %struct.hinic_rxq_stats** %4, align 8
  %25 = getelementptr inbounds %struct.hinic_rxq_stats, %struct.hinic_rxq_stats* %24, i32 0, i32 4
  store i32 %23, i32* %25, align 8
  %26 = load %struct.hinic_rxq_stats*, %struct.hinic_rxq_stats** %5, align 8
  %27 = getelementptr inbounds %struct.hinic_rxq_stats, %struct.hinic_rxq_stats* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.hinic_rxq_stats*, %struct.hinic_rxq_stats** %5, align 8
  %30 = getelementptr inbounds %struct.hinic_rxq_stats, %struct.hinic_rxq_stats* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = add nsw i64 %28, %31
  %33 = load %struct.hinic_rxq_stats*, %struct.hinic_rxq_stats** %4, align 8
  %34 = getelementptr inbounds %struct.hinic_rxq_stats, %struct.hinic_rxq_stats* %33, i32 0, i32 3
  store i64 %32, i64* %34, align 8
  %35 = load %struct.hinic_rxq_stats*, %struct.hinic_rxq_stats** %5, align 8
  %36 = getelementptr inbounds %struct.hinic_rxq_stats, %struct.hinic_rxq_stats* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.hinic_rxq_stats*, %struct.hinic_rxq_stats** %4, align 8
  %39 = getelementptr inbounds %struct.hinic_rxq_stats, %struct.hinic_rxq_stats* %38, i32 0, i32 2
  store i64 %37, i64* %39, align 8
  %40 = load %struct.hinic_rxq_stats*, %struct.hinic_rxq_stats** %5, align 8
  %41 = getelementptr inbounds %struct.hinic_rxq_stats, %struct.hinic_rxq_stats* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.hinic_rxq_stats*, %struct.hinic_rxq_stats** %4, align 8
  %44 = getelementptr inbounds %struct.hinic_rxq_stats, %struct.hinic_rxq_stats* %43, i32 0, i32 1
  store i64 %42, i64* %44, align 8
  br label %45

45:                                               ; preds = %12
  %46 = load %struct.hinic_rxq_stats*, %struct.hinic_rxq_stats** %5, align 8
  %47 = getelementptr inbounds %struct.hinic_rxq_stats, %struct.hinic_rxq_stats* %46, i32 0, i32 0
  %48 = load i32, i32* %6, align 4
  %49 = call i64 @u64_stats_fetch_retry(i32* %47, i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %12, label %51

51:                                               ; preds = %45
  %52 = load %struct.hinic_rxq_stats*, %struct.hinic_rxq_stats** %4, align 8
  %53 = getelementptr inbounds %struct.hinic_rxq_stats, %struct.hinic_rxq_stats* %52, i32 0, i32 0
  %54 = call i32 @u64_stats_update_end(i32* %53)
  ret void
}

declare dso_local i32 @u64_stats_update_begin(i32*) #1

declare dso_local i32 @u64_stats_fetch_begin(i32*) #1

declare dso_local i64 @u64_stats_fetch_retry(i32*, i32) #1

declare dso_local i32 @u64_stats_update_end(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
