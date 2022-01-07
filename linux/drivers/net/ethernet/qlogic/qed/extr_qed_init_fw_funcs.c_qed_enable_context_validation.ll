; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_init_fw_funcs.c_qed_enable_context_validation.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_init_fw_funcs.c_qed_enable_context_validation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { i32 }
%struct.qed_ptt = type { i32 }

@CDU_VALIDATION_DEFAULT_CFG = common dso_local global i32 0, align 4
@CDU_REG_CCFC_CTX_VALID0 = common dso_local global i32 0, align 4
@CDU_REG_CCFC_CTX_VALID1 = common dso_local global i32 0, align 4
@CDU_REG_TCFC_CTX_VALID0 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @qed_enable_context_validation(%struct.qed_hwfn* %0, %struct.qed_ptt* %1) #0 {
  %3 = alloca %struct.qed_hwfn*, align 8
  %4 = alloca %struct.qed_ptt*, align 8
  %5 = alloca i32, align 4
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %3, align 8
  store %struct.qed_ptt* %1, %struct.qed_ptt** %4, align 8
  %6 = load i32, i32* @CDU_VALIDATION_DEFAULT_CFG, align 4
  %7 = shl i32 %6, 24
  store i32 %7, i32* %5, align 4
  %8 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %9 = load %struct.qed_ptt*, %struct.qed_ptt** %4, align 8
  %10 = load i32, i32* @CDU_REG_CCFC_CTX_VALID0, align 4
  %11 = load i32, i32* %5, align 4
  %12 = call i32 @qed_wr(%struct.qed_hwfn* %8, %struct.qed_ptt* %9, i32 %10, i32 %11)
  %13 = load i32, i32* @CDU_VALIDATION_DEFAULT_CFG, align 4
  %14 = shl i32 %13, 8
  store i32 %14, i32* %5, align 4
  %15 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %16 = load %struct.qed_ptt*, %struct.qed_ptt** %4, align 8
  %17 = load i32, i32* @CDU_REG_CCFC_CTX_VALID1, align 4
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @qed_wr(%struct.qed_hwfn* %15, %struct.qed_ptt* %16, i32 %17, i32 %18)
  %20 = load i32, i32* @CDU_VALIDATION_DEFAULT_CFG, align 4
  %21 = shl i32 %20, 8
  store i32 %21, i32* %5, align 4
  %22 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %23 = load %struct.qed_ptt*, %struct.qed_ptt** %4, align 8
  %24 = load i32, i32* @CDU_REG_TCFC_CTX_VALID0, align 4
  %25 = load i32, i32* %5, align 4
  %26 = call i32 @qed_wr(%struct.qed_hwfn* %22, %struct.qed_ptt* %23, i32 %24, i32 %25)
  ret void
}

declare dso_local i32 @qed_wr(%struct.qed_hwfn*, %struct.qed_ptt*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
