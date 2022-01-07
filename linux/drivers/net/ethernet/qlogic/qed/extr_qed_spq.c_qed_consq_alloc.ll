; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_spq.c_qed_consq_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_spq.c_qed_consq_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { %struct.qed_consq*, i32 }
%struct.qed_consq = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@QED_CHAIN_USE_TO_PRODUCE = common dso_local global i32 0, align 4
@QED_CHAIN_MODE_PBL = common dso_local global i32 0, align 4
@QED_CHAIN_CNT_TYPE_U16 = common dso_local global i32 0, align 4
@QED_CHAIN_PAGE_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qed_consq_alloc(%struct.qed_hwfn* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.qed_hwfn*, align 8
  %4 = alloca %struct.qed_consq*, align 8
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %3, align 8
  %5 = load i32, i32* @GFP_KERNEL, align 4
  %6 = call %struct.qed_consq* @kzalloc(i32 4, i32 %5)
  store %struct.qed_consq* %6, %struct.qed_consq** %4, align 8
  %7 = load %struct.qed_consq*, %struct.qed_consq** %4, align 8
  %8 = icmp ne %struct.qed_consq* %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %1
  %10 = load i32, i32* @ENOMEM, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %2, align 4
  br label %35

12:                                               ; preds = %1
  %13 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %14 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @QED_CHAIN_USE_TO_PRODUCE, align 4
  %17 = load i32, i32* @QED_CHAIN_MODE_PBL, align 4
  %18 = load i32, i32* @QED_CHAIN_CNT_TYPE_U16, align 4
  %19 = load i32, i32* @QED_CHAIN_PAGE_SIZE, align 4
  %20 = sdiv i32 %19, 128
  %21 = load %struct.qed_consq*, %struct.qed_consq** %4, align 8
  %22 = getelementptr inbounds %struct.qed_consq, %struct.qed_consq* %21, i32 0, i32 0
  %23 = call i64 @qed_chain_alloc(i32 %15, i32 %16, i32 %17, i32 %18, i32 %20, i32 128, i32* %22, i32* null)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %12
  br label %30

26:                                               ; preds = %12
  %27 = load %struct.qed_consq*, %struct.qed_consq** %4, align 8
  %28 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %29 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %28, i32 0, i32 0
  store %struct.qed_consq* %27, %struct.qed_consq** %29, align 8
  store i32 0, i32* %2, align 4
  br label %35

30:                                               ; preds = %25
  %31 = load %struct.qed_consq*, %struct.qed_consq** %4, align 8
  %32 = call i32 @kfree(%struct.qed_consq* %31)
  %33 = load i32, i32* @ENOMEM, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %2, align 4
  br label %35

35:                                               ; preds = %30, %26, %9
  %36 = load i32, i32* %2, align 4
  ret i32 %36
}

declare dso_local %struct.qed_consq* @kzalloc(i32, i32) #1

declare dso_local i64 @qed_chain_alloc(i32, i32, i32, i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @kfree(%struct.qed_consq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
