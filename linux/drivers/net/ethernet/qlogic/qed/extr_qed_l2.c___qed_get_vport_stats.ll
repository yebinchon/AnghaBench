; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_l2.c___qed_get_vport_stats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_l2.c___qed_get_vport_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { i64 }
%struct.qed_ptt = type { i32 }
%struct.qed_eth_stats = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qed_hwfn*, %struct.qed_ptt*, %struct.qed_eth_stats*, i32, i32)* @__qed_get_vport_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__qed_get_vport_stats(%struct.qed_hwfn* %0, %struct.qed_ptt* %1, %struct.qed_eth_stats* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.qed_hwfn*, align 8
  %7 = alloca %struct.qed_ptt*, align 8
  %8 = alloca %struct.qed_eth_stats*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %6, align 8
  store %struct.qed_ptt* %1, %struct.qed_ptt** %7, align 8
  store %struct.qed_eth_stats* %2, %struct.qed_eth_stats** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %11 = load %struct.qed_hwfn*, %struct.qed_hwfn** %6, align 8
  %12 = load %struct.qed_ptt*, %struct.qed_ptt** %7, align 8
  %13 = load %struct.qed_eth_stats*, %struct.qed_eth_stats** %8, align 8
  %14 = load i32, i32* %9, align 4
  %15 = call i32 @__qed_get_vport_mstats(%struct.qed_hwfn* %11, %struct.qed_ptt* %12, %struct.qed_eth_stats* %13, i32 %14)
  %16 = load %struct.qed_hwfn*, %struct.qed_hwfn** %6, align 8
  %17 = load %struct.qed_ptt*, %struct.qed_ptt** %7, align 8
  %18 = load %struct.qed_eth_stats*, %struct.qed_eth_stats** %8, align 8
  %19 = load i32, i32* %9, align 4
  %20 = call i32 @__qed_get_vport_ustats(%struct.qed_hwfn* %16, %struct.qed_ptt* %17, %struct.qed_eth_stats* %18, i32 %19)
  %21 = load %struct.qed_hwfn*, %struct.qed_hwfn** %6, align 8
  %22 = load %struct.qed_ptt*, %struct.qed_ptt** %7, align 8
  %23 = load %struct.qed_eth_stats*, %struct.qed_eth_stats** %8, align 8
  %24 = load i32, i32* %9, align 4
  %25 = call i32 @__qed_get_vport_tstats(%struct.qed_hwfn* %21, %struct.qed_ptt* %22, %struct.qed_eth_stats* %23, i32 %24)
  %26 = load %struct.qed_hwfn*, %struct.qed_hwfn** %6, align 8
  %27 = load %struct.qed_ptt*, %struct.qed_ptt** %7, align 8
  %28 = load %struct.qed_eth_stats*, %struct.qed_eth_stats** %8, align 8
  %29 = load i32, i32* %9, align 4
  %30 = call i32 @__qed_get_vport_pstats(%struct.qed_hwfn* %26, %struct.qed_ptt* %27, %struct.qed_eth_stats* %28, i32 %29)
  %31 = load i32, i32* %10, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %43

33:                                               ; preds = %5
  %34 = load %struct.qed_hwfn*, %struct.qed_hwfn** %6, align 8
  %35 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %33
  %39 = load %struct.qed_hwfn*, %struct.qed_hwfn** %6, align 8
  %40 = load %struct.qed_ptt*, %struct.qed_ptt** %7, align 8
  %41 = load %struct.qed_eth_stats*, %struct.qed_eth_stats** %8, align 8
  %42 = call i32 @__qed_get_vport_port_stats(%struct.qed_hwfn* %39, %struct.qed_ptt* %40, %struct.qed_eth_stats* %41)
  br label %43

43:                                               ; preds = %38, %33, %5
  ret void
}

declare dso_local i32 @__qed_get_vport_mstats(%struct.qed_hwfn*, %struct.qed_ptt*, %struct.qed_eth_stats*, i32) #1

declare dso_local i32 @__qed_get_vport_ustats(%struct.qed_hwfn*, %struct.qed_ptt*, %struct.qed_eth_stats*, i32) #1

declare dso_local i32 @__qed_get_vport_tstats(%struct.qed_hwfn*, %struct.qed_ptt*, %struct.qed_eth_stats*, i32) #1

declare dso_local i32 @__qed_get_vport_pstats(%struct.qed_hwfn*, %struct.qed_ptt*, %struct.qed_eth_stats*, i32) #1

declare dso_local i32 @__qed_get_vport_port_stats(%struct.qed_hwfn*, %struct.qed_ptt*, %struct.qed_eth_stats*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
