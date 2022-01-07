; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/cx231xx/extr_cx231xx-audio.c_snd_cx231xx_capture_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/cx231xx/extr_cx231xx-audio.c_snd_cx231xx_capture_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { %struct.cx231xx*, i32 }
%struct.cx231xx = type { i32, %struct.TYPE_2__, i32, i32, i64 }
%struct.TYPE_2__ = type { %struct.snd_pcm_substream*, i32 }

@.str = private unnamed_addr constant [53 x i8] c"opening device and trying to acquire exclusive lock\0A\00", align 1
@DEV_DISCONNECTED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"Can't open. the device was removed.\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@INDEX_AUDIO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"failed to set alternate setting !\0A\00", align 1
@snd_cx231xx_hw_capture = common dso_local global i32 0, align 4
@Audio = common dso_local global i32 0, align 4
@SNDRV_PCM_HW_PARAM_PERIODS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @snd_cx231xx_capture_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_cx231xx_capture_open(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca %struct.cx231xx*, align 8
  %5 = alloca %struct.snd_pcm_runtime*, align 8
  %6 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  %7 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %8 = call %struct.cx231xx* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %7)
  store %struct.cx231xx* %8, %struct.cx231xx** %4, align 8
  %9 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %10 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %9, i32 0, i32 0
  %11 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %10, align 8
  store %struct.snd_pcm_runtime* %11, %struct.snd_pcm_runtime** %5, align 8
  store i32 0, i32* %6, align 4
  %12 = load %struct.cx231xx*, %struct.cx231xx** %4, align 8
  %13 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @dev_dbg(i32 %14, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0))
  %16 = load %struct.cx231xx*, %struct.cx231xx** %4, align 8
  %17 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @DEV_DISCONNECTED, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %29

22:                                               ; preds = %1
  %23 = load %struct.cx231xx*, %struct.cx231xx** %4, align 8
  %24 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @dev_err(i32 %25, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  %27 = load i32, i32* @ENODEV, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %2, align 4
  br label %85

29:                                               ; preds = %1
  %30 = load %struct.cx231xx*, %struct.cx231xx** %4, align 8
  %31 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %30, i32 0, i32 2
  %32 = call i32 @mutex_lock(i32* %31)
  %33 = load %struct.cx231xx*, %struct.cx231xx** %4, align 8
  %34 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %33, i32 0, i32 4
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %29
  %38 = load %struct.cx231xx*, %struct.cx231xx** %4, align 8
  %39 = load i32, i32* @INDEX_AUDIO, align 4
  %40 = call i32 @cx231xx_set_alt_setting(%struct.cx231xx* %38, i32 %39, i32 1)
  store i32 %40, i32* %6, align 4
  br label %45

41:                                               ; preds = %29
  %42 = load %struct.cx231xx*, %struct.cx231xx** %4, align 8
  %43 = load i32, i32* @INDEX_AUDIO, align 4
  %44 = call i32 @cx231xx_set_alt_setting(%struct.cx231xx* %42, i32 %43, i32 0)
  store i32 %44, i32* %6, align 4
  br label %45

45:                                               ; preds = %41, %37
  %46 = load %struct.cx231xx*, %struct.cx231xx** %4, align 8
  %47 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %46, i32 0, i32 2
  %48 = call i32 @mutex_unlock(i32* %47)
  %49 = load i32, i32* %6, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %45
  %52 = load %struct.cx231xx*, %struct.cx231xx** %4, align 8
  %53 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @dev_err(i32 %54, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  %56 = load i32, i32* %6, align 4
  store i32 %56, i32* %2, align 4
  br label %85

57:                                               ; preds = %45
  %58 = load i32, i32* @snd_cx231xx_hw_capture, align 4
  %59 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %60 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %59, i32 0, i32 1
  store i32 %58, i32* %60, align 8
  %61 = load %struct.cx231xx*, %struct.cx231xx** %4, align 8
  %62 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %61, i32 0, i32 2
  %63 = call i32 @mutex_lock(i32* %62)
  %64 = load %struct.cx231xx*, %struct.cx231xx** %4, align 8
  %65 = load i32, i32* @Audio, align 4
  %66 = call i32 @cx231xx_capture_start(%struct.cx231xx* %64, i32 1, i32 %65)
  store i32 %66, i32* %6, align 4
  %67 = load %struct.cx231xx*, %struct.cx231xx** %4, align 8
  %68 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %69, align 8
  %72 = load %struct.cx231xx*, %struct.cx231xx** %4, align 8
  %73 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %72, i32 0, i32 2
  %74 = call i32 @mutex_unlock(i32* %73)
  %75 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %76 = load i32, i32* @SNDRV_PCM_HW_PARAM_PERIODS, align 4
  %77 = call i32 @snd_pcm_hw_constraint_integer(%struct.snd_pcm_runtime* %75, i32 %76)
  %78 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %79 = load %struct.cx231xx*, %struct.cx231xx** %4, align 8
  %80 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 0
  store %struct.snd_pcm_substream* %78, %struct.snd_pcm_substream** %81, align 8
  %82 = load %struct.cx231xx*, %struct.cx231xx** %4, align 8
  %83 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %84 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %83, i32 0, i32 0
  store %struct.cx231xx* %82, %struct.cx231xx** %84, align 8
  store i32 0, i32* %2, align 4
  br label %85

85:                                               ; preds = %57, %51, %22
  %86 = load i32, i32* %2, align 4
  ret i32 %86
}

declare dso_local %struct.cx231xx* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @cx231xx_set_alt_setting(%struct.cx231xx*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @cx231xx_capture_start(%struct.cx231xx*, i32, i32) #1

declare dso_local i32 @snd_pcm_hw_constraint_integer(%struct.snd_pcm_runtime*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
