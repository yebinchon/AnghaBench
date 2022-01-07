; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/tw68/extr_tw68-video.c_tw68_video_start_dma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/tw68/extr_tw68-video.c_tw68_video_start_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tw68_dev = type { i32, i32, %struct.TYPE_2__*, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.tw68_buf = type { i32 }

@TW68_DMAC = common dso_local global i32 0, align 4
@TW68_DMAP_EN = common dso_local global i32 0, align 4
@TW68_DMAP_SA = common dso_local global i32 0, align 4
@TW68_INTSTAT = common dso_local global i32 0, align 4
@ColorFormatGamma = common dso_local global i32 0, align 4
@TW68_FIFO_EN = common dso_local global i32 0, align 4
@TW68_INTMASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tw68_video_start_dma(%struct.tw68_dev* %0, %struct.tw68_buf* %1) #0 {
  %3 = alloca %struct.tw68_dev*, align 8
  %4 = alloca %struct.tw68_buf*, align 8
  store %struct.tw68_dev* %0, %struct.tw68_dev** %3, align 8
  store %struct.tw68_buf* %1, %struct.tw68_buf** %4, align 8
  %5 = load %struct.tw68_dev*, %struct.tw68_dev** %3, align 8
  %6 = load %struct.tw68_dev*, %struct.tw68_dev** %3, align 8
  %7 = getelementptr inbounds %struct.tw68_dev, %struct.tw68_dev* %6, i32 0, i32 5
  %8 = load i32, i32* %7, align 8
  %9 = load %struct.tw68_dev*, %struct.tw68_dev** %3, align 8
  %10 = getelementptr inbounds %struct.tw68_dev, %struct.tw68_dev* %9, i32 0, i32 4
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.tw68_dev*, %struct.tw68_dev** %3, align 8
  %13 = getelementptr inbounds %struct.tw68_dev, %struct.tw68_dev* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @tw68_set_scale(%struct.tw68_dev* %5, i32 %8, i32 %11, i32 %14)
  %16 = load i32, i32* @TW68_DMAC, align 4
  %17 = load i32, i32* @TW68_DMAP_EN, align 4
  %18 = call i32 @tw_clearl(i32 %16, i32 %17)
  %19 = load i32, i32* @TW68_DMAP_SA, align 4
  %20 = load %struct.tw68_buf*, %struct.tw68_buf** %4, align 8
  %21 = getelementptr inbounds %struct.tw68_buf, %struct.tw68_buf* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @tw_writel(i32 %19, i32 %22)
  %24 = load i32, i32* @TW68_INTSTAT, align 4
  %25 = load %struct.tw68_dev*, %struct.tw68_dev** %3, align 8
  %26 = getelementptr inbounds %struct.tw68_dev, %struct.tw68_dev* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @tw_writel(i32 %24, i32 %27)
  %29 = load i32, i32* @TW68_DMAC, align 4
  %30 = load %struct.tw68_dev*, %struct.tw68_dev** %3, align 8
  %31 = getelementptr inbounds %struct.tw68_dev, %struct.tw68_dev* %30, i32 0, i32 2
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @ColorFormatGamma, align 4
  %36 = or i32 %34, %35
  %37 = load i32, i32* @TW68_DMAP_EN, align 4
  %38 = or i32 %36, %37
  %39 = load i32, i32* @TW68_FIFO_EN, align 4
  %40 = or i32 %38, %39
  %41 = call i32 @tw_andorl(i32 %29, i32 255, i32 %40)
  %42 = load %struct.tw68_dev*, %struct.tw68_dev** %3, align 8
  %43 = getelementptr inbounds %struct.tw68_dev, %struct.tw68_dev* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.tw68_dev*, %struct.tw68_dev** %3, align 8
  %46 = getelementptr inbounds %struct.tw68_dev, %struct.tw68_dev* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = or i32 %47, %44
  store i32 %48, i32* %46, align 8
  %49 = load i32, i32* @TW68_INTMASK, align 4
  %50 = load %struct.tw68_dev*, %struct.tw68_dev** %3, align 8
  %51 = getelementptr inbounds %struct.tw68_dev, %struct.tw68_dev* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @tw_setl(i32 %49, i32 %52)
  ret i32 0
}

declare dso_local i32 @tw68_set_scale(%struct.tw68_dev*, i32, i32, i32) #1

declare dso_local i32 @tw_clearl(i32, i32) #1

declare dso_local i32 @tw_writel(i32, i32) #1

declare dso_local i32 @tw_andorl(i32, i32, i32) #1

declare dso_local i32 @tw_setl(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
