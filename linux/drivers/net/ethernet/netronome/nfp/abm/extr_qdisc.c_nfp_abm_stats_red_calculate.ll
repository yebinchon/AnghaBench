; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/abm/extr_qdisc.c_nfp_abm_stats_red_calculate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/abm/extr_qdisc.c_nfp_abm_stats_red_calculate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_alink_xstats = type { i64, i64 }
%struct.red_stats = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfp_alink_xstats*, %struct.nfp_alink_xstats*, %struct.red_stats*)* @nfp_abm_stats_red_calculate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfp_abm_stats_red_calculate(%struct.nfp_alink_xstats* %0, %struct.nfp_alink_xstats* %1, %struct.red_stats* %2) #0 {
  %4 = alloca %struct.nfp_alink_xstats*, align 8
  %5 = alloca %struct.nfp_alink_xstats*, align 8
  %6 = alloca %struct.red_stats*, align 8
  store %struct.nfp_alink_xstats* %0, %struct.nfp_alink_xstats** %4, align 8
  store %struct.nfp_alink_xstats* %1, %struct.nfp_alink_xstats** %5, align 8
  store %struct.red_stats* %2, %struct.red_stats** %6, align 8
  %7 = load %struct.nfp_alink_xstats*, %struct.nfp_alink_xstats** %4, align 8
  %8 = getelementptr inbounds %struct.nfp_alink_xstats, %struct.nfp_alink_xstats* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = load %struct.nfp_alink_xstats*, %struct.nfp_alink_xstats** %5, align 8
  %11 = getelementptr inbounds %struct.nfp_alink_xstats, %struct.nfp_alink_xstats* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = sub nsw i64 %9, %12
  %14 = load %struct.red_stats*, %struct.red_stats** %6, align 8
  %15 = getelementptr inbounds %struct.red_stats, %struct.red_stats* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = sext i32 %16 to i64
  %18 = add nsw i64 %17, %13
  %19 = trunc i64 %18 to i32
  store i32 %19, i32* %15, align 4
  %20 = load %struct.nfp_alink_xstats*, %struct.nfp_alink_xstats** %4, align 8
  %21 = getelementptr inbounds %struct.nfp_alink_xstats, %struct.nfp_alink_xstats* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.nfp_alink_xstats*, %struct.nfp_alink_xstats** %5, align 8
  %24 = getelementptr inbounds %struct.nfp_alink_xstats, %struct.nfp_alink_xstats* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = sub nsw i64 %22, %25
  %27 = load %struct.red_stats*, %struct.red_stats** %6, align 8
  %28 = getelementptr inbounds %struct.red_stats, %struct.red_stats* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = sext i32 %29 to i64
  %31 = add nsw i64 %30, %26
  %32 = trunc i64 %31 to i32
  store i32 %32, i32* %28, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
