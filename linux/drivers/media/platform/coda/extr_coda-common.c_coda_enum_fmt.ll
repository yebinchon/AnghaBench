; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/coda/extr_coda-common.c_coda_enum_fmt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/coda/extr_coda-common.c_coda_enum_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_fmtdesc = type { i64, i64, i64 }
%struct.video_device = type { i32 }
%struct.coda_video_device = type { i64*, i64* }
%struct.coda_ctx = type { i32 }

@V4L2_BUF_TYPE_VIDEO_OUTPUT = common dso_local global i64 0, align 8
@V4L2_BUF_TYPE_VIDEO_CAPTURE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@CODA_MAX_FORMATS = common dso_local global i64 0, align 8
@V4L2_PIX_FMT_YUYV = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_fmtdesc*)* @coda_enum_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @coda_enum_fmt(%struct.file* %0, i8* %1, %struct.v4l2_fmtdesc* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_fmtdesc*, align 8
  %8 = alloca %struct.video_device*, align 8
  %9 = alloca %struct.coda_video_device*, align 8
  %10 = alloca %struct.coda_ctx*, align 8
  %11 = alloca i64*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_fmtdesc* %2, %struct.v4l2_fmtdesc** %7, align 8
  %12 = load %struct.file*, %struct.file** %5, align 8
  %13 = call %struct.video_device* @video_devdata(%struct.file* %12)
  store %struct.video_device* %13, %struct.video_device** %8, align 8
  %14 = load %struct.video_device*, %struct.video_device** %8, align 8
  %15 = call %struct.coda_video_device* @to_coda_video_device(%struct.video_device* %14)
  store %struct.coda_video_device* %15, %struct.coda_video_device** %9, align 8
  %16 = load i8*, i8** %6, align 8
  %17 = call %struct.coda_ctx* @fh_to_ctx(i8* %16)
  store %struct.coda_ctx* %17, %struct.coda_ctx** %10, align 8
  %18 = load %struct.v4l2_fmtdesc*, %struct.v4l2_fmtdesc** %7, align 8
  %19 = getelementptr inbounds %struct.v4l2_fmtdesc, %struct.v4l2_fmtdesc* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @V4L2_BUF_TYPE_VIDEO_OUTPUT, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %27

23:                                               ; preds = %3
  %24 = load %struct.coda_video_device*, %struct.coda_video_device** %9, align 8
  %25 = getelementptr inbounds %struct.coda_video_device, %struct.coda_video_device* %24, i32 0, i32 0
  %26 = load i64*, i64** %25, align 8
  store i64* %26, i64** %11, align 8
  br label %41

27:                                               ; preds = %3
  %28 = load %struct.v4l2_fmtdesc*, %struct.v4l2_fmtdesc** %7, align 8
  %29 = getelementptr inbounds %struct.v4l2_fmtdesc, %struct.v4l2_fmtdesc* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @V4L2_BUF_TYPE_VIDEO_CAPTURE, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %37

33:                                               ; preds = %27
  %34 = load %struct.coda_video_device*, %struct.coda_video_device** %9, align 8
  %35 = getelementptr inbounds %struct.coda_video_device, %struct.coda_video_device* %34, i32 0, i32 1
  %36 = load i64*, i64** %35, align 8
  store i64* %36, i64** %11, align 8
  br label %40

37:                                               ; preds = %27
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %4, align 4
  br label %90

40:                                               ; preds = %33
  br label %41

41:                                               ; preds = %40, %23
  %42 = load %struct.v4l2_fmtdesc*, %struct.v4l2_fmtdesc** %7, align 8
  %43 = getelementptr inbounds %struct.v4l2_fmtdesc, %struct.v4l2_fmtdesc* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @CODA_MAX_FORMATS, align 8
  %46 = icmp uge i64 %44, %45
  br i1 %46, label %55, label %47

47:                                               ; preds = %41
  %48 = load i64*, i64** %11, align 8
  %49 = load %struct.v4l2_fmtdesc*, %struct.v4l2_fmtdesc** %7, align 8
  %50 = getelementptr inbounds %struct.v4l2_fmtdesc, %struct.v4l2_fmtdesc* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = getelementptr inbounds i64, i64* %48, i64 %51
  %53 = load i64, i64* %52, align 8
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %47, %41
  %56 = load i32, i32* @EINVAL, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %4, align 4
  br label %90

58:                                               ; preds = %47
  %59 = load %struct.coda_ctx*, %struct.coda_ctx** %10, align 8
  %60 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %81, label %63

63:                                               ; preds = %58
  %64 = load %struct.v4l2_fmtdesc*, %struct.v4l2_fmtdesc** %7, align 8
  %65 = getelementptr inbounds %struct.v4l2_fmtdesc, %struct.v4l2_fmtdesc* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @V4L2_BUF_TYPE_VIDEO_CAPTURE, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %81

69:                                               ; preds = %63
  %70 = load i64*, i64** %11, align 8
  %71 = load %struct.v4l2_fmtdesc*, %struct.v4l2_fmtdesc** %7, align 8
  %72 = getelementptr inbounds %struct.v4l2_fmtdesc, %struct.v4l2_fmtdesc* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = getelementptr inbounds i64, i64* %70, i64 %73
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @V4L2_PIX_FMT_YUYV, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %81

78:                                               ; preds = %69
  %79 = load i32, i32* @EINVAL, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %4, align 4
  br label %90

81:                                               ; preds = %69, %63, %58
  %82 = load i64*, i64** %11, align 8
  %83 = load %struct.v4l2_fmtdesc*, %struct.v4l2_fmtdesc** %7, align 8
  %84 = getelementptr inbounds %struct.v4l2_fmtdesc, %struct.v4l2_fmtdesc* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = getelementptr inbounds i64, i64* %82, i64 %85
  %87 = load i64, i64* %86, align 8
  %88 = load %struct.v4l2_fmtdesc*, %struct.v4l2_fmtdesc** %7, align 8
  %89 = getelementptr inbounds %struct.v4l2_fmtdesc, %struct.v4l2_fmtdesc* %88, i32 0, i32 2
  store i64 %87, i64* %89, align 8
  store i32 0, i32* %4, align 4
  br label %90

90:                                               ; preds = %81, %78, %55, %37
  %91 = load i32, i32* %4, align 4
  ret i32 %91
}

declare dso_local %struct.video_device* @video_devdata(%struct.file*) #1

declare dso_local %struct.coda_video_device* @to_coda_video_device(%struct.video_device*) #1

declare dso_local %struct.coda_ctx* @fh_to_ctx(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
