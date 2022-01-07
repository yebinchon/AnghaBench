; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/hdpvr/extr_hdpvr-video.c_vidioc_encoder_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/hdpvr/extr_hdpvr-video.c_vidioc_encoder_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32* }
%struct.v4l2_encoder_cmd = type { i32, i64 }
%struct.hdpvr_device = type { i32, i32, i32*, i32 }

@EBUSY = common dso_local global i32 0, align 4
@STATUS_STREAMING = common dso_local global i32 0, align 4
@STATUS_IDLE = common dso_local global i32 0, align 4
@MSG_INFO = common dso_local global i32 0, align 4
@hdpvr_debug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Unsupported encoder cmd %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_encoder_cmd*)* @vidioc_encoder_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vidioc_encoder_cmd(%struct.file* %0, i8* %1, %struct.v4l2_encoder_cmd* %2) #0 {
  %4 = alloca %struct.file*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.v4l2_encoder_cmd*, align 8
  %7 = alloca %struct.hdpvr_device*, align 8
  %8 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.v4l2_encoder_cmd* %2, %struct.v4l2_encoder_cmd** %6, align 8
  %9 = load %struct.file*, %struct.file** %4, align 8
  %10 = call %struct.hdpvr_device* @video_drvdata(%struct.file* %9)
  store %struct.hdpvr_device* %10, %struct.hdpvr_device** %7, align 8
  store i32 0, i32* %8, align 4
  %11 = load %struct.hdpvr_device*, %struct.hdpvr_device** %7, align 8
  %12 = getelementptr inbounds %struct.hdpvr_device, %struct.hdpvr_device* %11, i32 0, i32 0
  %13 = call i32 @mutex_lock(i32* %12)
  %14 = load %struct.v4l2_encoder_cmd*, %struct.v4l2_encoder_cmd** %6, align 8
  %15 = getelementptr inbounds %struct.v4l2_encoder_cmd, %struct.v4l2_encoder_cmd* %14, i32 0, i32 1
  store i64 0, i64* %15, align 8
  %16 = load %struct.v4l2_encoder_cmd*, %struct.v4l2_encoder_cmd** %6, align 8
  %17 = getelementptr inbounds %struct.v4l2_encoder_cmd, %struct.v4l2_encoder_cmd* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  switch i32 %18, label %90 [
    i32 129, label %19
    i32 128, label %58
  ]

19:                                               ; preds = %3
  %20 = load %struct.hdpvr_device*, %struct.hdpvr_device** %7, align 8
  %21 = getelementptr inbounds %struct.hdpvr_device, %struct.hdpvr_device* %20, i32 0, i32 2
  %22 = load i32*, i32** %21, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %24, label %35

24:                                               ; preds = %19
  %25 = load %struct.file*, %struct.file** %4, align 8
  %26 = getelementptr inbounds %struct.file, %struct.file* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = load %struct.hdpvr_device*, %struct.hdpvr_device** %7, align 8
  %29 = getelementptr inbounds %struct.hdpvr_device, %struct.hdpvr_device* %28, i32 0, i32 2
  %30 = load i32*, i32** %29, align 8
  %31 = icmp ne i32* %27, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %24
  %33 = load i32, i32* @EBUSY, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %8, align 4
  br label %101

35:                                               ; preds = %24, %19
  %36 = load %struct.hdpvr_device*, %struct.hdpvr_device** %7, align 8
  %37 = getelementptr inbounds %struct.hdpvr_device, %struct.hdpvr_device* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @STATUS_STREAMING, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %35
  br label %101

42:                                               ; preds = %35
  %43 = load %struct.hdpvr_device*, %struct.hdpvr_device** %7, align 8
  %44 = call i32 @hdpvr_start_streaming(%struct.hdpvr_device* %43)
  store i32 %44, i32* %8, align 4
  %45 = load i32, i32* %8, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %53, label %47

47:                                               ; preds = %42
  %48 = load %struct.file*, %struct.file** %4, align 8
  %49 = getelementptr inbounds %struct.file, %struct.file* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = load %struct.hdpvr_device*, %struct.hdpvr_device** %7, align 8
  %52 = getelementptr inbounds %struct.hdpvr_device, %struct.hdpvr_device* %51, i32 0, i32 2
  store i32* %50, i32** %52, align 8
  br label %57

53:                                               ; preds = %42
  %54 = load i32, i32* @STATUS_IDLE, align 4
  %55 = load %struct.hdpvr_device*, %struct.hdpvr_device** %7, align 8
  %56 = getelementptr inbounds %struct.hdpvr_device, %struct.hdpvr_device* %55, i32 0, i32 3
  store i32 %54, i32* %56, align 8
  br label %57

57:                                               ; preds = %53, %47
  br label %101

58:                                               ; preds = %3
  %59 = load %struct.hdpvr_device*, %struct.hdpvr_device** %7, align 8
  %60 = getelementptr inbounds %struct.hdpvr_device, %struct.hdpvr_device* %59, i32 0, i32 2
  %61 = load i32*, i32** %60, align 8
  %62 = icmp ne i32* %61, null
  br i1 %62, label %63, label %74

63:                                               ; preds = %58
  %64 = load %struct.file*, %struct.file** %4, align 8
  %65 = getelementptr inbounds %struct.file, %struct.file* %64, i32 0, i32 0
  %66 = load i32*, i32** %65, align 8
  %67 = load %struct.hdpvr_device*, %struct.hdpvr_device** %7, align 8
  %68 = getelementptr inbounds %struct.hdpvr_device, %struct.hdpvr_device* %67, i32 0, i32 2
  %69 = load i32*, i32** %68, align 8
  %70 = icmp ne i32* %66, %69
  br i1 %70, label %71, label %74

71:                                               ; preds = %63
  %72 = load i32, i32* @EBUSY, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %8, align 4
  br label %101

74:                                               ; preds = %63, %58
  %75 = load %struct.hdpvr_device*, %struct.hdpvr_device** %7, align 8
  %76 = getelementptr inbounds %struct.hdpvr_device, %struct.hdpvr_device* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* @STATUS_IDLE, align 4
  %79 = icmp eq i32 %77, %78
  br i1 %79, label %80, label %81

80:                                               ; preds = %74
  br label %101

81:                                               ; preds = %74
  %82 = load %struct.hdpvr_device*, %struct.hdpvr_device** %7, align 8
  %83 = call i32 @hdpvr_stop_streaming(%struct.hdpvr_device* %82)
  store i32 %83, i32* %8, align 4
  %84 = load i32, i32* %8, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %89, label %86

86:                                               ; preds = %81
  %87 = load %struct.hdpvr_device*, %struct.hdpvr_device** %7, align 8
  %88 = getelementptr inbounds %struct.hdpvr_device, %struct.hdpvr_device* %87, i32 0, i32 2
  store i32* null, i32** %88, align 8
  br label %89

89:                                               ; preds = %86, %81
  br label %101

90:                                               ; preds = %3
  %91 = load i32, i32* @MSG_INFO, align 4
  %92 = load i32, i32* @hdpvr_debug, align 4
  %93 = load %struct.hdpvr_device*, %struct.hdpvr_device** %7, align 8
  %94 = getelementptr inbounds %struct.hdpvr_device, %struct.hdpvr_device* %93, i32 0, i32 1
  %95 = load %struct.v4l2_encoder_cmd*, %struct.v4l2_encoder_cmd** %6, align 8
  %96 = getelementptr inbounds %struct.v4l2_encoder_cmd, %struct.v4l2_encoder_cmd* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = call i32 @v4l2_dbg(i32 %91, i32 %92, i32* %94, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %97)
  %99 = load i32, i32* @EINVAL, align 4
  %100 = sub nsw i32 0, %99
  store i32 %100, i32* %8, align 4
  br label %101

101:                                              ; preds = %90, %89, %80, %71, %57, %41, %32
  %102 = load %struct.hdpvr_device*, %struct.hdpvr_device** %7, align 8
  %103 = getelementptr inbounds %struct.hdpvr_device, %struct.hdpvr_device* %102, i32 0, i32 0
  %104 = call i32 @mutex_unlock(i32* %103)
  %105 = load i32, i32* %8, align 4
  ret i32 %105
}

declare dso_local %struct.hdpvr_device* @video_drvdata(%struct.file*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @hdpvr_start_streaming(%struct.hdpvr_device*) #1

declare dso_local i32 @hdpvr_stop_streaming(%struct.hdpvr_device*) #1

declare dso_local i32 @v4l2_dbg(i32, i32, i32*, i8*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
