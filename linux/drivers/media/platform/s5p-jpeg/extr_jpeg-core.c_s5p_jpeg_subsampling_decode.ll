; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/s5p-jpeg/extr_jpeg-core.c_s5p_jpeg_subsampling_decode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/s5p-jpeg/extr_jpeg-core.c_s5p_jpeg_subsampling_decode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s5p_jpeg_ctx = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@V4L2_JPEG_CHROMA_SUBSAMPLING_444 = common dso_local global i32 0, align 4
@V4L2_JPEG_CHROMA_SUBSAMPLING_422 = common dso_local global i32 0, align 4
@V4L2_JPEG_CHROMA_SUBSAMPLING_420 = common dso_local global i32 0, align 4
@V4L2_JPEG_CHROMA_SUBSAMPLING_GRAY = common dso_local global i32 0, align 4
@SJPEG_EXYNOS3250 = common dso_local global i32 0, align 4
@SJPEG_EXYNOS5420 = common dso_local global i32 0, align 4
@SJPEG_EXYNOS5433 = common dso_local global i32 0, align 4
@V4L2_JPEG_CHROMA_SUBSAMPLING_411 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.s5p_jpeg_ctx*, i32)* @s5p_jpeg_subsampling_decode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s5p_jpeg_subsampling_decode(%struct.s5p_jpeg_ctx* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.s5p_jpeg_ctx*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.s5p_jpeg_ctx* %0, %struct.s5p_jpeg_ctx** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  switch i32 %7, label %48 [
    i32 17, label %8
    i32 33, label %12
    i32 34, label %16
    i32 51, label %20
    i32 65, label %24
  ]

8:                                                ; preds = %2
  %9 = load i32, i32* @V4L2_JPEG_CHROMA_SUBSAMPLING_444, align 4
  %10 = load %struct.s5p_jpeg_ctx*, %struct.s5p_jpeg_ctx** %4, align 8
  %11 = getelementptr inbounds %struct.s5p_jpeg_ctx, %struct.s5p_jpeg_ctx* %10, i32 0, i32 0
  store i32 %9, i32* %11, align 8
  br label %49

12:                                               ; preds = %2
  %13 = load i32, i32* @V4L2_JPEG_CHROMA_SUBSAMPLING_422, align 4
  %14 = load %struct.s5p_jpeg_ctx*, %struct.s5p_jpeg_ctx** %4, align 8
  %15 = getelementptr inbounds %struct.s5p_jpeg_ctx, %struct.s5p_jpeg_ctx* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 8
  br label %49

16:                                               ; preds = %2
  %17 = load i32, i32* @V4L2_JPEG_CHROMA_SUBSAMPLING_420, align 4
  %18 = load %struct.s5p_jpeg_ctx*, %struct.s5p_jpeg_ctx** %4, align 8
  %19 = getelementptr inbounds %struct.s5p_jpeg_ctx, %struct.s5p_jpeg_ctx* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 8
  br label %49

20:                                               ; preds = %2
  %21 = load i32, i32* @V4L2_JPEG_CHROMA_SUBSAMPLING_GRAY, align 4
  %22 = load %struct.s5p_jpeg_ctx*, %struct.s5p_jpeg_ctx** %4, align 8
  %23 = getelementptr inbounds %struct.s5p_jpeg_ctx, %struct.s5p_jpeg_ctx* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 8
  br label %49

24:                                               ; preds = %2
  %25 = load %struct.s5p_jpeg_ctx*, %struct.s5p_jpeg_ctx** %4, align 8
  %26 = getelementptr inbounds %struct.s5p_jpeg_ctx, %struct.s5p_jpeg_ctx* %25, i32 0, i32 1
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* @SJPEG_EXYNOS3250, align 4
  %34 = icmp ne i32 %32, %33
  br i1 %34, label %35, label %44

35:                                               ; preds = %24
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* @SJPEG_EXYNOS5420, align 4
  %38 = icmp ne i32 %36, %37
  br i1 %38, label %39, label %44

39:                                               ; preds = %35
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* @SJPEG_EXYNOS5433, align 4
  %42 = icmp ne i32 %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %39
  store i32 0, i32* %3, align 4
  br label %50

44:                                               ; preds = %39, %35, %24
  %45 = load i32, i32* @V4L2_JPEG_CHROMA_SUBSAMPLING_411, align 4
  %46 = load %struct.s5p_jpeg_ctx*, %struct.s5p_jpeg_ctx** %4, align 8
  %47 = getelementptr inbounds %struct.s5p_jpeg_ctx, %struct.s5p_jpeg_ctx* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 8
  br label %49

48:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %50

49:                                               ; preds = %44, %20, %16, %12, %8
  store i32 1, i32* %3, align 4
  br label %50

50:                                               ; preds = %49, %48, %43
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
