; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/extr_jme.c_jme_fill_tx_map.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/extr_jme.c_jme_fill_tx_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.txdesc = type { %struct.TYPE_2__, i64* }
%struct.TYPE_2__ = type { i8*, i8*, i32, i32 }
%struct.jme_buffer_info = type { i32, i64 }
%struct.page = type { i32 }

@PCI_DMA_TODEVICE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@TXFLAG_OWN = common dso_local global i32 0, align 4
@TXFLAG_64BIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, %struct.txdesc*, %struct.jme_buffer_info*, %struct.page*, i32, i32, i32)* @jme_fill_tx_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jme_fill_tx_map(%struct.pci_dev* %0, %struct.txdesc* %1, %struct.jme_buffer_info* %2, %struct.page* %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.pci_dev*, align 8
  %10 = alloca %struct.txdesc*, align 8
  %11 = alloca %struct.jme_buffer_info*, align 8
  %12 = alloca %struct.page*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %9, align 8
  store %struct.txdesc* %1, %struct.txdesc** %10, align 8
  store %struct.jme_buffer_info* %2, %struct.jme_buffer_info** %11, align 8
  store %struct.page* %3, %struct.page** %12, align 8
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %17 = load %struct.pci_dev*, %struct.pci_dev** %9, align 8
  %18 = load %struct.page*, %struct.page** %12, align 8
  %19 = load i32, i32* %13, align 4
  %20 = load i32, i32* %14, align 4
  %21 = load i32, i32* @PCI_DMA_TODEVICE, align 4
  %22 = call i64 @pci_map_page(%struct.pci_dev* %17, %struct.page* %18, i32 %19, i32 %20, i32 %21)
  store i64 %22, i64* %16, align 8
  %23 = load %struct.pci_dev*, %struct.pci_dev** %9, align 8
  %24 = load i64, i64* %16, align 8
  %25 = call i32 @pci_dma_mapping_error(%struct.pci_dev* %23, i64 %24)
  %26 = call i64 @unlikely(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %7
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %8, align 4
  br label %88

31:                                               ; preds = %7
  %32 = load %struct.pci_dev*, %struct.pci_dev** %9, align 8
  %33 = load i64, i64* %16, align 8
  %34 = load i32, i32* %14, align 4
  %35 = load i32, i32* @PCI_DMA_TODEVICE, align 4
  %36 = call i32 @pci_dma_sync_single_for_device(%struct.pci_dev* %32, i64 %33, i32 %34, i32 %35)
  %37 = load %struct.txdesc*, %struct.txdesc** %10, align 8
  %38 = getelementptr inbounds %struct.txdesc, %struct.txdesc* %37, i32 0, i32 1
  %39 = load i64*, i64** %38, align 8
  %40 = getelementptr inbounds i64, i64* %39, i64 0
  store i64 0, i64* %40, align 8
  %41 = load %struct.txdesc*, %struct.txdesc** %10, align 8
  %42 = getelementptr inbounds %struct.txdesc, %struct.txdesc* %41, i32 0, i32 1
  %43 = load i64*, i64** %42, align 8
  %44 = getelementptr inbounds i64, i64* %43, i64 1
  store i64 0, i64* %44, align 8
  %45 = load i32, i32* @TXFLAG_OWN, align 4
  %46 = load %struct.txdesc*, %struct.txdesc** %10, align 8
  %47 = getelementptr inbounds %struct.txdesc, %struct.txdesc* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 3
  store i32 %45, i32* %48, align 4
  %49 = load i32, i32* %15, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %31
  %52 = load i32, i32* @TXFLAG_64BIT, align 4
  br label %54

53:                                               ; preds = %31
  br label %54

54:                                               ; preds = %53, %51
  %55 = phi i32 [ %52, %51 ], [ 0, %53 ]
  %56 = load %struct.txdesc*, %struct.txdesc** %10, align 8
  %57 = getelementptr inbounds %struct.txdesc, %struct.txdesc* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 4
  %60 = or i32 %59, %55
  store i32 %60, i32* %58, align 4
  %61 = load i32, i32* %14, align 4
  %62 = call i32 @cpu_to_le16(i32 %61)
  %63 = load %struct.txdesc*, %struct.txdesc** %10, align 8
  %64 = getelementptr inbounds %struct.txdesc, %struct.txdesc* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 2
  store i32 %62, i32* %65, align 8
  %66 = load i64, i64* %16, align 8
  %67 = trunc i64 %66 to i32
  %68 = ashr i32 %67, 32
  %69 = call i8* @cpu_to_le32(i32 %68)
  %70 = load %struct.txdesc*, %struct.txdesc** %10, align 8
  %71 = getelementptr inbounds %struct.txdesc, %struct.txdesc* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 1
  store i8* %69, i8** %72, align 8
  %73 = load i64, i64* %16, align 8
  %74 = trunc i64 %73 to i32
  %75 = sext i32 %74 to i64
  %76 = and i64 %75, 4294967295
  %77 = trunc i64 %76 to i32
  %78 = call i8* @cpu_to_le32(i32 %77)
  %79 = load %struct.txdesc*, %struct.txdesc** %10, align 8
  %80 = getelementptr inbounds %struct.txdesc, %struct.txdesc* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 0
  store i8* %78, i8** %81, align 8
  %82 = load i64, i64* %16, align 8
  %83 = load %struct.jme_buffer_info*, %struct.jme_buffer_info** %11, align 8
  %84 = getelementptr inbounds %struct.jme_buffer_info, %struct.jme_buffer_info* %83, i32 0, i32 1
  store i64 %82, i64* %84, align 8
  %85 = load i32, i32* %14, align 4
  %86 = load %struct.jme_buffer_info*, %struct.jme_buffer_info** %11, align 8
  %87 = getelementptr inbounds %struct.jme_buffer_info, %struct.jme_buffer_info* %86, i32 0, i32 0
  store i32 %85, i32* %87, align 8
  store i32 0, i32* %8, align 4
  br label %88

88:                                               ; preds = %54, %28
  %89 = load i32, i32* %8, align 4
  ret i32 %89
}

declare dso_local i64 @pci_map_page(%struct.pci_dev*, %struct.page*, i32, i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @pci_dma_mapping_error(%struct.pci_dev*, i64) #1

declare dso_local i32 @pci_dma_sync_single_for_device(%struct.pci_dev*, i64, i32, i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
