; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_ll2.c__qed_ll2_get_port_stats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_ll2.c__qed_ll2_get_port_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { i32 }
%struct.qed_ptt = type { i32 }
%struct.qed_ll2_stats = type { i32, i32, i32, i32 }
%struct.core_ll2_port_stats = type { i32, i32, i32, i32 }

@BAR0_MAP_REG_TSDM_RAM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qed_hwfn*, %struct.qed_ptt*, %struct.qed_ll2_stats*)* @_qed_ll2_get_port_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_qed_ll2_get_port_stats(%struct.qed_hwfn* %0, %struct.qed_ptt* %1, %struct.qed_ll2_stats* %2) #0 {
  %4 = alloca %struct.qed_hwfn*, align 8
  %5 = alloca %struct.qed_ptt*, align 8
  %6 = alloca %struct.qed_ll2_stats*, align 8
  %7 = alloca %struct.core_ll2_port_stats, align 4
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %4, align 8
  store %struct.qed_ptt* %1, %struct.qed_ptt** %5, align 8
  store %struct.qed_ll2_stats* %2, %struct.qed_ll2_stats** %6, align 8
  %8 = call i32 @memset(%struct.core_ll2_port_stats* %7, i32 0, i32 16)
  %9 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %10 = load %struct.qed_ptt*, %struct.qed_ptt** %5, align 8
  %11 = load i64, i64* @BAR0_MAP_REG_TSDM_RAM, align 8
  %12 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %13 = call i32 @MFW_PORT(%struct.qed_hwfn* %12)
  %14 = call i64 @TSTORM_LL2_PORT_STAT_OFFSET(i32 %13)
  %15 = add nsw i64 %11, %14
  %16 = call i32 @qed_memcpy_from(%struct.qed_hwfn* %9, %struct.qed_ptt* %10, %struct.core_ll2_port_stats* %7, i64 %15, i32 16)
  %17 = getelementptr inbounds %struct.core_ll2_port_stats, %struct.core_ll2_port_stats* %7, i32 0, i32 3
  %18 = load i32, i32* %17, align 4
  %19 = call i64 @HILO_64_REGPAIR(i32 %18)
  %20 = load %struct.qed_ll2_stats*, %struct.qed_ll2_stats** %6, align 8
  %21 = getelementptr inbounds %struct.qed_ll2_stats, %struct.qed_ll2_stats* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 4
  %23 = sext i32 %22 to i64
  %24 = add nsw i64 %23, %19
  %25 = trunc i64 %24 to i32
  store i32 %25, i32* %21, align 4
  %26 = getelementptr inbounds %struct.core_ll2_port_stats, %struct.core_ll2_port_stats* %7, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = call i64 @HILO_64_REGPAIR(i32 %27)
  %29 = load %struct.qed_ll2_stats*, %struct.qed_ll2_stats** %6, align 8
  %30 = getelementptr inbounds %struct.qed_ll2_stats, %struct.qed_ll2_stats* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = sext i32 %31 to i64
  %33 = add nsw i64 %32, %28
  %34 = trunc i64 %33 to i32
  store i32 %34, i32* %30, align 4
  %35 = getelementptr inbounds %struct.core_ll2_port_stats, %struct.core_ll2_port_stats* %7, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i64 @HILO_64_REGPAIR(i32 %36)
  %38 = load %struct.qed_ll2_stats*, %struct.qed_ll2_stats** %6, align 8
  %39 = getelementptr inbounds %struct.qed_ll2_stats, %struct.qed_ll2_stats* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = sext i32 %40 to i64
  %42 = add nsw i64 %41, %37
  %43 = trunc i64 %42 to i32
  store i32 %43, i32* %39, align 4
  %44 = getelementptr inbounds %struct.core_ll2_port_stats, %struct.core_ll2_port_stats* %7, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i64 @HILO_64_REGPAIR(i32 %45)
  %47 = load %struct.qed_ll2_stats*, %struct.qed_ll2_stats** %6, align 8
  %48 = getelementptr inbounds %struct.qed_ll2_stats, %struct.qed_ll2_stats* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = sext i32 %49 to i64
  %51 = add nsw i64 %50, %46
  %52 = trunc i64 %51 to i32
  store i32 %52, i32* %48, align 4
  ret void
}

declare dso_local i32 @memset(%struct.core_ll2_port_stats*, i32, i32) #1

declare dso_local i32 @qed_memcpy_from(%struct.qed_hwfn*, %struct.qed_ptt*, %struct.core_ll2_port_stats*, i64, i32) #1

declare dso_local i64 @TSTORM_LL2_PORT_STAT_OFFSET(i32) #1

declare dso_local i32 @MFW_PORT(%struct.qed_hwfn*) #1

declare dso_local i64 @HILO_64_REGPAIR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
