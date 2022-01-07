; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/saa7134/extr_saa7134-alsa.c_snd_card_saa7134_capture_pointer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/saa7134/extr_saa7134-alsa.c_snd_card_saa7134_capture_pointer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.saa7134_dev* }
%struct.saa7134_dev = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @snd_card_saa7134_capture_pointer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_card_saa7134_capture_pointer(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca %struct.snd_pcm_substream*, align 8
  %3 = alloca %struct.snd_pcm_runtime*, align 8
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca %struct.saa7134_dev*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %2, align 8
  %6 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %7 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %6, i32 0, i32 0
  %8 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %7, align 8
  store %struct.snd_pcm_runtime* %8, %struct.snd_pcm_runtime** %3, align 8
  %9 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %3, align 8
  %10 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %9, i32 0, i32 0
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  store %struct.TYPE_4__* %11, %struct.TYPE_4__** %4, align 8
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load %struct.saa7134_dev*, %struct.saa7134_dev** %13, align 8
  store %struct.saa7134_dev* %14, %struct.saa7134_dev** %5, align 8
  %15 = load %struct.saa7134_dev*, %struct.saa7134_dev** %5, align 8
  %16 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %49

20:                                               ; preds = %1
  %21 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %22 = call i64 @snd_pcm_lib_period_bytes(%struct.snd_pcm_substream* %21)
  %23 = load %struct.saa7134_dev*, %struct.saa7134_dev** %5, align 8
  %24 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = sub nsw i64 %26, %22
  store i64 %27, i64* %25, align 8
  %28 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %29 = call i64 @snd_pcm_lib_period_bytes(%struct.snd_pcm_substream* %28)
  %30 = load %struct.saa7134_dev*, %struct.saa7134_dev** %5, align 8
  %31 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = add nsw i64 %33, %29
  store i64 %34, i64* %32, align 8
  %35 = load %struct.saa7134_dev*, %struct.saa7134_dev** %5, align 8
  %36 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.saa7134_dev*, %struct.saa7134_dev** %5, align 8
  %40 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = icmp eq i64 %38, %42
  br i1 %43, label %44, label %48

44:                                               ; preds = %20
  %45 = load %struct.saa7134_dev*, %struct.saa7134_dev** %5, align 8
  %46 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 1
  store i64 0, i64* %47, align 8
  br label %48

48:                                               ; preds = %44, %20
  br label %49

49:                                               ; preds = %48, %1
  %50 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %3, align 8
  %51 = load %struct.saa7134_dev*, %struct.saa7134_dev** %5, align 8
  %52 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = call i32 @bytes_to_frames(%struct.snd_pcm_runtime* %50, i64 %54)
  ret i32 %55
}

declare dso_local i64 @snd_pcm_lib_period_bytes(%struct.snd_pcm_substream*) #1

declare dso_local i32 @bytes_to_frames(%struct.snd_pcm_runtime*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
