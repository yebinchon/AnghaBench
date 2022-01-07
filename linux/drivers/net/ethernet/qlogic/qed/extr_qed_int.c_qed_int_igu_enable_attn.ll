; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_int.c_qed_int_igu_enable_attn.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_int.c_qed_int_igu_enable_attn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { i32 }
%struct.qed_ptt = type { i32 }

@IGU_REG_ATTENTION_ENABLE = common dso_local global i32 0, align 4
@IGU_REG_LEADING_EDGE_LATCH = common dso_local global i32 0, align 4
@IGU_REG_TRAILING_EDGE_LATCH = common dso_local global i32 0, align 4
@MISC_REG_AEU_MASK_ATTN_IGU = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qed_hwfn*, %struct.qed_ptt*)* @qed_int_igu_enable_attn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qed_int_igu_enable_attn(%struct.qed_hwfn* %0, %struct.qed_ptt* %1) #0 {
  %3 = alloca %struct.qed_hwfn*, align 8
  %4 = alloca %struct.qed_ptt*, align 8
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %3, align 8
  store %struct.qed_ptt* %1, %struct.qed_ptt** %4, align 8
  %5 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %6 = load %struct.qed_ptt*, %struct.qed_ptt** %4, align 8
  %7 = load i32, i32* @IGU_REG_ATTENTION_ENABLE, align 4
  %8 = call i32 @qed_wr(%struct.qed_hwfn* %5, %struct.qed_ptt* %6, i32 %7, i32 0)
  %9 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %10 = load %struct.qed_ptt*, %struct.qed_ptt** %4, align 8
  %11 = load i32, i32* @IGU_REG_LEADING_EDGE_LATCH, align 4
  %12 = call i32 @qed_wr(%struct.qed_hwfn* %9, %struct.qed_ptt* %10, i32 %11, i32 4095)
  %13 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %14 = load %struct.qed_ptt*, %struct.qed_ptt** %4, align 8
  %15 = load i32, i32* @IGU_REG_TRAILING_EDGE_LATCH, align 4
  %16 = call i32 @qed_wr(%struct.qed_hwfn* %13, %struct.qed_ptt* %14, i32 %15, i32 4095)
  %17 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %18 = load %struct.qed_ptt*, %struct.qed_ptt** %4, align 8
  %19 = load i32, i32* @IGU_REG_ATTENTION_ENABLE, align 4
  %20 = call i32 @qed_wr(%struct.qed_hwfn* %17, %struct.qed_ptt* %18, i32 %19, i32 4095)
  %21 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %22 = load %struct.qed_ptt*, %struct.qed_ptt** %4, align 8
  %23 = load i32, i32* @MISC_REG_AEU_MASK_ATTN_IGU, align 4
  %24 = call i32 @qed_wr(%struct.qed_hwfn* %21, %struct.qed_ptt* %22, i32 %23, i32 255)
  ret void
}

declare dso_local i32 @qed_wr(%struct.qed_hwfn*, %struct.qed_ptt*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
