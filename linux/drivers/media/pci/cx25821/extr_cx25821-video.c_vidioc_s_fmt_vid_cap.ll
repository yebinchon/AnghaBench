; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/cx25821/extr_cx25821-video.c_vidioc_s_fmt_vid_cap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/cx25821/extr_cx25821-video.c_vidioc_s_fmt_vid_cap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_format = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i32, i32, i32 }
%struct.cx25821_channel = type { i32, i32, i32, i32, i32, i32, %struct.cx25821_dev* }
%struct.cx25821_dev = type { i32 }

@PIXEL_FRMT_422 = common dso_local global i32 0, align 4
@V4L2_PIX_FMT_Y41P = common dso_local global i64 0, align 8
@PIXEL_FRMT_411 = common dso_local global i32 0, align 4
@SRAM_CH00 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_format*)* @vidioc_s_fmt_vid_cap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vidioc_s_fmt_vid_cap(%struct.file* %0, i8* %1, %struct.v4l2_format* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_format*, align 8
  %8 = alloca %struct.cx25821_channel*, align 8
  %9 = alloca %struct.cx25821_dev*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_format* %2, %struct.v4l2_format** %7, align 8
  %12 = load %struct.file*, %struct.file** %5, align 8
  %13 = call %struct.cx25821_channel* @video_drvdata(%struct.file* %12)
  store %struct.cx25821_channel* %13, %struct.cx25821_channel** %8, align 8
  %14 = load %struct.cx25821_channel*, %struct.cx25821_channel** %8, align 8
  %15 = getelementptr inbounds %struct.cx25821_channel, %struct.cx25821_channel* %14, i32 0, i32 6
  %16 = load %struct.cx25821_dev*, %struct.cx25821_dev** %15, align 8
  store %struct.cx25821_dev* %16, %struct.cx25821_dev** %9, align 8
  %17 = load i32, i32* @PIXEL_FRMT_422, align 4
  store i32 %17, i32* %10, align 4
  %18 = load %struct.file*, %struct.file** %5, align 8
  %19 = load i8*, i8** %6, align 8
  %20 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %21 = call i32 @cx25821_vidioc_try_fmt_vid_cap(%struct.file* %18, i8* %19, %struct.v4l2_format* %20)
  store i32 %21, i32* %11, align 4
  %22 = load i32, i32* %11, align 4
  %23 = icmp ne i32 0, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %3
  %25 = load i32, i32* %11, align 4
  store i32 %25, i32* %4, align 4
  br label %99

26:                                               ; preds = %3
  %27 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %28 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = call i32 @cx25821_format_by_fourcc(i64 %31)
  %33 = load %struct.cx25821_channel*, %struct.cx25821_channel** %8, align 8
  %34 = getelementptr inbounds %struct.cx25821_channel, %struct.cx25821_channel* %33, i32 0, i32 5
  store i32 %32, i32* %34, align 4
  %35 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %36 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.cx25821_channel*, %struct.cx25821_channel** %8, align 8
  %41 = getelementptr inbounds %struct.cx25821_channel, %struct.cx25821_channel* %40, i32 0, i32 4
  store i32 %39, i32* %41, align 8
  %42 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %43 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.cx25821_channel*, %struct.cx25821_channel** %8, align 8
  %48 = getelementptr inbounds %struct.cx25821_channel, %struct.cx25821_channel* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 8
  %49 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %50 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.cx25821_channel*, %struct.cx25821_channel** %8, align 8
  %55 = getelementptr inbounds %struct.cx25821_channel, %struct.cx25821_channel* %54, i32 0, i32 3
  store i32 %53, i32* %55, align 4
  %56 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %57 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @V4L2_PIX_FMT_Y41P, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %65

63:                                               ; preds = %26
  %64 = load i32, i32* @PIXEL_FRMT_411, align 4
  store i32 %64, i32* %10, align 4
  br label %67

65:                                               ; preds = %26
  %66 = load i32, i32* @PIXEL_FRMT_422, align 4
  store i32 %66, i32* %10, align 4
  br label %67

67:                                               ; preds = %65, %63
  %68 = load %struct.cx25821_dev*, %struct.cx25821_dev** %9, align 8
  %69 = load i32, i32* @SRAM_CH00, align 4
  %70 = load i32, i32* %10, align 4
  %71 = call i32 @cx25821_set_pixel_format(%struct.cx25821_dev* %68, i32 %69, i32 %70)
  %72 = load %struct.cx25821_channel*, %struct.cx25821_channel** %8, align 8
  %73 = getelementptr inbounds %struct.cx25821_channel, %struct.cx25821_channel* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = icmp eq i32 %74, 320
  br i1 %75, label %81, label %76

76:                                               ; preds = %67
  %77 = load %struct.cx25821_channel*, %struct.cx25821_channel** %8, align 8
  %78 = getelementptr inbounds %struct.cx25821_channel, %struct.cx25821_channel* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = icmp eq i32 %79, 352
  br i1 %80, label %81, label %84

81:                                               ; preds = %76, %67
  %82 = load %struct.cx25821_channel*, %struct.cx25821_channel** %8, align 8
  %83 = getelementptr inbounds %struct.cx25821_channel, %struct.cx25821_channel* %82, i32 0, i32 1
  store i32 1, i32* %83, align 4
  br label %87

84:                                               ; preds = %76
  %85 = load %struct.cx25821_channel*, %struct.cx25821_channel** %8, align 8
  %86 = getelementptr inbounds %struct.cx25821_channel, %struct.cx25821_channel* %85, i32 0, i32 1
  store i32 0, i32* %86, align 4
  br label %87

87:                                               ; preds = %84, %81
  %88 = load %struct.cx25821_channel*, %struct.cx25821_channel** %8, align 8
  %89 = getelementptr inbounds %struct.cx25821_channel, %struct.cx25821_channel* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = load %struct.cx25821_channel*, %struct.cx25821_channel** %8, align 8
  %92 = getelementptr inbounds %struct.cx25821_channel, %struct.cx25821_channel* %91, i32 0, i32 2
  store i32 %90, i32* %92, align 8
  %93 = load %struct.cx25821_dev*, %struct.cx25821_dev** %9, align 8
  %94 = load %struct.cx25821_channel*, %struct.cx25821_channel** %8, align 8
  %95 = getelementptr inbounds %struct.cx25821_channel, %struct.cx25821_channel* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = load i32, i32* @SRAM_CH00, align 4
  %98 = call i32 @medusa_set_resolution(%struct.cx25821_dev* %93, i32 %96, i32 %97)
  store i32 0, i32* %4, align 4
  br label %99

99:                                               ; preds = %87, %24
  %100 = load i32, i32* %4, align 4
  ret i32 %100
}

declare dso_local %struct.cx25821_channel* @video_drvdata(%struct.file*) #1

declare dso_local i32 @cx25821_vidioc_try_fmt_vid_cap(%struct.file*, i8*, %struct.v4l2_format*) #1

declare dso_local i32 @cx25821_format_by_fourcc(i64) #1

declare dso_local i32 @cx25821_set_pixel_format(%struct.cx25821_dev*, i32, i32) #1

declare dso_local i32 @medusa_set_resolution(%struct.cx25821_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
