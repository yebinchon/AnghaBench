; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/radio/si470x/extr_radio-si470x-common.c_si470x_vidioc_g_tuner.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/radio/si470x/extr_radio-si470x-common.c_si470x_vidioc_g_tuner.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_tuner = type { i64, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.si470x_device = type { i32 (%struct.si470x_device*, i64)*, i32*, i32 }

@EINVAL = common dso_local global i32 0, align 4
@STATUSRSSI = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [3 x i8] c"FM\00", align 1
@V4L2_TUNER_RADIO = common dso_local global i32 0, align 4
@V4L2_TUNER_CAP_LOW = common dso_local global i32 0, align 4
@V4L2_TUNER_CAP_STEREO = common dso_local global i32 0, align 4
@V4L2_TUNER_CAP_RDS = common dso_local global i32 0, align 4
@V4L2_TUNER_CAP_RDS_BLOCK_IO = common dso_local global i32 0, align 4
@V4L2_TUNER_CAP_HWSEEK_BOUNDED = common dso_local global i32 0, align 4
@V4L2_TUNER_CAP_HWSEEK_WRAP = common dso_local global i32 0, align 4
@FREQ_MUL = common dso_local global i32 0, align 4
@STATUSRSSI_ST = common dso_local global i32 0, align 4
@V4L2_TUNER_SUB_MONO = common dso_local global i32 0, align 4
@V4L2_TUNER_SUB_STEREO = common dso_local global i32 0, align 4
@V4L2_TUNER_SUB_RDS = common dso_local global i32 0, align 4
@POWERCFG = common dso_local global i64 0, align 8
@POWERCFG_MONO = common dso_local global i32 0, align 4
@V4L2_TUNER_MODE_STEREO = common dso_local global i32 0, align 4
@V4L2_TUNER_MODE_MONO = common dso_local global i32 0, align 4
@STATUSRSSI_RSSI = common dso_local global i32 0, align 4
@STATUSRSSI_AFCRL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_tuner*)* @si470x_vidioc_g_tuner to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @si470x_vidioc_g_tuner(%struct.file* %0, i8* %1, %struct.v4l2_tuner* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_tuner*, align 8
  %8 = alloca %struct.si470x_device*, align 8
  %9 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_tuner* %2, %struct.v4l2_tuner** %7, align 8
  %10 = load %struct.file*, %struct.file** %5, align 8
  %11 = call %struct.si470x_device* @video_drvdata(%struct.file* %10)
  store %struct.si470x_device* %11, %struct.si470x_device** %8, align 8
  store i32 0, i32* %9, align 4
  %12 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %7, align 8
  %13 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %3
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %4, align 4
  br label %150

19:                                               ; preds = %3
  %20 = load %struct.si470x_device*, %struct.si470x_device** %8, align 8
  %21 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %36, label %24

24:                                               ; preds = %19
  %25 = load %struct.si470x_device*, %struct.si470x_device** %8, align 8
  %26 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %25, i32 0, i32 0
  %27 = load i32 (%struct.si470x_device*, i64)*, i32 (%struct.si470x_device*, i64)** %26, align 8
  %28 = load %struct.si470x_device*, %struct.si470x_device** %8, align 8
  %29 = load i64, i64* @STATUSRSSI, align 8
  %30 = call i32 %27(%struct.si470x_device* %28, i64 %29)
  store i32 %30, i32* %9, align 4
  %31 = load i32, i32* %9, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %24
  %34 = load i32, i32* %9, align 4
  store i32 %34, i32* %4, align 4
  br label %150

35:                                               ; preds = %24
  br label %36

36:                                               ; preds = %35, %19
  %37 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %7, align 8
  %38 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %37, i32 0, i32 9
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @strscpy(i32 %39, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 4)
  %41 = load i32, i32* @V4L2_TUNER_RADIO, align 4
  %42 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %7, align 8
  %43 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %42, i32 0, i32 8
  store i32 %41, i32* %43, align 4
  %44 = load i32, i32* @V4L2_TUNER_CAP_LOW, align 4
  %45 = load i32, i32* @V4L2_TUNER_CAP_STEREO, align 4
  %46 = or i32 %44, %45
  %47 = load i32, i32* @V4L2_TUNER_CAP_RDS, align 4
  %48 = or i32 %46, %47
  %49 = load i32, i32* @V4L2_TUNER_CAP_RDS_BLOCK_IO, align 4
  %50 = or i32 %48, %49
  %51 = load i32, i32* @V4L2_TUNER_CAP_HWSEEK_BOUNDED, align 4
  %52 = or i32 %50, %51
  %53 = load i32, i32* @V4L2_TUNER_CAP_HWSEEK_WRAP, align 4
  %54 = or i32 %52, %53
  %55 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %7, align 8
  %56 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %55, i32 0, i32 1
  store i32 %54, i32* %56, align 8
  %57 = load i32, i32* @FREQ_MUL, align 4
  %58 = mul nsw i32 76, %57
  %59 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %7, align 8
  %60 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %59, i32 0, i32 2
  store i32 %58, i32* %60, align 4
  %61 = load i32, i32* @FREQ_MUL, align 4
  %62 = mul nsw i32 108, %61
  %63 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %7, align 8
  %64 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %63, i32 0, i32 3
  store i32 %62, i32* %64, align 8
  %65 = load %struct.si470x_device*, %struct.si470x_device** %8, align 8
  %66 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %65, i32 0, i32 1
  %67 = load i32*, i32** %66, align 8
  %68 = load i64, i64* @STATUSRSSI, align 8
  %69 = getelementptr inbounds i32, i32* %67, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @STATUSRSSI_ST, align 4
  %72 = and i32 %70, %71
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %36
  %75 = load i32, i32* @V4L2_TUNER_SUB_MONO, align 4
  %76 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %7, align 8
  %77 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %76, i32 0, i32 7
  store i32 %75, i32* %77, align 8
  br label %82

78:                                               ; preds = %36
  %79 = load i32, i32* @V4L2_TUNER_SUB_STEREO, align 4
  %80 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %7, align 8
  %81 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %80, i32 0, i32 7
  store i32 %79, i32* %81, align 8
  br label %82

82:                                               ; preds = %78, %74
  %83 = load i32, i32* @V4L2_TUNER_SUB_RDS, align 4
  %84 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %7, align 8
  %85 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %84, i32 0, i32 7
  %86 = load i32, i32* %85, align 8
  %87 = or i32 %86, %83
  store i32 %87, i32* %85, align 8
  %88 = load %struct.si470x_device*, %struct.si470x_device** %8, align 8
  %89 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %88, i32 0, i32 1
  %90 = load i32*, i32** %89, align 8
  %91 = load i64, i64* @POWERCFG, align 8
  %92 = getelementptr inbounds i32, i32* %90, i64 %91
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* @POWERCFG_MONO, align 4
  %95 = and i32 %93, %94
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %97, label %101

97:                                               ; preds = %82
  %98 = load i32, i32* @V4L2_TUNER_MODE_STEREO, align 4
  %99 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %7, align 8
  %100 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %99, i32 0, i32 6
  store i32 %98, i32* %100, align 4
  br label %105

101:                                              ; preds = %82
  %102 = load i32, i32* @V4L2_TUNER_MODE_MONO, align 4
  %103 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %7, align 8
  %104 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %103, i32 0, i32 6
  store i32 %102, i32* %104, align 4
  br label %105

105:                                              ; preds = %101, %97
  %106 = load %struct.si470x_device*, %struct.si470x_device** %8, align 8
  %107 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %106, i32 0, i32 1
  %108 = load i32*, i32** %107, align 8
  %109 = load i64, i64* @STATUSRSSI, align 8
  %110 = getelementptr inbounds i32, i32* %108, i64 %109
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* @STATUSRSSI_RSSI, align 4
  %113 = and i32 %111, %112
  %114 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %7, align 8
  %115 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %114, i32 0, i32 4
  store i32 %113, i32* %115, align 4
  %116 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %7, align 8
  %117 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %116, i32 0, i32 4
  %118 = load i32, i32* %117, align 4
  %119 = mul nsw i32 %118, 873
  %120 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %7, align 8
  %121 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %120, i32 0, i32 4
  %122 = load i32, i32* %121, align 4
  %123 = mul nsw i32 8, %122
  %124 = sdiv i32 %123, 10
  %125 = add nsw i32 %119, %124
  %126 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %7, align 8
  %127 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %126, i32 0, i32 4
  store i32 %125, i32* %127, align 4
  %128 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %7, align 8
  %129 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %128, i32 0, i32 4
  %130 = load i32, i32* %129, align 4
  %131 = icmp sgt i32 %130, 65535
  br i1 %131, label %132, label %135

132:                                              ; preds = %105
  %133 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %7, align 8
  %134 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %133, i32 0, i32 4
  store i32 65535, i32* %134, align 4
  br label %135

135:                                              ; preds = %132, %105
  %136 = load %struct.si470x_device*, %struct.si470x_device** %8, align 8
  %137 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %136, i32 0, i32 1
  %138 = load i32*, i32** %137, align 8
  %139 = load i64, i64* @STATUSRSSI, align 8
  %140 = getelementptr inbounds i32, i32* %138, i64 %139
  %141 = load i32, i32* %140, align 4
  %142 = load i32, i32* @STATUSRSSI_AFCRL, align 4
  %143 = and i32 %141, %142
  %144 = icmp ne i32 %143, 0
  %145 = zext i1 %144 to i64
  %146 = select i1 %144, i32 1, i32 0
  %147 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %7, align 8
  %148 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %147, i32 0, i32 5
  store i32 %146, i32* %148, align 8
  %149 = load i32, i32* %9, align 4
  store i32 %149, i32* %4, align 4
  br label %150

150:                                              ; preds = %135, %33, %16
  %151 = load i32, i32* %4, align 4
  ret i32 %151
}

declare dso_local %struct.si470x_device* @video_drvdata(%struct.file*) #1

declare dso_local i32 @strscpy(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
