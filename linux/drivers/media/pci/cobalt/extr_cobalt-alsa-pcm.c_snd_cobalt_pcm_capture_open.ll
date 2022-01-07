; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/cobalt/extr_cobalt-alsa-pcm.c_snd_cobalt_pcm_capture_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/cobalt/extr_cobalt-alsa-pcm.c_snd_cobalt_pcm_capture_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { %struct.cobalt_stream*, i32 }
%struct.cobalt_stream = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.snd_cobalt_card = type { i32, %struct.snd_pcm_substream*, %struct.cobalt_stream* }

@snd_cobalt_hdmi_capture = common dso_local global i32 0, align 4
@SNDRV_PCM_HW_PARAM_PERIODS = common dso_local global i32 0, align 4
@alsa_fnc = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @snd_cobalt_pcm_capture_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_cobalt_pcm_capture_open(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca %struct.snd_pcm_runtime*, align 8
  %5 = alloca %struct.snd_cobalt_card*, align 8
  %6 = alloca %struct.cobalt_stream*, align 8
  %7 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  %8 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %9 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %8, i32 0, i32 0
  %10 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %9, align 8
  store %struct.snd_pcm_runtime* %10, %struct.snd_pcm_runtime** %4, align 8
  %11 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %12 = call %struct.snd_cobalt_card* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %11)
  store %struct.snd_cobalt_card* %12, %struct.snd_cobalt_card** %5, align 8
  %13 = load %struct.snd_cobalt_card*, %struct.snd_cobalt_card** %5, align 8
  %14 = getelementptr inbounds %struct.snd_cobalt_card, %struct.snd_cobalt_card* %13, i32 0, i32 2
  %15 = load %struct.cobalt_stream*, %struct.cobalt_stream** %14, align 8
  store %struct.cobalt_stream* %15, %struct.cobalt_stream** %6, align 8
  %16 = load i32, i32* @snd_cobalt_hdmi_capture, align 4
  %17 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %18 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %17, i32 0, i32 1
  store i32 %16, i32* %18, align 8
  %19 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %20 = load i32, i32* @SNDRV_PCM_HW_PARAM_PERIODS, align 4
  %21 = call i32 @snd_pcm_hw_constraint_integer(%struct.snd_pcm_runtime* %19, i32 %20)
  %22 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %23 = load %struct.snd_cobalt_card*, %struct.snd_cobalt_card** %5, align 8
  %24 = getelementptr inbounds %struct.snd_cobalt_card, %struct.snd_cobalt_card* %23, i32 0, i32 1
  store %struct.snd_pcm_substream* %22, %struct.snd_pcm_substream** %24, align 8
  %25 = load %struct.cobalt_stream*, %struct.cobalt_stream** %6, align 8
  %26 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %27 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %26, i32 0, i32 0
  store %struct.cobalt_stream* %25, %struct.cobalt_stream** %27, align 8
  %28 = load %struct.snd_cobalt_card*, %struct.snd_cobalt_card** %5, align 8
  %29 = getelementptr inbounds %struct.snd_cobalt_card, %struct.snd_cobalt_card* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %29, align 8
  %32 = load %struct.snd_cobalt_card*, %struct.snd_cobalt_card** %5, align 8
  %33 = getelementptr inbounds %struct.snd_cobalt_card, %struct.snd_cobalt_card* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp eq i32 %34, 1
  br i1 %35, label %36, label %55

36:                                               ; preds = %1
  %37 = load %struct.cobalt_stream*, %struct.cobalt_stream** %6, align 8
  %38 = getelementptr inbounds %struct.cobalt_stream, %struct.cobalt_stream* %37, i32 0, i32 1
  %39 = load i32, i32* @alsa_fnc, align 4
  %40 = load %struct.cobalt_stream*, %struct.cobalt_stream** %6, align 8
  %41 = load %struct.cobalt_stream*, %struct.cobalt_stream** %6, align 8
  %42 = getelementptr inbounds %struct.cobalt_stream, %struct.cobalt_stream* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @vb2_thread_start(i32* %38, i32 %39, %struct.cobalt_stream* %40, i32 %44)
  store i32 %45, i32* %7, align 4
  %46 = load i32, i32* %7, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %36
  %49 = load %struct.snd_cobalt_card*, %struct.snd_cobalt_card** %5, align 8
  %50 = getelementptr inbounds %struct.snd_cobalt_card, %struct.snd_cobalt_card* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = add nsw i32 %51, -1
  store i32 %52, i32* %50, align 8
  %53 = load i32, i32* %7, align 4
  store i32 %53, i32* %2, align 4
  br label %56

54:                                               ; preds = %36
  br label %55

55:                                               ; preds = %54, %1
  store i32 0, i32* %2, align 4
  br label %56

56:                                               ; preds = %55, %48
  %57 = load i32, i32* %2, align 4
  ret i32 %57
}

declare dso_local %struct.snd_cobalt_card* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i32 @snd_pcm_hw_constraint_integer(%struct.snd_pcm_runtime*, i32) #1

declare dso_local i32 @vb2_thread_start(i32*, i32, %struct.cobalt_stream*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
