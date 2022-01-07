; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_int.c_qed_int_igu_enable_int.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_int.c_qed_int_igu_enable_int.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.qed_ptt = type { i32 }

@IGU_PF_CONF_FUNC_EN = common dso_local global i32 0, align 4
@IGU_PF_CONF_ATTN_BIT_EN = common dso_local global i32 0, align 4
@IGU_PF_CONF_INT_LINE_EN = common dso_local global i32 0, align 4
@IGU_PF_CONF_SINGLE_ISR_EN = common dso_local global i32 0, align 4
@IGU_PF_CONF_MSI_MSIX_EN = common dso_local global i32 0, align 4
@IGU_REG_PF_CONFIGURATION = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @qed_int_igu_enable_int(%struct.qed_hwfn* %0, %struct.qed_ptt* %1, i32 %2) #0 {
  %4 = alloca %struct.qed_hwfn*, align 8
  %5 = alloca %struct.qed_ptt*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %4, align 8
  store %struct.qed_ptt* %1, %struct.qed_ptt** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* @IGU_PF_CONF_FUNC_EN, align 4
  %9 = load i32, i32* @IGU_PF_CONF_ATTN_BIT_EN, align 4
  %10 = or i32 %8, %9
  store i32 %10, i32* %7, align 4
  %11 = load i32, i32* %6, align 4
  %12 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %13 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  store i32 %11, i32* %15, align 4
  %16 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %17 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  switch i32 %20, label %40 [
    i32 131, label %21
    i32 130, label %28
    i32 129, label %35
    i32 128, label %39
  ]

21:                                               ; preds = %3
  %22 = load i32, i32* @IGU_PF_CONF_INT_LINE_EN, align 4
  %23 = load i32, i32* %7, align 4
  %24 = or i32 %23, %22
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* @IGU_PF_CONF_SINGLE_ISR_EN, align 4
  %26 = load i32, i32* %7, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* %7, align 4
  br label %40

28:                                               ; preds = %3
  %29 = load i32, i32* @IGU_PF_CONF_MSI_MSIX_EN, align 4
  %30 = load i32, i32* %7, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* @IGU_PF_CONF_SINGLE_ISR_EN, align 4
  %33 = load i32, i32* %7, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %7, align 4
  br label %40

35:                                               ; preds = %3
  %36 = load i32, i32* @IGU_PF_CONF_MSI_MSIX_EN, align 4
  %37 = load i32, i32* %7, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %7, align 4
  br label %40

39:                                               ; preds = %3
  br label %40

40:                                               ; preds = %3, %39, %35, %28, %21
  %41 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %42 = load %struct.qed_ptt*, %struct.qed_ptt** %5, align 8
  %43 = load i32, i32* @IGU_REG_PF_CONFIGURATION, align 4
  %44 = load i32, i32* %7, align 4
  %45 = call i32 @qed_wr(%struct.qed_hwfn* %41, %struct.qed_ptt* %42, i32 %43, i32 %44)
  ret void
}

declare dso_local i32 @qed_wr(%struct.qed_hwfn*, %struct.qed_ptt*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
