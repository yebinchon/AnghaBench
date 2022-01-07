; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/omap/extr_omap_vout.c_omap_vout_try_format.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/omap/extr_omap_vout.c_omap_vout_try_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.v4l2_pix_format = type { i32, i32, i64, i32, i32, i8*, i32 }

@VID_MIN_HEIGHT = common dso_local global i64 0, align 8
@VID_MAX_HEIGHT = common dso_local global i64 0, align 8
@VID_MIN_WIDTH = common dso_local global i64 0, align 8
@VID_MAX_WIDTH = common dso_local global i64 0, align 8
@NUM_OUTPUT_FORMATS = common dso_local global i32 0, align 4
@omap_formats = common dso_local global %struct.TYPE_2__* null, align 8
@V4L2_FIELD_NONE = common dso_local global i32 0, align 4
@V4L2_COLORSPACE_SRGB = common dso_local global i8* null, align 8
@YUYV_BPP = common dso_local global i32 0, align 4
@RGB565_BPP = common dso_local global i32 0, align 4
@RGB24_BPP = common dso_local global i32 0, align 4
@RGB32_BPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_pix_format*)* @omap_vout_try_format to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omap_vout_try_format(%struct.v4l2_pix_format* %0) #0 {
  %2 = alloca %struct.v4l2_pix_format*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.v4l2_pix_format* %0, %struct.v4l2_pix_format** %2, align 8
  store i32 0, i32* %4, align 4
  %5 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %2, align 8
  %6 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = load i64, i64* @VID_MIN_HEIGHT, align 8
  %9 = trunc i64 %8 to i32
  %10 = load i64, i64* @VID_MAX_HEIGHT, align 8
  %11 = trunc i64 %10 to i32
  %12 = call i8* @clamp(i32 %7, i32 %9, i32 %11)
  %13 = ptrtoint i8* %12 to i32
  %14 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %2, align 8
  %15 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 8
  %16 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %2, align 8
  %17 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load i64, i64* @VID_MIN_WIDTH, align 8
  %20 = trunc i64 %19 to i32
  %21 = load i64, i64* @VID_MAX_WIDTH, align 8
  %22 = trunc i64 %21 to i32
  %23 = call i8* @clamp(i32 %18, i32 %20, i32 %22)
  %24 = ptrtoint i8* %23 to i32
  %25 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %2, align 8
  %26 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 4
  store i32 0, i32* %3, align 4
  br label %27

27:                                               ; preds = %44, %1
  %28 = load i32, i32* %3, align 4
  %29 = load i32, i32* @NUM_OUTPUT_FORMATS, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %47

31:                                               ; preds = %27
  %32 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %2, align 8
  %33 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** @omap_formats, align 8
  %36 = load i32, i32* %3, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp eq i64 %34, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %31
  br label %47

43:                                               ; preds = %31
  br label %44

44:                                               ; preds = %43
  %45 = load i32, i32* %3, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %3, align 4
  br label %27

47:                                               ; preds = %42, %27
  %48 = load i32, i32* %3, align 4
  %49 = load i32, i32* @NUM_OUTPUT_FORMATS, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %47
  store i32 0, i32* %3, align 4
  br label %52

52:                                               ; preds = %51, %47
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** @omap_formats, align 8
  %54 = load i32, i32* %3, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %2, align 8
  %60 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %59, i32 0, i32 2
  store i64 %58, i64* %60, align 8
  %61 = load i32, i32* @V4L2_FIELD_NONE, align 4
  %62 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %2, align 8
  %63 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %62, i32 0, i32 6
  store i32 %61, i32* %63, align 8
  %64 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %2, align 8
  %65 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %64, i32 0, i32 2
  %66 = load i64, i64* %65, align 8
  switch i64 %66, label %68 [
    i64 128, label %67
    i64 129, label %67
    i64 131, label %73
    i64 130, label %73
    i64 133, label %78
    i64 132, label %83
    i64 134, label %83
  ]

67:                                               ; preds = %52, %52
  br label %68

68:                                               ; preds = %52, %67
  %69 = load i8*, i8** @V4L2_COLORSPACE_SRGB, align 8
  %70 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %2, align 8
  %71 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %70, i32 0, i32 5
  store i8* %69, i8** %71, align 8
  %72 = load i32, i32* @YUYV_BPP, align 4
  store i32 %72, i32* %4, align 4
  br label %88

73:                                               ; preds = %52, %52
  %74 = load i8*, i8** @V4L2_COLORSPACE_SRGB, align 8
  %75 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %2, align 8
  %76 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %75, i32 0, i32 5
  store i8* %74, i8** %76, align 8
  %77 = load i32, i32* @RGB565_BPP, align 4
  store i32 %77, i32* %4, align 4
  br label %88

78:                                               ; preds = %52
  %79 = load i8*, i8** @V4L2_COLORSPACE_SRGB, align 8
  %80 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %2, align 8
  %81 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %80, i32 0, i32 5
  store i8* %79, i8** %81, align 8
  %82 = load i32, i32* @RGB24_BPP, align 4
  store i32 %82, i32* %4, align 4
  br label %88

83:                                               ; preds = %52, %52
  %84 = load i8*, i8** @V4L2_COLORSPACE_SRGB, align 8
  %85 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %2, align 8
  %86 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %85, i32 0, i32 5
  store i8* %84, i8** %86, align 8
  %87 = load i32, i32* @RGB32_BPP, align 4
  store i32 %87, i32* %4, align 4
  br label %88

88:                                               ; preds = %83, %78, %73, %68
  %89 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %2, align 8
  %90 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* %4, align 4
  %93 = mul nsw i32 %91, %92
  %94 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %2, align 8
  %95 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %94, i32 0, i32 3
  store i32 %93, i32* %95, align 8
  %96 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %2, align 8
  %97 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %96, i32 0, i32 3
  %98 = load i32, i32* %97, align 8
  %99 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %2, align 8
  %100 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = mul nsw i32 %98, %101
  %103 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %2, align 8
  %104 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %103, i32 0, i32 4
  store i32 %102, i32* %104, align 4
  %105 = load i32, i32* %4, align 4
  ret i32 %105
}

declare dso_local i8* @clamp(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
