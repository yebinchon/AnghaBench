; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/cx231xx/extr_cx231xx-audio.c_snd_cx231xx_pcm_close.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/cx231xx/extr_cx231xx-audio.c_snd_cx231xx_pcm_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32* }
%struct.cx231xx = type { i32, i32, i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i64, i32 }

@.str = private unnamed_addr constant [16 x i8] c"closing device\0A\00", align 1
@Audio = common dso_local global i32 0, align 4
@INDEX_AUDIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"failed to set alternate setting !\0A\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"freeing\0A\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"audio users: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"disabling audio stream!\0A\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"released lock\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @snd_cx231xx_pcm_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_cx231xx_pcm_close(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.cx231xx*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  %6 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %7 = call %struct.cx231xx* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %6)
  store %struct.cx231xx* %7, %struct.cx231xx** %5, align 8
  %8 = load %struct.cx231xx*, %struct.cx231xx** %5, align 8
  %9 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 8
  %11 = call i32 (i32, i8*, ...) @dev_dbg(i32 %10, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %12 = load %struct.cx231xx*, %struct.cx231xx** %5, align 8
  %13 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %12, i32 0, i32 4
  %14 = call i32 @mutex_lock(i32* %13)
  %15 = load %struct.cx231xx*, %struct.cx231xx** %5, align 8
  %16 = load i32, i32* @Audio, align 4
  %17 = call i32 @cx231xx_capture_start(%struct.cx231xx* %15, i32 0, i32 %16)
  store i32 %17, i32* %4, align 4
  %18 = load %struct.cx231xx*, %struct.cx231xx** %5, align 8
  %19 = load i32, i32* @INDEX_AUDIO, align 4
  %20 = call i32 @cx231xx_set_alt_setting(%struct.cx231xx* %18, i32 %19, i32 0)
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* %4, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %32

23:                                               ; preds = %1
  %24 = load %struct.cx231xx*, %struct.cx231xx** %5, align 8
  %25 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @dev_err(i32 %26, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %28 = load %struct.cx231xx*, %struct.cx231xx** %5, align 8
  %29 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %28, i32 0, i32 4
  %30 = call i32 @mutex_unlock(i32* %29)
  %31 = load i32, i32* %4, align 4
  store i32 %31, i32* %2, align 4
  br label %107

32:                                               ; preds = %1
  %33 = load %struct.cx231xx*, %struct.cx231xx** %5, align 8
  %34 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %33, i32 0, i32 3
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = add nsw i64 %36, -1
  store i64 %37, i64* %35, align 8
  %38 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %39 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %38, i32 0, i32 0
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = icmp ne i32* %42, null
  br i1 %43, label %44, label %59

44:                                               ; preds = %32
  %45 = load %struct.cx231xx*, %struct.cx231xx** %5, align 8
  %46 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = call i32 (i32, i8*, ...) @dev_dbg(i32 %47, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %49 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %50 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %49, i32 0, i32 0
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = call i32 @vfree(i32* %53)
  %55 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %56 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %55, i32 0, i32 0
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  store i32* null, i32** %58, align 8
  br label %59

59:                                               ; preds = %44, %32
  %60 = load %struct.cx231xx*, %struct.cx231xx** %5, align 8
  %61 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %60, i32 0, i32 4
  %62 = call i32 @mutex_unlock(i32* %61)
  %63 = load %struct.cx231xx*, %struct.cx231xx** %5, align 8
  %64 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %63, i32 0, i32 3
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = icmp eq i64 %66, 0
  br i1 %67, label %68, label %106

68:                                               ; preds = %59
  %69 = load %struct.cx231xx*, %struct.cx231xx** %5, align 8
  %70 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %69, i32 0, i32 3
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = icmp eq i32 %72, 1
  br i1 %73, label %74, label %106

74:                                               ; preds = %68
  %75 = load %struct.cx231xx*, %struct.cx231xx** %5, align 8
  %76 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.cx231xx*, %struct.cx231xx** %5, align 8
  %79 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %78, i32 0, i32 3
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = call i32 (i32, i8*, ...) @dev_dbg(i32 %77, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i64 %81)
  %83 = load %struct.cx231xx*, %struct.cx231xx** %5, align 8
  %84 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 8
  %86 = call i32 (i32, i8*, ...) @dev_dbg(i32 %85, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0))
  %87 = load %struct.cx231xx*, %struct.cx231xx** %5, align 8
  %88 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %87, i32 0, i32 3
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 1
  store i32 0, i32* %89, align 8
  %90 = load %struct.cx231xx*, %struct.cx231xx** %5, align 8
  %91 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 8
  %93 = call i32 (i32, i8*, ...) @dev_dbg(i32 %92, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0))
  %94 = load %struct.cx231xx*, %struct.cx231xx** %5, align 8
  %95 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %94, i32 0, i32 1
  %96 = call i64 @atomic_read(i32* %95)
  %97 = icmp sgt i64 %96, 0
  br i1 %97, label %98, label %105

98:                                               ; preds = %74
  %99 = load %struct.cx231xx*, %struct.cx231xx** %5, align 8
  %100 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %99, i32 0, i32 1
  %101 = call i32 @atomic_set(i32* %100, i32 0)
  %102 = load %struct.cx231xx*, %struct.cx231xx** %5, align 8
  %103 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %102, i32 0, i32 0
  %104 = call i32 @schedule_work(i32* %103)
  br label %105

105:                                              ; preds = %98, %74
  br label %106

106:                                              ; preds = %105, %68, %59
  store i32 0, i32* %2, align 4
  br label %107

107:                                              ; preds = %106, %23
  %108 = load i32, i32* %2, align 4
  ret i32 %108
}

declare dso_local %struct.cx231xx* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i32 @dev_dbg(i32, i8*, ...) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @cx231xx_capture_start(%struct.cx231xx*, i32, i32) #1

declare dso_local i32 @cx231xx_set_alt_setting(%struct.cx231xx*, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @vfree(i32*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @schedule_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
