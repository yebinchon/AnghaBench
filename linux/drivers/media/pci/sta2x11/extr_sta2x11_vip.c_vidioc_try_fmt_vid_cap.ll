; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/sta2x11/extr_sta2x11_vip.c_vidioc_try_fmt_vid_cap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/sta2x11/extr_sta2x11_vip.c_vidioc_try_fmt_vid_cap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_format = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i32, i32, i32, i32, i32, i32 }
%struct.sta2x11_vip = type { i32, i32 }

@V4L2_PIX_FMT_UYVY = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [37 x i8] c"Invalid format, only UYVY supported\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@V4L2_STD_525_60 = common dso_local global i32 0, align 4
@V4L2_COLORSPACE_SMPTE170M = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_format*)* @vidioc_try_fmt_vid_cap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vidioc_try_fmt_vid_cap(%struct.file* %0, i8* %1, %struct.v4l2_format* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_format*, align 8
  %8 = alloca %struct.sta2x11_vip*, align 8
  %9 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_format* %2, %struct.v4l2_format** %7, align 8
  %10 = load %struct.file*, %struct.file** %5, align 8
  %11 = call %struct.sta2x11_vip* @video_drvdata(%struct.file* %10)
  store %struct.sta2x11_vip* %11, %struct.sta2x11_vip** %8, align 8
  %12 = load i64, i64* @V4L2_PIX_FMT_UYVY, align 8
  %13 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %14 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %12, %17
  br i1 %18, label %19, label %25

19:                                               ; preds = %3
  %20 = load %struct.sta2x11_vip*, %struct.sta2x11_vip** %8, align 8
  %21 = getelementptr inbounds %struct.sta2x11_vip, %struct.sta2x11_vip* %20, i32 0, i32 1
  %22 = call i32 @v4l2_warn(i32* %21, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %151

25:                                               ; preds = %3
  %26 = load i32, i32* @V4L2_STD_525_60, align 4
  %27 = load %struct.sta2x11_vip*, %struct.sta2x11_vip** %8, align 8
  %28 = getelementptr inbounds %struct.sta2x11_vip, %struct.sta2x11_vip* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = and i32 %26, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %25
  store i32 240, i32* %9, align 4
  br label %34

33:                                               ; preds = %25
  store i32 288, i32* %9, align 4
  br label %34

34:                                               ; preds = %33, %32
  %35 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %36 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  switch i32 %39, label %40 [
    i32 131, label %41
    i32 128, label %60
    i32 130, label %60
    i32 129, label %75
  ]

40:                                               ; preds = %34
  br label %41

41:                                               ; preds = %34, %40
  %42 = load i32, i32* %9, align 4
  %43 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %44 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = icmp slt i32 %42, %47
  br i1 %48, label %49, label %54

49:                                               ; preds = %41
  %50 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %51 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 1
  store i32 129, i32* %53, align 8
  br label %59

54:                                               ; preds = %41
  %55 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %56 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 1
  store i32 130, i32* %58, align 8
  br label %59

59:                                               ; preds = %54, %49
  br label %76

60:                                               ; preds = %34, %34
  %61 = load i32, i32* %9, align 4
  %62 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %63 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = icmp slt i32 %61, %66
  br i1 %67, label %68, label %74

68:                                               ; preds = %60
  %69 = load i32, i32* %9, align 4
  %70 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %71 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 2
  store i32 %69, i32* %73, align 4
  br label %74

74:                                               ; preds = %68, %60
  br label %76

75:                                               ; preds = %34
  br label %76

76:                                               ; preds = %75, %74, %59
  %77 = load i64, i64* @V4L2_PIX_FMT_UYVY, align 8
  %78 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %79 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 0
  store i64 %77, i64* %81, align 8
  %82 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %83 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 4
  %87 = and i32 %86, -2
  store i32 %87, i32* %85, align 4
  %88 = load i32, i32* %9, align 4
  %89 = mul nsw i32 2, %88
  %90 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %91 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 4
  %95 = icmp slt i32 %89, %94
  br i1 %95, label %96, label %103

96:                                               ; preds = %76
  %97 = load i32, i32* %9, align 4
  %98 = mul nsw i32 2, %97
  %99 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %100 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i32 0, i32 2
  store i32 %98, i32* %102, align 4
  br label %103

103:                                              ; preds = %96, %76
  %104 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %105 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 4
  %109 = icmp sgt i32 200, %108
  br i1 %109, label %110, label %115

110:                                              ; preds = %103
  %111 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %112 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %113, i32 0, i32 2
  store i32 200, i32* %114, align 4
  br label %115

115:                                              ; preds = %110, %103
  %116 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %117 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %118, i32 0, i32 3
  store i32 720, i32* %119, align 8
  %120 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %121 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %122, i32 0, i32 3
  %124 = load i32, i32* %123, align 8
  %125 = mul nsw i32 %124, 2
  %126 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %127 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %128, i32 0, i32 4
  store i32 %125, i32* %129, align 4
  %130 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %131 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %132, i32 0, i32 3
  %134 = load i32, i32* %133, align 8
  %135 = mul nsw i32 %134, 2
  %136 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %137 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %138, i32 0, i32 2
  %140 = load i32, i32* %139, align 4
  %141 = mul nsw i32 %135, %140
  %142 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %143 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %144, i32 0, i32 5
  store i32 %141, i32* %145, align 8
  %146 = load i32, i32* @V4L2_COLORSPACE_SMPTE170M, align 4
  %147 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %148 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %149, i32 0, i32 6
  store i32 %146, i32* %150, align 4
  store i32 0, i32* %4, align 4
  br label %151

151:                                              ; preds = %115, %19
  %152 = load i32, i32* %4, align 4
  ret i32 %152
}

declare dso_local %struct.sta2x11_vip* @video_drvdata(%struct.file*) #1

declare dso_local i32 @v4l2_warn(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
