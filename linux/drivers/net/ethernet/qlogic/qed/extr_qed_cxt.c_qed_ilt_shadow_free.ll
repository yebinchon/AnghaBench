; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_cxt.c_qed_ilt_shadow_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_cxt.c_qed_ilt_shadow_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { %struct.TYPE_4__*, %struct.qed_cxt_mngr* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.qed_cxt_mngr = type { %struct.qed_dma_mem*, %struct.qed_ilt_client_cfg* }
%struct.qed_dma_mem = type { i32*, i32, i32 }
%struct.qed_ilt_client_cfg = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qed_hwfn*)* @qed_ilt_shadow_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qed_ilt_shadow_free(%struct.qed_hwfn* %0) #0 {
  %2 = alloca %struct.qed_hwfn*, align 8
  %3 = alloca %struct.qed_ilt_client_cfg*, align 8
  %4 = alloca %struct.qed_cxt_mngr*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.qed_dma_mem*, align 8
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %2, align 8
  %8 = load %struct.qed_hwfn*, %struct.qed_hwfn** %2, align 8
  %9 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %8, i32 0, i32 1
  %10 = load %struct.qed_cxt_mngr*, %struct.qed_cxt_mngr** %9, align 8
  %11 = getelementptr inbounds %struct.qed_cxt_mngr, %struct.qed_cxt_mngr* %10, i32 0, i32 1
  %12 = load %struct.qed_ilt_client_cfg*, %struct.qed_ilt_client_cfg** %11, align 8
  store %struct.qed_ilt_client_cfg* %12, %struct.qed_ilt_client_cfg** %3, align 8
  %13 = load %struct.qed_hwfn*, %struct.qed_hwfn** %2, align 8
  %14 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %13, i32 0, i32 1
  %15 = load %struct.qed_cxt_mngr*, %struct.qed_cxt_mngr** %14, align 8
  store %struct.qed_cxt_mngr* %15, %struct.qed_cxt_mngr** %4, align 8
  %16 = load %struct.qed_ilt_client_cfg*, %struct.qed_ilt_client_cfg** %3, align 8
  %17 = call i64 @qed_cxt_ilt_shadow_size(%struct.qed_ilt_client_cfg* %16)
  store i64 %17, i64* %5, align 8
  store i64 0, i64* %6, align 8
  br label %18

18:                                               ; preds = %59, %1
  %19 = load %struct.qed_cxt_mngr*, %struct.qed_cxt_mngr** %4, align 8
  %20 = getelementptr inbounds %struct.qed_cxt_mngr, %struct.qed_cxt_mngr* %19, i32 0, i32 0
  %21 = load %struct.qed_dma_mem*, %struct.qed_dma_mem** %20, align 8
  %22 = icmp ne %struct.qed_dma_mem* %21, null
  br i1 %22, label %23, label %27

23:                                               ; preds = %18
  %24 = load i64, i64* %6, align 8
  %25 = load i64, i64* %5, align 8
  %26 = icmp ult i64 %24, %25
  br label %27

27:                                               ; preds = %23, %18
  %28 = phi i1 [ false, %18 ], [ %26, %23 ]
  br i1 %28, label %29, label %62

29:                                               ; preds = %27
  %30 = load %struct.qed_cxt_mngr*, %struct.qed_cxt_mngr** %4, align 8
  %31 = getelementptr inbounds %struct.qed_cxt_mngr, %struct.qed_cxt_mngr* %30, i32 0, i32 0
  %32 = load %struct.qed_dma_mem*, %struct.qed_dma_mem** %31, align 8
  %33 = load i64, i64* %6, align 8
  %34 = getelementptr inbounds %struct.qed_dma_mem, %struct.qed_dma_mem* %32, i64 %33
  store %struct.qed_dma_mem* %34, %struct.qed_dma_mem** %7, align 8
  %35 = load %struct.qed_dma_mem*, %struct.qed_dma_mem** %7, align 8
  %36 = getelementptr inbounds %struct.qed_dma_mem, %struct.qed_dma_mem* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = icmp ne i32* %37, null
  br i1 %38, label %39, label %56

39:                                               ; preds = %29
  %40 = load %struct.qed_hwfn*, %struct.qed_hwfn** %2, align 8
  %41 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %40, i32 0, i32 0
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load %struct.qed_dma_mem*, %struct.qed_dma_mem** %7, align 8
  %47 = getelementptr inbounds %struct.qed_dma_mem, %struct.qed_dma_mem* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.qed_dma_mem*, %struct.qed_dma_mem** %7, align 8
  %50 = getelementptr inbounds %struct.qed_dma_mem, %struct.qed_dma_mem* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = load %struct.qed_dma_mem*, %struct.qed_dma_mem** %7, align 8
  %53 = getelementptr inbounds %struct.qed_dma_mem, %struct.qed_dma_mem* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @dma_free_coherent(i32* %45, i32 %48, i32* %51, i32 %54)
  br label %56

56:                                               ; preds = %39, %29
  %57 = load %struct.qed_dma_mem*, %struct.qed_dma_mem** %7, align 8
  %58 = getelementptr inbounds %struct.qed_dma_mem, %struct.qed_dma_mem* %57, i32 0, i32 0
  store i32* null, i32** %58, align 8
  br label %59

59:                                               ; preds = %56
  %60 = load i64, i64* %6, align 8
  %61 = add i64 %60, 1
  store i64 %61, i64* %6, align 8
  br label %18

62:                                               ; preds = %27
  %63 = load %struct.qed_cxt_mngr*, %struct.qed_cxt_mngr** %4, align 8
  %64 = getelementptr inbounds %struct.qed_cxt_mngr, %struct.qed_cxt_mngr* %63, i32 0, i32 0
  %65 = load %struct.qed_dma_mem*, %struct.qed_dma_mem** %64, align 8
  %66 = call i32 @kfree(%struct.qed_dma_mem* %65)
  ret void
}

declare dso_local i64 @qed_cxt_ilt_shadow_size(%struct.qed_ilt_client_cfg*) #1

declare dso_local i32 @dma_free_coherent(i32*, i32, i32*, i32) #1

declare dso_local i32 @kfree(%struct.qed_dma_mem*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
