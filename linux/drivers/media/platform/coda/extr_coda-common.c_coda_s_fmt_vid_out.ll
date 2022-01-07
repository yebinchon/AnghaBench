; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/coda/extr_coda-common.c_coda_s_fmt_vid_out.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/coda/extr_coda-common.c_coda_s_fmt_vid_out.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_format = type { %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.coda_ctx = type { i64, %struct.TYPE_5__, %struct.coda_codec*, %struct.TYPE_8__*, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.coda_codec = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.vb2_queue = type { i32 }

@CODA_INST_DECODER = common dso_local global i64 0, align 8
@V4L2_PIX_FMT_YUV420 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"failed to determine codec\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@V4L2_BUF_TYPE_VIDEO_CAPTURE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_format*)* @coda_s_fmt_vid_out to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @coda_s_fmt_vid_out(%struct.file* %0, i8* %1, %struct.v4l2_format* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_format*, align 8
  %8 = alloca %struct.coda_ctx*, align 8
  %9 = alloca %struct.coda_codec*, align 8
  %10 = alloca %struct.v4l2_format, align 4
  %11 = alloca %struct.vb2_queue*, align 8
  %12 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_format* %2, %struct.v4l2_format** %7, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = call %struct.coda_ctx* @fh_to_ctx(i8* %13)
  store %struct.coda_ctx* %14, %struct.coda_ctx** %8, align 8
  %15 = load %struct.file*, %struct.file** %5, align 8
  %16 = load i8*, i8** %6, align 8
  %17 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %18 = call i32 @coda_try_fmt_vid_out(%struct.file* %15, i8* %16, %struct.v4l2_format* %17)
  store i32 %18, i32* %12, align 4
  %19 = load i32, i32* %12, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %3
  %22 = load i32, i32* %12, align 4
  store i32 %22, i32* %4, align 4
  br label %133

23:                                               ; preds = %3
  %24 = load %struct.coda_ctx*, %struct.coda_ctx** %8, align 8
  %25 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %26 = call i32 @coda_s_fmt(%struct.coda_ctx* %24, %struct.v4l2_format* %25, i32* null)
  store i32 %26, i32* %12, align 4
  %27 = load i32, i32* %12, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %23
  %30 = load i32, i32* %12, align 4
  store i32 %30, i32* %4, align 4
  br label %133

31:                                               ; preds = %23
  %32 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %33 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 6
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.coda_ctx*, %struct.coda_ctx** %8, align 8
  %38 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %37, i32 0, i32 7
  store i32 %36, i32* %38, align 4
  %39 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %40 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 5
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.coda_ctx*, %struct.coda_ctx** %8, align 8
  %45 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %44, i32 0, i32 6
  store i32 %43, i32* %45, align 8
  %46 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %47 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 4
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.coda_ctx*, %struct.coda_ctx** %8, align 8
  %52 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %51, i32 0, i32 5
  store i32 %50, i32* %52, align 4
  %53 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %54 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.coda_ctx*, %struct.coda_ctx** %8, align 8
  %59 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %58, i32 0, i32 4
  store i32 %57, i32* %59, align 8
  %60 = load %struct.coda_ctx*, %struct.coda_ctx** %8, align 8
  %61 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @CODA_INST_DECODER, align 8
  %64 = icmp ne i64 %62, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %31
  store i32 0, i32* %4, align 4
  br label %133

66:                                               ; preds = %31
  %67 = load %struct.coda_ctx*, %struct.coda_ctx** %8, align 8
  %68 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %67, i32 0, i32 3
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %68, align 8
  %70 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %71 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @V4L2_PIX_FMT_YUV420, align 4
  %76 = call %struct.coda_codec* @coda_find_codec(%struct.TYPE_8__* %69, i32 %74, i32 %75)
  store %struct.coda_codec* %76, %struct.coda_codec** %9, align 8
  %77 = load %struct.coda_codec*, %struct.coda_codec** %9, align 8
  %78 = icmp ne %struct.coda_codec* %77, null
  br i1 %78, label %87, label %79

79:                                               ; preds = %66
  %80 = load %struct.coda_ctx*, %struct.coda_ctx** %8, align 8
  %81 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %80, i32 0, i32 3
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 0
  %84 = call i32 @v4l2_err(i32* %83, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %85 = load i32, i32* @EINVAL, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %4, align 4
  br label %133

87:                                               ; preds = %66
  %88 = load %struct.coda_codec*, %struct.coda_codec** %9, align 8
  %89 = load %struct.coda_ctx*, %struct.coda_ctx** %8, align 8
  %90 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %89, i32 0, i32 2
  store %struct.coda_codec* %88, %struct.coda_codec** %90, align 8
  %91 = load %struct.coda_ctx*, %struct.coda_ctx** %8, align 8
  %92 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* @V4L2_BUF_TYPE_VIDEO_CAPTURE, align 4
  %96 = call %struct.vb2_queue* @v4l2_m2m_get_vq(i32 %94, i32 %95)
  store %struct.vb2_queue* %96, %struct.vb2_queue** %11, align 8
  %97 = load %struct.vb2_queue*, %struct.vb2_queue** %11, align 8
  %98 = icmp ne %struct.vb2_queue* %97, null
  br i1 %98, label %102, label %99

99:                                               ; preds = %87
  %100 = load i32, i32* @EINVAL, align 4
  %101 = sub nsw i32 0, %100
  store i32 %101, i32* %4, align 4
  br label %133

102:                                              ; preds = %87
  %103 = load %struct.vb2_queue*, %struct.vb2_queue** %11, align 8
  %104 = call i64 @vb2_is_busy(%struct.vb2_queue* %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %102
  store i32 0, i32* %4, align 4
  br label %133

107:                                              ; preds = %102
  %108 = call i32 @memset(%struct.v4l2_format* %10, i32 0, i32 32)
  %109 = load i32, i32* @V4L2_BUF_TYPE_VIDEO_CAPTURE, align 4
  %110 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %10, i32 0, i32 1
  store i32 %109, i32* %110, align 4
  %111 = load %struct.file*, %struct.file** %5, align 8
  %112 = load i8*, i8** %6, align 8
  %113 = call i32 @coda_g_fmt(%struct.file* %111, i8* %112, %struct.v4l2_format* %10)
  %114 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %115 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %10, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i32 0, i32 1
  store i32 %118, i32* %121, align 4
  %122 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %123 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %10, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %128, i32 0, i32 0
  store i32 %126, i32* %129, align 4
  %130 = load %struct.file*, %struct.file** %5, align 8
  %131 = load i8*, i8** %6, align 8
  %132 = call i32 @coda_s_fmt_vid_cap(%struct.file* %130, i8* %131, %struct.v4l2_format* %10)
  store i32 %132, i32* %4, align 4
  br label %133

133:                                              ; preds = %107, %106, %99, %79, %65, %29, %21
  %134 = load i32, i32* %4, align 4
  ret i32 %134
}

declare dso_local %struct.coda_ctx* @fh_to_ctx(i8*) #1

declare dso_local i32 @coda_try_fmt_vid_out(%struct.file*, i8*, %struct.v4l2_format*) #1

declare dso_local i32 @coda_s_fmt(%struct.coda_ctx*, %struct.v4l2_format*, i32*) #1

declare dso_local %struct.coda_codec* @coda_find_codec(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @v4l2_err(i32*, i8*) #1

declare dso_local %struct.vb2_queue* @v4l2_m2m_get_vq(i32, i32) #1

declare dso_local i64 @vb2_is_busy(%struct.vb2_queue*) #1

declare dso_local i32 @memset(%struct.v4l2_format*, i32, i32) #1

declare dso_local i32 @coda_g_fmt(%struct.file*, i8*, %struct.v4l2_format*) #1

declare dso_local i32 @coda_s_fmt_vid_cap(%struct.file*, i8*, %struct.v4l2_format*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
