; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt_ethtool.c_bnxt_run_fw_tests.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt_ethtool.c_bnxt_run_fw_tests.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnxt = type { i32, %struct.TYPE_2__*, %struct.hwrm_selftest_exec_output* }
%struct.TYPE_2__ = type { i32 }
%struct.hwrm_selftest_exec_output = type { i64 }
%struct.hwrm_selftest_exec_input = type { i64, i32 }

@HWRM_SELFTEST_EXEC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnxt*, i64, i64*)* @bnxt_run_fw_tests to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnxt_run_fw_tests(%struct.bnxt* %0, i64 %1, i64* %2) #0 {
  %4 = alloca %struct.bnxt*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64*, align 8
  %7 = alloca %struct.hwrm_selftest_exec_output*, align 8
  %8 = alloca %struct.hwrm_selftest_exec_input, align 8
  %9 = alloca i32, align 4
  store %struct.bnxt* %0, %struct.bnxt** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64* %2, i64** %6, align 8
  %10 = load %struct.bnxt*, %struct.bnxt** %4, align 8
  %11 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %10, i32 0, i32 2
  %12 = load %struct.hwrm_selftest_exec_output*, %struct.hwrm_selftest_exec_output** %11, align 8
  store %struct.hwrm_selftest_exec_output* %12, %struct.hwrm_selftest_exec_output** %7, align 8
  %13 = bitcast %struct.hwrm_selftest_exec_input* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %13, i8 0, i64 16, i1 false)
  %14 = load %struct.bnxt*, %struct.bnxt** %4, align 8
  %15 = load i32, i32* @HWRM_SELFTEST_EXEC, align 4
  %16 = call i32 @bnxt_hwrm_cmd_hdr_init(%struct.bnxt* %14, %struct.hwrm_selftest_exec_input* %8, i32 %15, i32 -1, i32 -1)
  %17 = load %struct.bnxt*, %struct.bnxt** %4, align 8
  %18 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %17, i32 0, i32 0
  %19 = call i32 @mutex_lock(i32* %18)
  %20 = load %struct.hwrm_selftest_exec_output*, %struct.hwrm_selftest_exec_output** %7, align 8
  %21 = getelementptr inbounds %struct.hwrm_selftest_exec_output, %struct.hwrm_selftest_exec_output* %20, i32 0, i32 0
  store i64 0, i64* %21, align 8
  %22 = load i64, i64* %5, align 8
  %23 = getelementptr inbounds %struct.hwrm_selftest_exec_input, %struct.hwrm_selftest_exec_input* %8, i32 0, i32 0
  store i64 %22, i64* %23, align 8
  %24 = load %struct.bnxt*, %struct.bnxt** %4, align 8
  %25 = load %struct.bnxt*, %struct.bnxt** %4, align 8
  %26 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %25, i32 0, i32 1
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @_hwrm_send_message(%struct.bnxt* %24, %struct.hwrm_selftest_exec_input* %8, i32 16, i32 %29)
  store i32 %30, i32* %9, align 4
  %31 = load %struct.hwrm_selftest_exec_output*, %struct.hwrm_selftest_exec_output** %7, align 8
  %32 = getelementptr inbounds %struct.hwrm_selftest_exec_output, %struct.hwrm_selftest_exec_output* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64*, i64** %6, align 8
  store i64 %33, i64* %34, align 8
  %35 = load %struct.bnxt*, %struct.bnxt** %4, align 8
  %36 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %35, i32 0, i32 0
  %37 = call i32 @mutex_unlock(i32* %36)
  %38 = load i32, i32* %9, align 4
  ret i32 %38
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @bnxt_hwrm_cmd_hdr_init(%struct.bnxt*, %struct.hwrm_selftest_exec_input*, i32, i32, i32) #2

declare dso_local i32 @mutex_lock(i32*) #2

declare dso_local i32 @_hwrm_send_message(%struct.bnxt*, %struct.hwrm_selftest_exec_input*, i32, i32) #2

declare dso_local i32 @mutex_unlock(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
