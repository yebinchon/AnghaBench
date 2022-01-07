; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/rocker/extr_rocker_main.c_rocker_dma_rings_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/rocker/extr_rocker_main.c_rocker_dma_rings_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rocker = type { i32, i32, i32, %struct.pci_dev* }
%struct.pci_dev = type { i32 }

@ROCKER_DMA_CMD = common dso_local global i32 0, align 4
@ROCKER_DMA_CMD_DEFAULT_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"failed to create command dma ring\0A\00", align 1
@PCI_DMA_BIDIRECTIONAL = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"failed to alloc command dma ring buffers\0A\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"failed to alloc command dma ring waits\0A\00", align 1
@ROCKER_DMA_EVENT = common dso_local global i32 0, align 4
@ROCKER_DMA_EVENT_DEFAULT_SIZE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [33 x i8] c"failed to create event dma ring\0A\00", align 1
@PCI_DMA_FROMDEVICE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [40 x i8] c"failed to alloc event dma ring buffers\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rocker*)* @rocker_dma_rings_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rocker_dma_rings_init(%struct.rocker* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rocker*, align 8
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca i32, align 4
  store %struct.rocker* %0, %struct.rocker** %3, align 8
  %6 = load %struct.rocker*, %struct.rocker** %3, align 8
  %7 = getelementptr inbounds %struct.rocker, %struct.rocker* %6, i32 0, i32 3
  %8 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  store %struct.pci_dev* %8, %struct.pci_dev** %4, align 8
  %9 = load %struct.rocker*, %struct.rocker** %3, align 8
  %10 = load i32, i32* @ROCKER_DMA_CMD, align 4
  %11 = load i32, i32* @ROCKER_DMA_CMD_DEFAULT_SIZE, align 4
  %12 = load %struct.rocker*, %struct.rocker** %3, align 8
  %13 = getelementptr inbounds %struct.rocker, %struct.rocker* %12, i32 0, i32 0
  %14 = call i32 @rocker_dma_ring_create(%struct.rocker* %9, i32 %10, i32 %11, i32* %13)
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %5, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %1
  %18 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %19 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %18, i32 0, i32 0
  %20 = call i32 @dev_err(i32* %19, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* %5, align 4
  store i32 %21, i32* %2, align 4
  br label %98

22:                                               ; preds = %1
  %23 = load %struct.rocker*, %struct.rocker** %3, align 8
  %24 = getelementptr inbounds %struct.rocker, %struct.rocker* %23, i32 0, i32 2
  %25 = call i32 @spin_lock_init(i32* %24)
  %26 = load %struct.rocker*, %struct.rocker** %3, align 8
  %27 = load %struct.rocker*, %struct.rocker** %3, align 8
  %28 = getelementptr inbounds %struct.rocker, %struct.rocker* %27, i32 0, i32 0
  %29 = load i32, i32* @PCI_DMA_BIDIRECTIONAL, align 4
  %30 = load i32, i32* @PAGE_SIZE, align 4
  %31 = call i32 @rocker_dma_ring_bufs_alloc(%struct.rocker* %26, i32* %28, i32 %29, i32 %30)
  store i32 %31, i32* %5, align 4
  %32 = load i32, i32* %5, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %22
  %35 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %36 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %35, i32 0, i32 0
  %37 = call i32 @dev_err(i32* %36, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  br label %92

38:                                               ; preds = %22
  %39 = load %struct.rocker*, %struct.rocker** %3, align 8
  %40 = call i32 @rocker_dma_cmd_ring_waits_alloc(%struct.rocker* %39)
  store i32 %40, i32* %5, align 4
  %41 = load i32, i32* %5, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %38
  %44 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %45 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %44, i32 0, i32 0
  %46 = call i32 @dev_err(i32* %45, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0))
  br label %89

47:                                               ; preds = %38
  %48 = load %struct.rocker*, %struct.rocker** %3, align 8
  %49 = load i32, i32* @ROCKER_DMA_EVENT, align 4
  %50 = load i32, i32* @ROCKER_DMA_EVENT_DEFAULT_SIZE, align 4
  %51 = load %struct.rocker*, %struct.rocker** %3, align 8
  %52 = getelementptr inbounds %struct.rocker, %struct.rocker* %51, i32 0, i32 1
  %53 = call i32 @rocker_dma_ring_create(%struct.rocker* %48, i32 %49, i32 %50, i32* %52)
  store i32 %53, i32* %5, align 4
  %54 = load i32, i32* %5, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %47
  %57 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %58 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %57, i32 0, i32 0
  %59 = call i32 @dev_err(i32* %58, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  br label %83

60:                                               ; preds = %47
  %61 = load %struct.rocker*, %struct.rocker** %3, align 8
  %62 = load %struct.rocker*, %struct.rocker** %3, align 8
  %63 = getelementptr inbounds %struct.rocker, %struct.rocker* %62, i32 0, i32 1
  %64 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  %65 = load i32, i32* @PAGE_SIZE, align 4
  %66 = call i32 @rocker_dma_ring_bufs_alloc(%struct.rocker* %61, i32* %63, i32 %64, i32 %65)
  store i32 %66, i32* %5, align 4
  %67 = load i32, i32* %5, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %60
  %70 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %71 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %70, i32 0, i32 0
  %72 = call i32 @dev_err(i32* %71, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0))
  br label %78

73:                                               ; preds = %60
  %74 = load %struct.rocker*, %struct.rocker** %3, align 8
  %75 = load %struct.rocker*, %struct.rocker** %3, align 8
  %76 = getelementptr inbounds %struct.rocker, %struct.rocker* %75, i32 0, i32 1
  %77 = call i32 @rocker_dma_ring_pass_to_producer(%struct.rocker* %74, i32* %76)
  store i32 0, i32* %2, align 4
  br label %98

78:                                               ; preds = %69
  %79 = load %struct.rocker*, %struct.rocker** %3, align 8
  %80 = load %struct.rocker*, %struct.rocker** %3, align 8
  %81 = getelementptr inbounds %struct.rocker, %struct.rocker* %80, i32 0, i32 1
  %82 = call i32 @rocker_dma_ring_destroy(%struct.rocker* %79, i32* %81)
  br label %83

83:                                               ; preds = %78, %56
  %84 = load %struct.rocker*, %struct.rocker** %3, align 8
  %85 = load %struct.rocker*, %struct.rocker** %3, align 8
  %86 = getelementptr inbounds %struct.rocker, %struct.rocker* %85, i32 0, i32 0
  %87 = load i32, i32* @PCI_DMA_BIDIRECTIONAL, align 4
  %88 = call i32 @rocker_dma_ring_bufs_free(%struct.rocker* %84, i32* %86, i32 %87)
  br label %89

89:                                               ; preds = %83, %43
  %90 = load %struct.rocker*, %struct.rocker** %3, align 8
  %91 = call i32 @rocker_dma_cmd_ring_waits_free(%struct.rocker* %90)
  br label %92

92:                                               ; preds = %89, %34
  %93 = load %struct.rocker*, %struct.rocker** %3, align 8
  %94 = load %struct.rocker*, %struct.rocker** %3, align 8
  %95 = getelementptr inbounds %struct.rocker, %struct.rocker* %94, i32 0, i32 0
  %96 = call i32 @rocker_dma_ring_destroy(%struct.rocker* %93, i32* %95)
  %97 = load i32, i32* %5, align 4
  store i32 %97, i32* %2, align 4
  br label %98

98:                                               ; preds = %92, %73, %17
  %99 = load i32, i32* %2, align 4
  ret i32 %99
}

declare dso_local i32 @rocker_dma_ring_create(%struct.rocker*, i32, i32, i32*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @rocker_dma_ring_bufs_alloc(%struct.rocker*, i32*, i32, i32) #1

declare dso_local i32 @rocker_dma_cmd_ring_waits_alloc(%struct.rocker*) #1

declare dso_local i32 @rocker_dma_ring_pass_to_producer(%struct.rocker*, i32*) #1

declare dso_local i32 @rocker_dma_ring_destroy(%struct.rocker*, i32*) #1

declare dso_local i32 @rocker_dma_ring_bufs_free(%struct.rocker*, i32*, i32) #1

declare dso_local i32 @rocker_dma_cmd_ring_waits_free(%struct.rocker*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
