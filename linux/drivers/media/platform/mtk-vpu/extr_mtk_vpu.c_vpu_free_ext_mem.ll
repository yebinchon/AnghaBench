; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/mtk-vpu/extr_mtk_vpu.c_vpu_free_ext_mem.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/mtk-vpu/extr_mtk_vpu.c_vpu_free_ext_mem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_vpu = type { %struct.TYPE_2__*, %struct.device* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.device = type { i32 }

@VPU_EXT_D_SIZE = common dso_local global i64 0, align 8
@VPU_EXT_P_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mtk_vpu*, i32)* @vpu_free_ext_mem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vpu_free_ext_mem(%struct.mtk_vpu* %0, i32 %1) #0 {
  %3 = alloca %struct.mtk_vpu*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca i64, align 8
  store %struct.mtk_vpu* %0, %struct.mtk_vpu** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.mtk_vpu*, %struct.mtk_vpu** %3, align 8
  %8 = getelementptr inbounds %struct.mtk_vpu, %struct.mtk_vpu* %7, i32 0, i32 1
  %9 = load %struct.device*, %struct.device** %8, align 8
  store %struct.device* %9, %struct.device** %5, align 8
  %10 = load i32, i32* %4, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load i64, i64* @VPU_EXT_D_SIZE, align 8
  br label %16

14:                                               ; preds = %2
  %15 = load i64, i64* @VPU_EXT_P_SIZE, align 8
  br label %16

16:                                               ; preds = %14, %12
  %17 = phi i64 [ %13, %12 ], [ %15, %14 ]
  store i64 %17, i64* %6, align 8
  %18 = load %struct.device*, %struct.device** %5, align 8
  %19 = load i64, i64* %6, align 8
  %20 = load %struct.mtk_vpu*, %struct.mtk_vpu** %3, align 8
  %21 = getelementptr inbounds %struct.mtk_vpu, %struct.mtk_vpu* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = load i32, i32* %4, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.mtk_vpu*, %struct.mtk_vpu** %3, align 8
  %29 = getelementptr inbounds %struct.mtk_vpu, %struct.mtk_vpu* %28, i32 0, i32 0
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = load i32, i32* %4, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @dma_free_coherent(%struct.device* %18, i64 %19, i32 %27, i32 %35)
  ret void
}

declare dso_local i32 @dma_free_coherent(%struct.device*, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
