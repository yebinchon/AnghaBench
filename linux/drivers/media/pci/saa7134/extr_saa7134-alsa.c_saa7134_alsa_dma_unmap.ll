; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/saa7134/extr_saa7134-alsa.c_saa7134_alsa_dma_unmap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/saa7134/extr_saa7134-alsa.c_saa7134_alsa_dma_unmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.saa7134_dev = type { %struct.TYPE_2__*, %struct.saa7134_dmasound }
%struct.TYPE_2__ = type { i32 }
%struct.saa7134_dmasound = type { i64, i32 }

@PCI_DMA_FROMDEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.saa7134_dev*)* @saa7134_alsa_dma_unmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @saa7134_alsa_dma_unmap(%struct.saa7134_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.saa7134_dev*, align 8
  %4 = alloca %struct.saa7134_dmasound*, align 8
  store %struct.saa7134_dev* %0, %struct.saa7134_dev** %3, align 8
  %5 = load %struct.saa7134_dev*, %struct.saa7134_dev** %3, align 8
  %6 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %5, i32 0, i32 1
  store %struct.saa7134_dmasound* %6, %struct.saa7134_dmasound** %4, align 8
  %7 = load %struct.saa7134_dmasound*, %struct.saa7134_dmasound** %4, align 8
  %8 = getelementptr inbounds %struct.saa7134_dmasound, %struct.saa7134_dmasound* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %27

12:                                               ; preds = %1
  %13 = load %struct.saa7134_dev*, %struct.saa7134_dev** %3, align 8
  %14 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load %struct.saa7134_dmasound*, %struct.saa7134_dmasound** %4, align 8
  %18 = getelementptr inbounds %struct.saa7134_dmasound, %struct.saa7134_dmasound* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.saa7134_dmasound*, %struct.saa7134_dmasound** %4, align 8
  %21 = getelementptr inbounds %struct.saa7134_dmasound, %struct.saa7134_dmasound* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  %24 = call i32 @dma_unmap_sg(i32* %16, i32 %19, i64 %22, i32 %23)
  %25 = load %struct.saa7134_dmasound*, %struct.saa7134_dmasound** %4, align 8
  %26 = getelementptr inbounds %struct.saa7134_dmasound, %struct.saa7134_dmasound* %25, i32 0, i32 0
  store i64 0, i64* %26, align 8
  store i32 0, i32* %2, align 4
  br label %27

27:                                               ; preds = %12, %11
  %28 = load i32, i32* %2, align 4
  ret i32 %28
}

declare dso_local i32 @dma_unmap_sg(i32*, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
