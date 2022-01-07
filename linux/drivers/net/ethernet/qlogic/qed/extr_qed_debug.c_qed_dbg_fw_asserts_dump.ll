; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_debug.c_qed_dbg_fw_asserts_dump.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_debug.c_qed_dbg_fw_asserts_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { i32 }
%struct.qed_ptt = type { i32 }

@DBG_STATUS_OK = common dso_local global i32 0, align 4
@DBG_STATUS_DUMP_BUF_TOO_SMALL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qed_dbg_fw_asserts_dump(%struct.qed_hwfn* %0, %struct.qed_ptt* %1, i32* %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.qed_hwfn*, align 8
  %8 = alloca %struct.qed_ptt*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %7, align 8
  store %struct.qed_ptt* %1, %struct.qed_ptt** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  store i32* %12, i32** %13, align 8
  %15 = load i32*, i32** %11, align 8
  store i32 0, i32* %15, align 4
  %16 = load %struct.qed_hwfn*, %struct.qed_hwfn** %7, align 8
  %17 = load %struct.qed_ptt*, %struct.qed_ptt** %8, align 8
  %18 = load i32*, i32** %13, align 8
  %19 = call i32 @qed_dbg_fw_asserts_get_dump_buf_size(%struct.qed_hwfn* %16, %struct.qed_ptt* %17, i32* %18)
  store i32 %19, i32* %14, align 4
  %20 = load i32, i32* %14, align 4
  %21 = load i32, i32* @DBG_STATUS_OK, align 4
  %22 = icmp ne i32 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %5
  %24 = load i32, i32* %14, align 4
  store i32 %24, i32* %6, align 4
  br label %40

25:                                               ; preds = %5
  %26 = load i32, i32* %10, align 4
  %27 = load i32, i32* %12, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %25
  %30 = load i32, i32* @DBG_STATUS_DUMP_BUF_TOO_SMALL, align 4
  store i32 %30, i32* %6, align 4
  br label %40

31:                                               ; preds = %25
  %32 = load %struct.qed_hwfn*, %struct.qed_hwfn** %7, align 8
  %33 = load %struct.qed_ptt*, %struct.qed_ptt** %8, align 8
  %34 = load i32*, i32** %9, align 8
  %35 = call i32 @qed_fw_asserts_dump(%struct.qed_hwfn* %32, %struct.qed_ptt* %33, i32* %34, i32 1)
  %36 = load i32*, i32** %11, align 8
  store i32 %35, i32* %36, align 4
  %37 = load %struct.qed_hwfn*, %struct.qed_hwfn** %7, align 8
  %38 = call i32 @qed_dbg_grc_set_params_default(%struct.qed_hwfn* %37)
  %39 = load i32, i32* @DBG_STATUS_OK, align 4
  store i32 %39, i32* %6, align 4
  br label %40

40:                                               ; preds = %31, %29, %23
  %41 = load i32, i32* %6, align 4
  ret i32 %41
}

declare dso_local i32 @qed_dbg_fw_asserts_get_dump_buf_size(%struct.qed_hwfn*, %struct.qed_ptt*, i32*) #1

declare dso_local i32 @qed_fw_asserts_dump(%struct.qed_hwfn*, %struct.qed_ptt*, i32*, i32) #1

declare dso_local i32 @qed_dbg_grc_set_params_default(%struct.qed_hwfn*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
