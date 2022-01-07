; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_spq.c_qed_spq_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_spq.c_qed_spq_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { %struct.TYPE_5__*, %struct.qed_spq* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.qed_spq = type { i32, i32, %struct.qed_spq_entry* }
%struct.qed_spq_entry = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@QED_CHAIN_USE_TO_PRODUCE = common dso_local global i32 0, align 4
@QED_CHAIN_MODE_SINGLE = common dso_local global i32 0, align 4
@QED_CHAIN_CNT_TYPE_U16 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qed_spq_alloc(%struct.qed_hwfn* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.qed_hwfn*, align 8
  %4 = alloca %struct.qed_spq_entry*, align 8
  %5 = alloca %struct.qed_spq*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %3, align 8
  store %struct.qed_spq_entry* null, %struct.qed_spq_entry** %4, align 8
  store %struct.qed_spq* null, %struct.qed_spq** %5, align 8
  store i32 0, i32* %6, align 4
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.qed_spq* @kzalloc(i32 16, i32 %8)
  store %struct.qed_spq* %9, %struct.qed_spq** %5, align 8
  %10 = load %struct.qed_spq*, %struct.qed_spq** %5, align 8
  %11 = icmp ne %struct.qed_spq* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %67

15:                                               ; preds = %1
  %16 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %17 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %16, i32 0, i32 0
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %19 = load i32, i32* @QED_CHAIN_USE_TO_PRODUCE, align 4
  %20 = load i32, i32* @QED_CHAIN_MODE_SINGLE, align 4
  %21 = load i32, i32* @QED_CHAIN_CNT_TYPE_U16, align 4
  %22 = load %struct.qed_spq*, %struct.qed_spq** %5, align 8
  %23 = getelementptr inbounds %struct.qed_spq, %struct.qed_spq* %22, i32 0, i32 0
  %24 = call i64 @qed_chain_alloc(%struct.TYPE_5__* %18, i32 %19, i32 %20, i32 %21, i32 0, i32 4, i32* %23, i32* null)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %15
  br label %56

27:                                               ; preds = %15
  %28 = load %struct.qed_spq*, %struct.qed_spq** %5, align 8
  %29 = getelementptr inbounds %struct.qed_spq, %struct.qed_spq* %28, i32 0, i32 0
  %30 = call i32 @qed_chain_get_capacity(i32* %29)
  store i32 %30, i32* %7, align 4
  %31 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %32 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %31, i32 0, i32 0
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i32, i32* %7, align 4
  %38 = sext i32 %37 to i64
  %39 = mul i64 %38, 4
  %40 = trunc i64 %39 to i32
  %41 = load i32, i32* @GFP_KERNEL, align 4
  %42 = call %struct.qed_spq_entry* @dma_alloc_coherent(i32* %36, i32 %40, i32* %6, i32 %41)
  store %struct.qed_spq_entry* %42, %struct.qed_spq_entry** %4, align 8
  %43 = load %struct.qed_spq_entry*, %struct.qed_spq_entry** %4, align 8
  %44 = icmp ne %struct.qed_spq_entry* %43, null
  br i1 %44, label %46, label %45

45:                                               ; preds = %27
  br label %56

46:                                               ; preds = %27
  %47 = load %struct.qed_spq_entry*, %struct.qed_spq_entry** %4, align 8
  %48 = load %struct.qed_spq*, %struct.qed_spq** %5, align 8
  %49 = getelementptr inbounds %struct.qed_spq, %struct.qed_spq* %48, i32 0, i32 2
  store %struct.qed_spq_entry* %47, %struct.qed_spq_entry** %49, align 8
  %50 = load i32, i32* %6, align 4
  %51 = load %struct.qed_spq*, %struct.qed_spq** %5, align 8
  %52 = getelementptr inbounds %struct.qed_spq, %struct.qed_spq* %51, i32 0, i32 1
  store i32 %50, i32* %52, align 4
  %53 = load %struct.qed_spq*, %struct.qed_spq** %5, align 8
  %54 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %55 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %54, i32 0, i32 1
  store %struct.qed_spq* %53, %struct.qed_spq** %55, align 8
  store i32 0, i32* %2, align 4
  br label %67

56:                                               ; preds = %45, %26
  %57 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %58 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %57, i32 0, i32 0
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %58, align 8
  %60 = load %struct.qed_spq*, %struct.qed_spq** %5, align 8
  %61 = getelementptr inbounds %struct.qed_spq, %struct.qed_spq* %60, i32 0, i32 0
  %62 = call i32 @qed_chain_free(%struct.TYPE_5__* %59, i32* %61)
  %63 = load %struct.qed_spq*, %struct.qed_spq** %5, align 8
  %64 = call i32 @kfree(%struct.qed_spq* %63)
  %65 = load i32, i32* @ENOMEM, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %2, align 4
  br label %67

67:                                               ; preds = %56, %46, %12
  %68 = load i32, i32* %2, align 4
  ret i32 %68
}

declare dso_local %struct.qed_spq* @kzalloc(i32, i32) #1

declare dso_local i64 @qed_chain_alloc(%struct.TYPE_5__*, i32, i32, i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @qed_chain_get_capacity(i32*) #1

declare dso_local %struct.qed_spq_entry* @dma_alloc_coherent(i32*, i32, i32*, i32) #1

declare dso_local i32 @qed_chain_free(%struct.TYPE_5__*, i32*) #1

declare dso_local i32 @kfree(%struct.qed_spq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
