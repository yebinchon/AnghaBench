; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/huawei/hinic/extr_hinic_main.c_update_tx_stats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/huawei/hinic/extr_hinic_main.c_update_tx_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hinic_dev = type { %struct.hinic_txq_stats }
%struct.hinic_txq_stats = type { i32, i64, i64, i64, i64, i64, i64 }
%struct.hinic_txq = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hinic_dev*, %struct.hinic_txq*)* @update_tx_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_tx_stats(%struct.hinic_dev* %0, %struct.hinic_txq* %1) #0 {
  %3 = alloca %struct.hinic_dev*, align 8
  %4 = alloca %struct.hinic_txq*, align 8
  %5 = alloca %struct.hinic_txq_stats*, align 8
  %6 = alloca %struct.hinic_txq_stats, align 8
  store %struct.hinic_dev* %0, %struct.hinic_dev** %3, align 8
  store %struct.hinic_txq* %1, %struct.hinic_txq** %4, align 8
  %7 = load %struct.hinic_dev*, %struct.hinic_dev** %3, align 8
  %8 = getelementptr inbounds %struct.hinic_dev, %struct.hinic_dev* %7, i32 0, i32 0
  store %struct.hinic_txq_stats* %8, %struct.hinic_txq_stats** %5, align 8
  %9 = getelementptr inbounds %struct.hinic_txq_stats, %struct.hinic_txq_stats* %6, i32 0, i32 0
  %10 = call i32 @u64_stats_init(i32* %9)
  %11 = load %struct.hinic_txq*, %struct.hinic_txq** %4, align 8
  %12 = call i32 @hinic_txq_get_stats(%struct.hinic_txq* %11, %struct.hinic_txq_stats* %6)
  %13 = load %struct.hinic_txq_stats*, %struct.hinic_txq_stats** %5, align 8
  %14 = getelementptr inbounds %struct.hinic_txq_stats, %struct.hinic_txq_stats* %13, i32 0, i32 0
  %15 = call i32 @u64_stats_update_begin(i32* %14)
  %16 = getelementptr inbounds %struct.hinic_txq_stats, %struct.hinic_txq_stats* %6, i32 0, i32 6
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.hinic_txq_stats*, %struct.hinic_txq_stats** %5, align 8
  %19 = getelementptr inbounds %struct.hinic_txq_stats, %struct.hinic_txq_stats* %18, i32 0, i32 6
  %20 = load i64, i64* %19, align 8
  %21 = add nsw i64 %20, %17
  store i64 %21, i64* %19, align 8
  %22 = getelementptr inbounds %struct.hinic_txq_stats, %struct.hinic_txq_stats* %6, i32 0, i32 5
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.hinic_txq_stats*, %struct.hinic_txq_stats** %5, align 8
  %25 = getelementptr inbounds %struct.hinic_txq_stats, %struct.hinic_txq_stats* %24, i32 0, i32 5
  %26 = load i64, i64* %25, align 8
  %27 = add nsw i64 %26, %23
  store i64 %27, i64* %25, align 8
  %28 = getelementptr inbounds %struct.hinic_txq_stats, %struct.hinic_txq_stats* %6, i32 0, i32 4
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.hinic_txq_stats*, %struct.hinic_txq_stats** %5, align 8
  %31 = getelementptr inbounds %struct.hinic_txq_stats, %struct.hinic_txq_stats* %30, i32 0, i32 4
  %32 = load i64, i64* %31, align 8
  %33 = add nsw i64 %32, %29
  store i64 %33, i64* %31, align 8
  %34 = getelementptr inbounds %struct.hinic_txq_stats, %struct.hinic_txq_stats* %6, i32 0, i32 3
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.hinic_txq_stats*, %struct.hinic_txq_stats** %5, align 8
  %37 = getelementptr inbounds %struct.hinic_txq_stats, %struct.hinic_txq_stats* %36, i32 0, i32 3
  %38 = load i64, i64* %37, align 8
  %39 = add nsw i64 %38, %35
  store i64 %39, i64* %37, align 8
  %40 = getelementptr inbounds %struct.hinic_txq_stats, %struct.hinic_txq_stats* %6, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.hinic_txq_stats*, %struct.hinic_txq_stats** %5, align 8
  %43 = getelementptr inbounds %struct.hinic_txq_stats, %struct.hinic_txq_stats* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = add nsw i64 %44, %41
  store i64 %45, i64* %43, align 8
  %46 = getelementptr inbounds %struct.hinic_txq_stats, %struct.hinic_txq_stats* %6, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.hinic_txq_stats*, %struct.hinic_txq_stats** %5, align 8
  %49 = getelementptr inbounds %struct.hinic_txq_stats, %struct.hinic_txq_stats* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = add nsw i64 %50, %47
  store i64 %51, i64* %49, align 8
  %52 = load %struct.hinic_txq_stats*, %struct.hinic_txq_stats** %5, align 8
  %53 = getelementptr inbounds %struct.hinic_txq_stats, %struct.hinic_txq_stats* %52, i32 0, i32 0
  %54 = call i32 @u64_stats_update_end(i32* %53)
  %55 = load %struct.hinic_txq*, %struct.hinic_txq** %4, align 8
  %56 = call i32 @hinic_txq_clean_stats(%struct.hinic_txq* %55)
  ret void
}

declare dso_local i32 @u64_stats_init(i32*) #1

declare dso_local i32 @hinic_txq_get_stats(%struct.hinic_txq*, %struct.hinic_txq_stats*) #1

declare dso_local i32 @u64_stats_update_begin(i32*) #1

declare dso_local i32 @u64_stats_update_end(i32*) #1

declare dso_local i32 @hinic_txq_clean_stats(%struct.hinic_txq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
