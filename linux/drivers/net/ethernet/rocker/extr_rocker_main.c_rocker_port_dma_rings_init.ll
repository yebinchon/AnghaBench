; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/rocker/extr_rocker_main.c_rocker_port_dma_rings_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/rocker/extr_rocker_main.c_rocker_port_dma_rings_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rocker_port = type { i32, i32, i32, i32, %struct.rocker* }
%struct.rocker = type { i32 }

@ROCKER_DMA_TX_DEFAULT_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"failed to create tx dma ring\0A\00", align 1
@PCI_DMA_TODEVICE = common dso_local global i32 0, align 4
@ROCKER_DMA_TX_DESC_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"failed to alloc tx dma ring buffers\0A\00", align 1
@ROCKER_DMA_RX_DEFAULT_SIZE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"failed to create rx dma ring\0A\00", align 1
@PCI_DMA_BIDIRECTIONAL = common dso_local global i32 0, align 4
@ROCKER_DMA_RX_DESC_SIZE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [37 x i8] c"failed to alloc rx dma ring buffers\0A\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"failed to alloc rx dma ring skbs\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rocker_port*)* @rocker_port_dma_rings_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rocker_port_dma_rings_init(%struct.rocker_port* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rocker_port*, align 8
  %4 = alloca %struct.rocker*, align 8
  %5 = alloca i32, align 4
  store %struct.rocker_port* %0, %struct.rocker_port** %3, align 8
  %6 = load %struct.rocker_port*, %struct.rocker_port** %3, align 8
  %7 = getelementptr inbounds %struct.rocker_port, %struct.rocker_port* %6, i32 0, i32 4
  %8 = load %struct.rocker*, %struct.rocker** %7, align 8
  store %struct.rocker* %8, %struct.rocker** %4, align 8
  %9 = load %struct.rocker*, %struct.rocker** %4, align 8
  %10 = load %struct.rocker_port*, %struct.rocker_port** %3, align 8
  %11 = getelementptr inbounds %struct.rocker_port, %struct.rocker_port* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @ROCKER_DMA_TX(i32 %12)
  %14 = load i32, i32* @ROCKER_DMA_TX_DEFAULT_SIZE, align 4
  %15 = load %struct.rocker_port*, %struct.rocker_port** %3, align 8
  %16 = getelementptr inbounds %struct.rocker_port, %struct.rocker_port* %15, i32 0, i32 0
  %17 = call i32 @rocker_dma_ring_create(%struct.rocker* %9, i32 %13, i32 %14, i32* %16)
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %1
  %21 = load %struct.rocker_port*, %struct.rocker_port** %3, align 8
  %22 = getelementptr inbounds %struct.rocker_port, %struct.rocker_port* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @netdev_err(i32 %23, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %25 = load i32, i32* %5, align 4
  store i32 %25, i32* %2, align 4
  br label %109

26:                                               ; preds = %1
  %27 = load %struct.rocker*, %struct.rocker** %4, align 8
  %28 = load %struct.rocker_port*, %struct.rocker_port** %3, align 8
  %29 = getelementptr inbounds %struct.rocker_port, %struct.rocker_port* %28, i32 0, i32 0
  %30 = load i32, i32* @PCI_DMA_TODEVICE, align 4
  %31 = load i32, i32* @ROCKER_DMA_TX_DESC_SIZE, align 4
  %32 = call i32 @rocker_dma_ring_bufs_alloc(%struct.rocker* %27, i32* %29, i32 %30, i32 %31)
  store i32 %32, i32* %5, align 4
  %33 = load i32, i32* %5, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %26
  %36 = load %struct.rocker_port*, %struct.rocker_port** %3, align 8
  %37 = getelementptr inbounds %struct.rocker_port, %struct.rocker_port* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @netdev_err(i32 %38, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  br label %103

40:                                               ; preds = %26
  %41 = load %struct.rocker*, %struct.rocker** %4, align 8
  %42 = load %struct.rocker_port*, %struct.rocker_port** %3, align 8
  %43 = getelementptr inbounds %struct.rocker_port, %struct.rocker_port* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @ROCKER_DMA_RX(i32 %44)
  %46 = load i32, i32* @ROCKER_DMA_RX_DEFAULT_SIZE, align 4
  %47 = load %struct.rocker_port*, %struct.rocker_port** %3, align 8
  %48 = getelementptr inbounds %struct.rocker_port, %struct.rocker_port* %47, i32 0, i32 1
  %49 = call i32 @rocker_dma_ring_create(%struct.rocker* %41, i32 %45, i32 %46, i32* %48)
  store i32 %49, i32* %5, align 4
  %50 = load i32, i32* %5, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %40
  %53 = load %struct.rocker_port*, %struct.rocker_port** %3, align 8
  %54 = getelementptr inbounds %struct.rocker_port, %struct.rocker_port* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @netdev_err(i32 %55, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  br label %97

57:                                               ; preds = %40
  %58 = load %struct.rocker*, %struct.rocker** %4, align 8
  %59 = load %struct.rocker_port*, %struct.rocker_port** %3, align 8
  %60 = getelementptr inbounds %struct.rocker_port, %struct.rocker_port* %59, i32 0, i32 1
  %61 = load i32, i32* @PCI_DMA_BIDIRECTIONAL, align 4
  %62 = load i32, i32* @ROCKER_DMA_RX_DESC_SIZE, align 4
  %63 = call i32 @rocker_dma_ring_bufs_alloc(%struct.rocker* %58, i32* %60, i32 %61, i32 %62)
  store i32 %63, i32* %5, align 4
  %64 = load i32, i32* %5, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %71

66:                                               ; preds = %57
  %67 = load %struct.rocker_port*, %struct.rocker_port** %3, align 8
  %68 = getelementptr inbounds %struct.rocker_port, %struct.rocker_port* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @netdev_err(i32 %69, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0))
  br label %92

71:                                               ; preds = %57
  %72 = load %struct.rocker_port*, %struct.rocker_port** %3, align 8
  %73 = call i32 @rocker_dma_rx_ring_skbs_alloc(%struct.rocker_port* %72)
  store i32 %73, i32* %5, align 4
  %74 = load i32, i32* %5, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %81

76:                                               ; preds = %71
  %77 = load %struct.rocker_port*, %struct.rocker_port** %3, align 8
  %78 = getelementptr inbounds %struct.rocker_port, %struct.rocker_port* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @netdev_err(i32 %79, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0))
  br label %86

81:                                               ; preds = %71
  %82 = load %struct.rocker*, %struct.rocker** %4, align 8
  %83 = load %struct.rocker_port*, %struct.rocker_port** %3, align 8
  %84 = getelementptr inbounds %struct.rocker_port, %struct.rocker_port* %83, i32 0, i32 1
  %85 = call i32 @rocker_dma_ring_pass_to_producer(%struct.rocker* %82, i32* %84)
  store i32 0, i32* %2, align 4
  br label %109

86:                                               ; preds = %76
  %87 = load %struct.rocker*, %struct.rocker** %4, align 8
  %88 = load %struct.rocker_port*, %struct.rocker_port** %3, align 8
  %89 = getelementptr inbounds %struct.rocker_port, %struct.rocker_port* %88, i32 0, i32 1
  %90 = load i32, i32* @PCI_DMA_BIDIRECTIONAL, align 4
  %91 = call i32 @rocker_dma_ring_bufs_free(%struct.rocker* %87, i32* %89, i32 %90)
  br label %92

92:                                               ; preds = %86, %66
  %93 = load %struct.rocker*, %struct.rocker** %4, align 8
  %94 = load %struct.rocker_port*, %struct.rocker_port** %3, align 8
  %95 = getelementptr inbounds %struct.rocker_port, %struct.rocker_port* %94, i32 0, i32 1
  %96 = call i32 @rocker_dma_ring_destroy(%struct.rocker* %93, i32* %95)
  br label %97

97:                                               ; preds = %92, %52
  %98 = load %struct.rocker*, %struct.rocker** %4, align 8
  %99 = load %struct.rocker_port*, %struct.rocker_port** %3, align 8
  %100 = getelementptr inbounds %struct.rocker_port, %struct.rocker_port* %99, i32 0, i32 0
  %101 = load i32, i32* @PCI_DMA_TODEVICE, align 4
  %102 = call i32 @rocker_dma_ring_bufs_free(%struct.rocker* %98, i32* %100, i32 %101)
  br label %103

103:                                              ; preds = %97, %35
  %104 = load %struct.rocker*, %struct.rocker** %4, align 8
  %105 = load %struct.rocker_port*, %struct.rocker_port** %3, align 8
  %106 = getelementptr inbounds %struct.rocker_port, %struct.rocker_port* %105, i32 0, i32 0
  %107 = call i32 @rocker_dma_ring_destroy(%struct.rocker* %104, i32* %106)
  %108 = load i32, i32* %5, align 4
  store i32 %108, i32* %2, align 4
  br label %109

109:                                              ; preds = %103, %81, %20
  %110 = load i32, i32* %2, align 4
  ret i32 %110
}

declare dso_local i32 @rocker_dma_ring_create(%struct.rocker*, i32, i32, i32*) #1

declare dso_local i32 @ROCKER_DMA_TX(i32) #1

declare dso_local i32 @netdev_err(i32, i8*) #1

declare dso_local i32 @rocker_dma_ring_bufs_alloc(%struct.rocker*, i32*, i32, i32) #1

declare dso_local i32 @ROCKER_DMA_RX(i32) #1

declare dso_local i32 @rocker_dma_rx_ring_skbs_alloc(%struct.rocker_port*) #1

declare dso_local i32 @rocker_dma_ring_pass_to_producer(%struct.rocker*, i32*) #1

declare dso_local i32 @rocker_dma_ring_bufs_free(%struct.rocker*, i32*, i32) #1

declare dso_local i32 @rocker_dma_ring_destroy(%struct.rocker*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
