; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_ispvideo.c_isp_video_check_format.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_ispvideo.c_isp_video_check_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isp_video = type { i32 }
%struct.isp_video_fh = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, i64, i64, i64, i64, i64 }
%struct.v4l2_format = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64, i64, i64, i64, i64, i64 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.isp_video*, %struct.isp_video_fh*)* @isp_video_check_format to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isp_video_check_format(%struct.isp_video* %0, %struct.isp_video_fh* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.isp_video*, align 8
  %5 = alloca %struct.isp_video_fh*, align 8
  %6 = alloca %struct.v4l2_format, align 8
  %7 = alloca i32, align 4
  store %struct.isp_video* %0, %struct.isp_video** %4, align 8
  store %struct.isp_video_fh* %1, %struct.isp_video_fh** %5, align 8
  %8 = load %struct.isp_video_fh*, %struct.isp_video_fh** %5, align 8
  %9 = getelementptr inbounds %struct.isp_video_fh, %struct.isp_video_fh* %8, i32 0, i32 0
  %10 = call i32 @memcpy(%struct.v4l2_format* %6, %struct.TYPE_10__* %9, i32 48)
  %11 = load %struct.isp_video*, %struct.isp_video** %4, align 8
  %12 = call i32 @__isp_video_get_format(%struct.isp_video* %11, %struct.v4l2_format* %6)
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i32, i32* %7, align 4
  store i32 %16, i32* %3, align 4
  br label %93

17:                                               ; preds = %2
  %18 = load %struct.isp_video_fh*, %struct.isp_video_fh** %5, align 8
  %19 = getelementptr inbounds %struct.isp_video_fh, %struct.isp_video_fh* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %6, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %23, %27
  br i1 %28, label %89, label %29

29:                                               ; preds = %17
  %30 = load %struct.isp_video_fh*, %struct.isp_video_fh** %5, align 8
  %31 = getelementptr inbounds %struct.isp_video_fh, %struct.isp_video_fh* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %6, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %35, %39
  br i1 %40, label %89, label %41

41:                                               ; preds = %29
  %42 = load %struct.isp_video_fh*, %struct.isp_video_fh** %5, align 8
  %43 = getelementptr inbounds %struct.isp_video_fh, %struct.isp_video_fh* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %6, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %47, %51
  br i1 %52, label %89, label %53

53:                                               ; preds = %41
  %54 = load %struct.isp_video_fh*, %struct.isp_video_fh** %5, align 8
  %55 = getelementptr inbounds %struct.isp_video_fh, %struct.isp_video_fh* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 3
  %59 = load i64, i64* %58, align 8
  %60 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %6, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 3
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %59, %63
  br i1 %64, label %89, label %65

65:                                               ; preds = %53
  %66 = load %struct.isp_video_fh*, %struct.isp_video_fh** %5, align 8
  %67 = getelementptr inbounds %struct.isp_video_fh, %struct.isp_video_fh* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 4
  %71 = load i64, i64* %70, align 8
  %72 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %6, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 4
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %71, %75
  br i1 %76, label %89, label %77

77:                                               ; preds = %65
  %78 = load %struct.isp_video_fh*, %struct.isp_video_fh** %5, align 8
  %79 = getelementptr inbounds %struct.isp_video_fh, %struct.isp_video_fh* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 5
  %83 = load i64, i64* %82, align 8
  %84 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %6, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 5
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %83, %87
  br i1 %88, label %89, label %92

89:                                               ; preds = %77, %65, %53, %41, %29, %17
  %90 = load i32, i32* @EINVAL, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %3, align 4
  br label %93

92:                                               ; preds = %77
  store i32 0, i32* %3, align 4
  br label %93

93:                                               ; preds = %92, %89, %15
  %94 = load i32, i32* %3, align 4
  ret i32 %94
}

declare dso_local i32 @memcpy(%struct.v4l2_format*, %struct.TYPE_10__*, i32) #1

declare dso_local i32 @__isp_video_get_format(%struct.isp_video*, %struct.v4l2_format*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
