; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/s5p-jpeg/extr_jpeg-core.c_exynos3250_jpeg_try_crop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/s5p-jpeg/extr_jpeg-core.c_exynos3250_jpeg_try_crop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s5p_jpeg_ctx = type { i32, %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { i8*, i8*, i8*, i8* }
%struct.TYPE_7__ = type { i8*, i8* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.v4l2_rect = type { i8*, i8*, i8*, i8* }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.s5p_jpeg_ctx*, %struct.v4l2_rect*)* @exynos3250_jpeg_try_crop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @exynos3250_jpeg_try_crop(%struct.s5p_jpeg_ctx* %0, %struct.v4l2_rect* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.s5p_jpeg_ctx*, align 8
  %5 = alloca %struct.v4l2_rect*, align 8
  %6 = alloca %struct.v4l2_rect, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.s5p_jpeg_ctx* %0, %struct.s5p_jpeg_ctx** %4, align 8
  store %struct.v4l2_rect* %1, %struct.v4l2_rect** %5, align 8
  %9 = load %struct.s5p_jpeg_ctx*, %struct.s5p_jpeg_ctx** %4, align 8
  %10 = getelementptr inbounds %struct.s5p_jpeg_ctx, %struct.s5p_jpeg_ctx* %9, i32 0, i32 3
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  switch i32 %14, label %17 [
    i32 130, label %15
    i32 129, label %15
    i32 128, label %16
  ]

15:                                               ; preds = %2, %2
  store i32 1, i32* %7, align 4
  store i32 2, i32* %8, align 4
  br label %18

16:                                               ; preds = %2
  store i32 2, i32* %7, align 4
  store i32 2, i32* %8, align 4
  br label %18

17:                                               ; preds = %2
  store i32 1, i32* %7, align 4
  store i32 1, i32* %8, align 4
  br label %18

18:                                               ; preds = %17, %16, %15
  %19 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %6, i32 0, i32 2
  store i8* null, i8** %19, align 8
  %20 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %6, i32 0, i32 3
  store i8* null, i8** %20, align 8
  %21 = load %struct.s5p_jpeg_ctx*, %struct.s5p_jpeg_ctx** %4, align 8
  %22 = getelementptr inbounds %struct.s5p_jpeg_ctx, %struct.s5p_jpeg_ctx* %21, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 1
  %24 = load i8*, i8** %23, align 8
  %25 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %6, i32 0, i32 1
  store i8* %24, i8** %25, align 8
  %26 = load %struct.s5p_jpeg_ctx*, %struct.s5p_jpeg_ctx** %4, align 8
  %27 = getelementptr inbounds %struct.s5p_jpeg_ctx, %struct.s5p_jpeg_ctx* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  %29 = load i8*, i8** %28, align 8
  %30 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %6, i32 0, i32 0
  store i8* %29, i8** %30, align 8
  %31 = load %struct.v4l2_rect*, %struct.v4l2_rect** %5, align 8
  %32 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %31, i32 0, i32 1
  %33 = load i8*, i8** %32, align 8
  %34 = load i32, i32* %7, align 4
  %35 = call i8* @round_down(i8* %33, i32 %34)
  %36 = load %struct.v4l2_rect*, %struct.v4l2_rect** %5, align 8
  %37 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %36, i32 0, i32 1
  store i8* %35, i8** %37, align 8
  %38 = load %struct.v4l2_rect*, %struct.v4l2_rect** %5, align 8
  %39 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %38, i32 0, i32 0
  %40 = load i8*, i8** %39, align 8
  %41 = load i32, i32* %8, align 4
  %42 = call i8* @round_down(i8* %40, i32 %41)
  %43 = load %struct.v4l2_rect*, %struct.v4l2_rect** %5, align 8
  %44 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %43, i32 0, i32 0
  store i8* %42, i8** %44, align 8
  %45 = load %struct.v4l2_rect*, %struct.v4l2_rect** %5, align 8
  %46 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %45, i32 0, i32 3
  %47 = load i8*, i8** %46, align 8
  %48 = call i8* @round_down(i8* %47, i32 2)
  %49 = load %struct.v4l2_rect*, %struct.v4l2_rect** %5, align 8
  %50 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %49, i32 0, i32 3
  store i8* %48, i8** %50, align 8
  %51 = load %struct.v4l2_rect*, %struct.v4l2_rect** %5, align 8
  %52 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %51, i32 0, i32 2
  %53 = load i8*, i8** %52, align 8
  %54 = call i8* @round_down(i8* %53, i32 2)
  %55 = load %struct.v4l2_rect*, %struct.v4l2_rect** %5, align 8
  %56 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %55, i32 0, i32 2
  store i8* %54, i8** %56, align 8
  %57 = load %struct.v4l2_rect*, %struct.v4l2_rect** %5, align 8
  %58 = call i32 @enclosed_rectangle(%struct.v4l2_rect* %57, %struct.v4l2_rect* %6)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %63, label %60

60:                                               ; preds = %18
  %61 = load i32, i32* @EINVAL, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %3, align 4
  br label %90

63:                                               ; preds = %18
  %64 = load %struct.v4l2_rect*, %struct.v4l2_rect** %5, align 8
  %65 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %64, i32 0, i32 3
  %66 = load i8*, i8** %65, align 8
  %67 = load %struct.s5p_jpeg_ctx*, %struct.s5p_jpeg_ctx** %4, align 8
  %68 = getelementptr inbounds %struct.s5p_jpeg_ctx, %struct.s5p_jpeg_ctx* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 3
  store i8* %66, i8** %69, align 8
  %70 = load %struct.v4l2_rect*, %struct.v4l2_rect** %5, align 8
  %71 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %70, i32 0, i32 2
  %72 = load i8*, i8** %71, align 8
  %73 = load %struct.s5p_jpeg_ctx*, %struct.s5p_jpeg_ctx** %4, align 8
  %74 = getelementptr inbounds %struct.s5p_jpeg_ctx, %struct.s5p_jpeg_ctx* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 2
  store i8* %72, i8** %75, align 8
  %76 = load %struct.v4l2_rect*, %struct.v4l2_rect** %5, align 8
  %77 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %76, i32 0, i32 1
  %78 = load i8*, i8** %77, align 8
  %79 = load %struct.s5p_jpeg_ctx*, %struct.s5p_jpeg_ctx** %4, align 8
  %80 = getelementptr inbounds %struct.s5p_jpeg_ctx, %struct.s5p_jpeg_ctx* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 1
  store i8* %78, i8** %81, align 8
  %82 = load %struct.v4l2_rect*, %struct.v4l2_rect** %5, align 8
  %83 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %82, i32 0, i32 0
  %84 = load i8*, i8** %83, align 8
  %85 = load %struct.s5p_jpeg_ctx*, %struct.s5p_jpeg_ctx** %4, align 8
  %86 = getelementptr inbounds %struct.s5p_jpeg_ctx, %struct.s5p_jpeg_ctx* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 0
  store i8* %84, i8** %87, align 8
  %88 = load %struct.s5p_jpeg_ctx*, %struct.s5p_jpeg_ctx** %4, align 8
  %89 = getelementptr inbounds %struct.s5p_jpeg_ctx, %struct.s5p_jpeg_ctx* %88, i32 0, i32 0
  store i32 1, i32* %89, align 8
  store i32 0, i32* %3, align 4
  br label %90

90:                                               ; preds = %63, %60
  %91 = load i32, i32* %3, align 4
  ret i32 %91
}

declare dso_local i8* @round_down(i8*, i32) #1

declare dso_local i32 @enclosed_rectangle(%struct.v4l2_rect*, %struct.v4l2_rect*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
