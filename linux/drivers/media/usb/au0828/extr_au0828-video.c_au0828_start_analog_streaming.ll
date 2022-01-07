; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/au0828/extr_au0828-video.c_au0828_start_analog_streaming.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/au0828/extr_au0828-video.c_au0828_start_analog_streaming.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vb2_queue = type { i64 }
%struct.au0828_dev = type { i64, i32, i32, i32, i32, i32, i32, i64, i64 }

@.str = private unnamed_addr constant [41 x i8] c"au0828_start_analog_streaming called %d\0A\00", align 1
@V4L2_BUF_TYPE_VIDEO_CAPTURE = common dso_local global i64 0, align 8
@AU0828_ISO_PACKETS_PER_URB = common dso_local global i32 0, align 4
@AU0828_MAX_ISO_BUFS = common dso_local global i32 0, align 4
@au0828_isoc_copy = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"au0828_init_isoc failed\0A\00", align 1
@video = common dso_local global i32 0, align 4
@s_stream = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@V4L2_BUF_TYPE_VBI_CAPTURE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @au0828_start_analog_streaming(%struct.vb2_queue* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vb2_queue*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.au0828_dev*, align 8
  %7 = alloca i32, align 4
  store %struct.vb2_queue* %0, %struct.vb2_queue** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.vb2_queue*, %struct.vb2_queue** %4, align 8
  %9 = call %struct.au0828_dev* @vb2_get_drv_priv(%struct.vb2_queue* %8)
  store %struct.au0828_dev* %9, %struct.au0828_dev** %6, align 8
  store i32 0, i32* %7, align 4
  %10 = load %struct.au0828_dev*, %struct.au0828_dev** %6, align 8
  %11 = getelementptr inbounds %struct.au0828_dev, %struct.au0828_dev* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = call i32 @dprintk(i32 1, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i64 %12)
  %14 = load %struct.vb2_queue*, %struct.vb2_queue** %4, align 8
  %15 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @V4L2_BUF_TYPE_VIDEO_CAPTURE, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %2
  %20 = load %struct.au0828_dev*, %struct.au0828_dev** %6, align 8
  %21 = getelementptr inbounds %struct.au0828_dev, %struct.au0828_dev* %20, i32 0, i32 8
  store i64 0, i64* %21, align 8
  br label %25

22:                                               ; preds = %2
  %23 = load %struct.au0828_dev*, %struct.au0828_dev** %6, align 8
  %24 = getelementptr inbounds %struct.au0828_dev, %struct.au0828_dev* %23, i32 0, i32 7
  store i64 0, i64* %24, align 8
  br label %25

25:                                               ; preds = %22, %19
  %26 = load %struct.au0828_dev*, %struct.au0828_dev** %6, align 8
  %27 = getelementptr inbounds %struct.au0828_dev, %struct.au0828_dev* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %87

30:                                               ; preds = %25
  %31 = load %struct.au0828_dev*, %struct.au0828_dev** %6, align 8
  %32 = call i32 @au0828_i2s_init(%struct.au0828_dev* %31)
  %33 = load %struct.au0828_dev*, %struct.au0828_dev** %6, align 8
  %34 = load i32, i32* @AU0828_ISO_PACKETS_PER_URB, align 4
  %35 = load i32, i32* @AU0828_MAX_ISO_BUFS, align 4
  %36 = load %struct.au0828_dev*, %struct.au0828_dev** %6, align 8
  %37 = getelementptr inbounds %struct.au0828_dev, %struct.au0828_dev* %36, i32 0, i32 6
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @au0828_isoc_copy, align 4
  %40 = call i32 @au0828_init_isoc(%struct.au0828_dev* %33, i32 %34, i32 %35, i32 %38, i32 %39)
  store i32 %40, i32* %7, align 4
  %41 = load i32, i32* %7, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %30
  %44 = call i32 @pr_info(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %45 = load i32, i32* %7, align 4
  store i32 %45, i32* %3, align 4
  br label %93

46:                                               ; preds = %30
  %47 = load %struct.au0828_dev*, %struct.au0828_dev** %6, align 8
  %48 = getelementptr inbounds %struct.au0828_dev, %struct.au0828_dev* %47, i32 0, i32 5
  %49 = load i32, i32* @video, align 4
  %50 = load i32, i32* @s_stream, align 4
  %51 = call i32 @v4l2_device_call_all(i32* %48, i32 0, i32 %49, i32 %50, i32 1)
  %52 = load %struct.vb2_queue*, %struct.vb2_queue** %4, align 8
  %53 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @V4L2_BUF_TYPE_VIDEO_CAPTURE, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %68

57:                                               ; preds = %46
  %58 = load %struct.au0828_dev*, %struct.au0828_dev** %6, align 8
  %59 = getelementptr inbounds %struct.au0828_dev, %struct.au0828_dev* %58, i32 0, i32 1
  store i32 1, i32* %59, align 8
  %60 = load %struct.au0828_dev*, %struct.au0828_dev** %6, align 8
  %61 = getelementptr inbounds %struct.au0828_dev, %struct.au0828_dev* %60, i32 0, i32 4
  %62 = load i64, i64* @jiffies, align 8
  %63 = load i32, i32* @HZ, align 4
  %64 = sdiv i32 %63, 10
  %65 = sext i32 %64 to i64
  %66 = add nsw i64 %62, %65
  %67 = call i32 @mod_timer(i32* %61, i64 %66)
  br label %86

68:                                               ; preds = %46
  %69 = load %struct.vb2_queue*, %struct.vb2_queue** %4, align 8
  %70 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @V4L2_BUF_TYPE_VBI_CAPTURE, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %85

74:                                               ; preds = %68
  %75 = load %struct.au0828_dev*, %struct.au0828_dev** %6, align 8
  %76 = getelementptr inbounds %struct.au0828_dev, %struct.au0828_dev* %75, i32 0, i32 2
  store i32 1, i32* %76, align 4
  %77 = load %struct.au0828_dev*, %struct.au0828_dev** %6, align 8
  %78 = getelementptr inbounds %struct.au0828_dev, %struct.au0828_dev* %77, i32 0, i32 3
  %79 = load i64, i64* @jiffies, align 8
  %80 = load i32, i32* @HZ, align 4
  %81 = sdiv i32 %80, 10
  %82 = sext i32 %81 to i64
  %83 = add nsw i64 %79, %82
  %84 = call i32 @mod_timer(i32* %78, i64 %83)
  br label %85

85:                                               ; preds = %74, %68
  br label %86

86:                                               ; preds = %85, %57
  br label %87

87:                                               ; preds = %86, %25
  %88 = load %struct.au0828_dev*, %struct.au0828_dev** %6, align 8
  %89 = getelementptr inbounds %struct.au0828_dev, %struct.au0828_dev* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = add nsw i64 %90, 1
  store i64 %91, i64* %89, align 8
  %92 = load i32, i32* %7, align 4
  store i32 %92, i32* %3, align 4
  br label %93

93:                                               ; preds = %87, %43
  %94 = load i32, i32* %3, align 4
  ret i32 %94
}

declare dso_local %struct.au0828_dev* @vb2_get_drv_priv(%struct.vb2_queue*) #1

declare dso_local i32 @dprintk(i32, i8*, i64) #1

declare dso_local i32 @au0828_i2s_init(%struct.au0828_dev*) #1

declare dso_local i32 @au0828_init_isoc(%struct.au0828_dev*, i32, i32, i32, i32) #1

declare dso_local i32 @pr_info(i8*) #1

declare dso_local i32 @v4l2_device_call_all(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
