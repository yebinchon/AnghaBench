; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_hw.c_qed_dmae_info_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_hw.c_qed_dmae_info_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { %struct.TYPE_6__, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32, i32*, i32, i32*, i32, i32*, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@DMAE_MAX_RW_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @qed_dmae_info_free(%struct.qed_hwfn* %0) #0 {
  %2 = alloca %struct.qed_hwfn*, align 8
  %3 = alloca i32, align 4
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %2, align 8
  %4 = load %struct.qed_hwfn*, %struct.qed_hwfn** %2, align 8
  %5 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 0
  %7 = call i32 @mutex_lock(i32* %6)
  %8 = load %struct.qed_hwfn*, %struct.qed_hwfn** %2, align 8
  %9 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 5
  %11 = load i32*, i32** %10, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %13, label %33

13:                                               ; preds = %1
  %14 = load %struct.qed_hwfn*, %struct.qed_hwfn** %2, align 8
  %15 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 6
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %3, align 4
  %18 = load %struct.qed_hwfn*, %struct.qed_hwfn** %2, align 8
  %19 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %18, i32 0, i32 1
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load %struct.qed_hwfn*, %struct.qed_hwfn** %2, align 8
  %25 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 5
  %27 = load i32*, i32** %26, align 8
  %28 = load i32, i32* %3, align 4
  %29 = call i32 @dma_free_coherent(i32* %23, i32 4, i32* %27, i32 %28)
  %30 = load %struct.qed_hwfn*, %struct.qed_hwfn** %2, align 8
  %31 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 5
  store i32* null, i32** %32, align 8
  br label %33

33:                                               ; preds = %13, %1
  %34 = load %struct.qed_hwfn*, %struct.qed_hwfn** %2, align 8
  %35 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 3
  %37 = load i32*, i32** %36, align 8
  %38 = icmp ne i32* %37, null
  br i1 %38, label %39, label %59

39:                                               ; preds = %33
  %40 = load %struct.qed_hwfn*, %struct.qed_hwfn** %2, align 8
  %41 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 4
  %43 = load i32, i32* %42, align 8
  store i32 %43, i32* %3, align 4
  %44 = load %struct.qed_hwfn*, %struct.qed_hwfn** %2, align 8
  %45 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %44, i32 0, i32 1
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load %struct.qed_hwfn*, %struct.qed_hwfn** %2, align 8
  %51 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 3
  %53 = load i32*, i32** %52, align 8
  %54 = load i32, i32* %3, align 4
  %55 = call i32 @dma_free_coherent(i32* %49, i32 4, i32* %53, i32 %54)
  %56 = load %struct.qed_hwfn*, %struct.qed_hwfn** %2, align 8
  %57 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 3
  store i32* null, i32** %58, align 8
  br label %59

59:                                               ; preds = %39, %33
  %60 = load %struct.qed_hwfn*, %struct.qed_hwfn** %2, align 8
  %61 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 1
  %63 = load i32*, i32** %62, align 8
  %64 = icmp ne i32* %63, null
  br i1 %64, label %65, label %89

65:                                               ; preds = %59
  %66 = load %struct.qed_hwfn*, %struct.qed_hwfn** %2, align 8
  %67 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  store i32 %69, i32* %3, align 4
  %70 = load %struct.qed_hwfn*, %struct.qed_hwfn** %2, align 8
  %71 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %70, i32 0, i32 1
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 0
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  %76 = load i32, i32* @DMAE_MAX_RW_SIZE, align 4
  %77 = sext i32 %76 to i64
  %78 = mul i64 4, %77
  %79 = trunc i64 %78 to i32
  %80 = load %struct.qed_hwfn*, %struct.qed_hwfn** %2, align 8
  %81 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 1
  %83 = load i32*, i32** %82, align 8
  %84 = load i32, i32* %3, align 4
  %85 = call i32 @dma_free_coherent(i32* %75, i32 %79, i32* %83, i32 %84)
  %86 = load %struct.qed_hwfn*, %struct.qed_hwfn** %2, align 8
  %87 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 1
  store i32* null, i32** %88, align 8
  br label %89

89:                                               ; preds = %65, %59
  %90 = load %struct.qed_hwfn*, %struct.qed_hwfn** %2, align 8
  %91 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 0
  %93 = call i32 @mutex_unlock(i32* %92)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @dma_free_coherent(i32*, i32, i32*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
