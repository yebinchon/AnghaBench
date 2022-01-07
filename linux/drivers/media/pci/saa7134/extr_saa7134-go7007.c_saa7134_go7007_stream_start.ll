; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/saa7134/extr_saa7134-go7007.c_saa7134_go7007_stream_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/saa7134/extr_saa7134-go7007.c_saa7134_go7007_stream_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.go7007 = type { %struct.saa7134_go7007* }
%struct.saa7134_go7007 = type { i32, i32, i32, i32, %struct.saa7134_dev* }
%struct.saa7134_dev = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@SAA7134_VIDEO_PORT_CTRL0 = common dso_local global i32 0, align 4
@SAA7134_VIDEO_PORT_CTRL4 = common dso_local global i32 0, align 4
@SAA7134_GPIO_GPMODE0 = common dso_local global i32 0, align 4
@SAA7134_GPIO_GPSTATUS0 = common dso_local global i32 0, align 4
@HPI_ADDR_VIDEO_BUFFER = common dso_local global i32 0, align 4
@SAA7134_GPIO_GPSTATUS2 = common dso_local global i32 0, align 4
@GPIO_COMMAND_ADDR = common dso_local global i32 0, align 4
@SAA7134_TS_PARALLEL = common dso_local global i32 0, align 4
@SAA7134_TS_SERIAL1 = common dso_local global i32 0, align 4
@SAA7134_TS_PARALLEL_SERIAL = common dso_local global i32 0, align 4
@SAA7134_TS_DMA0 = common dso_local global i32 0, align 4
@SAA7134_TS_DMA1 = common dso_local global i32 0, align 4
@SAA7134_TS_DMA2 = common dso_local global i32 0, align 4
@GPIO_COMMAND_VIDEO = common dso_local global i32 0, align 4
@SAA7134_RS_CONTROL_BURST_MAX = common dso_local global i32 0, align 4
@SAA7134_MAIN_CTRL = common dso_local global i32 0, align 4
@SAA7134_MAIN_CTRL_TE5 = common dso_local global i32 0, align 4
@SAA7134_IRQ1 = common dso_local global i32 0, align 4
@SAA7134_IRQ1_INTE_RA2_1 = common dso_local global i32 0, align 4
@SAA7134_IRQ1_INTE_RA2_0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.go7007*)* @saa7134_go7007_stream_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @saa7134_go7007_stream_start(%struct.go7007* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.go7007*, align 8
  %4 = alloca %struct.saa7134_go7007*, align 8
  %5 = alloca %struct.saa7134_dev*, align 8
  store %struct.go7007* %0, %struct.go7007** %3, align 8
  %6 = load %struct.go7007*, %struct.go7007** %3, align 8
  %7 = getelementptr inbounds %struct.go7007, %struct.go7007* %6, i32 0, i32 0
  %8 = load %struct.saa7134_go7007*, %struct.saa7134_go7007** %7, align 8
  store %struct.saa7134_go7007* %8, %struct.saa7134_go7007** %4, align 8
  %9 = load %struct.saa7134_go7007*, %struct.saa7134_go7007** %4, align 8
  %10 = getelementptr inbounds %struct.saa7134_go7007, %struct.saa7134_go7007* %9, i32 0, i32 4
  %11 = load %struct.saa7134_dev*, %struct.saa7134_dev** %10, align 8
  store %struct.saa7134_dev* %11, %struct.saa7134_dev** %5, align 8
  %12 = load %struct.saa7134_dev*, %struct.saa7134_dev** %5, align 8
  %13 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load %struct.saa7134_go7007*, %struct.saa7134_go7007** %4, align 8
  %17 = getelementptr inbounds %struct.saa7134_go7007, %struct.saa7134_go7007* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @virt_to_page(i32 %18)
  %20 = load i32, i32* @PAGE_SIZE, align 4
  %21 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %22 = call i8* @dma_map_page(i32* %15, i32 %19, i32 0, i32 %20, i32 %21)
  %23 = ptrtoint i8* %22 to i32
  %24 = load %struct.saa7134_go7007*, %struct.saa7134_go7007** %4, align 8
  %25 = getelementptr inbounds %struct.saa7134_go7007, %struct.saa7134_go7007* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 8
  %26 = load %struct.saa7134_dev*, %struct.saa7134_dev** %5, align 8
  %27 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %26, i32 0, i32 0
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load %struct.saa7134_go7007*, %struct.saa7134_go7007** %4, align 8
  %31 = getelementptr inbounds %struct.saa7134_go7007, %struct.saa7134_go7007* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i64 @dma_mapping_error(i32* %29, i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %1
  %36 = load i32, i32* @ENOMEM, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %2, align 4
  br label %142

38:                                               ; preds = %1
  %39 = load %struct.saa7134_dev*, %struct.saa7134_dev** %5, align 8
  %40 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %39, i32 0, i32 0
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load %struct.saa7134_go7007*, %struct.saa7134_go7007** %4, align 8
  %44 = getelementptr inbounds %struct.saa7134_go7007, %struct.saa7134_go7007* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @virt_to_page(i32 %45)
  %47 = load i32, i32* @PAGE_SIZE, align 4
  %48 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %49 = call i8* @dma_map_page(i32* %42, i32 %46, i32 0, i32 %47, i32 %48)
  %50 = ptrtoint i8* %49 to i32
  %51 = load %struct.saa7134_go7007*, %struct.saa7134_go7007** %4, align 8
  %52 = getelementptr inbounds %struct.saa7134_go7007, %struct.saa7134_go7007* %51, i32 0, i32 1
  store i32 %50, i32* %52, align 4
  %53 = load %struct.saa7134_dev*, %struct.saa7134_dev** %5, align 8
  %54 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %53, i32 0, i32 0
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load %struct.saa7134_go7007*, %struct.saa7134_go7007** %4, align 8
  %58 = getelementptr inbounds %struct.saa7134_go7007, %struct.saa7134_go7007* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = call i64 @dma_mapping_error(i32* %56, i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %75

62:                                               ; preds = %38
  %63 = load %struct.saa7134_dev*, %struct.saa7134_dev** %5, align 8
  %64 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %63, i32 0, i32 0
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = load %struct.saa7134_go7007*, %struct.saa7134_go7007** %4, align 8
  %68 = getelementptr inbounds %struct.saa7134_go7007, %struct.saa7134_go7007* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* @PAGE_SIZE, align 4
  %71 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %72 = call i32 @dma_unmap_page(i32* %66, i32 %69, i32 %70, i32 %71)
  %73 = load i32, i32* @ENOMEM, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %2, align 4
  br label %142

75:                                               ; preds = %38
  %76 = load i32, i32* @SAA7134_VIDEO_PORT_CTRL0, align 4
  %77 = ashr i32 %76, 2
  %78 = call i32 @saa_writel(i32 %77, i32 -1560236032)
  %79 = load i32, i32* @SAA7134_VIDEO_PORT_CTRL4, align 4
  %80 = ashr i32 %79, 2
  %81 = call i32 @saa_writel(i32 %80, i32 1073742336)
  %82 = load i32, i32* @SAA7134_GPIO_GPMODE0, align 4
  %83 = call i32 @saa_writeb(i32 %82, i32 255)
  %84 = load i32, i32* @SAA7134_GPIO_GPSTATUS0, align 4
  %85 = load i32, i32* @HPI_ADDR_VIDEO_BUFFER, align 4
  %86 = call i32 @saa_writeb(i32 %84, i32 %85)
  %87 = load i32, i32* @SAA7134_GPIO_GPSTATUS2, align 4
  %88 = load i32, i32* @GPIO_COMMAND_ADDR, align 4
  %89 = call i32 @saa_writeb(i32 %87, i32 %88)
  %90 = load i32, i32* @SAA7134_GPIO_GPMODE0, align 4
  %91 = call i32 @saa_writeb(i32 %90, i32 0)
  %92 = load i32, i32* @SAA7134_TS_PARALLEL, align 4
  %93 = call i32 @saa_writeb(i32 %92, i32 230)
  %94 = load i32, i32* @SAA7134_TS_SERIAL1, align 4
  %95 = call i32 @saa_setb(i32 %94, i32 1)
  %96 = load i32, i32* @SAA7134_TS_SERIAL1, align 4
  %97 = call i32 @saa_clearb(i32 %96, i32 1)
  %98 = load i32, i32* @SAA7134_TS_PARALLEL_SERIAL, align 4
  %99 = call i32 @saa_writeb(i32 %98, i32 127)
  %100 = load i32, i32* @SAA7134_TS_DMA0, align 4
  %101 = load i32, i32* @PAGE_SIZE, align 4
  %102 = ashr i32 %101, 7
  %103 = sub nsw i32 %102, 1
  %104 = and i32 %103, 255
  %105 = call i32 @saa_writeb(i32 %100, i32 %104)
  %106 = load i32, i32* @SAA7134_TS_DMA1, align 4
  %107 = load i32, i32* @PAGE_SIZE, align 4
  %108 = ashr i32 %107, 15
  %109 = and i32 %108, 255
  %110 = call i32 @saa_writeb(i32 %106, i32 %109)
  %111 = load i32, i32* @SAA7134_TS_DMA2, align 4
  %112 = load i32, i32* @PAGE_SIZE, align 4
  %113 = ashr i32 %112, 31
  %114 = and i32 %113, 63
  %115 = call i32 @saa_writeb(i32 %111, i32 %114)
  %116 = load i32, i32* @SAA7134_GPIO_GPSTATUS2, align 4
  %117 = load i32, i32* @GPIO_COMMAND_VIDEO, align 4
  %118 = call i32 @saa_writeb(i32 %116, i32 %117)
  %119 = call i32 @SAA7134_RS_BA1(i32 5)
  %120 = load %struct.saa7134_go7007*, %struct.saa7134_go7007** %4, align 8
  %121 = getelementptr inbounds %struct.saa7134_go7007, %struct.saa7134_go7007* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = call i32 @saa_writel(i32 %119, i32 %122)
  %124 = call i32 @SAA7134_RS_BA2(i32 5)
  %125 = load %struct.saa7134_go7007*, %struct.saa7134_go7007** %4, align 8
  %126 = getelementptr inbounds %struct.saa7134_go7007, %struct.saa7134_go7007* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = call i32 @saa_writel(i32 %124, i32 %127)
  %129 = call i32 @SAA7134_RS_PITCH(i32 5)
  %130 = call i32 @saa_writel(i32 %129, i32 128)
  %131 = call i32 @SAA7134_RS_CONTROL(i32 5)
  %132 = load i32, i32* @SAA7134_RS_CONTROL_BURST_MAX, align 4
  %133 = call i32 @saa_writel(i32 %131, i32 %132)
  %134 = load i32, i32* @SAA7134_MAIN_CTRL, align 4
  %135 = load i32, i32* @SAA7134_MAIN_CTRL_TE5, align 4
  %136 = call i32 @saa_setl(i32 %134, i32 %135)
  %137 = load i32, i32* @SAA7134_IRQ1, align 4
  %138 = load i32, i32* @SAA7134_IRQ1_INTE_RA2_1, align 4
  %139 = load i32, i32* @SAA7134_IRQ1_INTE_RA2_0, align 4
  %140 = or i32 %138, %139
  %141 = call i32 @saa_setl(i32 %137, i32 %140)
  store i32 0, i32* %2, align 4
  br label %142

142:                                              ; preds = %75, %62, %35
  %143 = load i32, i32* %2, align 4
  ret i32 %143
}

declare dso_local i8* @dma_map_page(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @virt_to_page(i32) #1

declare dso_local i64 @dma_mapping_error(i32*, i32) #1

declare dso_local i32 @dma_unmap_page(i32*, i32, i32, i32) #1

declare dso_local i32 @saa_writel(i32, i32) #1

declare dso_local i32 @saa_writeb(i32, i32) #1

declare dso_local i32 @saa_setb(i32, i32) #1

declare dso_local i32 @saa_clearb(i32, i32) #1

declare dso_local i32 @SAA7134_RS_BA1(i32) #1

declare dso_local i32 @SAA7134_RS_BA2(i32) #1

declare dso_local i32 @SAA7134_RS_PITCH(i32) #1

declare dso_local i32 @SAA7134_RS_CONTROL(i32) #1

declare dso_local i32 @saa_setl(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
