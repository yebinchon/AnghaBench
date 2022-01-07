; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/radio/extr_radio-mr800.c_vidioc_s_hw_freq_seek.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/radio/extr_radio-mr800.c_vidioc_s_hw_freq_seek.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_hw_freq_seek = type { i64, i64, i32 }
%struct.amradio_device = type { i32, i32* }

@vidioc_s_hw_freq_seek.buf = internal global [8 x i32] [i32 61, i32 50, i32 15, i32 8, i32 61, i32 50, i32 15, i32 8], align 16
@EINVAL = common dso_local global i32 0, align 4
@O_NONBLOCK = common dso_local global i32 0, align 4
@EWOULDBLOCK = common dso_local global i32 0, align 4
@AMRADIO_SET_SEARCH_LVL = common dso_local global i32 0, align 4
@AMRADIO_SET_SEARCH_UP = common dso_local global i32 0, align 4
@AMRADIO_SET_SEARCH_DOWN = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@ENODATA = common dso_local global i32 0, align 4
@ERESTARTSYS = common dso_local global i32 0, align 4
@AMRADIO_GET_READY_FLAG = common dso_local global i32 0, align 4
@AMRADIO_GET_FREQ = common dso_local global i32 0, align 4
@AMRADIO_STOP_SEARCH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_hw_freq_seek*)* @vidioc_s_hw_freq_seek to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vidioc_s_hw_freq_seek(%struct.file* %0, i8* %1, %struct.v4l2_hw_freq_seek* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_hw_freq_seek*, align 8
  %8 = alloca %struct.amradio_device*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_hw_freq_seek* %2, %struct.v4l2_hw_freq_seek** %7, align 8
  %11 = load %struct.file*, %struct.file** %5, align 8
  %12 = call %struct.amradio_device* @video_drvdata(%struct.file* %11)
  store %struct.amradio_device* %12, %struct.amradio_device** %8, align 8
  %13 = load %struct.v4l2_hw_freq_seek*, %struct.v4l2_hw_freq_seek** %7, align 8
  %14 = getelementptr inbounds %struct.v4l2_hw_freq_seek, %struct.v4l2_hw_freq_seek* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %22, label %17

17:                                               ; preds = %3
  %18 = load %struct.v4l2_hw_freq_seek*, %struct.v4l2_hw_freq_seek** %7, align 8
  %19 = getelementptr inbounds %struct.v4l2_hw_freq_seek, %struct.v4l2_hw_freq_seek* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %17, %3
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %149

25:                                               ; preds = %17
  %26 = load %struct.file*, %struct.file** %5, align 8
  %27 = getelementptr inbounds %struct.file, %struct.file* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @O_NONBLOCK, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %25
  %33 = load i32, i32* @EWOULDBLOCK, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %4, align 4
  br label %149

35:                                               ; preds = %25
  %36 = load %struct.amradio_device*, %struct.amradio_device** %8, align 8
  %37 = load i32, i32* @AMRADIO_SET_SEARCH_LVL, align 4
  %38 = call i32 @amradio_send_cmd(%struct.amradio_device* %36, i32 %37, i32 0, i32* getelementptr inbounds ([8 x i32], [8 x i32]* @vidioc_s_hw_freq_seek.buf, i64 0, i64 0), i32 8, i32 0)
  store i32 %38, i32* %10, align 4
  %39 = load i32, i32* %10, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %35
  %42 = load i32, i32* %10, align 4
  store i32 %42, i32* %4, align 4
  br label %149

43:                                               ; preds = %35
  %44 = load %struct.amradio_device*, %struct.amradio_device** %8, align 8
  %45 = load %struct.amradio_device*, %struct.amradio_device** %8, align 8
  %46 = getelementptr inbounds %struct.amradio_device, %struct.amradio_device* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @amradio_set_freq(%struct.amradio_device* %44, i32 %47)
  %49 = load %struct.amradio_device*, %struct.amradio_device** %8, align 8
  %50 = load %struct.v4l2_hw_freq_seek*, %struct.v4l2_hw_freq_seek** %7, align 8
  %51 = getelementptr inbounds %struct.v4l2_hw_freq_seek, %struct.v4l2_hw_freq_seek* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %43
  %55 = load i32, i32* @AMRADIO_SET_SEARCH_UP, align 4
  br label %58

56:                                               ; preds = %43
  %57 = load i32, i32* @AMRADIO_SET_SEARCH_DOWN, align 4
  br label %58

58:                                               ; preds = %56, %54
  %59 = phi i32 [ %55, %54 ], [ %57, %56 ]
  %60 = call i32 @amradio_send_cmd(%struct.amradio_device* %49, i32 %59, i32 0, i32* null, i32 0, i32 0)
  store i32 %60, i32* %10, align 4
  %61 = load i32, i32* %10, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %58
  %64 = load i32, i32* %10, align 4
  store i32 %64, i32* %4, align 4
  br label %149

65:                                               ; preds = %58
  %66 = load i64, i64* @jiffies, align 8
  %67 = call i64 @msecs_to_jiffies(i32 30000)
  %68 = add i64 %66, %67
  store i64 %68, i64* %9, align 8
  br label %69

69:                                               ; preds = %138, %90, %65
  %70 = load i64, i64* @jiffies, align 8
  %71 = load i64, i64* %9, align 8
  %72 = call i64 @time_after(i64 %70, i64 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %69
  %75 = load i32, i32* @ENODATA, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %10, align 4
  br label %139

77:                                               ; preds = %69
  %78 = call i64 @msecs_to_jiffies(i32 10)
  %79 = call i64 @schedule_timeout_interruptible(i64 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %77
  %82 = load i32, i32* @ERESTARTSYS, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %10, align 4
  br label %139

84:                                               ; preds = %77
  %85 = load %struct.amradio_device*, %struct.amradio_device** %8, align 8
  %86 = load i32, i32* @AMRADIO_GET_READY_FLAG, align 4
  %87 = call i32 @amradio_send_cmd(%struct.amradio_device* %85, i32 %86, i32 0, i32* null, i32 0, i32 1)
  store i32 %87, i32* %10, align 4
  %88 = load i32, i32* %10, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %84
  br label %69

91:                                               ; preds = %84
  %92 = load %struct.amradio_device*, %struct.amradio_device** %8, align 8
  %93 = load i32, i32* @AMRADIO_GET_FREQ, align 4
  %94 = call i32 @amradio_send_cmd(%struct.amradio_device* %92, i32 %93, i32 0, i32* null, i32 0, i32 1)
  %95 = load %struct.amradio_device*, %struct.amradio_device** %8, align 8
  %96 = getelementptr inbounds %struct.amradio_device, %struct.amradio_device* %95, i32 0, i32 1
  %97 = load i32*, i32** %96, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 1
  %99 = load i32, i32* %98, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %108, label %101

101:                                              ; preds = %91
  %102 = load %struct.amradio_device*, %struct.amradio_device** %8, align 8
  %103 = getelementptr inbounds %struct.amradio_device, %struct.amradio_device* %102, i32 0, i32 1
  %104 = load i32*, i32** %103, align 8
  %105 = getelementptr inbounds i32, i32* %104, i64 2
  %106 = load i32, i32* %105, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %138

108:                                              ; preds = %101, %91
  %109 = load %struct.amradio_device*, %struct.amradio_device** %8, align 8
  %110 = getelementptr inbounds %struct.amradio_device, %struct.amradio_device* %109, i32 0, i32 1
  %111 = load i32*, i32** %110, align 8
  %112 = getelementptr inbounds i32, i32* %111, i64 1
  %113 = load i32, i32* %112, align 4
  %114 = shl i32 %113, 8
  %115 = load %struct.amradio_device*, %struct.amradio_device** %8, align 8
  %116 = getelementptr inbounds %struct.amradio_device, %struct.amradio_device* %115, i32 0, i32 1
  %117 = load i32*, i32** %116, align 8
  %118 = getelementptr inbounds i32, i32* %117, i64 2
  %119 = load i32, i32* %118, align 4
  %120 = or i32 %114, %119
  %121 = load %struct.amradio_device*, %struct.amradio_device** %8, align 8
  %122 = getelementptr inbounds %struct.amradio_device, %struct.amradio_device* %121, i32 0, i32 0
  store i32 %120, i32* %122, align 8
  %123 = load %struct.amradio_device*, %struct.amradio_device** %8, align 8
  %124 = getelementptr inbounds %struct.amradio_device, %struct.amradio_device* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = sub nsw i32 %125, 16
  %127 = mul nsw i32 %126, 200
  %128 = load %struct.amradio_device*, %struct.amradio_device** %8, align 8
  %129 = getelementptr inbounds %struct.amradio_device, %struct.amradio_device* %128, i32 0, i32 0
  store i32 %127, i32* %129, align 8
  %130 = load %struct.amradio_device*, %struct.amradio_device** %8, align 8
  %131 = load i32, i32* @AMRADIO_STOP_SEARCH, align 4
  %132 = call i32 @amradio_send_cmd(%struct.amradio_device* %130, i32 %131, i32 0, i32* null, i32 0, i32 0)
  %133 = load %struct.amradio_device*, %struct.amradio_device** %8, align 8
  %134 = load %struct.amradio_device*, %struct.amradio_device** %8, align 8
  %135 = getelementptr inbounds %struct.amradio_device, %struct.amradio_device* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = call i32 @amradio_set_freq(%struct.amradio_device* %133, i32 %136)
  store i32 0, i32* %10, align 4
  br label %139

138:                                              ; preds = %101
  br label %69

139:                                              ; preds = %108, %81, %74
  %140 = load %struct.amradio_device*, %struct.amradio_device** %8, align 8
  %141 = load i32, i32* @AMRADIO_STOP_SEARCH, align 4
  %142 = call i32 @amradio_send_cmd(%struct.amradio_device* %140, i32 %141, i32 0, i32* null, i32 0, i32 0)
  %143 = load %struct.amradio_device*, %struct.amradio_device** %8, align 8
  %144 = load %struct.amradio_device*, %struct.amradio_device** %8, align 8
  %145 = getelementptr inbounds %struct.amradio_device, %struct.amradio_device* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = call i32 @amradio_set_freq(%struct.amradio_device* %143, i32 %146)
  %148 = load i32, i32* %10, align 4
  store i32 %148, i32* %4, align 4
  br label %149

149:                                              ; preds = %139, %63, %41, %32, %22
  %150 = load i32, i32* %4, align 4
  ret i32 %150
}

declare dso_local %struct.amradio_device* @video_drvdata(%struct.file*) #1

declare dso_local i32 @amradio_send_cmd(%struct.amradio_device*, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @amradio_set_freq(%struct.amradio_device*, i32) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i64 @schedule_timeout_interruptible(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
