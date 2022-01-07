; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/saa7134/extr_saa7134-alsa.c_snd_card_saa7134_capture_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/saa7134/extr_saa7134-alsa.c_snd_card_saa7134_capture_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { i32, i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.snd_pcm_substream*, i32, %struct.saa7134_dev* }
%struct.saa7134_dev = type { i64, %struct.TYPE_8__, %struct.TYPE_7__* }
%struct.TYPE_8__ = type { i32, i32, i64, i64 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_9__ = type { i32, %struct.saa7134_dev* }

@.str = private unnamed_addr constant [64 x i8] c"BUG: saa7134 can't find device struct. Can't proceed with open\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@snd_card_saa7134_runtime_free = common dso_local global i32 0, align 4
@snd_card_saa7134_capture = common dso_local global i32 0, align 4
@SNDRV_PCM_HW_PARAM_PERIODS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @snd_card_saa7134_capture_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_card_saa7134_capture_open(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca %struct.snd_pcm_runtime*, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca %struct.saa7134_dev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  %10 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %11 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %10, i32 0, i32 0
  %12 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %11, align 8
  store %struct.snd_pcm_runtime* %12, %struct.snd_pcm_runtime** %4, align 8
  %13 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %14 = call %struct.TYPE_9__* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %13)
  store %struct.TYPE_9__* %14, %struct.TYPE_9__** %6, align 8
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %16 = icmp ne %struct.TYPE_9__* %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %1
  %18 = call i32 @pr_err(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* @ENODEV, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %112

21:                                               ; preds = %1
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 1
  %24 = load %struct.saa7134_dev*, %struct.saa7134_dev** %23, align 8
  store %struct.saa7134_dev* %24, %struct.saa7134_dev** %7, align 8
  %25 = load %struct.saa7134_dev*, %struct.saa7134_dev** %7, align 8
  %26 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 1
  %28 = call i32 @mutex_lock(i32* %27)
  %29 = load %struct.saa7134_dev*, %struct.saa7134_dev** %7, align 8
  %30 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 3
  store i64 0, i64* %31, align 8
  %32 = load %struct.saa7134_dev*, %struct.saa7134_dev** %7, align 8
  %33 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 2
  store i64 0, i64* %34, align 8
  %35 = load %struct.saa7134_dev*, %struct.saa7134_dev** %7, align 8
  %36 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %35, i32 0, i32 2
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %8, align 4
  %40 = load i32, i32* %8, align 4
  %41 = icmp slt i32 %40, 1
  br i1 %41, label %45, label %42

42:                                               ; preds = %21
  %43 = load i32, i32* %8, align 4
  %44 = icmp sgt i32 %43, 3
  br i1 %44, label %45, label %46

45:                                               ; preds = %42, %21
  store i32 1, i32* %8, align 4
  br label %46

46:                                               ; preds = %45, %42
  %47 = load i32, i32* %8, align 4
  %48 = sub nsw i32 %47, 1
  %49 = load %struct.saa7134_dev*, %struct.saa7134_dev** %7, align 8
  %50 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 0
  store i32 %48, i32* %51, align 8
  %52 = load %struct.saa7134_dev*, %struct.saa7134_dev** %7, align 8
  %53 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 1
  %55 = call i32 @mutex_unlock(i32* %54)
  %56 = load i32, i32* @GFP_KERNEL, align 4
  %57 = call %struct.TYPE_10__* @kzalloc(i32 24, i32 %56)
  store %struct.TYPE_10__* %57, %struct.TYPE_10__** %5, align 8
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %59 = icmp eq %struct.TYPE_10__* %58, null
  br i1 %59, label %60, label %63

60:                                               ; preds = %46
  %61 = load i32, i32* @ENOMEM, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %2, align 4
  br label %112

63:                                               ; preds = %46
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 1
  %66 = load %struct.saa7134_dev*, %struct.saa7134_dev** %65, align 8
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 2
  store %struct.saa7134_dev* %66, %struct.saa7134_dev** %68, align 8
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 1
  %71 = call i32 @spin_lock_init(i32* %70)
  %72 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %73 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %73, i32 0, i32 0
  store %struct.snd_pcm_substream* %72, %struct.snd_pcm_substream** %74, align 8
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %76 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %77 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %76, i32 0, i32 2
  store %struct.TYPE_10__* %75, %struct.TYPE_10__** %77, align 8
  %78 = load i32, i32* @snd_card_saa7134_runtime_free, align 4
  %79 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %80 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %79, i32 0, i32 1
  store i32 %78, i32* %80, align 4
  %81 = load i32, i32* @snd_card_saa7134_capture, align 4
  %82 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %83 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %82, i32 0, i32 0
  store i32 %81, i32* %83, align 8
  %84 = load %struct.saa7134_dev*, %struct.saa7134_dev** %7, align 8
  %85 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %95

88:                                               ; preds = %63
  %89 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %89, i32 0, i32 0
  store i32 1, i32* %90, align 8
  %91 = load %struct.saa7134_dev*, %struct.saa7134_dev** %7, align 8
  %92 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %91, i32 0, i32 0
  store i64 0, i64* %92, align 8
  %93 = load %struct.saa7134_dev*, %struct.saa7134_dev** %7, align 8
  %94 = call i32 @saa7134_tvaudio_setmute(%struct.saa7134_dev* %93)
  br label %95

95:                                               ; preds = %88, %63
  %96 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %97 = load i32, i32* @SNDRV_PCM_HW_PARAM_PERIODS, align 4
  %98 = call i32 @snd_pcm_hw_constraint_integer(%struct.snd_pcm_runtime* %96, i32 %97)
  store i32 %98, i32* %9, align 4
  %99 = load i32, i32* %9, align 4
  %100 = icmp slt i32 %99, 0
  br i1 %100, label %101, label %103

101:                                              ; preds = %95
  %102 = load i32, i32* %9, align 4
  store i32 %102, i32* %2, align 4
  br label %112

103:                                              ; preds = %95
  %104 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %105 = load i32, i32* @SNDRV_PCM_HW_PARAM_PERIODS, align 4
  %106 = call i32 @snd_pcm_hw_constraint_step(%struct.snd_pcm_runtime* %104, i32 0, i32 %105, i32 2)
  store i32 %106, i32* %9, align 4
  %107 = load i32, i32* %9, align 4
  %108 = icmp slt i32 %107, 0
  br i1 %108, label %109, label %111

109:                                              ; preds = %103
  %110 = load i32, i32* %9, align 4
  store i32 %110, i32* %2, align 4
  br label %112

111:                                              ; preds = %103
  store i32 0, i32* %2, align 4
  br label %112

112:                                              ; preds = %111, %109, %101, %60, %17
  %113 = load i32, i32* %2, align 4
  ret i32 %113
}

declare dso_local %struct.TYPE_9__* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local %struct.TYPE_10__* @kzalloc(i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @saa7134_tvaudio_setmute(%struct.saa7134_dev*) #1

declare dso_local i32 @snd_pcm_hw_constraint_integer(%struct.snd_pcm_runtime*, i32) #1

declare dso_local i32 @snd_pcm_hw_constraint_step(%struct.snd_pcm_runtime*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
