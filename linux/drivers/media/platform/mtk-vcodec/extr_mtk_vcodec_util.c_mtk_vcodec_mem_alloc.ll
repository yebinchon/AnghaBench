; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/mtk-vcodec/extr_mtk_vcodec_util.c_mtk_vcodec_mem_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/mtk-vcodec/extr_mtk_vcodec_util.c_mtk_vcodec_mem_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_vcodec_ctx = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.device }
%struct.device = type { i32 }
%struct.mtk_vcodec_mem = type { i64, i64, i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"%s dma_alloc size=%ld failed!\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"[%d]  - va      = %p\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"[%d]  - dma     = 0x%lx\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"[%d]    size = 0x%lx\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mtk_vcodec_mem_alloc(%struct.mtk_vcodec_ctx* %0, %struct.mtk_vcodec_mem* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mtk_vcodec_ctx*, align 8
  %5 = alloca %struct.mtk_vcodec_mem*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.mtk_vcodec_ctx*, align 8
  %8 = alloca %struct.device*, align 8
  store %struct.mtk_vcodec_ctx* %0, %struct.mtk_vcodec_ctx** %4, align 8
  store %struct.mtk_vcodec_mem* %1, %struct.mtk_vcodec_mem** %5, align 8
  %9 = load %struct.mtk_vcodec_mem*, %struct.mtk_vcodec_mem** %5, align 8
  %10 = getelementptr inbounds %struct.mtk_vcodec_mem, %struct.mtk_vcodec_mem* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  store i64 %11, i64* %6, align 8
  %12 = load %struct.mtk_vcodec_ctx*, %struct.mtk_vcodec_ctx** %4, align 8
  store %struct.mtk_vcodec_ctx* %12, %struct.mtk_vcodec_ctx** %7, align 8
  %13 = load %struct.mtk_vcodec_ctx*, %struct.mtk_vcodec_ctx** %7, align 8
  %14 = getelementptr inbounds %struct.mtk_vcodec_ctx, %struct.mtk_vcodec_ctx* %13, i32 0, i32 1
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  store %struct.device* %18, %struct.device** %8, align 8
  %19 = load %struct.device*, %struct.device** %8, align 8
  %20 = load i64, i64* %6, align 8
  %21 = load %struct.mtk_vcodec_mem*, %struct.mtk_vcodec_mem** %5, align 8
  %22 = getelementptr inbounds %struct.mtk_vcodec_mem, %struct.mtk_vcodec_mem* %21, i32 0, i32 2
  %23 = load i32, i32* @GFP_KERNEL, align 4
  %24 = call i64 @dma_alloc_coherent(%struct.device* %19, i64 %20, i64* %22, i32 %23)
  %25 = load %struct.mtk_vcodec_mem*, %struct.mtk_vcodec_mem** %5, align 8
  %26 = getelementptr inbounds %struct.mtk_vcodec_mem, %struct.mtk_vcodec_mem* %25, i32 0, i32 1
  store i64 %24, i64* %26, align 8
  %27 = load %struct.mtk_vcodec_mem*, %struct.mtk_vcodec_mem** %5, align 8
  %28 = getelementptr inbounds %struct.mtk_vcodec_mem, %struct.mtk_vcodec_mem* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %38, label %31

31:                                               ; preds = %2
  %32 = load %struct.device*, %struct.device** %8, align 8
  %33 = call i32 @dev_name(%struct.device* %32)
  %34 = load i64, i64* %6, align 8
  %35 = call i32 @mtk_v4l2_err(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %33, i64 %34)
  %36 = load i32, i32* @ENOMEM, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %3, align 4
  br label %58

38:                                               ; preds = %2
  %39 = load %struct.mtk_vcodec_ctx*, %struct.mtk_vcodec_ctx** %7, align 8
  %40 = getelementptr inbounds %struct.mtk_vcodec_ctx, %struct.mtk_vcodec_ctx* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.mtk_vcodec_mem*, %struct.mtk_vcodec_mem** %5, align 8
  %43 = getelementptr inbounds %struct.mtk_vcodec_mem, %struct.mtk_vcodec_mem* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = call i32 @mtk_v4l2_debug(i32 3, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %41, i64 %44)
  %46 = load %struct.mtk_vcodec_ctx*, %struct.mtk_vcodec_ctx** %7, align 8
  %47 = getelementptr inbounds %struct.mtk_vcodec_ctx, %struct.mtk_vcodec_ctx* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.mtk_vcodec_mem*, %struct.mtk_vcodec_mem** %5, align 8
  %50 = getelementptr inbounds %struct.mtk_vcodec_mem, %struct.mtk_vcodec_mem* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = call i32 @mtk_v4l2_debug(i32 3, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %48, i64 %51)
  %53 = load %struct.mtk_vcodec_ctx*, %struct.mtk_vcodec_ctx** %7, align 8
  %54 = getelementptr inbounds %struct.mtk_vcodec_ctx, %struct.mtk_vcodec_ctx* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i64, i64* %6, align 8
  %57 = call i32 @mtk_v4l2_debug(i32 3, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i32 %55, i64 %56)
  store i32 0, i32* %3, align 4
  br label %58

58:                                               ; preds = %38, %31
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local i64 @dma_alloc_coherent(%struct.device*, i64, i64*, i32) #1

declare dso_local i32 @mtk_v4l2_err(i8*, i32, i64) #1

declare dso_local i32 @dev_name(%struct.device*) #1

declare dso_local i32 @mtk_v4l2_debug(i32, i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
