; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/s5p-jpeg/extr_jpeg-core.c_vidioc_try_fmt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/s5p-jpeg/extr_jpeg-core.c_vidioc_try_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_format = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.v4l2_pix_format }
%struct.v4l2_pix_format = type { i64, i32, i32, i32, i32 }
%struct.s5p_jpeg_fmt = type { i64, i32, i32, i32, i32 }
%struct.s5p_jpeg_ctx = type { i32 }

@V4L2_FIELD_ANY = common dso_local global i64 0, align 8
@V4L2_FIELD_NONE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@FMT_TYPE_OUTPUT = common dso_local global i32 0, align 4
@S5P_JPEG_MIN_WIDTH = common dso_local global i32 0, align 4
@S5P_JPEG_MAX_WIDTH = common dso_local global i32 0, align 4
@S5P_JPEG_MIN_HEIGHT = common dso_local global i32 0, align 4
@S5P_JPEG_MAX_HEIGHT = common dso_local global i32 0, align 4
@V4L2_PIX_FMT_JPEG = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_format*, %struct.s5p_jpeg_fmt*, %struct.s5p_jpeg_ctx*, i32)* @vidioc_try_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vidioc_try_fmt(%struct.v4l2_format* %0, %struct.s5p_jpeg_fmt* %1, %struct.s5p_jpeg_ctx* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.v4l2_format*, align 8
  %7 = alloca %struct.s5p_jpeg_fmt*, align 8
  %8 = alloca %struct.s5p_jpeg_ctx*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.v4l2_pix_format*, align 8
  %11 = alloca i32, align 4
  store %struct.v4l2_format* %0, %struct.v4l2_format** %6, align 8
  store %struct.s5p_jpeg_fmt* %1, %struct.s5p_jpeg_fmt** %7, align 8
  store %struct.s5p_jpeg_ctx* %2, %struct.s5p_jpeg_ctx** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %13 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  store %struct.v4l2_pix_format* %14, %struct.v4l2_pix_format** %10, align 8
  %15 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %10, align 8
  %16 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @V4L2_FIELD_ANY, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %24

20:                                               ; preds = %4
  %21 = load i64, i64* @V4L2_FIELD_NONE, align 8
  %22 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %10, align 8
  %23 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %22, i32 0, i32 0
  store i64 %21, i64* %23, align 8
  br label %34

24:                                               ; preds = %4
  %25 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %10, align 8
  %26 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @V4L2_FIELD_NONE, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %24
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %5, align 4
  br label %146

33:                                               ; preds = %24
  br label %34

34:                                               ; preds = %33, %20
  %35 = load i32, i32* %9, align 4
  %36 = load i32, i32* @FMT_TYPE_OUTPUT, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %49

38:                                               ; preds = %34
  %39 = load %struct.s5p_jpeg_ctx*, %struct.s5p_jpeg_ctx** %8, align 8
  %40 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %10, align 8
  %41 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %40, i32 0, i32 1
  %42 = load i32, i32* @S5P_JPEG_MIN_WIDTH, align 4
  %43 = load i32, i32* @S5P_JPEG_MAX_WIDTH, align 4
  %44 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %10, align 8
  %45 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %44, i32 0, i32 2
  %46 = load i32, i32* @S5P_JPEG_MIN_HEIGHT, align 4
  %47 = load i32, i32* @S5P_JPEG_MAX_HEIGHT, align 4
  %48 = call i32 @jpeg_bound_align_image(%struct.s5p_jpeg_ctx* %39, i32* %41, i32 %42, i32 %43, i32 0, i32* %45, i32 %46, i32 %47, i32 0)
  br label %66

49:                                               ; preds = %34
  %50 = load %struct.s5p_jpeg_ctx*, %struct.s5p_jpeg_ctx** %8, align 8
  %51 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %10, align 8
  %52 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %51, i32 0, i32 1
  %53 = load i32, i32* @S5P_JPEG_MIN_WIDTH, align 4
  %54 = load i32, i32* @S5P_JPEG_MAX_WIDTH, align 4
  %55 = load %struct.s5p_jpeg_fmt*, %struct.s5p_jpeg_fmt** %7, align 8
  %56 = getelementptr inbounds %struct.s5p_jpeg_fmt, %struct.s5p_jpeg_fmt* %55, i32 0, i32 4
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %10, align 8
  %59 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %58, i32 0, i32 2
  %60 = load i32, i32* @S5P_JPEG_MIN_HEIGHT, align 4
  %61 = load i32, i32* @S5P_JPEG_MAX_HEIGHT, align 4
  %62 = load %struct.s5p_jpeg_fmt*, %struct.s5p_jpeg_fmt** %7, align 8
  %63 = getelementptr inbounds %struct.s5p_jpeg_fmt, %struct.s5p_jpeg_fmt* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @jpeg_bound_align_image(%struct.s5p_jpeg_ctx* %50, i32* %52, i32 %53, i32 %54, i32 %57, i32* %59, i32 %60, i32 %61, i32 %64)
  br label %66

66:                                               ; preds = %49, %38
  %67 = load %struct.s5p_jpeg_fmt*, %struct.s5p_jpeg_fmt** %7, align 8
  %68 = getelementptr inbounds %struct.s5p_jpeg_fmt, %struct.s5p_jpeg_fmt* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @V4L2_PIX_FMT_JPEG, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %84

72:                                               ; preds = %66
  %73 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %10, align 8
  %74 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 8
  %76 = icmp sle i32 %75, 0
  br i1 %76, label %77, label %81

77:                                               ; preds = %72
  %78 = load i32, i32* @PAGE_SIZE, align 4
  %79 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %10, align 8
  %80 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %79, i32 0, i32 3
  store i32 %78, i32* %80, align 8
  br label %81

81:                                               ; preds = %77, %72
  %82 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %10, align 8
  %83 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %82, i32 0, i32 4
  store i32 0, i32* %83, align 4
  br label %145

84:                                               ; preds = %66
  %85 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %10, align 8
  %86 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %85, i32 0, i32 4
  %87 = load i32, i32* %86, align 4
  store i32 %87, i32* %11, align 4
  %88 = load %struct.s5p_jpeg_fmt*, %struct.s5p_jpeg_fmt** %7, align 8
  %89 = getelementptr inbounds %struct.s5p_jpeg_fmt, %struct.s5p_jpeg_fmt* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 8
  %91 = icmp sgt i32 %90, 1
  br i1 %91, label %92, label %102

92:                                               ; preds = %84
  %93 = load i32, i32* %11, align 4
  %94 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %10, align 8
  %95 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 8
  %97 = icmp slt i32 %93, %96
  br i1 %97, label %98, label %102

98:                                               ; preds = %92
  %99 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %10, align 8
  %100 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 8
  store i32 %101, i32* %11, align 4
  br label %102

102:                                              ; preds = %98, %92, %84
  %103 = load %struct.s5p_jpeg_fmt*, %struct.s5p_jpeg_fmt** %7, align 8
  %104 = getelementptr inbounds %struct.s5p_jpeg_fmt, %struct.s5p_jpeg_fmt* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 8
  %106 = icmp eq i32 %105, 1
  br i1 %106, label %107, label %127

107:                                              ; preds = %102
  %108 = load i32, i32* %11, align 4
  %109 = shl i32 %108, 3
  %110 = load %struct.s5p_jpeg_fmt*, %struct.s5p_jpeg_fmt** %7, align 8
  %111 = getelementptr inbounds %struct.s5p_jpeg_fmt, %struct.s5p_jpeg_fmt* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 4
  %113 = sdiv i32 %109, %112
  %114 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %10, align 8
  %115 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 8
  %117 = icmp slt i32 %113, %116
  br i1 %117, label %118, label %127

118:                                              ; preds = %107
  %119 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %10, align 8
  %120 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 8
  %122 = load %struct.s5p_jpeg_fmt*, %struct.s5p_jpeg_fmt** %7, align 8
  %123 = getelementptr inbounds %struct.s5p_jpeg_fmt, %struct.s5p_jpeg_fmt* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 4
  %125 = mul nsw i32 %121, %124
  %126 = ashr i32 %125, 3
  store i32 %126, i32* %11, align 4
  br label %127

127:                                              ; preds = %118, %107, %102
  %128 = load i32, i32* %11, align 4
  %129 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %10, align 8
  %130 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %129, i32 0, i32 4
  store i32 %128, i32* %130, align 4
  %131 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %10, align 8
  %132 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 8
  %134 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %10, align 8
  %135 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %134, i32 0, i32 2
  %136 = load i32, i32* %135, align 4
  %137 = mul nsw i32 %133, %136
  %138 = load %struct.s5p_jpeg_fmt*, %struct.s5p_jpeg_fmt** %7, align 8
  %139 = getelementptr inbounds %struct.s5p_jpeg_fmt, %struct.s5p_jpeg_fmt* %138, i32 0, i32 2
  %140 = load i32, i32* %139, align 4
  %141 = mul nsw i32 %137, %140
  %142 = ashr i32 %141, 3
  %143 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %10, align 8
  %144 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %143, i32 0, i32 3
  store i32 %142, i32* %144, align 8
  br label %145

145:                                              ; preds = %127, %81
  store i32 0, i32* %5, align 4
  br label %146

146:                                              ; preds = %145, %30
  %147 = load i32, i32* %5, align 4
  ret i32 %147
}

declare dso_local i32 @jpeg_bound_align_image(%struct.s5p_jpeg_ctx*, i32*, i32, i32, i32, i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
