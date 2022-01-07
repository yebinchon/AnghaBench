; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_spq.c_qed_eq_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_spq.c_qed_eq_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { %struct.qed_eq*, i32 }
%struct.qed_eq = type { i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@QED_CHAIN_USE_TO_PRODUCE = common dso_local global i32 0, align 4
@QED_CHAIN_MODE_PBL = common dso_local global i32 0, align 4
@QED_CHAIN_CNT_TYPE_U16 = common dso_local global i32 0, align 4
@qed_eq_completion = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qed_eq_alloc(%struct.qed_hwfn* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.qed_hwfn*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.qed_eq*, align 8
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call %struct.qed_eq* @kzalloc(i32 12, i32 %7)
  store %struct.qed_eq* %8, %struct.qed_eq** %6, align 8
  %9 = load %struct.qed_eq*, %struct.qed_eq** %6, align 8
  %10 = icmp ne %struct.qed_eq* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %2
  %12 = load i32, i32* @ENOMEM, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %3, align 4
  br label %44

14:                                               ; preds = %2
  %15 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %16 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @QED_CHAIN_USE_TO_PRODUCE, align 4
  %19 = load i32, i32* @QED_CHAIN_MODE_PBL, align 4
  %20 = load i32, i32* @QED_CHAIN_CNT_TYPE_U16, align 4
  %21 = load i32, i32* %5, align 4
  %22 = load %struct.qed_eq*, %struct.qed_eq** %6, align 8
  %23 = getelementptr inbounds %struct.qed_eq, %struct.qed_eq* %22, i32 0, i32 2
  %24 = call i64 @qed_chain_alloc(i32 %17, i32 %18, i32 %19, i32 %20, i32 %21, i32 4, i32* %23, i32* null)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %14
  br label %39

27:                                               ; preds = %14
  %28 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %29 = load i32, i32* @qed_eq_completion, align 4
  %30 = load %struct.qed_eq*, %struct.qed_eq** %6, align 8
  %31 = load %struct.qed_eq*, %struct.qed_eq** %6, align 8
  %32 = getelementptr inbounds %struct.qed_eq, %struct.qed_eq* %31, i32 0, i32 1
  %33 = load %struct.qed_eq*, %struct.qed_eq** %6, align 8
  %34 = getelementptr inbounds %struct.qed_eq, %struct.qed_eq* %33, i32 0, i32 0
  %35 = call i32 @qed_int_register_cb(%struct.qed_hwfn* %28, i32 %29, %struct.qed_eq* %30, i32* %32, i32* %34)
  %36 = load %struct.qed_eq*, %struct.qed_eq** %6, align 8
  %37 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %38 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %37, i32 0, i32 0
  store %struct.qed_eq* %36, %struct.qed_eq** %38, align 8
  store i32 0, i32* %3, align 4
  br label %44

39:                                               ; preds = %26
  %40 = load %struct.qed_eq*, %struct.qed_eq** %6, align 8
  %41 = call i32 @kfree(%struct.qed_eq* %40)
  %42 = load i32, i32* @ENOMEM, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %3, align 4
  br label %44

44:                                               ; preds = %39, %27, %11
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local %struct.qed_eq* @kzalloc(i32, i32) #1

declare dso_local i64 @qed_chain_alloc(i32, i32, i32, i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @qed_int_register_cb(%struct.qed_hwfn*, i32, %struct.qed_eq*, i32*, i32*) #1

declare dso_local i32 @kfree(%struct.qed_eq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
