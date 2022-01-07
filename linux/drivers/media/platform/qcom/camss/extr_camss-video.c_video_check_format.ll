; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/qcom/camss/extr_camss-video.c_video_check_format.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/qcom/camss/extr_camss-video.c_video_check_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.camss_video = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.v4l2_pix_format_mplane }
%struct.v4l2_pix_format_mplane = type { i64, i64, i64, i64, i64 }
%struct.v4l2_format = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.v4l2_pix_format_mplane }

@EPIPE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.camss_video*)* @video_check_format to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @video_check_format(%struct.camss_video* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.camss_video*, align 8
  %4 = alloca %struct.v4l2_pix_format_mplane*, align 8
  %5 = alloca %struct.v4l2_format, align 8
  %6 = alloca %struct.v4l2_pix_format_mplane*, align 8
  %7 = alloca i32, align 4
  store %struct.camss_video* %0, %struct.camss_video** %3, align 8
  %8 = load %struct.camss_video*, %struct.camss_video** %3, align 8
  %9 = getelementptr inbounds %struct.camss_video, %struct.camss_video* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  store %struct.v4l2_pix_format_mplane* %11, %struct.v4l2_pix_format_mplane** %4, align 8
  %12 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %5, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  store %struct.v4l2_pix_format_mplane* %13, %struct.v4l2_pix_format_mplane** %6, align 8
  %14 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %4, align 8
  %15 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %6, align 8
  %18 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %17, i32 0, i32 0
  store i64 %16, i64* %18, align 8
  %19 = load %struct.camss_video*, %struct.camss_video** %3, align 8
  %20 = call i32 @video_get_subdev_format(%struct.camss_video* %19, %struct.v4l2_format* %5)
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %7, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %1
  %24 = load i32, i32* %7, align 4
  store i32 %24, i32* %2, align 4
  br label %70

25:                                               ; preds = %1
  %26 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %4, align 8
  %27 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %6, align 8
  %30 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %28, %31
  br i1 %32, label %66, label %33

33:                                               ; preds = %25
  %34 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %4, align 8
  %35 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %6, align 8
  %38 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %36, %39
  br i1 %40, label %66, label %41

41:                                               ; preds = %33
  %42 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %4, align 8
  %43 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %6, align 8
  %46 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %44, %47
  br i1 %48, label %66, label %49

49:                                               ; preds = %41
  %50 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %4, align 8
  %51 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %50, i32 0, i32 3
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %6, align 8
  %54 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %53, i32 0, i32 3
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %52, %55
  br i1 %56, label %66, label %57

57:                                               ; preds = %49
  %58 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %4, align 8
  %59 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %58, i32 0, i32 4
  %60 = load i64, i64* %59, align 8
  %61 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %5, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %62, i32 0, i32 4
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %60, %64
  br i1 %65, label %66, label %69

66:                                               ; preds = %57, %49, %41, %33, %25
  %67 = load i32, i32* @EPIPE, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %2, align 4
  br label %70

69:                                               ; preds = %57
  store i32 0, i32* %2, align 4
  br label %70

70:                                               ; preds = %69, %66, %23
  %71 = load i32, i32* %2, align 4
  ret i32 %71
}

declare dso_local i32 @video_get_subdev_format(%struct.camss_video*, %struct.v4l2_format*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
