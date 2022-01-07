; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_debug.c_qed_dbg_grc_dump.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_debug.c_qed_dbg_grc_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { i32 }
%struct.qed_ptt = type { i32 }

@DBG_STATUS_OK = common dso_local global i32 0, align 4
@DBG_STATUS_DUMP_BUF_TOO_SMALL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qed_dbg_grc_dump(%struct.qed_hwfn* %0, %struct.qed_ptt* %1, i64* %2, i64 %3, i64* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.qed_hwfn*, align 8
  %8 = alloca %struct.qed_ptt*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %7, align 8
  store %struct.qed_ptt* %1, %struct.qed_ptt** %8, align 8
  store i64* %2, i64** %9, align 8
  store i64 %3, i64* %10, align 8
  store i64* %4, i64** %11, align 8
  %14 = load i64*, i64** %11, align 8
  store i64 0, i64* %14, align 8
  %15 = load %struct.qed_hwfn*, %struct.qed_hwfn** %7, align 8
  %16 = load %struct.qed_ptt*, %struct.qed_ptt** %8, align 8
  %17 = call i32 @qed_dbg_grc_get_dump_buf_size(%struct.qed_hwfn* %15, %struct.qed_ptt* %16, i64* %12)
  store i32 %17, i32* %13, align 4
  %18 = load i32, i32* %13, align 4
  %19 = load i32, i32* @DBG_STATUS_OK, align 4
  %20 = icmp ne i32 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %5
  %22 = load i32, i32* %13, align 4
  store i32 %22, i32* %6, align 4
  br label %38

23:                                               ; preds = %5
  %24 = load i64, i64* %10, align 8
  %25 = load i64, i64* %12, align 8
  %26 = icmp slt i64 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %23
  %28 = load i32, i32* @DBG_STATUS_DUMP_BUF_TOO_SMALL, align 4
  store i32 %28, i32* %6, align 4
  br label %38

29:                                               ; preds = %23
  %30 = load %struct.qed_hwfn*, %struct.qed_hwfn** %7, align 8
  %31 = load %struct.qed_ptt*, %struct.qed_ptt** %8, align 8
  %32 = load i64*, i64** %9, align 8
  %33 = load i64*, i64** %11, align 8
  %34 = call i32 @qed_grc_dump(%struct.qed_hwfn* %30, %struct.qed_ptt* %31, i64* %32, i32 1, i64* %33)
  store i32 %34, i32* %13, align 4
  %35 = load %struct.qed_hwfn*, %struct.qed_hwfn** %7, align 8
  %36 = call i32 @qed_dbg_grc_set_params_default(%struct.qed_hwfn* %35)
  %37 = load i32, i32* %13, align 4
  store i32 %37, i32* %6, align 4
  br label %38

38:                                               ; preds = %29, %27, %21
  %39 = load i32, i32* %6, align 4
  ret i32 %39
}

declare dso_local i32 @qed_dbg_grc_get_dump_buf_size(%struct.qed_hwfn*, %struct.qed_ptt*, i64*) #1

declare dso_local i32 @qed_grc_dump(%struct.qed_hwfn*, %struct.qed_ptt*, i64*, i32, i64*) #1

declare dso_local i32 @qed_dbg_grc_set_params_default(%struct.qed_hwfn*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
