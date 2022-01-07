; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/coda/extr_coda-common.c_coda_enum_framesizes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/coda/extr_coda-common.c_coda_enum_framesizes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_frmsizeenum = type { i64, %struct.TYPE_2__, i32, i64 }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32 }
%struct.coda_ctx = type { i64, i32 }
%struct.coda_q_data = type { i64 }
%struct.coda_codec = type { i32, i32 }

@CODA_INST_ENCODER = common dso_local global i64 0, align 8
@ENOTTY = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@V4L2_PIX_FMT_YUV420 = common dso_local global i64 0, align 8
@V4L2_BUF_TYPE_VIDEO_CAPTURE = common dso_local global i32 0, align 4
@V4L2_FRMSIZE_TYPE_CONTINUOUS = common dso_local global i32 0, align 4
@MIN_W = common dso_local global i32 0, align 4
@MIN_H = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_frmsizeenum*)* @coda_enum_framesizes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @coda_enum_framesizes(%struct.file* %0, i8* %1, %struct.v4l2_frmsizeenum* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_frmsizeenum*, align 8
  %8 = alloca %struct.coda_ctx*, align 8
  %9 = alloca %struct.coda_q_data*, align 8
  %10 = alloca %struct.coda_codec*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_frmsizeenum* %2, %struct.v4l2_frmsizeenum** %7, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = call %struct.coda_ctx* @fh_to_ctx(i8* %11)
  store %struct.coda_ctx* %12, %struct.coda_ctx** %8, align 8
  %13 = load %struct.coda_ctx*, %struct.coda_ctx** %8, align 8
  %14 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @CODA_INST_ENCODER, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %3
  %19 = load i32, i32* @ENOTTY, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %95

21:                                               ; preds = %3
  %22 = load %struct.v4l2_frmsizeenum*, %struct.v4l2_frmsizeenum** %7, align 8
  %23 = getelementptr inbounds %struct.v4l2_frmsizeenum, %struct.v4l2_frmsizeenum* %22, i32 0, i32 3
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %21
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %4, align 4
  br label %95

29:                                               ; preds = %21
  %30 = load %struct.v4l2_frmsizeenum*, %struct.v4l2_frmsizeenum** %7, align 8
  %31 = getelementptr inbounds %struct.v4l2_frmsizeenum, %struct.v4l2_frmsizeenum* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = call i64 @coda_format_normalize_yuv(i64 %32)
  %34 = load i64, i64* @V4L2_PIX_FMT_YUV420, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %50

36:                                               ; preds = %29
  %37 = load %struct.coda_ctx*, %struct.coda_ctx** %8, align 8
  %38 = load i32, i32* @V4L2_BUF_TYPE_VIDEO_CAPTURE, align 4
  %39 = call %struct.coda_q_data* @get_q_data(%struct.coda_ctx* %37, i32 %38)
  store %struct.coda_q_data* %39, %struct.coda_q_data** %9, align 8
  %40 = load %struct.coda_ctx*, %struct.coda_ctx** %8, align 8
  %41 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.v4l2_frmsizeenum*, %struct.v4l2_frmsizeenum** %7, align 8
  %44 = getelementptr inbounds %struct.v4l2_frmsizeenum, %struct.v4l2_frmsizeenum* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.coda_q_data*, %struct.coda_q_data** %9, align 8
  %47 = getelementptr inbounds %struct.coda_q_data, %struct.coda_q_data* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = call %struct.coda_codec* @coda_find_codec(i32 %42, i64 %45, i64 %48)
  store %struct.coda_codec* %49, %struct.coda_codec** %10, align 8
  br label %59

50:                                               ; preds = %29
  %51 = load %struct.coda_ctx*, %struct.coda_ctx** %8, align 8
  %52 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = load i64, i64* @V4L2_PIX_FMT_YUV420, align 8
  %55 = load %struct.v4l2_frmsizeenum*, %struct.v4l2_frmsizeenum** %7, align 8
  %56 = getelementptr inbounds %struct.v4l2_frmsizeenum, %struct.v4l2_frmsizeenum* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = call %struct.coda_codec* @coda_find_codec(i32 %53, i64 %54, i64 %57)
  store %struct.coda_codec* %58, %struct.coda_codec** %10, align 8
  br label %59

59:                                               ; preds = %50, %36
  %60 = load %struct.coda_codec*, %struct.coda_codec** %10, align 8
  %61 = icmp ne %struct.coda_codec* %60, null
  br i1 %61, label %65, label %62

62:                                               ; preds = %59
  %63 = load i32, i32* @EINVAL, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %4, align 4
  br label %95

65:                                               ; preds = %59
  %66 = load i32, i32* @V4L2_FRMSIZE_TYPE_CONTINUOUS, align 4
  %67 = load %struct.v4l2_frmsizeenum*, %struct.v4l2_frmsizeenum** %7, align 8
  %68 = getelementptr inbounds %struct.v4l2_frmsizeenum, %struct.v4l2_frmsizeenum* %67, i32 0, i32 2
  store i32 %66, i32* %68, align 8
  %69 = load i32, i32* @MIN_W, align 4
  %70 = load %struct.v4l2_frmsizeenum*, %struct.v4l2_frmsizeenum** %7, align 8
  %71 = getelementptr inbounds %struct.v4l2_frmsizeenum, %struct.v4l2_frmsizeenum* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 5
  store i32 %69, i32* %72, align 4
  %73 = load %struct.coda_codec*, %struct.coda_codec** %10, align 8
  %74 = getelementptr inbounds %struct.coda_codec, %struct.coda_codec* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.v4l2_frmsizeenum*, %struct.v4l2_frmsizeenum** %7, align 8
  %77 = getelementptr inbounds %struct.v4l2_frmsizeenum, %struct.v4l2_frmsizeenum* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 4
  store i32 %75, i32* %78, align 8
  %79 = load %struct.v4l2_frmsizeenum*, %struct.v4l2_frmsizeenum** %7, align 8
  %80 = getelementptr inbounds %struct.v4l2_frmsizeenum, %struct.v4l2_frmsizeenum* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 0
  store i32 1, i32* %81, align 8
  %82 = load i32, i32* @MIN_H, align 4
  %83 = load %struct.v4l2_frmsizeenum*, %struct.v4l2_frmsizeenum** %7, align 8
  %84 = getelementptr inbounds %struct.v4l2_frmsizeenum, %struct.v4l2_frmsizeenum* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 3
  store i32 %82, i32* %85, align 4
  %86 = load %struct.coda_codec*, %struct.coda_codec** %10, align 8
  %87 = getelementptr inbounds %struct.coda_codec, %struct.coda_codec* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.v4l2_frmsizeenum*, %struct.v4l2_frmsizeenum** %7, align 8
  %90 = getelementptr inbounds %struct.v4l2_frmsizeenum, %struct.v4l2_frmsizeenum* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 2
  store i32 %88, i32* %91, align 8
  %92 = load %struct.v4l2_frmsizeenum*, %struct.v4l2_frmsizeenum** %7, align 8
  %93 = getelementptr inbounds %struct.v4l2_frmsizeenum, %struct.v4l2_frmsizeenum* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 1
  store i32 1, i32* %94, align 4
  store i32 0, i32* %4, align 4
  br label %95

95:                                               ; preds = %65, %62, %26, %18
  %96 = load i32, i32* %4, align 4
  ret i32 %96
}

declare dso_local %struct.coda_ctx* @fh_to_ctx(i8*) #1

declare dso_local i64 @coda_format_normalize_yuv(i64) #1

declare dso_local %struct.coda_q_data* @get_q_data(%struct.coda_ctx*, i32) #1

declare dso_local %struct.coda_codec* @coda_find_codec(i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
