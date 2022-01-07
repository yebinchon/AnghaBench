; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/radio/si470x/extr_radio-si470x-common.c_si470x_set_chan.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/radio/si470x/extr_radio-si470x-common.c_si470x_set_chan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.si470x_device = type { i32 (%struct.si470x_device*, i64)*, i32*, i32 (%struct.si470x_device*, i64)*, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@POWERCFG = common dso_local global i64 0, align 8
@POWERCFG_ENABLE = common dso_local global i32 0, align 4
@POWERCFG_DMUTE = common dso_local global i32 0, align 4
@CHANNEL_CHAN = common dso_local global i32 0, align 4
@CHANNEL = common dso_local global i64 0, align 8
@CHANNEL_TUNE = common dso_local global i16 0, align 2
@tune_timeout = common dso_local global i32 0, align 4
@STATUSRSSI = common dso_local global i64 0, align 8
@STATUSRSSI_STC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"tune does not complete\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"tune timed out after %u ms\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.si470x_device*, i16)* @si470x_set_chan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @si470x_set_chan(%struct.si470x_device* %0, i16 zeroext %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.si470x_device*, align 8
  %5 = alloca i16, align 2
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.si470x_device* %0, %struct.si470x_device** %4, align 8
  store i16 %1, i16* %5, align 2
  store i32 0, i32* %8, align 4
  %9 = load %struct.si470x_device*, %struct.si470x_device** %4, align 8
  %10 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %9, i32 0, i32 0
  %11 = load i32 (%struct.si470x_device*, i64)*, i32 (%struct.si470x_device*, i64)** %10, align 8
  %12 = load %struct.si470x_device*, %struct.si470x_device** %4, align 8
  %13 = load i64, i64* @POWERCFG, align 8
  %14 = call i32 %11(%struct.si470x_device* %12, i64 %13)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = load i32, i32* %6, align 4
  store i32 %18, i32* %3, align 4
  br label %121

19:                                               ; preds = %2
  %20 = load %struct.si470x_device*, %struct.si470x_device** %4, align 8
  %21 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %20, i32 0, i32 1
  %22 = load i32*, i32** %21, align 8
  %23 = load i64, i64* @POWERCFG, align 8
  %24 = getelementptr inbounds i32, i32* %22, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @POWERCFG_ENABLE, align 4
  %27 = load i32, i32* @POWERCFG_DMUTE, align 4
  %28 = or i32 %26, %27
  %29 = and i32 %25, %28
  %30 = load i32, i32* @POWERCFG_ENABLE, align 4
  %31 = load i32, i32* @POWERCFG_DMUTE, align 4
  %32 = or i32 %30, %31
  %33 = icmp ne i32 %29, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %19
  store i32 0, i32* %3, align 4
  br label %121

35:                                               ; preds = %19
  %36 = load i32, i32* @CHANNEL_CHAN, align 4
  %37 = xor i32 %36, -1
  %38 = load %struct.si470x_device*, %struct.si470x_device** %4, align 8
  %39 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %38, i32 0, i32 1
  %40 = load i32*, i32** %39, align 8
  %41 = load i64, i64* @CHANNEL, align 8
  %42 = getelementptr inbounds i32, i32* %40, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = and i32 %43, %37
  store i32 %44, i32* %42, align 4
  %45 = load i16, i16* @CHANNEL_TUNE, align 2
  %46 = zext i16 %45 to i32
  %47 = load i16, i16* %5, align 2
  %48 = zext i16 %47 to i32
  %49 = or i32 %46, %48
  %50 = load %struct.si470x_device*, %struct.si470x_device** %4, align 8
  %51 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %50, i32 0, i32 1
  %52 = load i32*, i32** %51, align 8
  %53 = load i64, i64* @CHANNEL, align 8
  %54 = getelementptr inbounds i32, i32* %52, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = or i32 %55, %49
  store i32 %56, i32* %54, align 4
  %57 = load %struct.si470x_device*, %struct.si470x_device** %4, align 8
  %58 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %57, i32 0, i32 2
  %59 = load i32 (%struct.si470x_device*, i64)*, i32 (%struct.si470x_device*, i64)** %58, align 8
  %60 = load %struct.si470x_device*, %struct.si470x_device** %4, align 8
  %61 = load i64, i64* @CHANNEL, align 8
  %62 = call i32 %59(%struct.si470x_device* %60, i64 %61)
  store i32 %62, i32* %6, align 4
  %63 = load i32, i32* %6, align 4
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %35
  br label %119

66:                                               ; preds = %35
  %67 = load %struct.si470x_device*, %struct.si470x_device** %4, align 8
  %68 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %67, i32 0, i32 4
  %69 = call i32 @reinit_completion(i32* %68)
  %70 = load %struct.si470x_device*, %struct.si470x_device** %4, align 8
  %71 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %70, i32 0, i32 4
  %72 = load i32, i32* @tune_timeout, align 4
  %73 = call i32 @msecs_to_jiffies(i32 %72)
  %74 = call i64 @wait_for_completion_timeout(i32* %71, i32 %73)
  store i64 %74, i64* %7, align 8
  %75 = load i64, i64* %7, align 8
  %76 = icmp eq i64 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %66
  store i32 1, i32* %8, align 4
  br label %78

78:                                               ; preds = %77, %66
  %79 = load %struct.si470x_device*, %struct.si470x_device** %4, align 8
  %80 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %79, i32 0, i32 1
  %81 = load i32*, i32** %80, align 8
  %82 = load i64, i64* @STATUSRSSI, align 8
  %83 = getelementptr inbounds i32, i32* %81, i64 %82
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @STATUSRSSI_STC, align 4
  %86 = and i32 %84, %85
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %93

88:                                               ; preds = %78
  %89 = load %struct.si470x_device*, %struct.si470x_device** %4, align 8
  %90 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %89, i32 0, i32 3
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 0
  %92 = call i32 (i32*, i8*, ...) @dev_warn(i32* %91, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %93

93:                                               ; preds = %88, %78
  %94 = load i32, i32* %8, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %102

96:                                               ; preds = %93
  %97 = load %struct.si470x_device*, %struct.si470x_device** %4, align 8
  %98 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %97, i32 0, i32 3
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 0
  %100 = load i32, i32* @tune_timeout, align 4
  %101 = call i32 (i32*, i8*, ...) @dev_warn(i32* %99, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %100)
  br label %102

102:                                              ; preds = %96, %93
  %103 = load i16, i16* @CHANNEL_TUNE, align 2
  %104 = zext i16 %103 to i32
  %105 = xor i32 %104, -1
  %106 = load %struct.si470x_device*, %struct.si470x_device** %4, align 8
  %107 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %106, i32 0, i32 1
  %108 = load i32*, i32** %107, align 8
  %109 = load i64, i64* @CHANNEL, align 8
  %110 = getelementptr inbounds i32, i32* %108, i64 %109
  %111 = load i32, i32* %110, align 4
  %112 = and i32 %111, %105
  store i32 %112, i32* %110, align 4
  %113 = load %struct.si470x_device*, %struct.si470x_device** %4, align 8
  %114 = getelementptr inbounds %struct.si470x_device, %struct.si470x_device* %113, i32 0, i32 2
  %115 = load i32 (%struct.si470x_device*, i64)*, i32 (%struct.si470x_device*, i64)** %114, align 8
  %116 = load %struct.si470x_device*, %struct.si470x_device** %4, align 8
  %117 = load i64, i64* @CHANNEL, align 8
  %118 = call i32 %115(%struct.si470x_device* %116, i64 %117)
  store i32 %118, i32* %6, align 4
  br label %119

119:                                              ; preds = %102, %65
  %120 = load i32, i32* %6, align 4
  store i32 %120, i32* %3, align 4
  br label %121

121:                                              ; preds = %119, %34, %17
  %122 = load i32, i32* %3, align 4
  ret i32 %122
}

declare dso_local i32 @reinit_completion(i32*) #1

declare dso_local i64 @wait_for_completion_timeout(i32*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @dev_warn(i32*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
