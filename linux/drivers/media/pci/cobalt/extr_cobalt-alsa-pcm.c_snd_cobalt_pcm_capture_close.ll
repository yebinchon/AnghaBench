; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/cobalt/extr_cobalt-alsa-pcm.c_snd_cobalt_pcm_capture_close.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/cobalt/extr_cobalt-alsa-pcm.c_snd_cobalt_pcm_capture_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32 }
%struct.snd_cobalt_card = type { i64, %struct.cobalt_stream* }
%struct.cobalt_stream = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @snd_cobalt_pcm_capture_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_cobalt_pcm_capture_close(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca %struct.snd_pcm_substream*, align 8
  %3 = alloca %struct.snd_cobalt_card*, align 8
  %4 = alloca %struct.cobalt_stream*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %2, align 8
  %5 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %6 = call %struct.snd_cobalt_card* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %5)
  store %struct.snd_cobalt_card* %6, %struct.snd_cobalt_card** %3, align 8
  %7 = load %struct.snd_cobalt_card*, %struct.snd_cobalt_card** %3, align 8
  %8 = getelementptr inbounds %struct.snd_cobalt_card, %struct.snd_cobalt_card* %7, i32 0, i32 1
  %9 = load %struct.cobalt_stream*, %struct.cobalt_stream** %8, align 8
  store %struct.cobalt_stream* %9, %struct.cobalt_stream** %4, align 8
  %10 = load %struct.snd_cobalt_card*, %struct.snd_cobalt_card** %3, align 8
  %11 = getelementptr inbounds %struct.snd_cobalt_card, %struct.snd_cobalt_card* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = add nsw i64 %12, -1
  store i64 %13, i64* %11, align 8
  %14 = load %struct.snd_cobalt_card*, %struct.snd_cobalt_card** %3, align 8
  %15 = getelementptr inbounds %struct.snd_cobalt_card, %struct.snd_cobalt_card* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %1
  %19 = load %struct.cobalt_stream*, %struct.cobalt_stream** %4, align 8
  %20 = getelementptr inbounds %struct.cobalt_stream, %struct.cobalt_stream* %19, i32 0, i32 0
  %21 = call i32 @vb2_thread_stop(i32* %20)
  br label %22

22:                                               ; preds = %18, %1
  ret i32 0
}

declare dso_local %struct.snd_cobalt_card* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i32 @vb2_thread_stop(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
