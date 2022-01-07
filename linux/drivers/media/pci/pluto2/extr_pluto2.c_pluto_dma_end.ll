; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/pluto2/extr_pluto2.c_pluto_dma_end.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/pluto2/extr_pluto2.c_pluto_dma_end.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pluto = type { i32*, i32, %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32 }

@TS_DMA_BYTES = common dso_local global i32 0, align 4
@PCI_DMA_FROMDEVICE = common dso_local global i32 0, align 4
@TS_DMA_PACKETS = common dso_local global i32 0, align 4
@KERN_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"resetting TS because of invalid packet counter\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pluto*, i32)* @pluto_dma_end to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pluto_dma_end(%struct.pluto* %0, i32 %1) #0 {
  %3 = alloca %struct.pluto*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.pluto* %0, %struct.pluto** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.pluto*, %struct.pluto** %3, align 8
  %7 = getelementptr inbounds %struct.pluto, %struct.pluto* %6, i32 0, i32 2
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %9 = load %struct.pluto*, %struct.pluto** %3, align 8
  %10 = getelementptr inbounds %struct.pluto, %struct.pluto* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @TS_DMA_BYTES, align 4
  %13 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  %14 = call i32 @pci_dma_sync_single_for_cpu(%struct.TYPE_3__* %8, i32 %11, i32 %12, i32 %13)
  %15 = load i32, i32* %4, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* @TS_DMA_PACKETS, align 4
  %20 = icmp ugt i32 %18, %19
  br i1 %20, label %21, label %49

21:                                               ; preds = %17, %2
  store i32 0, i32* %5, align 4
  br label %22

22:                                               ; preds = %31, %21
  %23 = load %struct.pluto*, %struct.pluto** %3, align 8
  %24 = getelementptr inbounds %struct.pluto, %struct.pluto* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = load i32, i32* %5, align 4
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = icmp eq i32 %29, 71
  br i1 %30, label %31, label %34

31:                                               ; preds = %22
  %32 = load i32, i32* %5, align 4
  %33 = add i32 %32, 188
  store i32 %33, i32* %5, align 4
  br label %22

34:                                               ; preds = %22
  %35 = load i32, i32* %5, align 4
  %36 = udiv i32 %35, 188
  store i32 %36, i32* %4, align 4
  %37 = load i32, i32* %5, align 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %48

39:                                               ; preds = %34
  %40 = load %struct.pluto*, %struct.pluto** %3, align 8
  %41 = call i32 @pluto_reset_ts(%struct.pluto* %40, i32 1)
  %42 = load i32, i32* @KERN_DEBUG, align 4
  %43 = load %struct.pluto*, %struct.pluto** %3, align 8
  %44 = getelementptr inbounds %struct.pluto, %struct.pluto* %43, i32 0, i32 2
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = call i32 @dev_printk(i32 %42, i32* %46, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  br label %48

48:                                               ; preds = %39, %34
  br label %49

49:                                               ; preds = %48, %17
  %50 = load %struct.pluto*, %struct.pluto** %3, align 8
  %51 = getelementptr inbounds %struct.pluto, %struct.pluto* %50, i32 0, i32 3
  %52 = load %struct.pluto*, %struct.pluto** %3, align 8
  %53 = getelementptr inbounds %struct.pluto, %struct.pluto* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = load i32, i32* %4, align 4
  %56 = call i32 @dvb_dmx_swfilter_packets(i32* %51, i32* %54, i32 %55)
  %57 = load %struct.pluto*, %struct.pluto** %3, align 8
  %58 = getelementptr inbounds %struct.pluto, %struct.pluto* %57, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = load i32, i32* %4, align 4
  %61 = mul i32 %60, 188
  %62 = call i32 @memset(i32* %59, i32 0, i32 %61)
  %63 = load %struct.pluto*, %struct.pluto** %3, align 8
  %64 = call i32 @pluto_set_dma_addr(%struct.pluto* %63)
  %65 = load %struct.pluto*, %struct.pluto** %3, align 8
  %66 = getelementptr inbounds %struct.pluto, %struct.pluto* %65, i32 0, i32 2
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %66, align 8
  %68 = load %struct.pluto*, %struct.pluto** %3, align 8
  %69 = getelementptr inbounds %struct.pluto, %struct.pluto* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* @TS_DMA_BYTES, align 4
  %72 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  %73 = call i32 @pci_dma_sync_single_for_device(%struct.TYPE_3__* %67, i32 %70, i32 %71, i32 %72)
  ret void
}

declare dso_local i32 @pci_dma_sync_single_for_cpu(%struct.TYPE_3__*, i32, i32, i32) #1

declare dso_local i32 @pluto_reset_ts(%struct.pluto*, i32) #1

declare dso_local i32 @dev_printk(i32, i32*, i8*) #1

declare dso_local i32 @dvb_dmx_swfilter_packets(i32*, i32*, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @pluto_set_dma_addr(%struct.pluto*) #1

declare dso_local i32 @pci_dma_sync_single_for_device(%struct.TYPE_3__*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
