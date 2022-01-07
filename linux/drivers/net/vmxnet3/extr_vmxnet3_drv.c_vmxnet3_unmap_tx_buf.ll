; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/vmxnet3/extr_vmxnet3_drv.c_vmxnet3_unmap_tx_buf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/vmxnet3/extr_vmxnet3_drv.c_vmxnet3_unmap_tx_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmxnet3_tx_buf_info = type { i64, i32, i32 }
%struct.pci_dev = type { i32 }

@VMXNET3_MAP_SINGLE = common dso_local global i64 0, align 8
@PCI_DMA_TODEVICE = common dso_local global i32 0, align 4
@VMXNET3_MAP_PAGE = common dso_local global i64 0, align 8
@VMXNET3_MAP_NONE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vmxnet3_tx_buf_info*, %struct.pci_dev*)* @vmxnet3_unmap_tx_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vmxnet3_unmap_tx_buf(%struct.vmxnet3_tx_buf_info* %0, %struct.pci_dev* %1) #0 {
  %3 = alloca %struct.vmxnet3_tx_buf_info*, align 8
  %4 = alloca %struct.pci_dev*, align 8
  store %struct.vmxnet3_tx_buf_info* %0, %struct.vmxnet3_tx_buf_info** %3, align 8
  store %struct.pci_dev* %1, %struct.pci_dev** %4, align 8
  %5 = load %struct.vmxnet3_tx_buf_info*, %struct.vmxnet3_tx_buf_info** %3, align 8
  %6 = getelementptr inbounds %struct.vmxnet3_tx_buf_info, %struct.vmxnet3_tx_buf_info* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @VMXNET3_MAP_SINGLE, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %21

10:                                               ; preds = %2
  %11 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %12 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %11, i32 0, i32 0
  %13 = load %struct.vmxnet3_tx_buf_info*, %struct.vmxnet3_tx_buf_info** %3, align 8
  %14 = getelementptr inbounds %struct.vmxnet3_tx_buf_info, %struct.vmxnet3_tx_buf_info* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.vmxnet3_tx_buf_info*, %struct.vmxnet3_tx_buf_info** %3, align 8
  %17 = getelementptr inbounds %struct.vmxnet3_tx_buf_info, %struct.vmxnet3_tx_buf_info* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @PCI_DMA_TODEVICE, align 4
  %20 = call i32 @dma_unmap_single(i32* %12, i32 %15, i32 %18, i32 %19)
  br label %47

21:                                               ; preds = %2
  %22 = load %struct.vmxnet3_tx_buf_info*, %struct.vmxnet3_tx_buf_info** %3, align 8
  %23 = getelementptr inbounds %struct.vmxnet3_tx_buf_info, %struct.vmxnet3_tx_buf_info* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @VMXNET3_MAP_PAGE, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %38

27:                                               ; preds = %21
  %28 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %29 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %28, i32 0, i32 0
  %30 = load %struct.vmxnet3_tx_buf_info*, %struct.vmxnet3_tx_buf_info** %3, align 8
  %31 = getelementptr inbounds %struct.vmxnet3_tx_buf_info, %struct.vmxnet3_tx_buf_info* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.vmxnet3_tx_buf_info*, %struct.vmxnet3_tx_buf_info** %3, align 8
  %34 = getelementptr inbounds %struct.vmxnet3_tx_buf_info, %struct.vmxnet3_tx_buf_info* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @PCI_DMA_TODEVICE, align 4
  %37 = call i32 @dma_unmap_page(i32* %29, i32 %32, i32 %35, i32 %36)
  br label %46

38:                                               ; preds = %21
  %39 = load %struct.vmxnet3_tx_buf_info*, %struct.vmxnet3_tx_buf_info** %3, align 8
  %40 = getelementptr inbounds %struct.vmxnet3_tx_buf_info, %struct.vmxnet3_tx_buf_info* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @VMXNET3_MAP_NONE, align 8
  %43 = icmp ne i64 %41, %42
  %44 = zext i1 %43 to i32
  %45 = call i32 @BUG_ON(i32 %44)
  br label %46

46:                                               ; preds = %38, %27
  br label %47

47:                                               ; preds = %46, %10
  %48 = load i64, i64* @VMXNET3_MAP_NONE, align 8
  %49 = load %struct.vmxnet3_tx_buf_info*, %struct.vmxnet3_tx_buf_info** %3, align 8
  %50 = getelementptr inbounds %struct.vmxnet3_tx_buf_info, %struct.vmxnet3_tx_buf_info* %49, i32 0, i32 0
  store i64 %48, i64* %50, align 8
  ret void
}

declare dso_local i32 @dma_unmap_single(i32*, i32, i32, i32) #1

declare dso_local i32 @dma_unmap_page(i32*, i32, i32, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
