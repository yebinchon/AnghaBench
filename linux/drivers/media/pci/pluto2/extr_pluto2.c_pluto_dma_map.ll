; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/pluto2/extr_pluto2.c_pluto_dma_map.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/pluto2/extr_pluto2.c_pluto_dma_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pluto = type { i32, i32, i32 }

@TS_DMA_BYTES = common dso_local global i32 0, align 4
@PCI_DMA_FROMDEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pluto*)* @pluto_dma_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pluto_dma_map(%struct.pluto* %0) #0 {
  %2 = alloca %struct.pluto*, align 8
  store %struct.pluto* %0, %struct.pluto** %2, align 8
  %3 = load %struct.pluto*, %struct.pluto** %2, align 8
  %4 = getelementptr inbounds %struct.pluto, %struct.pluto* %3, i32 0, i32 1
  %5 = load i32, i32* %4, align 4
  %6 = load %struct.pluto*, %struct.pluto** %2, align 8
  %7 = getelementptr inbounds %struct.pluto, %struct.pluto* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @TS_DMA_BYTES, align 4
  %10 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  %11 = call i32 @pci_map_single(i32 %5, i32 %8, i32 %9, i32 %10)
  %12 = load %struct.pluto*, %struct.pluto** %2, align 8
  %13 = getelementptr inbounds %struct.pluto, %struct.pluto* %12, i32 0, i32 0
  store i32 %11, i32* %13, align 4
  %14 = load %struct.pluto*, %struct.pluto** %2, align 8
  %15 = getelementptr inbounds %struct.pluto, %struct.pluto* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.pluto*, %struct.pluto** %2, align 8
  %18 = getelementptr inbounds %struct.pluto, %struct.pluto* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @pci_dma_mapping_error(i32 %16, i32 %19)
  ret i32 %20
}

declare dso_local i32 @pci_map_single(i32, i32, i32, i32) #1

declare dso_local i32 @pci_dma_mapping_error(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
