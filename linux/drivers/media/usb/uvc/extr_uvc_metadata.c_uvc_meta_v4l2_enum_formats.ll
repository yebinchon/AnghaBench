; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/uvc/extr_uvc_metadata.c_uvc_meta_v4l2_enum_formats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/uvc/extr_uvc_metadata.c_uvc_meta_v4l2_enum_formats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.v4l2_fh* }
%struct.v4l2_fh = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }
%struct.v4l2_fmtdesc = type { i32, i64, i32 }
%struct.uvc_streaming = type { %struct.uvc_device* }
%struct.uvc_device = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@V4L2_META_FMT_UVC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_fmtdesc*)* @uvc_meta_v4l2_enum_formats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uvc_meta_v4l2_enum_formats(%struct.file* %0, i8* %1, %struct.v4l2_fmtdesc* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_fmtdesc*, align 8
  %8 = alloca %struct.v4l2_fh*, align 8
  %9 = alloca %struct.uvc_streaming*, align 8
  %10 = alloca %struct.uvc_device*, align 8
  %11 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_fmtdesc* %2, %struct.v4l2_fmtdesc** %7, align 8
  %12 = load %struct.file*, %struct.file** %5, align 8
  %13 = getelementptr inbounds %struct.file, %struct.file* %12, i32 0, i32 0
  %14 = load %struct.v4l2_fh*, %struct.v4l2_fh** %13, align 8
  store %struct.v4l2_fh* %14, %struct.v4l2_fh** %8, align 8
  %15 = load %struct.v4l2_fh*, %struct.v4l2_fh** %8, align 8
  %16 = getelementptr inbounds %struct.v4l2_fh, %struct.v4l2_fh* %15, i32 0, i32 0
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %18 = call %struct.uvc_streaming* @video_get_drvdata(%struct.TYPE_6__* %17)
  store %struct.uvc_streaming* %18, %struct.uvc_streaming** %9, align 8
  %19 = load %struct.uvc_streaming*, %struct.uvc_streaming** %9, align 8
  %20 = getelementptr inbounds %struct.uvc_streaming, %struct.uvc_streaming* %19, i32 0, i32 0
  %21 = load %struct.uvc_device*, %struct.uvc_device** %20, align 8
  store %struct.uvc_device* %21, %struct.uvc_device** %10, align 8
  %22 = load %struct.v4l2_fmtdesc*, %struct.v4l2_fmtdesc** %7, align 8
  %23 = getelementptr inbounds %struct.v4l2_fmtdesc, %struct.v4l2_fmtdesc* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  store i32 %24, i32* %11, align 4
  %25 = load %struct.v4l2_fmtdesc*, %struct.v4l2_fmtdesc** %7, align 8
  %26 = getelementptr inbounds %struct.v4l2_fmtdesc, %struct.v4l2_fmtdesc* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.v4l2_fh*, %struct.v4l2_fh** %8, align 8
  %29 = getelementptr inbounds %struct.v4l2_fh, %struct.v4l2_fh* %28, i32 0, i32 0
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %27, %34
  br i1 %35, label %49, label %36

36:                                               ; preds = %3
  %37 = load i32, i32* %11, align 4
  %38 = icmp ugt i32 %37, 1
  br i1 %38, label %49, label %39

39:                                               ; preds = %36
  %40 = load i32, i32* %11, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %52

42:                                               ; preds = %39
  %43 = load %struct.uvc_device*, %struct.uvc_device** %10, align 8
  %44 = getelementptr inbounds %struct.uvc_device, %struct.uvc_device* %43, i32 0, i32 0
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %52, label %49

49:                                               ; preds = %42, %36, %3
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %4, align 4
  br label %81

52:                                               ; preds = %42, %39
  %53 = load %struct.v4l2_fmtdesc*, %struct.v4l2_fmtdesc** %7, align 8
  %54 = call i32 @memset(%struct.v4l2_fmtdesc* %53, i32 0, i32 24)
  %55 = load %struct.v4l2_fh*, %struct.v4l2_fh** %8, align 8
  %56 = getelementptr inbounds %struct.v4l2_fh, %struct.v4l2_fh* %55, i32 0, i32 0
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.v4l2_fmtdesc*, %struct.v4l2_fmtdesc** %7, align 8
  %63 = getelementptr inbounds %struct.v4l2_fmtdesc, %struct.v4l2_fmtdesc* %62, i32 0, i32 1
  store i64 %61, i64* %63, align 8
  %64 = load i32, i32* %11, align 4
  %65 = load %struct.v4l2_fmtdesc*, %struct.v4l2_fmtdesc** %7, align 8
  %66 = getelementptr inbounds %struct.v4l2_fmtdesc, %struct.v4l2_fmtdesc* %65, i32 0, i32 0
  store i32 %64, i32* %66, align 8
  %67 = load i32, i32* %11, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %75

69:                                               ; preds = %52
  %70 = load %struct.uvc_device*, %struct.uvc_device** %10, align 8
  %71 = getelementptr inbounds %struct.uvc_device, %struct.uvc_device* %70, i32 0, i32 0
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  br label %77

75:                                               ; preds = %52
  %76 = load i32, i32* @V4L2_META_FMT_UVC, align 4
  br label %77

77:                                               ; preds = %75, %69
  %78 = phi i32 [ %74, %69 ], [ %76, %75 ]
  %79 = load %struct.v4l2_fmtdesc*, %struct.v4l2_fmtdesc** %7, align 8
  %80 = getelementptr inbounds %struct.v4l2_fmtdesc, %struct.v4l2_fmtdesc* %79, i32 0, i32 2
  store i32 %78, i32* %80, align 8
  store i32 0, i32* %4, align 4
  br label %81

81:                                               ; preds = %77, %49
  %82 = load i32, i32* %4, align 4
  ret i32 %82
}

declare dso_local %struct.uvc_streaming* @video_get_drvdata(%struct.TYPE_6__*) #1

declare dso_local i32 @memset(%struct.v4l2_fmtdesc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
