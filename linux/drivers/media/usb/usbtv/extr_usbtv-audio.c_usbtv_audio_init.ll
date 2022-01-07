; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/usbtv/extr_usbtv-audio.c_usbtv_audio_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/usbtv/extr_usbtv-audio.c_usbtv_audio_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbtv = type { %struct.snd_card*, %struct.TYPE_8__*, %struct.TYPE_7__*, i32, i32 }
%struct.snd_card = type { i32, i32, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i8* }
%struct.TYPE_7__ = type { i32, %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.snd_pcm = type { %struct.usbtv*, i64, i32 }

@snd_usbtv_trigger = common dso_local global i32 0, align 4
@SNDRV_DEFAULT_IDX1 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"usbtv\00", align 1
@THIS_MODULE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"USBTV Audio at bus %d device %d\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"USBTV Audio\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"USBTV Audio Input\00", align 1
@SNDRV_PCM_STREAM_CAPTURE = common dso_local global i32 0, align 4
@snd_usbtv_pcm_ops = common dso_local global i32 0, align 4
@SNDRV_DMA_TYPE_CONTINUOUS = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@USBTV_AUDIO_BUFFER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @usbtv_audio_init(%struct.usbtv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.usbtv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_card*, align 8
  %6 = alloca %struct.snd_pcm*, align 8
  store %struct.usbtv* %0, %struct.usbtv** %3, align 8
  %7 = load %struct.usbtv*, %struct.usbtv** %3, align 8
  %8 = getelementptr inbounds %struct.usbtv, %struct.usbtv* %7, i32 0, i32 4
  %9 = load i32, i32* @snd_usbtv_trigger, align 4
  %10 = call i32 @INIT_WORK(i32* %8, i32 %9)
  %11 = load %struct.usbtv*, %struct.usbtv** %3, align 8
  %12 = getelementptr inbounds %struct.usbtv, %struct.usbtv* %11, i32 0, i32 3
  %13 = call i32 @atomic_set(i32* %12, i32 0)
  %14 = load %struct.usbtv*, %struct.usbtv** %3, align 8
  %15 = getelementptr inbounds %struct.usbtv, %struct.usbtv* %14, i32 0, i32 2
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 2
  %18 = load i32, i32* @SNDRV_DEFAULT_IDX1, align 4
  %19 = load i32, i32* @THIS_MODULE, align 4
  %20 = call i32 @snd_card_new(i32* %17, i32 %18, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %19, i32 0, %struct.snd_card** %5)
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* %4, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %1
  %24 = load i32, i32* %4, align 4
  store i32 %24, i32* %2, align 4
  br label %102

25:                                               ; preds = %1
  %26 = load %struct.snd_card*, %struct.snd_card** %5, align 8
  %27 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.usbtv*, %struct.usbtv** %3, align 8
  %30 = getelementptr inbounds %struct.usbtv, %struct.usbtv* %29, i32 0, i32 1
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = load i8*, i8** %34, align 8
  %36 = call i32 @strscpy(i32 %28, i8* %35, i32 4)
  %37 = load %struct.snd_card*, %struct.snd_card** %5, align 8
  %38 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @strscpy(i32 %39, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 4)
  %41 = load %struct.snd_card*, %struct.snd_card** %5, align 8
  %42 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.usbtv*, %struct.usbtv** %3, align 8
  %45 = getelementptr inbounds %struct.usbtv, %struct.usbtv* %44, i32 0, i32 2
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 1
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.usbtv*, %struct.usbtv** %3, align 8
  %52 = getelementptr inbounds %struct.usbtv, %struct.usbtv* %51, i32 0, i32 2
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @snprintf(i32 %43, i32 4, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %50, i32 %55)
  %57 = load %struct.snd_card*, %struct.snd_card** %5, align 8
  %58 = load %struct.usbtv*, %struct.usbtv** %3, align 8
  %59 = getelementptr inbounds %struct.usbtv, %struct.usbtv* %58, i32 0, i32 1
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %59, align 8
  %61 = call i32 @snd_card_set_dev(%struct.snd_card* %57, %struct.TYPE_8__* %60)
  %62 = load %struct.snd_card*, %struct.snd_card** %5, align 8
  %63 = load %struct.usbtv*, %struct.usbtv** %3, align 8
  %64 = getelementptr inbounds %struct.usbtv, %struct.usbtv* %63, i32 0, i32 0
  store %struct.snd_card* %62, %struct.snd_card** %64, align 8
  %65 = load %struct.snd_card*, %struct.snd_card** %5, align 8
  %66 = call i32 @snd_pcm_new(%struct.snd_card* %65, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32 0, i32 0, i32 1, %struct.snd_pcm** %6)
  store i32 %66, i32* %4, align 4
  %67 = load i32, i32* %4, align 4
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %25
  br label %96

70:                                               ; preds = %25
  %71 = load %struct.snd_pcm*, %struct.snd_pcm** %6, align 8
  %72 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @strscpy(i32 %73, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i32 4)
  %75 = load %struct.snd_pcm*, %struct.snd_pcm** %6, align 8
  %76 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %75, i32 0, i32 1
  store i64 0, i64* %76, align 8
  %77 = load %struct.usbtv*, %struct.usbtv** %3, align 8
  %78 = load %struct.snd_pcm*, %struct.snd_pcm** %6, align 8
  %79 = getelementptr inbounds %struct.snd_pcm, %struct.snd_pcm* %78, i32 0, i32 0
  store %struct.usbtv* %77, %struct.usbtv** %79, align 8
  %80 = load %struct.snd_pcm*, %struct.snd_pcm** %6, align 8
  %81 = load i32, i32* @SNDRV_PCM_STREAM_CAPTURE, align 4
  %82 = call i32 @snd_pcm_set_ops(%struct.snd_pcm* %80, i32 %81, i32* @snd_usbtv_pcm_ops)
  %83 = load %struct.snd_pcm*, %struct.snd_pcm** %6, align 8
  %84 = load i32, i32* @SNDRV_DMA_TYPE_CONTINUOUS, align 4
  %85 = load i32, i32* @GFP_KERNEL, align 4
  %86 = call i32 @snd_dma_continuous_data(i32 %85)
  %87 = load i32, i32* @USBTV_AUDIO_BUFFER, align 4
  %88 = load i32, i32* @USBTV_AUDIO_BUFFER, align 4
  %89 = call i32 @snd_pcm_lib_preallocate_pages_for_all(%struct.snd_pcm* %83, i32 %84, i32 %86, i32 %87, i32 %88)
  %90 = load %struct.snd_card*, %struct.snd_card** %5, align 8
  %91 = call i32 @snd_card_register(%struct.snd_card* %90)
  store i32 %91, i32* %4, align 4
  %92 = load i32, i32* %4, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %70
  br label %96

95:                                               ; preds = %70
  store i32 0, i32* %2, align 4
  br label %102

96:                                               ; preds = %94, %69
  %97 = load %struct.usbtv*, %struct.usbtv** %3, align 8
  %98 = getelementptr inbounds %struct.usbtv, %struct.usbtv* %97, i32 0, i32 0
  store %struct.snd_card* null, %struct.snd_card** %98, align 8
  %99 = load %struct.snd_card*, %struct.snd_card** %5, align 8
  %100 = call i32 @snd_card_free(%struct.snd_card* %99)
  %101 = load i32, i32* %4, align 4
  store i32 %101, i32* %2, align 4
  br label %102

102:                                              ; preds = %96, %95, %23
  %103 = load i32, i32* %2, align 4
  ret i32 %103
}

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @snd_card_new(i32*, i32, i8*, i32, i32, %struct.snd_card**) #1

declare dso_local i32 @strscpy(i32, i8*, i32) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i32, i32) #1

declare dso_local i32 @snd_card_set_dev(%struct.snd_card*, %struct.TYPE_8__*) #1

declare dso_local i32 @snd_pcm_new(%struct.snd_card*, i8*, i32, i32, i32, %struct.snd_pcm**) #1

declare dso_local i32 @snd_pcm_set_ops(%struct.snd_pcm*, i32, i32*) #1

declare dso_local i32 @snd_pcm_lib_preallocate_pages_for_all(%struct.snd_pcm*, i32, i32, i32, i32) #1

declare dso_local i32 @snd_dma_continuous_data(i32) #1

declare dso_local i32 @snd_card_register(%struct.snd_card*) #1

declare dso_local i32 @snd_card_free(%struct.snd_card*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
