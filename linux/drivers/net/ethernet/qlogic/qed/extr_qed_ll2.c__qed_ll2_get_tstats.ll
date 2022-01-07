; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_ll2.c__qed_ll2_get_tstats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_ll2.c__qed_ll2_get_tstats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { i32 }
%struct.qed_ptt = type { i32 }
%struct.qed_ll2_info = type { i32 }
%struct.qed_ll2_stats = type { i32, i32 }
%struct.core_ll2_tstorm_per_queue_stat = type { i32, i32 }

@BAR0_MAP_REG_TSDM_RAM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qed_hwfn*, %struct.qed_ptt*, %struct.qed_ll2_info*, %struct.qed_ll2_stats*)* @_qed_ll2_get_tstats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_qed_ll2_get_tstats(%struct.qed_hwfn* %0, %struct.qed_ptt* %1, %struct.qed_ll2_info* %2, %struct.qed_ll2_stats* %3) #0 {
  %5 = alloca %struct.qed_hwfn*, align 8
  %6 = alloca %struct.qed_ptt*, align 8
  %7 = alloca %struct.qed_ll2_info*, align 8
  %8 = alloca %struct.qed_ll2_stats*, align 8
  %9 = alloca %struct.core_ll2_tstorm_per_queue_stat, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %5, align 8
  store %struct.qed_ptt* %1, %struct.qed_ptt** %6, align 8
  store %struct.qed_ll2_info* %2, %struct.qed_ll2_info** %7, align 8
  store %struct.qed_ll2_stats* %3, %struct.qed_ll2_stats** %8, align 8
  %12 = load %struct.qed_ll2_info*, %struct.qed_ll2_info** %7, align 8
  %13 = getelementptr inbounds %struct.qed_ll2_info, %struct.qed_ll2_info* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %10, align 4
  %15 = call i32 @memset(%struct.core_ll2_tstorm_per_queue_stat* %9, i32 0, i32 8)
  %16 = load i64, i64* @BAR0_MAP_REG_TSDM_RAM, align 8
  %17 = load i32, i32* %10, align 4
  %18 = call i64 @CORE_LL2_TSTORM_PER_QUEUE_STAT_OFFSET(i32 %17)
  %19 = add nsw i64 %16, %18
  store i64 %19, i64* %11, align 8
  %20 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %21 = load %struct.qed_ptt*, %struct.qed_ptt** %6, align 8
  %22 = load i64, i64* %11, align 8
  %23 = call i32 @qed_memcpy_from(%struct.qed_hwfn* %20, %struct.qed_ptt* %21, %struct.core_ll2_tstorm_per_queue_stat* %9, i64 %22, i32 8)
  %24 = getelementptr inbounds %struct.core_ll2_tstorm_per_queue_stat, %struct.core_ll2_tstorm_per_queue_stat* %9, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i64 @HILO_64_REGPAIR(i32 %25)
  %27 = load %struct.qed_ll2_stats*, %struct.qed_ll2_stats** %8, align 8
  %28 = getelementptr inbounds %struct.qed_ll2_stats, %struct.qed_ll2_stats* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = sext i32 %29 to i64
  %31 = add nsw i64 %30, %26
  %32 = trunc i64 %31 to i32
  store i32 %32, i32* %28, align 4
  %33 = getelementptr inbounds %struct.core_ll2_tstorm_per_queue_stat, %struct.core_ll2_tstorm_per_queue_stat* %9, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i64 @HILO_64_REGPAIR(i32 %34)
  %36 = load %struct.qed_ll2_stats*, %struct.qed_ll2_stats** %8, align 8
  %37 = getelementptr inbounds %struct.qed_ll2_stats, %struct.qed_ll2_stats* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = sext i32 %38 to i64
  %40 = add nsw i64 %39, %35
  %41 = trunc i64 %40 to i32
  store i32 %41, i32* %37, align 4
  ret void
}

declare dso_local i32 @memset(%struct.core_ll2_tstorm_per_queue_stat*, i32, i32) #1

declare dso_local i64 @CORE_LL2_TSTORM_PER_QUEUE_STAT_OFFSET(i32) #1

declare dso_local i32 @qed_memcpy_from(%struct.qed_hwfn*, %struct.qed_ptt*, %struct.core_ll2_tstorm_per_queue_stat*, i64, i32) #1

declare dso_local i64 @HILO_64_REGPAIR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
