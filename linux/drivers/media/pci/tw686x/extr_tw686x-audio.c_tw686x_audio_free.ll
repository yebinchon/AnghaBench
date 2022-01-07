; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/tw686x/extr_tw686x-audio.c_tw686x_audio_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/tw686x/extr_tw686x-audio.c_tw686x_audio_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tw686x_dev = type { i32*, i32 }

@DMA_CMD = common dso_local global i32 0, align 4
@DMA_CHANNEL_ENABLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tw686x_audio_free(%struct.tw686x_dev* %0) #0 {
  %2 = alloca %struct.tw686x_dev*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.tw686x_dev* %0, %struct.tw686x_dev** %2, align 8
  %6 = load %struct.tw686x_dev*, %struct.tw686x_dev** %2, align 8
  %7 = getelementptr inbounds %struct.tw686x_dev, %struct.tw686x_dev* %6, i32 0, i32 1
  %8 = load i64, i64* %3, align 8
  %9 = call i32 @spin_lock_irqsave(i32* %7, i64 %8)
  %10 = load %struct.tw686x_dev*, %struct.tw686x_dev** %2, align 8
  %11 = load i32, i32* @DMA_CMD, align 4
  %12 = call i32 @reg_read(%struct.tw686x_dev* %10, i32 %11)
  store i32 %12, i32* %5, align 4
  %13 = load %struct.tw686x_dev*, %struct.tw686x_dev** %2, align 8
  %14 = load i32, i32* @DMA_CHANNEL_ENABLE, align 4
  %15 = call i32 @reg_read(%struct.tw686x_dev* %13, i32 %14)
  store i32 %15, i32* %4, align 4
  %16 = load %struct.tw686x_dev*, %struct.tw686x_dev** %2, align 8
  %17 = load i32, i32* @DMA_CMD, align 4
  %18 = load i32, i32* %5, align 4
  %19 = and i32 %18, -65281
  %20 = call i32 @reg_write(%struct.tw686x_dev* %16, i32 %17, i32 %19)
  %21 = load %struct.tw686x_dev*, %struct.tw686x_dev** %2, align 8
  %22 = load i32, i32* @DMA_CHANNEL_ENABLE, align 4
  %23 = load i32, i32* %4, align 4
  %24 = and i32 %23, -65281
  %25 = call i32 @reg_write(%struct.tw686x_dev* %21, i32 %22, i32 %24)
  %26 = load %struct.tw686x_dev*, %struct.tw686x_dev** %2, align 8
  %27 = getelementptr inbounds %struct.tw686x_dev, %struct.tw686x_dev* %26, i32 0, i32 1
  %28 = load i64, i64* %3, align 8
  %29 = call i32 @spin_unlock_irqrestore(i32* %27, i64 %28)
  %30 = load %struct.tw686x_dev*, %struct.tw686x_dev** %2, align 8
  %31 = getelementptr inbounds %struct.tw686x_dev, %struct.tw686x_dev* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = icmp ne i32* %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %1
  br label %42

35:                                               ; preds = %1
  %36 = load %struct.tw686x_dev*, %struct.tw686x_dev** %2, align 8
  %37 = getelementptr inbounds %struct.tw686x_dev, %struct.tw686x_dev* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = call i32 @snd_card_free(i32* %38)
  %40 = load %struct.tw686x_dev*, %struct.tw686x_dev** %2, align 8
  %41 = getelementptr inbounds %struct.tw686x_dev, %struct.tw686x_dev* %40, i32 0, i32 0
  store i32* null, i32** %41, align 8
  br label %42

42:                                               ; preds = %35, %34
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @reg_read(%struct.tw686x_dev*, i32) #1

declare dso_local i32 @reg_write(%struct.tw686x_dev*, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @snd_card_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
