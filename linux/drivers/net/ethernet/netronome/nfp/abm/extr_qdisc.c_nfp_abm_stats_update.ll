; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/abm/extr_qdisc.c_nfp_abm_stats_update.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/abm/extr_qdisc.c_nfp_abm_stats_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_abm_link = type { i64 }

@NFP_ABM_STATS_REFRESH_IVAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfp_abm_link*)* @nfp_abm_stats_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfp_abm_stats_update(%struct.nfp_abm_link* %0) #0 {
  %2 = alloca %struct.nfp_abm_link*, align 8
  %3 = alloca i64, align 8
  store %struct.nfp_abm_link* %0, %struct.nfp_abm_link** %2, align 8
  %4 = call i64 (...) @ktime_get()
  store i64 %4, i64* %3, align 8
  %5 = load i64, i64* %3, align 8
  %6 = load %struct.nfp_abm_link*, %struct.nfp_abm_link** %2, align 8
  %7 = getelementptr inbounds %struct.nfp_abm_link, %struct.nfp_abm_link* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = sub nsw i64 %5, %8
  %10 = load i64, i64* @NFP_ABM_STATS_REFRESH_IVAL, align 8
  %11 = icmp slt i64 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  br label %17

13:                                               ; preds = %1
  %14 = load %struct.nfp_abm_link*, %struct.nfp_abm_link** %2, align 8
  %15 = load i64, i64* %3, align 8
  %16 = call i32 @__nfp_abm_stats_update(%struct.nfp_abm_link* %14, i64 %15)
  br label %17

17:                                               ; preds = %13, %12
  ret void
}

declare dso_local i64 @ktime_get(...) #1

declare dso_local i32 @__nfp_abm_stats_update(%struct.nfp_abm_link*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
