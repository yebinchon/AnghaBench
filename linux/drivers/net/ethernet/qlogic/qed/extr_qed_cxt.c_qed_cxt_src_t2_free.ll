; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_cxt.c_qed_cxt_src_t2_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_cxt.c_qed_cxt_src_t2_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { %struct.TYPE_5__*, %struct.qed_cxt_mngr* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.qed_cxt_mngr = type { i64, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qed_hwfn*)* @qed_cxt_src_t2_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qed_cxt_src_t2_free(%struct.qed_hwfn* %0) #0 {
  %2 = alloca %struct.qed_hwfn*, align 8
  %3 = alloca %struct.qed_cxt_mngr*, align 8
  %4 = alloca i64, align 8
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %2, align 8
  %5 = load %struct.qed_hwfn*, %struct.qed_hwfn** %2, align 8
  %6 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %5, i32 0, i32 1
  %7 = load %struct.qed_cxt_mngr*, %struct.qed_cxt_mngr** %6, align 8
  store %struct.qed_cxt_mngr* %7, %struct.qed_cxt_mngr** %3, align 8
  %8 = load %struct.qed_cxt_mngr*, %struct.qed_cxt_mngr** %3, align 8
  %9 = getelementptr inbounds %struct.qed_cxt_mngr, %struct.qed_cxt_mngr* %8, i32 0, i32 1
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %11 = icmp ne %struct.TYPE_6__* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  br label %69

13:                                               ; preds = %1
  store i64 0, i64* %4, align 8
  br label %14

14:                                               ; preds = %59, %13
  %15 = load i64, i64* %4, align 8
  %16 = load %struct.qed_cxt_mngr*, %struct.qed_cxt_mngr** %3, align 8
  %17 = getelementptr inbounds %struct.qed_cxt_mngr, %struct.qed_cxt_mngr* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ult i64 %15, %18
  br i1 %19, label %20, label %62

20:                                               ; preds = %14
  %21 = load %struct.qed_cxt_mngr*, %struct.qed_cxt_mngr** %3, align 8
  %22 = getelementptr inbounds %struct.qed_cxt_mngr, %struct.qed_cxt_mngr* %21, i32 0, i32 1
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %22, align 8
  %24 = load i64, i64* %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %58

29:                                               ; preds = %20
  %30 = load %struct.qed_hwfn*, %struct.qed_hwfn** %2, align 8
  %31 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %30, i32 0, i32 0
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load %struct.qed_cxt_mngr*, %struct.qed_cxt_mngr** %3, align 8
  %37 = getelementptr inbounds %struct.qed_cxt_mngr, %struct.qed_cxt_mngr* %36, i32 0, i32 1
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %37, align 8
  %39 = load i64, i64* %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.qed_cxt_mngr*, %struct.qed_cxt_mngr** %3, align 8
  %44 = getelementptr inbounds %struct.qed_cxt_mngr, %struct.qed_cxt_mngr* %43, i32 0, i32 1
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %44, align 8
  %46 = load i64, i64* %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.qed_cxt_mngr*, %struct.qed_cxt_mngr** %3, align 8
  %51 = getelementptr inbounds %struct.qed_cxt_mngr, %struct.qed_cxt_mngr* %50, i32 0, i32 1
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %51, align 8
  %53 = load i64, i64* %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @dma_free_coherent(i32* %35, i32 %42, i64 %49, i32 %56)
  br label %58

58:                                               ; preds = %29, %20
  br label %59

59:                                               ; preds = %58
  %60 = load i64, i64* %4, align 8
  %61 = add i64 %60, 1
  store i64 %61, i64* %4, align 8
  br label %14

62:                                               ; preds = %14
  %63 = load %struct.qed_cxt_mngr*, %struct.qed_cxt_mngr** %3, align 8
  %64 = getelementptr inbounds %struct.qed_cxt_mngr, %struct.qed_cxt_mngr* %63, i32 0, i32 1
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %64, align 8
  %66 = call i32 @kfree(%struct.TYPE_6__* %65)
  %67 = load %struct.qed_cxt_mngr*, %struct.qed_cxt_mngr** %3, align 8
  %68 = getelementptr inbounds %struct.qed_cxt_mngr, %struct.qed_cxt_mngr* %67, i32 0, i32 1
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %68, align 8
  br label %69

69:                                               ; preds = %62, %12
  ret void
}

declare dso_local i32 @dma_free_coherent(i32*, i32, i64, i32) #1

declare dso_local i32 @kfree(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
