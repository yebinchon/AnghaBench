; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/coda/extr_coda-bit.c_coda9_set_frame_cache.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/coda/extr_coda-bit.c_coda9_set_frame_cache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.coda_ctx = type { i64, i32 }

@GDI_LINEAR_FRAME_MAP = common dso_local global i64 0, align 8
@CODA9_CACHE_PAGEMERGE_OFFSET = common dso_local global i32 0, align 4
@CODA9_CMD_SET_FRAME_CACHE_SIZE = common dso_local global i32 0, align 4
@V4L2_PIX_FMT_NV12 = common dso_local global i64 0, align 8
@V4L2_PIX_FMT_YUYV = common dso_local global i64 0, align 8
@CODA9_CACHE_LUMA_BUFFER_SIZE_OFFSET = common dso_local global i32 0, align 4
@CODA9_CACHE_CR_BUFFER_SIZE_OFFSET = common dso_local global i32 0, align 4
@CODA9_CACHE_CB_BUFFER_SIZE_OFFSET = common dso_local global i32 0, align 4
@CODA9_CMD_SET_FRAME_CACHE_CONFIG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.coda_ctx*, i64)* @coda9_set_frame_cache to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @coda9_set_frame_cache(%struct.coda_ctx* %0, i64 %1) #0 {
  %3 = alloca %struct.coda_ctx*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.coda_ctx* %0, %struct.coda_ctx** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load %struct.coda_ctx*, %struct.coda_ctx** %3, align 8
  %8 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @GDI_LINEAR_FRAME_MAP, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %16

12:                                               ; preds = %2
  store i64 539369508, i64* %5, align 8
  %13 = load i32, i32* @CODA9_CACHE_PAGEMERGE_OFFSET, align 4
  %14 = shl i32 2, %13
  %15 = sext i32 %14 to i64
  store i64 %15, i64* %6, align 8
  br label %20

16:                                               ; preds = %2
  store i64 38011459, i64* %5, align 8
  %17 = load i32, i32* @CODA9_CACHE_PAGEMERGE_OFFSET, align 4
  %18 = shl i32 1, %17
  %19 = sext i32 %18 to i64
  store i64 %19, i64* %6, align 8
  br label %20

20:                                               ; preds = %16, %12
  %21 = load %struct.coda_ctx*, %struct.coda_ctx** %3, align 8
  %22 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = load i64, i64* %5, align 8
  %25 = load i32, i32* @CODA9_CMD_SET_FRAME_CACHE_SIZE, align 4
  %26 = call i32 @coda_write(i32 %23, i64 %24, i32 %25)
  %27 = load i64, i64* %4, align 8
  %28 = load i64, i64* @V4L2_PIX_FMT_NV12, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %34, label %30

30:                                               ; preds = %20
  %31 = load i64, i64* %4, align 8
  %32 = load i64, i64* @V4L2_PIX_FMT_YUYV, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %46

34:                                               ; preds = %30, %20
  %35 = load i32, i32* @CODA9_CACHE_LUMA_BUFFER_SIZE_OFFSET, align 4
  %36 = shl i32 32, %35
  %37 = load i32, i32* @CODA9_CACHE_CR_BUFFER_SIZE_OFFSET, align 4
  %38 = shl i32 16, %37
  %39 = or i32 %36, %38
  %40 = load i32, i32* @CODA9_CACHE_CB_BUFFER_SIZE_OFFSET, align 4
  %41 = shl i32 0, %40
  %42 = or i32 %39, %41
  %43 = sext i32 %42 to i64
  %44 = load i64, i64* %6, align 8
  %45 = or i64 %44, %43
  store i64 %45, i64* %6, align 8
  br label %58

46:                                               ; preds = %30
  %47 = load i32, i32* @CODA9_CACHE_LUMA_BUFFER_SIZE_OFFSET, align 4
  %48 = shl i32 32, %47
  %49 = load i32, i32* @CODA9_CACHE_CR_BUFFER_SIZE_OFFSET, align 4
  %50 = shl i32 8, %49
  %51 = or i32 %48, %50
  %52 = load i32, i32* @CODA9_CACHE_CB_BUFFER_SIZE_OFFSET, align 4
  %53 = shl i32 8, %52
  %54 = or i32 %51, %53
  %55 = sext i32 %54 to i64
  %56 = load i64, i64* %6, align 8
  %57 = or i64 %56, %55
  store i64 %57, i64* %6, align 8
  br label %58

58:                                               ; preds = %46, %34
  %59 = load %struct.coda_ctx*, %struct.coda_ctx** %3, align 8
  %60 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = load i64, i64* %6, align 8
  %63 = load i32, i32* @CODA9_CMD_SET_FRAME_CACHE_CONFIG, align 4
  %64 = call i32 @coda_write(i32 %61, i64 %62, i32 %63)
  ret void
}

declare dso_local i32 @coda_write(i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
