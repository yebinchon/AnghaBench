; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/tw686x/extr_tw686x-core.c_tw686x_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/tw686x/extr_tw686x-core.c_tw686x_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tw686x_dev = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@INT_STATUS = common dso_local global i32 0, align 4
@VIDEO_FIFO_STATUS = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4
@INT_STATUS_DMA_TOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"DMA timeout. Resetting DMA for all channels\0A\00", align 1
@DMA_CHANNEL_ENABLE = common dso_local global i32 0, align 4
@PB_STATUS = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @tw686x_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tw686x_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.tw686x_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %20 = load i8*, i8** %5, align 8
  %21 = bitcast i8* %20 to %struct.tw686x_dev*
  store %struct.tw686x_dev* %21, %struct.tw686x_dev** %6, align 8
  %22 = load %struct.tw686x_dev*, %struct.tw686x_dev** %6, align 8
  %23 = load i32, i32* @INT_STATUS, align 4
  %24 = call i32 @reg_read(%struct.tw686x_dev* %22, i32 %23)
  store i32 %24, i32* %15, align 4
  %25 = load %struct.tw686x_dev*, %struct.tw686x_dev** %6, align 8
  %26 = load i32, i32* @VIDEO_FIFO_STATUS, align 4
  %27 = call i32 @reg_read(%struct.tw686x_dev* %25, i32 %26)
  store i32 %27, i32* %10, align 4
  %28 = load i32, i32* %15, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %36, label %30

30:                                               ; preds = %2
  %31 = load i32, i32* %10, align 4
  %32 = call i32 @TW686X_FIFO_ERROR(i32 %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %36, label %34

34:                                               ; preds = %30
  %35 = load i32, i32* @IRQ_NONE, align 4
  store i32 %35, i32* %3, align 4
  br label %127

36:                                               ; preds = %30, %2
  %37 = load i32, i32* %15, align 4
  %38 = load i32, i32* @INT_STATUS_DMA_TOUT, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %36
  %42 = load %struct.tw686x_dev*, %struct.tw686x_dev** %6, align 8
  %43 = getelementptr inbounds %struct.tw686x_dev, %struct.tw686x_dev* %42, i32 0, i32 2
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = call i32 @dev_dbg(i32* %45, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %9, align 4
  br label %104

47:                                               ; preds = %36
  %48 = load %struct.tw686x_dev*, %struct.tw686x_dev** %6, align 8
  %49 = getelementptr inbounds %struct.tw686x_dev, %struct.tw686x_dev* %48, i32 0, i32 1
  %50 = load i64, i64* %19, align 8
  %51 = call i32 @spin_lock_irqsave(i32* %49, i64 %50)
  %52 = load %struct.tw686x_dev*, %struct.tw686x_dev** %6, align 8
  %53 = load i32, i32* @DMA_CHANNEL_ENABLE, align 4
  %54 = call i32 @reg_read(%struct.tw686x_dev* %52, i32 %53)
  store i32 %54, i32* %16, align 4
  %55 = load %struct.tw686x_dev*, %struct.tw686x_dev** %6, align 8
  %56 = getelementptr inbounds %struct.tw686x_dev, %struct.tw686x_dev* %55, i32 0, i32 1
  %57 = load i64, i64* %19, align 8
  %58 = call i32 @spin_unlock_irqrestore(i32* %56, i64 %57)
  %59 = load i32, i32* %16, align 4
  %60 = and i32 %59, 255
  store i32 %60, i32* %17, align 4
  %61 = load i32, i32* %10, align 4
  %62 = and i32 %61, 255
  %63 = xor i32 %62, -1
  %64 = load i32, i32* %17, align 4
  %65 = and i32 %63, %64
  store i32 %65, i32* %11, align 4
  %66 = load i32, i32* %10, align 4
  %67 = ashr i32 %66, 24
  store i32 %67, i32* %12, align 4
  %68 = load i32, i32* %10, align 4
  %69 = ashr i32 %68, 16
  store i32 %69, i32* %13, align 4
  %70 = load i32, i32* %11, align 4
  %71 = load i32, i32* %12, align 4
  %72 = load i32, i32* %13, align 4
  %73 = or i32 %71, %72
  %74 = and i32 %70, %73
  store i32 %74, i32* %14, align 4
  store i32 0, i32* %9, align 4
  %75 = load %struct.tw686x_dev*, %struct.tw686x_dev** %6, align 8
  %76 = load i32, i32* @PB_STATUS, align 4
  %77 = call i32 @reg_read(%struct.tw686x_dev* %75, i32 %76)
  store i32 %77, i32* %18, align 4
  %78 = load i32, i32* %15, align 4
  %79 = load i32, i32* %17, align 4
  %80 = and i32 %78, %79
  %81 = load i32, i32* %14, align 4
  %82 = or i32 %80, %81
  store i32 %82, i32* %7, align 4
  %83 = load i32, i32* %15, align 4
  %84 = load i32, i32* %16, align 4
  %85 = and i32 %83, %84
  %86 = ashr i32 %85, 8
  store i32 %86, i32* %8, align 4
  %87 = load i32, i32* %7, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %95

89:                                               ; preds = %47
  %90 = load %struct.tw686x_dev*, %struct.tw686x_dev** %6, align 8
  %91 = load i32, i32* %7, align 4
  %92 = load i32, i32* %18, align 4
  %93 = load i32, i32* %10, align 4
  %94 = call i32 @tw686x_video_irq(%struct.tw686x_dev* %90, i32 %91, i32 %92, i32 %93, i32* %9)
  br label %95

95:                                               ; preds = %89, %47
  %96 = load i32, i32* %8, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %103

98:                                               ; preds = %95
  %99 = load %struct.tw686x_dev*, %struct.tw686x_dev** %6, align 8
  %100 = load i32, i32* %8, align 4
  %101 = load i32, i32* %18, align 4
  %102 = call i32 @tw686x_audio_irq(%struct.tw686x_dev* %99, i32 %100, i32 %101)
  br label %103

103:                                              ; preds = %98, %95
  br label %104

104:                                              ; preds = %103, %41
  %105 = load i32, i32* %9, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %125

107:                                              ; preds = %104
  %108 = load %struct.tw686x_dev*, %struct.tw686x_dev** %6, align 8
  %109 = getelementptr inbounds %struct.tw686x_dev, %struct.tw686x_dev* %108, i32 0, i32 1
  %110 = load i64, i64* %19, align 8
  %111 = call i32 @spin_lock_irqsave(i32* %109, i64 %110)
  %112 = load %struct.tw686x_dev*, %struct.tw686x_dev** %6, align 8
  %113 = load i32, i32* %9, align 4
  %114 = call i32 @tw686x_reset_channels(%struct.tw686x_dev* %112, i32 %113)
  %115 = load %struct.tw686x_dev*, %struct.tw686x_dev** %6, align 8
  %116 = getelementptr inbounds %struct.tw686x_dev, %struct.tw686x_dev* %115, i32 0, i32 1
  %117 = load i64, i64* %19, align 8
  %118 = call i32 @spin_unlock_irqrestore(i32* %116, i64 %117)
  %119 = load %struct.tw686x_dev*, %struct.tw686x_dev** %6, align 8
  %120 = getelementptr inbounds %struct.tw686x_dev, %struct.tw686x_dev* %119, i32 0, i32 0
  %121 = load i64, i64* @jiffies, align 8
  %122 = call i64 @msecs_to_jiffies(i32 100)
  %123 = add nsw i64 %121, %122
  %124 = call i32 @mod_timer(i32* %120, i64 %123)
  br label %125

125:                                              ; preds = %107, %104
  %126 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %126, i32* %3, align 4
  br label %127

127:                                              ; preds = %125, %34
  %128 = load i32, i32* %3, align 4
  ret i32 %128
}

declare dso_local i32 @reg_read(%struct.tw686x_dev*, i32) #1

declare dso_local i32 @TW686X_FIFO_ERROR(i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @tw686x_video_irq(%struct.tw686x_dev*, i32, i32, i32, i32*) #1

declare dso_local i32 @tw686x_audio_irq(%struct.tw686x_dev*, i32, i32) #1

declare dso_local i32 @tw686x_reset_channels(%struct.tw686x_dev*, i32) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
