; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/rocker/extr_rocker_main.c_rocker_dma_ring_bufs_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/rocker/extr_rocker_main.c_rocker_dma_ring_bufs_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rocker = type { %struct.pci_dev* }
%struct.pci_dev = type { i32 }
%struct.rocker_dma_ring_info = type { i32, %struct.rocker_desc_info*, %struct.rocker_desc* }
%struct.rocker_desc_info = type { i8*, i64 }
%struct.rocker_desc = type { i64, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@GFP_DMA = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@mapaddr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rocker*, %struct.rocker_dma_ring_info*, i32, i64)* @rocker_dma_ring_bufs_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rocker_dma_ring_bufs_alloc(%struct.rocker* %0, %struct.rocker_dma_ring_info* %1, i32 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.rocker*, align 8
  %7 = alloca %struct.rocker_dma_ring_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.pci_dev*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.rocker_desc_info*, align 8
  %14 = alloca %struct.rocker_desc*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca %struct.rocker_desc_info*, align 8
  store %struct.rocker* %0, %struct.rocker** %6, align 8
  store %struct.rocker_dma_ring_info* %1, %struct.rocker_dma_ring_info** %7, align 8
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  %18 = load %struct.rocker*, %struct.rocker** %6, align 8
  %19 = getelementptr inbounds %struct.rocker, %struct.rocker* %18, i32 0, i32 0
  %20 = load %struct.pci_dev*, %struct.pci_dev** %19, align 8
  store %struct.pci_dev* %20, %struct.pci_dev** %10, align 8
  store i32 0, i32* %11, align 4
  br label %21

21:                                               ; preds = %82, %4
  %22 = load i32, i32* %11, align 4
  %23 = load %struct.rocker_dma_ring_info*, %struct.rocker_dma_ring_info** %7, align 8
  %24 = getelementptr inbounds %struct.rocker_dma_ring_info, %struct.rocker_dma_ring_info* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp slt i32 %22, %25
  br i1 %26, label %27, label %85

27:                                               ; preds = %21
  %28 = load %struct.rocker_dma_ring_info*, %struct.rocker_dma_ring_info** %7, align 8
  %29 = getelementptr inbounds %struct.rocker_dma_ring_info, %struct.rocker_dma_ring_info* %28, i32 0, i32 1
  %30 = load %struct.rocker_desc_info*, %struct.rocker_desc_info** %29, align 8
  %31 = load i32, i32* %11, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.rocker_desc_info, %struct.rocker_desc_info* %30, i64 %32
  store %struct.rocker_desc_info* %33, %struct.rocker_desc_info** %13, align 8
  %34 = load %struct.rocker_dma_ring_info*, %struct.rocker_dma_ring_info** %7, align 8
  %35 = getelementptr inbounds %struct.rocker_dma_ring_info, %struct.rocker_dma_ring_info* %34, i32 0, i32 2
  %36 = load %struct.rocker_desc*, %struct.rocker_desc** %35, align 8
  %37 = load i32, i32* %11, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.rocker_desc, %struct.rocker_desc* %36, i64 %38
  store %struct.rocker_desc* %39, %struct.rocker_desc** %14, align 8
  %40 = load i64, i64* %9, align 8
  %41 = load i32, i32* @GFP_KERNEL, align 4
  %42 = load i32, i32* @GFP_DMA, align 4
  %43 = or i32 %41, %42
  %44 = call i8* @kzalloc(i64 %40, i32 %43)
  store i8* %44, i8** %16, align 8
  %45 = load i8*, i8** %16, align 8
  %46 = icmp ne i8* %45, null
  br i1 %46, label %50, label %47

47:                                               ; preds = %27
  %48 = load i32, i32* @ENOMEM, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %12, align 4
  br label %86

50:                                               ; preds = %27
  %51 = load %struct.pci_dev*, %struct.pci_dev** %10, align 8
  %52 = load i8*, i8** %16, align 8
  %53 = load i64, i64* %9, align 8
  %54 = load i32, i32* %8, align 4
  %55 = call i32 @pci_map_single(%struct.pci_dev* %51, i8* %52, i64 %53, i32 %54)
  store i32 %55, i32* %15, align 4
  %56 = load %struct.pci_dev*, %struct.pci_dev** %10, align 8
  %57 = load i32, i32* %15, align 4
  %58 = call i64 @pci_dma_mapping_error(%struct.pci_dev* %56, i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %50
  %61 = load i8*, i8** %16, align 8
  %62 = call i32 @kfree(i8* %61)
  %63 = load i32, i32* @EIO, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %12, align 4
  br label %86

65:                                               ; preds = %50
  %66 = load i8*, i8** %16, align 8
  %67 = load %struct.rocker_desc_info*, %struct.rocker_desc_info** %13, align 8
  %68 = getelementptr inbounds %struct.rocker_desc_info, %struct.rocker_desc_info* %67, i32 0, i32 0
  store i8* %66, i8** %68, align 8
  %69 = load i64, i64* %9, align 8
  %70 = load %struct.rocker_desc_info*, %struct.rocker_desc_info** %13, align 8
  %71 = getelementptr inbounds %struct.rocker_desc_info, %struct.rocker_desc_info* %70, i32 0, i32 1
  store i64 %69, i64* %71, align 8
  %72 = load %struct.rocker_desc_info*, %struct.rocker_desc_info** %13, align 8
  %73 = load i32, i32* @mapaddr, align 4
  %74 = load i32, i32* %15, align 4
  %75 = call i32 @dma_unmap_addr_set(%struct.rocker_desc_info* %72, i32 %73, i32 %74)
  %76 = load i32, i32* %15, align 4
  %77 = load %struct.rocker_desc*, %struct.rocker_desc** %14, align 8
  %78 = getelementptr inbounds %struct.rocker_desc, %struct.rocker_desc* %77, i32 0, i32 1
  store i32 %76, i32* %78, align 8
  %79 = load i64, i64* %9, align 8
  %80 = load %struct.rocker_desc*, %struct.rocker_desc** %14, align 8
  %81 = getelementptr inbounds %struct.rocker_desc, %struct.rocker_desc* %80, i32 0, i32 0
  store i64 %79, i64* %81, align 8
  br label %82

82:                                               ; preds = %65
  %83 = load i32, i32* %11, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %11, align 4
  br label %21

85:                                               ; preds = %21
  store i32 0, i32* %5, align 4
  br label %117

86:                                               ; preds = %60, %47
  %87 = load i32, i32* %11, align 4
  %88 = add nsw i32 %87, -1
  store i32 %88, i32* %11, align 4
  br label %89

89:                                               ; preds = %112, %86
  %90 = load i32, i32* %11, align 4
  %91 = icmp sge i32 %90, 0
  br i1 %91, label %92, label %115

92:                                               ; preds = %89
  %93 = load %struct.rocker_dma_ring_info*, %struct.rocker_dma_ring_info** %7, align 8
  %94 = getelementptr inbounds %struct.rocker_dma_ring_info, %struct.rocker_dma_ring_info* %93, i32 0, i32 1
  %95 = load %struct.rocker_desc_info*, %struct.rocker_desc_info** %94, align 8
  %96 = load i32, i32* %11, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.rocker_desc_info, %struct.rocker_desc_info* %95, i64 %97
  store %struct.rocker_desc_info* %98, %struct.rocker_desc_info** %17, align 8
  %99 = load %struct.pci_dev*, %struct.pci_dev** %10, align 8
  %100 = load %struct.rocker_desc_info*, %struct.rocker_desc_info** %17, align 8
  %101 = load i32, i32* @mapaddr, align 4
  %102 = call i32 @dma_unmap_addr(%struct.rocker_desc_info* %100, i32 %101)
  %103 = load %struct.rocker_desc_info*, %struct.rocker_desc_info** %17, align 8
  %104 = getelementptr inbounds %struct.rocker_desc_info, %struct.rocker_desc_info* %103, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  %106 = load i32, i32* %8, align 4
  %107 = call i32 @pci_unmap_single(%struct.pci_dev* %99, i32 %102, i64 %105, i32 %106)
  %108 = load %struct.rocker_desc_info*, %struct.rocker_desc_info** %17, align 8
  %109 = getelementptr inbounds %struct.rocker_desc_info, %struct.rocker_desc_info* %108, i32 0, i32 0
  %110 = load i8*, i8** %109, align 8
  %111 = call i32 @kfree(i8* %110)
  br label %112

112:                                              ; preds = %92
  %113 = load i32, i32* %11, align 4
  %114 = add nsw i32 %113, -1
  store i32 %114, i32* %11, align 4
  br label %89

115:                                              ; preds = %89
  %116 = load i32, i32* %12, align 4
  store i32 %116, i32* %5, align 4
  br label %117

117:                                              ; preds = %115, %85
  %118 = load i32, i32* %5, align 4
  ret i32 %118
}

declare dso_local i8* @kzalloc(i64, i32) #1

declare dso_local i32 @pci_map_single(%struct.pci_dev*, i8*, i64, i32) #1

declare dso_local i64 @pci_dma_mapping_error(%struct.pci_dev*, i32) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @dma_unmap_addr_set(%struct.rocker_desc_info*, i32, i32) #1

declare dso_local i32 @pci_unmap_single(%struct.pci_dev*, i32, i64, i32) #1

declare dso_local i32 @dma_unmap_addr(%struct.rocker_desc_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
