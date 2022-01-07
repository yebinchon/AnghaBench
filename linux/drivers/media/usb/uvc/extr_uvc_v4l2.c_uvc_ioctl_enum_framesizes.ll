; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/uvc/extr_uvc_v4l2.c_uvc_ioctl_enum_framesizes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/uvc/extr_uvc_v4l2.c_uvc_ioctl_enum_framesizes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_frmsizeenum = type { i64, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64, i64 }
%struct.uvc_fh = type { %struct.uvc_streaming* }
%struct.uvc_streaming = type { i32, %struct.uvc_format* }
%struct.uvc_format = type { i64, i32, %struct.uvc_frame* }
%struct.uvc_frame = type { i64, i64 }

@EINVAL = common dso_local global i32 0, align 4
@V4L2_FRMSIZE_TYPE_DISCRETE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_frmsizeenum*)* @uvc_ioctl_enum_framesizes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uvc_ioctl_enum_framesizes(%struct.file* %0, i8* %1, %struct.v4l2_frmsizeenum* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_frmsizeenum*, align 8
  %8 = alloca %struct.uvc_fh*, align 8
  %9 = alloca %struct.uvc_streaming*, align 8
  %10 = alloca %struct.uvc_format*, align 8
  %11 = alloca %struct.uvc_frame*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_frmsizeenum* %2, %struct.v4l2_frmsizeenum** %7, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = bitcast i8* %14 to %struct.uvc_fh*
  store %struct.uvc_fh* %15, %struct.uvc_fh** %8, align 8
  %16 = load %struct.uvc_fh*, %struct.uvc_fh** %8, align 8
  %17 = getelementptr inbounds %struct.uvc_fh, %struct.uvc_fh* %16, i32 0, i32 0
  %18 = load %struct.uvc_streaming*, %struct.uvc_streaming** %17, align 8
  store %struct.uvc_streaming* %18, %struct.uvc_streaming** %9, align 8
  store %struct.uvc_format* null, %struct.uvc_format** %10, align 8
  store %struct.uvc_frame* null, %struct.uvc_frame** %11, align 8
  store i32 0, i32* %13, align 4
  br label %19

19:                                               ; preds = %46, %3
  %20 = load i32, i32* %13, align 4
  %21 = load %struct.uvc_streaming*, %struct.uvc_streaming** %9, align 8
  %22 = getelementptr inbounds %struct.uvc_streaming, %struct.uvc_streaming* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp ult i32 %20, %23
  br i1 %24, label %25, label %49

25:                                               ; preds = %19
  %26 = load %struct.uvc_streaming*, %struct.uvc_streaming** %9, align 8
  %27 = getelementptr inbounds %struct.uvc_streaming, %struct.uvc_streaming* %26, i32 0, i32 1
  %28 = load %struct.uvc_format*, %struct.uvc_format** %27, align 8
  %29 = load i32, i32* %13, align 4
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds %struct.uvc_format, %struct.uvc_format* %28, i64 %30
  %32 = getelementptr inbounds %struct.uvc_format, %struct.uvc_format* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.v4l2_frmsizeenum*, %struct.v4l2_frmsizeenum** %7, align 8
  %35 = getelementptr inbounds %struct.v4l2_frmsizeenum, %struct.v4l2_frmsizeenum* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp eq i64 %33, %36
  br i1 %37, label %38, label %45

38:                                               ; preds = %25
  %39 = load %struct.uvc_streaming*, %struct.uvc_streaming** %9, align 8
  %40 = getelementptr inbounds %struct.uvc_streaming, %struct.uvc_streaming* %39, i32 0, i32 1
  %41 = load %struct.uvc_format*, %struct.uvc_format** %40, align 8
  %42 = load i32, i32* %13, align 4
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds %struct.uvc_format, %struct.uvc_format* %41, i64 %43
  store %struct.uvc_format* %44, %struct.uvc_format** %10, align 8
  br label %49

45:                                               ; preds = %25
  br label %46

46:                                               ; preds = %45
  %47 = load i32, i32* %13, align 4
  %48 = add i32 %47, 1
  store i32 %48, i32* %13, align 4
  br label %19

49:                                               ; preds = %38, %19
  %50 = load %struct.uvc_format*, %struct.uvc_format** %10, align 8
  %51 = icmp eq %struct.uvc_format* %50, null
  br i1 %51, label %52, label %55

52:                                               ; preds = %49
  %53 = load i32, i32* @EINVAL, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %4, align 4
  br label %136

55:                                               ; preds = %49
  store i32 0, i32* %13, align 4
  store i32 0, i32* %12, align 4
  br label %56

56:                                               ; preds = %108, %55
  %57 = load i32, i32* %13, align 4
  %58 = load %struct.uvc_format*, %struct.uvc_format** %10, align 8
  %59 = getelementptr inbounds %struct.uvc_format, %struct.uvc_format* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = icmp ult i32 %57, %60
  br i1 %61, label %62, label %111

62:                                               ; preds = %56
  %63 = load %struct.uvc_frame*, %struct.uvc_frame** %11, align 8
  %64 = icmp ne %struct.uvc_frame* %63, null
  br i1 %64, label %65, label %92

65:                                               ; preds = %62
  %66 = load %struct.uvc_frame*, %struct.uvc_frame** %11, align 8
  %67 = getelementptr inbounds %struct.uvc_frame, %struct.uvc_frame* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.uvc_format*, %struct.uvc_format** %10, align 8
  %70 = getelementptr inbounds %struct.uvc_format, %struct.uvc_format* %69, i32 0, i32 2
  %71 = load %struct.uvc_frame*, %struct.uvc_frame** %70, align 8
  %72 = load i32, i32* %13, align 4
  %73 = zext i32 %72 to i64
  %74 = getelementptr inbounds %struct.uvc_frame, %struct.uvc_frame* %71, i64 %73
  %75 = getelementptr inbounds %struct.uvc_frame, %struct.uvc_frame* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = icmp eq i64 %68, %76
  br i1 %77, label %78, label %92

78:                                               ; preds = %65
  %79 = load %struct.uvc_frame*, %struct.uvc_frame** %11, align 8
  %80 = getelementptr inbounds %struct.uvc_frame, %struct.uvc_frame* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = load %struct.uvc_format*, %struct.uvc_format** %10, align 8
  %83 = getelementptr inbounds %struct.uvc_format, %struct.uvc_format* %82, i32 0, i32 2
  %84 = load %struct.uvc_frame*, %struct.uvc_frame** %83, align 8
  %85 = load i32, i32* %13, align 4
  %86 = zext i32 %85 to i64
  %87 = getelementptr inbounds %struct.uvc_frame, %struct.uvc_frame* %84, i64 %86
  %88 = getelementptr inbounds %struct.uvc_frame, %struct.uvc_frame* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = icmp eq i64 %81, %89
  br i1 %90, label %91, label %92

91:                                               ; preds = %78
  br label %108

92:                                               ; preds = %78, %65, %62
  %93 = load %struct.uvc_format*, %struct.uvc_format** %10, align 8
  %94 = getelementptr inbounds %struct.uvc_format, %struct.uvc_format* %93, i32 0, i32 2
  %95 = load %struct.uvc_frame*, %struct.uvc_frame** %94, align 8
  %96 = load i32, i32* %13, align 4
  %97 = zext i32 %96 to i64
  %98 = getelementptr inbounds %struct.uvc_frame, %struct.uvc_frame* %95, i64 %97
  store %struct.uvc_frame* %98, %struct.uvc_frame** %11, align 8
  %99 = load i32, i32* %12, align 4
  %100 = load %struct.v4l2_frmsizeenum*, %struct.v4l2_frmsizeenum** %7, align 8
  %101 = getelementptr inbounds %struct.v4l2_frmsizeenum, %struct.v4l2_frmsizeenum* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 8
  %103 = icmp eq i32 %99, %102
  br i1 %103, label %104, label %105

104:                                              ; preds = %92
  br label %111

105:                                              ; preds = %92
  %106 = load i32, i32* %12, align 4
  %107 = add i32 %106, 1
  store i32 %107, i32* %12, align 4
  br label %108

108:                                              ; preds = %105, %91
  %109 = load i32, i32* %13, align 4
  %110 = add i32 %109, 1
  store i32 %110, i32* %13, align 4
  br label %56

111:                                              ; preds = %104, %56
  %112 = load i32, i32* %13, align 4
  %113 = load %struct.uvc_format*, %struct.uvc_format** %10, align 8
  %114 = getelementptr inbounds %struct.uvc_format, %struct.uvc_format* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 8
  %116 = icmp eq i32 %112, %115
  br i1 %116, label %117, label %120

117:                                              ; preds = %111
  %118 = load i32, i32* @EINVAL, align 4
  %119 = sub nsw i32 0, %118
  store i32 %119, i32* %4, align 4
  br label %136

120:                                              ; preds = %111
  %121 = load i32, i32* @V4L2_FRMSIZE_TYPE_DISCRETE, align 4
  %122 = load %struct.v4l2_frmsizeenum*, %struct.v4l2_frmsizeenum** %7, align 8
  %123 = getelementptr inbounds %struct.v4l2_frmsizeenum, %struct.v4l2_frmsizeenum* %122, i32 0, i32 3
  store i32 %121, i32* %123, align 8
  %124 = load %struct.uvc_frame*, %struct.uvc_frame** %11, align 8
  %125 = getelementptr inbounds %struct.uvc_frame, %struct.uvc_frame* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = load %struct.v4l2_frmsizeenum*, %struct.v4l2_frmsizeenum** %7, align 8
  %128 = getelementptr inbounds %struct.v4l2_frmsizeenum, %struct.v4l2_frmsizeenum* %127, i32 0, i32 2
  %129 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %128, i32 0, i32 0
  store i64 %126, i64* %129, align 8
  %130 = load %struct.uvc_frame*, %struct.uvc_frame** %11, align 8
  %131 = getelementptr inbounds %struct.uvc_frame, %struct.uvc_frame* %130, i32 0, i32 1
  %132 = load i64, i64* %131, align 8
  %133 = load %struct.v4l2_frmsizeenum*, %struct.v4l2_frmsizeenum** %7, align 8
  %134 = getelementptr inbounds %struct.v4l2_frmsizeenum, %struct.v4l2_frmsizeenum* %133, i32 0, i32 2
  %135 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %134, i32 0, i32 1
  store i64 %132, i64* %135, align 8
  store i32 0, i32* %4, align 4
  br label %136

136:                                              ; preds = %120, %117, %52
  %137 = load i32, i32* %4, align 4
  ret i32 %137
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
