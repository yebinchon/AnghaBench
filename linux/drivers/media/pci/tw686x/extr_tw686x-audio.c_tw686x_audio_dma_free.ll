; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/tw686x/extr_tw686x-audio.c_tw686x_audio_dma_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/tw686x/extr_tw686x-audio.c_tw686x_audio_dma_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tw686x_dev = type { i32 }
%struct.tw686x_audio_channel = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32*, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tw686x_dev*, %struct.tw686x_audio_channel*)* @tw686x_audio_dma_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tw686x_audio_dma_free(%struct.tw686x_dev* %0, %struct.tw686x_audio_channel* %1) #0 {
  %3 = alloca %struct.tw686x_dev*, align 8
  %4 = alloca %struct.tw686x_audio_channel*, align 8
  %5 = alloca i32, align 4
  store %struct.tw686x_dev* %0, %struct.tw686x_dev** %3, align 8
  store %struct.tw686x_audio_channel* %1, %struct.tw686x_audio_channel** %4, align 8
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %56, %2
  %7 = load i32, i32* %5, align 4
  %8 = icmp slt i32 %7, 2
  br i1 %8, label %9, label %59

9:                                                ; preds = %6
  %10 = load %struct.tw686x_audio_channel*, %struct.tw686x_audio_channel** %4, align 8
  %11 = getelementptr inbounds %struct.tw686x_audio_channel, %struct.tw686x_audio_channel* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = load i32, i32* %5, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i64 %14
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %9
  br label %56

20:                                               ; preds = %9
  %21 = load %struct.tw686x_dev*, %struct.tw686x_dev** %3, align 8
  %22 = getelementptr inbounds %struct.tw686x_dev, %struct.tw686x_dev* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.tw686x_audio_channel*, %struct.tw686x_audio_channel** %4, align 8
  %25 = getelementptr inbounds %struct.tw686x_audio_channel, %struct.tw686x_audio_channel* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = load i32, i32* %5, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.tw686x_audio_channel*, %struct.tw686x_audio_channel** %4, align 8
  %33 = getelementptr inbounds %struct.tw686x_audio_channel, %struct.tw686x_audio_channel* %32, i32 0, i32 0
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = load i32, i32* %5, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = load %struct.tw686x_audio_channel*, %struct.tw686x_audio_channel** %4, align 8
  %41 = getelementptr inbounds %struct.tw686x_audio_channel, %struct.tw686x_audio_channel* %40, i32 0, i32 0
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = load i32, i32* %5, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @pci_free_consistent(i32 %23, i32 %31, i32* %39, i32 %47)
  %49 = load %struct.tw686x_audio_channel*, %struct.tw686x_audio_channel** %4, align 8
  %50 = getelementptr inbounds %struct.tw686x_audio_channel, %struct.tw686x_audio_channel* %49, i32 0, i32 0
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = load i32, i32* %5, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  store i32* null, i32** %55, align 8
  br label %56

56:                                               ; preds = %20, %19
  %57 = load i32, i32* %5, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %5, align 4
  br label %6

59:                                               ; preds = %6
  ret void
}

declare dso_local i32 @pci_free_consistent(i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
