; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt_tc.c_bnxt_flow_stats_accum.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt_tc.c_bnxt_flow_stats_accum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnxt_tc_info = type { i32, i32 }
%struct.bnxt_tc_flow_stats = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnxt_tc_info*, %struct.bnxt_tc_flow_stats*, %struct.bnxt_tc_flow_stats*)* @bnxt_flow_stats_accum to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnxt_flow_stats_accum(%struct.bnxt_tc_info* %0, %struct.bnxt_tc_flow_stats* %1, %struct.bnxt_tc_flow_stats* %2) #0 {
  %4 = alloca %struct.bnxt_tc_info*, align 8
  %5 = alloca %struct.bnxt_tc_flow_stats*, align 8
  %6 = alloca %struct.bnxt_tc_flow_stats*, align 8
  store %struct.bnxt_tc_info* %0, %struct.bnxt_tc_info** %4, align 8
  store %struct.bnxt_tc_flow_stats* %1, %struct.bnxt_tc_flow_stats** %5, align 8
  store %struct.bnxt_tc_flow_stats* %2, %struct.bnxt_tc_flow_stats** %6, align 8
  %7 = load %struct.bnxt_tc_flow_stats*, %struct.bnxt_tc_flow_stats** %5, align 8
  %8 = getelementptr inbounds %struct.bnxt_tc_flow_stats, %struct.bnxt_tc_flow_stats* %7, i32 0, i32 1
  %9 = load %struct.bnxt_tc_flow_stats*, %struct.bnxt_tc_flow_stats** %6, align 8
  %10 = getelementptr inbounds %struct.bnxt_tc_flow_stats, %struct.bnxt_tc_flow_stats* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.bnxt_tc_info*, %struct.bnxt_tc_info** %4, align 8
  %13 = getelementptr inbounds %struct.bnxt_tc_info, %struct.bnxt_tc_info* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @accumulate_val(i32* %8, i32 %11, i32 %14)
  %16 = load %struct.bnxt_tc_flow_stats*, %struct.bnxt_tc_flow_stats** %5, align 8
  %17 = getelementptr inbounds %struct.bnxt_tc_flow_stats, %struct.bnxt_tc_flow_stats* %16, i32 0, i32 0
  %18 = load %struct.bnxt_tc_flow_stats*, %struct.bnxt_tc_flow_stats** %6, align 8
  %19 = getelementptr inbounds %struct.bnxt_tc_flow_stats, %struct.bnxt_tc_flow_stats* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.bnxt_tc_info*, %struct.bnxt_tc_info** %4, align 8
  %22 = getelementptr inbounds %struct.bnxt_tc_info, %struct.bnxt_tc_info* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @accumulate_val(i32* %17, i32 %20, i32 %23)
  ret void
}

declare dso_local i32 @accumulate_val(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
