; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/uvc/extr_uvc_v4l2.c_uvc_v4l2_get_streamparm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/uvc/extr_uvc_v4l2.c_uvc_v4l2_get_streamparm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uvc_streaming = type { i64, i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i8* }
%struct.v4l2_streamparm = type { i64, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__, %struct.TYPE_9__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__, i64, i8* }
%struct.TYPE_10__ = type { i8*, i8* }
%struct.TYPE_9__ = type { i64, i64, %struct.TYPE_8__, i64, i8* }
%struct.TYPE_8__ = type { i8*, i8* }

@EINVAL = common dso_local global i32 0, align 4
@V4L2_BUF_TYPE_VIDEO_CAPTURE = common dso_local global i64 0, align 8
@V4L2_CAP_TIMEPERFRAME = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uvc_streaming*, %struct.v4l2_streamparm*)* @uvc_v4l2_get_streamparm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uvc_v4l2_get_streamparm(%struct.uvc_streaming* %0, %struct.v4l2_streamparm* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.uvc_streaming*, align 8
  %5 = alloca %struct.v4l2_streamparm*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store %struct.uvc_streaming* %0, %struct.uvc_streaming** %4, align 8
  store %struct.v4l2_streamparm* %1, %struct.v4l2_streamparm** %5, align 8
  %8 = load %struct.v4l2_streamparm*, %struct.v4l2_streamparm** %5, align 8
  %9 = getelementptr inbounds %struct.v4l2_streamparm, %struct.v4l2_streamparm* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load %struct.uvc_streaming*, %struct.uvc_streaming** %4, align 8
  %12 = getelementptr inbounds %struct.uvc_streaming, %struct.uvc_streaming* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %10, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %95

18:                                               ; preds = %2
  %19 = load %struct.uvc_streaming*, %struct.uvc_streaming** %4, align 8
  %20 = getelementptr inbounds %struct.uvc_streaming, %struct.uvc_streaming* %19, i32 0, i32 1
  %21 = call i32 @mutex_lock(i32* %20)
  %22 = load %struct.uvc_streaming*, %struct.uvc_streaming** %4, align 8
  %23 = getelementptr inbounds %struct.uvc_streaming, %struct.uvc_streaming* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = load i8*, i8** %24, align 8
  store i8* %25, i8** %6, align 8
  %26 = load %struct.uvc_streaming*, %struct.uvc_streaming** %4, align 8
  %27 = getelementptr inbounds %struct.uvc_streaming, %struct.uvc_streaming* %26, i32 0, i32 1
  %28 = call i32 @mutex_unlock(i32* %27)
  store i8* inttoptr (i64 10000000 to i8*), i8** %7, align 8
  %29 = call i32 @uvc_simplify_fraction(i8** %6, i8** %7, i32 8, i32 333)
  %30 = load %struct.v4l2_streamparm*, %struct.v4l2_streamparm** %5, align 8
  %31 = call i32 @memset(%struct.v4l2_streamparm* %30, i32 0, i32 88)
  %32 = load %struct.uvc_streaming*, %struct.uvc_streaming** %4, align 8
  %33 = getelementptr inbounds %struct.uvc_streaming, %struct.uvc_streaming* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.v4l2_streamparm*, %struct.v4l2_streamparm** %5, align 8
  %36 = getelementptr inbounds %struct.v4l2_streamparm, %struct.v4l2_streamparm* %35, i32 0, i32 0
  store i64 %34, i64* %36, align 8
  %37 = load %struct.uvc_streaming*, %struct.uvc_streaming** %4, align 8
  %38 = getelementptr inbounds %struct.uvc_streaming, %struct.uvc_streaming* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @V4L2_BUF_TYPE_VIDEO_CAPTURE, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %72

42:                                               ; preds = %18
  %43 = load i8*, i8** @V4L2_CAP_TIMEPERFRAME, align 8
  %44 = load %struct.v4l2_streamparm*, %struct.v4l2_streamparm** %5, align 8
  %45 = getelementptr inbounds %struct.v4l2_streamparm, %struct.v4l2_streamparm* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 4
  store i8* %43, i8** %47, align 8
  %48 = load %struct.v4l2_streamparm*, %struct.v4l2_streamparm** %5, align 8
  %49 = getelementptr inbounds %struct.v4l2_streamparm, %struct.v4l2_streamparm* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 3
  store i64 0, i64* %51, align 8
  %52 = load i8*, i8** %6, align 8
  %53 = load %struct.v4l2_streamparm*, %struct.v4l2_streamparm** %5, align 8
  %54 = getelementptr inbounds %struct.v4l2_streamparm, %struct.v4l2_streamparm* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 2
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 1
  store i8* %52, i8** %57, align 8
  %58 = load i8*, i8** %7, align 8
  %59 = load %struct.v4l2_streamparm*, %struct.v4l2_streamparm** %5, align 8
  %60 = getelementptr inbounds %struct.v4l2_streamparm, %struct.v4l2_streamparm* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 2
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 0
  store i8* %58, i8** %63, align 8
  %64 = load %struct.v4l2_streamparm*, %struct.v4l2_streamparm** %5, align 8
  %65 = getelementptr inbounds %struct.v4l2_streamparm, %struct.v4l2_streamparm* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 1
  store i64 0, i64* %67, align 8
  %68 = load %struct.v4l2_streamparm*, %struct.v4l2_streamparm** %5, align 8
  %69 = getelementptr inbounds %struct.v4l2_streamparm, %struct.v4l2_streamparm* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 0
  store i64 0, i64* %71, align 8
  br label %94

72:                                               ; preds = %18
  %73 = load i8*, i8** @V4L2_CAP_TIMEPERFRAME, align 8
  %74 = load %struct.v4l2_streamparm*, %struct.v4l2_streamparm** %5, align 8
  %75 = getelementptr inbounds %struct.v4l2_streamparm, %struct.v4l2_streamparm* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %76, i32 0, i32 2
  store i8* %73, i8** %77, align 8
  %78 = load %struct.v4l2_streamparm*, %struct.v4l2_streamparm** %5, align 8
  %79 = getelementptr inbounds %struct.v4l2_streamparm, %struct.v4l2_streamparm* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %80, i32 0, i32 1
  store i64 0, i64* %81, align 8
  %82 = load i8*, i8** %6, align 8
  %83 = load %struct.v4l2_streamparm*, %struct.v4l2_streamparm** %5, align 8
  %84 = getelementptr inbounds %struct.v4l2_streamparm, %struct.v4l2_streamparm* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %86, i32 0, i32 1
  store i8* %82, i8** %87, align 8
  %88 = load i8*, i8** %7, align 8
  %89 = load %struct.v4l2_streamparm*, %struct.v4l2_streamparm** %5, align 8
  %90 = getelementptr inbounds %struct.v4l2_streamparm, %struct.v4l2_streamparm* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %92, i32 0, i32 0
  store i8* %88, i8** %93, align 8
  br label %94

94:                                               ; preds = %72, %42
  store i32 0, i32* %3, align 4
  br label %95

95:                                               ; preds = %94, %15
  %96 = load i32, i32* %3, align 4
  ret i32 %96
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @uvc_simplify_fraction(i8**, i8**, i32, i32) #1

declare dso_local i32 @memset(%struct.v4l2_streamparm*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
