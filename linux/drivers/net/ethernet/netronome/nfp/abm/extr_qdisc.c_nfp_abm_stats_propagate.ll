; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/abm/extr_qdisc.c_nfp_abm_stats_propagate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/abm/extr_qdisc.c_nfp_abm_stats_propagate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_alink_stats = type { i64, i64, i64, i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfp_alink_stats*, %struct.nfp_alink_stats*)* @nfp_abm_stats_propagate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfp_abm_stats_propagate(%struct.nfp_alink_stats* %0, %struct.nfp_alink_stats* %1) #0 {
  %3 = alloca %struct.nfp_alink_stats*, align 8
  %4 = alloca %struct.nfp_alink_stats*, align 8
  store %struct.nfp_alink_stats* %0, %struct.nfp_alink_stats** %3, align 8
  store %struct.nfp_alink_stats* %1, %struct.nfp_alink_stats** %4, align 8
  %5 = load %struct.nfp_alink_stats*, %struct.nfp_alink_stats** %4, align 8
  %6 = getelementptr inbounds %struct.nfp_alink_stats, %struct.nfp_alink_stats* %5, i32 0, i32 5
  %7 = load i64, i64* %6, align 8
  %8 = load %struct.nfp_alink_stats*, %struct.nfp_alink_stats** %3, align 8
  %9 = getelementptr inbounds %struct.nfp_alink_stats, %struct.nfp_alink_stats* %8, i32 0, i32 5
  %10 = load i64, i64* %9, align 8
  %11 = add nsw i64 %10, %7
  store i64 %11, i64* %9, align 8
  %12 = load %struct.nfp_alink_stats*, %struct.nfp_alink_stats** %4, align 8
  %13 = getelementptr inbounds %struct.nfp_alink_stats, %struct.nfp_alink_stats* %12, i32 0, i32 4
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.nfp_alink_stats*, %struct.nfp_alink_stats** %3, align 8
  %16 = getelementptr inbounds %struct.nfp_alink_stats, %struct.nfp_alink_stats* %15, i32 0, i32 4
  %17 = load i64, i64* %16, align 8
  %18 = add nsw i64 %17, %14
  store i64 %18, i64* %16, align 8
  %19 = load %struct.nfp_alink_stats*, %struct.nfp_alink_stats** %4, align 8
  %20 = getelementptr inbounds %struct.nfp_alink_stats, %struct.nfp_alink_stats* %19, i32 0, i32 3
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.nfp_alink_stats*, %struct.nfp_alink_stats** %3, align 8
  %23 = getelementptr inbounds %struct.nfp_alink_stats, %struct.nfp_alink_stats* %22, i32 0, i32 3
  %24 = load i64, i64* %23, align 8
  %25 = add nsw i64 %24, %21
  store i64 %25, i64* %23, align 8
  %26 = load %struct.nfp_alink_stats*, %struct.nfp_alink_stats** %4, align 8
  %27 = getelementptr inbounds %struct.nfp_alink_stats, %struct.nfp_alink_stats* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.nfp_alink_stats*, %struct.nfp_alink_stats** %3, align 8
  %30 = getelementptr inbounds %struct.nfp_alink_stats, %struct.nfp_alink_stats* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = add nsw i64 %31, %28
  store i64 %32, i64* %30, align 8
  %33 = load %struct.nfp_alink_stats*, %struct.nfp_alink_stats** %4, align 8
  %34 = getelementptr inbounds %struct.nfp_alink_stats, %struct.nfp_alink_stats* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.nfp_alink_stats*, %struct.nfp_alink_stats** %3, align 8
  %37 = getelementptr inbounds %struct.nfp_alink_stats, %struct.nfp_alink_stats* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = add nsw i64 %38, %35
  store i64 %39, i64* %37, align 8
  %40 = load %struct.nfp_alink_stats*, %struct.nfp_alink_stats** %4, align 8
  %41 = getelementptr inbounds %struct.nfp_alink_stats, %struct.nfp_alink_stats* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.nfp_alink_stats*, %struct.nfp_alink_stats** %3, align 8
  %44 = getelementptr inbounds %struct.nfp_alink_stats, %struct.nfp_alink_stats* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = add nsw i64 %45, %42
  store i64 %46, i64* %44, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
