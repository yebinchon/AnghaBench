; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/s5p-jpeg/extr_jpeg-core.c_s5p_jpeg_try_fmt_vid_cap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/s5p-jpeg/extr_jpeg-core.c_s5p_jpeg_try_fmt_vid_cap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_format = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.v4l2_pix_format }
%struct.v4l2_pix_format = type { i64 }
%struct.s5p_jpeg_ctx = type { i64, i64, %struct.TYPE_8__, %struct.TYPE_7__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.s5p_jpeg_fmt = type { i32, i64, i32 }

@FMT_TYPE_CAPTURE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Fourcc format (0x%08x) invalid.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@S5P_JPEG_DECODE = common dso_local global i64 0, align 8
@SJPEG_FMT_NON_RGB = common dso_local global i32 0, align 4
@V4L2_PIX_FMT_GREY = common dso_local global i64 0, align 8
@V4L2_JPEG_CHROMA_SUBSAMPLING_420 = common dso_local global i64 0, align 8
@V4L2_PIX_FMT_NV12 = common dso_local global i64 0, align 8
@V4L2_PIX_FMT_NV21 = common dso_local global i64 0, align 8
@V4L2_PIX_FMT_YUV420 = common dso_local global i64 0, align 8
@V4L2_PIX_FMT_RGB565 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_format*)* @s5p_jpeg_try_fmt_vid_cap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s5p_jpeg_try_fmt_vid_cap(%struct.file* %0, i8* %1, %struct.v4l2_format* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_format*, align 8
  %8 = alloca %struct.s5p_jpeg_ctx*, align 8
  %9 = alloca %struct.v4l2_pix_format*, align 8
  %10 = alloca %struct.s5p_jpeg_fmt*, align 8
  %11 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_format* %2, %struct.v4l2_format** %7, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = call %struct.s5p_jpeg_ctx* @fh_to_ctx(i8* %12)
  store %struct.s5p_jpeg_ctx* %13, %struct.s5p_jpeg_ctx** %8, align 8
  %14 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %15 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  store %struct.v4l2_pix_format* %16, %struct.v4l2_pix_format** %9, align 8
  %17 = load %struct.s5p_jpeg_ctx*, %struct.s5p_jpeg_ctx** %8, align 8
  %18 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %19 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i32, i32* @FMT_TYPE_CAPTURE, align 4
  %24 = call %struct.s5p_jpeg_fmt* @s5p_jpeg_find_format(%struct.s5p_jpeg_ctx* %17, i64 %22, i32 %23)
  store %struct.s5p_jpeg_fmt* %24, %struct.s5p_jpeg_fmt** %10, align 8
  %25 = load %struct.s5p_jpeg_fmt*, %struct.s5p_jpeg_fmt** %10, align 8
  %26 = icmp ne %struct.s5p_jpeg_fmt* %25, null
  br i1 %26, label %40, label %27

27:                                               ; preds = %3
  %28 = load %struct.s5p_jpeg_ctx*, %struct.s5p_jpeg_ctx** %8, align 8
  %29 = getelementptr inbounds %struct.s5p_jpeg_ctx, %struct.s5p_jpeg_ctx* %28, i32 0, i32 3
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 1
  %32 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %33 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = call i32 @v4l2_err(i32* %31, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i64 %36)
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %4, align 4
  br label %143

40:                                               ; preds = %3
  %41 = load %struct.s5p_jpeg_ctx*, %struct.s5p_jpeg_ctx** %8, align 8
  %42 = getelementptr inbounds %struct.s5p_jpeg_ctx, %struct.s5p_jpeg_ctx* %41, i32 0, i32 3
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %40
  %50 = load %struct.s5p_jpeg_ctx*, %struct.s5p_jpeg_ctx** %8, align 8
  %51 = getelementptr inbounds %struct.s5p_jpeg_ctx, %struct.s5p_jpeg_ctx* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @S5P_JPEG_DECODE, align 8
  %54 = icmp ne i64 %52, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %49, %40
  br label %137

56:                                               ; preds = %49
  %57 = load %struct.s5p_jpeg_fmt*, %struct.s5p_jpeg_fmt** %10, align 8
  %58 = getelementptr inbounds %struct.s5p_jpeg_fmt, %struct.s5p_jpeg_fmt* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @SJPEG_FMT_NON_RGB, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %95

63:                                               ; preds = %56
  %64 = load %struct.s5p_jpeg_fmt*, %struct.s5p_jpeg_fmt** %10, align 8
  %65 = getelementptr inbounds %struct.s5p_jpeg_fmt, %struct.s5p_jpeg_fmt* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.s5p_jpeg_ctx*, %struct.s5p_jpeg_ctx** %8, align 8
  %68 = getelementptr inbounds %struct.s5p_jpeg_ctx, %struct.s5p_jpeg_ctx* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = icmp slt i64 %66, %69
  br i1 %70, label %71, label %95

71:                                               ; preds = %63
  %72 = load %struct.s5p_jpeg_ctx*, %struct.s5p_jpeg_ctx** %8, align 8
  %73 = getelementptr inbounds %struct.s5p_jpeg_ctx, %struct.s5p_jpeg_ctx* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = load %struct.s5p_jpeg_fmt*, %struct.s5p_jpeg_fmt** %10, align 8
  %76 = getelementptr inbounds %struct.s5p_jpeg_fmt, %struct.s5p_jpeg_fmt* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %9, align 8
  %79 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %78, i32 0, i32 0
  %80 = load %struct.s5p_jpeg_ctx*, %struct.s5p_jpeg_ctx** %8, align 8
  %81 = call i32 @s5p_jpeg_adjust_fourcc_to_subsampling(i64 %74, i32 %77, i64* %79, %struct.s5p_jpeg_ctx* %80)
  store i32 %81, i32* %11, align 4
  %82 = load i32, i32* %11, align 4
  %83 = icmp slt i32 %82, 0
  br i1 %83, label %84, label %88

84:                                               ; preds = %71
  %85 = load i64, i64* @V4L2_PIX_FMT_GREY, align 8
  %86 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %9, align 8
  %87 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %86, i32 0, i32 0
  store i64 %85, i64* %87, align 8
  br label %88

88:                                               ; preds = %84, %71
  %89 = load %struct.s5p_jpeg_ctx*, %struct.s5p_jpeg_ctx** %8, align 8
  %90 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %9, align 8
  %91 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load i32, i32* @FMT_TYPE_CAPTURE, align 4
  %94 = call %struct.s5p_jpeg_fmt* @s5p_jpeg_find_format(%struct.s5p_jpeg_ctx* %89, i64 %92, i32 %93)
  store %struct.s5p_jpeg_fmt* %94, %struct.s5p_jpeg_fmt** %10, align 8
  br label %95

95:                                               ; preds = %88, %63, %56
  %96 = load %struct.s5p_jpeg_ctx*, %struct.s5p_jpeg_ctx** %8, align 8
  %97 = getelementptr inbounds %struct.s5p_jpeg_ctx, %struct.s5p_jpeg_ctx* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* @V4L2_JPEG_CHROMA_SUBSAMPLING_420, align 8
  %100 = icmp eq i64 %98, %99
  br i1 %100, label %101, label %136

101:                                              ; preds = %95
  %102 = load %struct.s5p_jpeg_ctx*, %struct.s5p_jpeg_ctx** %8, align 8
  %103 = getelementptr inbounds %struct.s5p_jpeg_ctx, %struct.s5p_jpeg_ctx* %102, i32 0, i32 2
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = and i32 %105, 1
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %136

108:                                              ; preds = %101
  %109 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %9, align 8
  %110 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = load i64, i64* @V4L2_PIX_FMT_NV12, align 8
  %113 = icmp eq i64 %111, %112
  br i1 %113, label %126, label %114

114:                                              ; preds = %108
  %115 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %9, align 8
  %116 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = load i64, i64* @V4L2_PIX_FMT_NV21, align 8
  %119 = icmp eq i64 %117, %118
  br i1 %119, label %126, label %120

120:                                              ; preds = %114
  %121 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %9, align 8
  %122 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = load i64, i64* @V4L2_PIX_FMT_YUV420, align 8
  %125 = icmp eq i64 %123, %124
  br i1 %125, label %126, label %136

126:                                              ; preds = %120, %114, %108
  %127 = load i64, i64* @V4L2_PIX_FMT_RGB565, align 8
  %128 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %9, align 8
  %129 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %128, i32 0, i32 0
  store i64 %127, i64* %129, align 8
  %130 = load %struct.s5p_jpeg_ctx*, %struct.s5p_jpeg_ctx** %8, align 8
  %131 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %9, align 8
  %132 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = load i32, i32* @FMT_TYPE_CAPTURE, align 4
  %135 = call %struct.s5p_jpeg_fmt* @s5p_jpeg_find_format(%struct.s5p_jpeg_ctx* %130, i64 %133, i32 %134)
  store %struct.s5p_jpeg_fmt* %135, %struct.s5p_jpeg_fmt** %10, align 8
  br label %136

136:                                              ; preds = %126, %120, %101, %95
  br label %137

137:                                              ; preds = %136, %55
  %138 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %139 = load %struct.s5p_jpeg_fmt*, %struct.s5p_jpeg_fmt** %10, align 8
  %140 = load %struct.s5p_jpeg_ctx*, %struct.s5p_jpeg_ctx** %8, align 8
  %141 = load i32, i32* @FMT_TYPE_CAPTURE, align 4
  %142 = call i32 @vidioc_try_fmt(%struct.v4l2_format* %138, %struct.s5p_jpeg_fmt* %139, %struct.s5p_jpeg_ctx* %140, i32 %141)
  store i32 %142, i32* %4, align 4
  br label %143

143:                                              ; preds = %137, %27
  %144 = load i32, i32* %4, align 4
  ret i32 %144
}

declare dso_local %struct.s5p_jpeg_ctx* @fh_to_ctx(i8*) #1

declare dso_local %struct.s5p_jpeg_fmt* @s5p_jpeg_find_format(%struct.s5p_jpeg_ctx*, i64, i32) #1

declare dso_local i32 @v4l2_err(i32*, i8*, i64) #1

declare dso_local i32 @s5p_jpeg_adjust_fourcc_to_subsampling(i64, i32, i64*, %struct.s5p_jpeg_ctx*) #1

declare dso_local i32 @vidioc_try_fmt(%struct.v4l2_format*, %struct.s5p_jpeg_fmt*, %struct.s5p_jpeg_ctx*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
