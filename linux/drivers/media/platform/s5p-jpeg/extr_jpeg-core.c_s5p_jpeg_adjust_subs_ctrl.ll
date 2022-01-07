; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/s5p-jpeg/extr_jpeg-core.c_s5p_jpeg_adjust_subs_ctrl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/s5p-jpeg/extr_jpeg-core.c_s5p_jpeg_adjust_subs_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s5p_jpeg_ctx = type { %struct.TYPE_8__, %struct.TYPE_6__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@V4L2_PIX_FMT_RGB32 = common dso_local global i32 0, align 4
@V4L2_PIX_FMT_GREY = common dso_local global i32 0, align 4
@V4L2_JPEG_CHROMA_SUBSAMPLING_GRAY = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.s5p_jpeg_ctx*, i32*)* @s5p_jpeg_adjust_subs_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s5p_jpeg_adjust_subs_ctrl(%struct.s5p_jpeg_ctx* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.s5p_jpeg_ctx*, align 8
  %5 = alloca i32*, align 8
  store %struct.s5p_jpeg_ctx* %0, %struct.s5p_jpeg_ctx** %4, align 8
  store i32* %1, i32** %5, align 8
  %6 = load %struct.s5p_jpeg_ctx*, %struct.s5p_jpeg_ctx** %4, align 8
  %7 = getelementptr inbounds %struct.s5p_jpeg_ctx, %struct.s5p_jpeg_ctx* %6, i32 0, i32 1
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  switch i32 %12, label %44 [
    i32 128, label %13
    i32 131, label %14
    i32 129, label %14
    i32 130, label %26
  ]

13:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %63

14:                                               ; preds = %2, %2
  %15 = load %struct.s5p_jpeg_ctx*, %struct.s5p_jpeg_ctx** %4, align 8
  %16 = getelementptr inbounds %struct.s5p_jpeg_ctx, %struct.s5p_jpeg_ctx* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @V4L2_PIX_FMT_RGB32, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %14
  %24 = load i32*, i32** %5, align 8
  store i32 0, i32* %24, align 4
  br label %25

25:                                               ; preds = %23, %14
  br label %44

26:                                               ; preds = %2
  %27 = load %struct.s5p_jpeg_ctx*, %struct.s5p_jpeg_ctx** %4, align 8
  %28 = getelementptr inbounds %struct.s5p_jpeg_ctx, %struct.s5p_jpeg_ctx* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @V4L2_PIX_FMT_GREY, align 4
  %34 = icmp ne i32 %32, %33
  br i1 %34, label %35, label %43

35:                                               ; preds = %26
  %36 = load i32*, i32** %5, align 8
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @V4L2_JPEG_CHROMA_SUBSAMPLING_GRAY, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %35
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %3, align 4
  br label %63

43:                                               ; preds = %35, %26
  br label %44

44:                                               ; preds = %2, %43, %25
  %45 = load %struct.s5p_jpeg_ctx*, %struct.s5p_jpeg_ctx** %4, align 8
  %46 = getelementptr inbounds %struct.s5p_jpeg_ctx, %struct.s5p_jpeg_ctx* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32*, i32** %5, align 8
  %52 = load i32, i32* %51, align 4
  %53 = icmp sgt i32 %50, %52
  br i1 %53, label %54, label %62

54:                                               ; preds = %44
  %55 = load %struct.s5p_jpeg_ctx*, %struct.s5p_jpeg_ctx** %4, align 8
  %56 = getelementptr inbounds %struct.s5p_jpeg_ctx, %struct.s5p_jpeg_ctx* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 0
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32*, i32** %5, align 8
  store i32 %60, i32* %61, align 4
  br label %62

62:                                               ; preds = %54, %44
  store i32 0, i32* %3, align 4
  br label %63

63:                                               ; preds = %62, %40, %13
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
