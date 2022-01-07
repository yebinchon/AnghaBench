; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/sti/delta/extr_delta-mem.c_hw_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/sti/delta/extr_delta-mem.c_hw_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.delta_ctx = type { i32, i32, %struct.delta_dev* }
%struct.delta_dev = type { i32 }
%struct.delta_buf = type { i8*, i64, i32, i8*, i32 }

@DMA_ATTR_WRITE_COMBINE = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@__GFP_NOWARN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [56 x i8] c"%s hw_alloc:dma_alloc_coherent failed for %s (size=%d)\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [64 x i8] c"%s allocate %d bytes of HW memory @(virt=0x%p, phy=0x%pad): %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hw_alloc(%struct.delta_ctx* %0, i32 %1, i8* %2, %struct.delta_buf* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.delta_ctx*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.delta_buf*, align 8
  %10 = alloca %struct.delta_dev*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  store %struct.delta_ctx* %0, %struct.delta_ctx** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store %struct.delta_buf* %3, %struct.delta_buf** %9, align 8
  %14 = load %struct.delta_ctx*, %struct.delta_ctx** %6, align 8
  %15 = getelementptr inbounds %struct.delta_ctx, %struct.delta_ctx* %14, i32 0, i32 2
  %16 = load %struct.delta_dev*, %struct.delta_dev** %15, align 8
  store %struct.delta_dev* %16, %struct.delta_dev** %10, align 8
  %17 = load i64, i64* @DMA_ATTR_WRITE_COMBINE, align 8
  store i64 %17, i64* %13, align 8
  %18 = load %struct.delta_dev*, %struct.delta_dev** %10, align 8
  %19 = getelementptr inbounds %struct.delta_dev, %struct.delta_dev* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* @GFP_KERNEL, align 4
  %23 = load i32, i32* @__GFP_NOWARN, align 4
  %24 = or i32 %22, %23
  %25 = load i64, i64* %13, align 8
  %26 = call i8* @dma_alloc_attrs(i32 %20, i32 %21, i32* %11, i32 %24, i64 %25)
  store i8* %26, i8** %12, align 8
  %27 = load i8*, i8** %12, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %45, label %29

29:                                               ; preds = %4
  %30 = load %struct.delta_dev*, %struct.delta_dev** %10, align 8
  %31 = getelementptr inbounds %struct.delta_dev, %struct.delta_dev* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.delta_ctx*, %struct.delta_ctx** %6, align 8
  %34 = getelementptr inbounds %struct.delta_ctx, %struct.delta_ctx* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i8*, i8** %8, align 8
  %37 = load i32, i32* %7, align 4
  %38 = call i32 @dev_err(i32 %32, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i32 %35, i8* %36, i32 %37)
  %39 = load %struct.delta_ctx*, %struct.delta_ctx** %6, align 8
  %40 = getelementptr inbounds %struct.delta_ctx, %struct.delta_ctx* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %40, align 4
  %43 = load i32, i32* @ENOMEM, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %5, align 4
  br label %77

45:                                               ; preds = %4
  %46 = load i32, i32* %7, align 4
  %47 = load %struct.delta_buf*, %struct.delta_buf** %9, align 8
  %48 = getelementptr inbounds %struct.delta_buf, %struct.delta_buf* %47, i32 0, i32 4
  store i32 %46, i32* %48, align 8
  %49 = load i32, i32* %11, align 4
  %50 = load %struct.delta_buf*, %struct.delta_buf** %9, align 8
  %51 = getelementptr inbounds %struct.delta_buf, %struct.delta_buf* %50, i32 0, i32 2
  store i32 %49, i32* %51, align 8
  %52 = load i8*, i8** %12, align 8
  %53 = load %struct.delta_buf*, %struct.delta_buf** %9, align 8
  %54 = getelementptr inbounds %struct.delta_buf, %struct.delta_buf* %53, i32 0, i32 3
  store i8* %52, i8** %54, align 8
  %55 = load i8*, i8** %8, align 8
  %56 = load %struct.delta_buf*, %struct.delta_buf** %9, align 8
  %57 = getelementptr inbounds %struct.delta_buf, %struct.delta_buf* %56, i32 0, i32 0
  store i8* %55, i8** %57, align 8
  %58 = load i64, i64* %13, align 8
  %59 = load %struct.delta_buf*, %struct.delta_buf** %9, align 8
  %60 = getelementptr inbounds %struct.delta_buf, %struct.delta_buf* %59, i32 0, i32 1
  store i64 %58, i64* %60, align 8
  %61 = load %struct.delta_dev*, %struct.delta_dev** %10, align 8
  %62 = getelementptr inbounds %struct.delta_dev, %struct.delta_dev* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.delta_ctx*, %struct.delta_ctx** %6, align 8
  %65 = getelementptr inbounds %struct.delta_ctx, %struct.delta_ctx* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* %7, align 4
  %68 = load %struct.delta_buf*, %struct.delta_buf** %9, align 8
  %69 = getelementptr inbounds %struct.delta_buf, %struct.delta_buf* %68, i32 0, i32 3
  %70 = load i8*, i8** %69, align 8
  %71 = load %struct.delta_buf*, %struct.delta_buf** %9, align 8
  %72 = getelementptr inbounds %struct.delta_buf, %struct.delta_buf* %71, i32 0, i32 2
  %73 = load %struct.delta_buf*, %struct.delta_buf** %9, align 8
  %74 = getelementptr inbounds %struct.delta_buf, %struct.delta_buf* %73, i32 0, i32 0
  %75 = load i8*, i8** %74, align 8
  %76 = call i32 @dev_dbg(i32 %63, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.1, i64 0, i64 0), i32 %66, i32 %67, i8* %70, i32* %72, i8* %75)
  store i32 0, i32* %5, align 4
  br label %77

77:                                               ; preds = %45, %29
  %78 = load i32, i32* %5, align 4
  ret i32 %78
}

declare dso_local i8* @dma_alloc_attrs(i32, i32, i32*, i32, i64) #1

declare dso_local i32 @dev_err(i32, i8*, i32, i8*, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32, i8*, i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
