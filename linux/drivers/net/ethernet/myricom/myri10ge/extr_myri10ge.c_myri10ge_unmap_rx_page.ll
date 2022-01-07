; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/myricom/myri10ge/extr_myri10ge.c_myri10ge_unmap_rx_page.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/myricom/myri10ge/extr_myri10ge.c_myri10ge_unmap_rx_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.myri10ge_rx_buffer_state = type { i32 }

@MYRI10GE_ALLOC_SIZE = common dso_local global i32 0, align 4
@bus = common dso_local global i32 0, align 4
@PCI_DMA_FROMDEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*, %struct.myri10ge_rx_buffer_state*, i32)* @myri10ge_unmap_rx_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @myri10ge_unmap_rx_page(%struct.pci_dev* %0, %struct.myri10ge_rx_buffer_state* %1, i32 %2) #0 {
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.myri10ge_rx_buffer_state*, align 8
  %6 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store %struct.myri10ge_rx_buffer_state* %1, %struct.myri10ge_rx_buffer_state** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @MYRI10GE_ALLOC_SIZE, align 4
  %9 = sdiv i32 %8, 2
  %10 = icmp sge i32 %7, %9
  br i1 %10, label %20, label %11

11:                                               ; preds = %3
  %12 = load %struct.myri10ge_rx_buffer_state*, %struct.myri10ge_rx_buffer_state** %5, align 8
  %13 = getelementptr inbounds %struct.myri10ge_rx_buffer_state, %struct.myri10ge_rx_buffer_state* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* %6, align 4
  %16 = mul nsw i32 2, %15
  %17 = add nsw i32 %14, %16
  %18 = load i32, i32* @MYRI10GE_ALLOC_SIZE, align 4
  %19 = icmp sgt i32 %17, %18
  br i1 %19, label %20, label %32

20:                                               ; preds = %11, %3
  %21 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %22 = load %struct.myri10ge_rx_buffer_state*, %struct.myri10ge_rx_buffer_state** %5, align 8
  %23 = load i32, i32* @bus, align 4
  %24 = call i32 @dma_unmap_addr(%struct.myri10ge_rx_buffer_state* %22, i32 %23)
  %25 = load i32, i32* @MYRI10GE_ALLOC_SIZE, align 4
  %26 = sub nsw i32 %25, 1
  %27 = xor i32 %26, -1
  %28 = and i32 %24, %27
  %29 = load i32, i32* @MYRI10GE_ALLOC_SIZE, align 4
  %30 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  %31 = call i32 @pci_unmap_page(%struct.pci_dev* %21, i32 %28, i32 %29, i32 %30)
  br label %32

32:                                               ; preds = %20, %11
  ret void
}

declare dso_local i32 @pci_unmap_page(%struct.pci_dev*, i32, i32, i32) #1

declare dso_local i32 @dma_unmap_addr(%struct.myri10ge_rx_buffer_state*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
