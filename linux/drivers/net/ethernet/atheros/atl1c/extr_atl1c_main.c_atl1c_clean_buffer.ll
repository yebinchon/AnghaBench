; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/atl1c/extr_atl1c_main.c_atl1c_clean_buffer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/atl1c/extr_atl1c_main.c_atl1c_clean_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.atl1c_buffer = type { i32, i32*, i64, i32 }

@ATL1C_BUFFER_FREE = common dso_local global i32 0, align 4
@ATL1C_PCIMAP_FROMDEVICE = common dso_local global i32 0, align 4
@PCI_DMA_FROMDEVICE = common dso_local global i32 0, align 4
@PCI_DMA_TODEVICE = common dso_local global i32 0, align 4
@ATL1C_PCIMAP_SINGLE = common dso_local global i32 0, align 4
@ATL1C_PCIMAP_PAGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*, %struct.atl1c_buffer*)* @atl1c_clean_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @atl1c_clean_buffer(%struct.pci_dev* %0, %struct.atl1c_buffer* %1) #0 {
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca %struct.atl1c_buffer*, align 8
  %5 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %3, align 8
  store %struct.atl1c_buffer* %1, %struct.atl1c_buffer** %4, align 8
  %6 = load %struct.atl1c_buffer*, %struct.atl1c_buffer** %4, align 8
  %7 = getelementptr inbounds %struct.atl1c_buffer, %struct.atl1c_buffer* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = load i32, i32* @ATL1C_BUFFER_FREE, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  br label %83

13:                                               ; preds = %2
  %14 = load %struct.atl1c_buffer*, %struct.atl1c_buffer** %4, align 8
  %15 = getelementptr inbounds %struct.atl1c_buffer, %struct.atl1c_buffer* %14, i32 0, i32 2
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %65

18:                                               ; preds = %13
  %19 = load %struct.atl1c_buffer*, %struct.atl1c_buffer** %4, align 8
  %20 = getelementptr inbounds %struct.atl1c_buffer, %struct.atl1c_buffer* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @ATL1C_PCIMAP_FROMDEVICE, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %18
  %26 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  store i32 %26, i32* %5, align 4
  br label %29

27:                                               ; preds = %18
  %28 = load i32, i32* @PCI_DMA_TODEVICE, align 4
  store i32 %28, i32* %5, align 4
  br label %29

29:                                               ; preds = %27, %25
  %30 = load %struct.atl1c_buffer*, %struct.atl1c_buffer** %4, align 8
  %31 = getelementptr inbounds %struct.atl1c_buffer, %struct.atl1c_buffer* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @ATL1C_PCIMAP_SINGLE, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %46

36:                                               ; preds = %29
  %37 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %38 = load %struct.atl1c_buffer*, %struct.atl1c_buffer** %4, align 8
  %39 = getelementptr inbounds %struct.atl1c_buffer, %struct.atl1c_buffer* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.atl1c_buffer*, %struct.atl1c_buffer** %4, align 8
  %42 = getelementptr inbounds %struct.atl1c_buffer, %struct.atl1c_buffer* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* %5, align 4
  %45 = call i32 @pci_unmap_single(%struct.pci_dev* %37, i64 %40, i32 %43, i32 %44)
  br label %64

46:                                               ; preds = %29
  %47 = load %struct.atl1c_buffer*, %struct.atl1c_buffer** %4, align 8
  %48 = getelementptr inbounds %struct.atl1c_buffer, %struct.atl1c_buffer* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @ATL1C_PCIMAP_PAGE, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %63

53:                                               ; preds = %46
  %54 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %55 = load %struct.atl1c_buffer*, %struct.atl1c_buffer** %4, align 8
  %56 = getelementptr inbounds %struct.atl1c_buffer, %struct.atl1c_buffer* %55, i32 0, i32 2
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.atl1c_buffer*, %struct.atl1c_buffer** %4, align 8
  %59 = getelementptr inbounds %struct.atl1c_buffer, %struct.atl1c_buffer* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* %5, align 4
  %62 = call i32 @pci_unmap_page(%struct.pci_dev* %54, i64 %57, i32 %60, i32 %61)
  br label %63

63:                                               ; preds = %53, %46
  br label %64

64:                                               ; preds = %63, %36
  br label %65

65:                                               ; preds = %64, %13
  %66 = load %struct.atl1c_buffer*, %struct.atl1c_buffer** %4, align 8
  %67 = getelementptr inbounds %struct.atl1c_buffer, %struct.atl1c_buffer* %66, i32 0, i32 1
  %68 = load i32*, i32** %67, align 8
  %69 = icmp ne i32* %68, null
  br i1 %69, label %70, label %75

70:                                               ; preds = %65
  %71 = load %struct.atl1c_buffer*, %struct.atl1c_buffer** %4, align 8
  %72 = getelementptr inbounds %struct.atl1c_buffer, %struct.atl1c_buffer* %71, i32 0, i32 1
  %73 = load i32*, i32** %72, align 8
  %74 = call i32 @dev_consume_skb_any(i32* %73)
  br label %75

75:                                               ; preds = %70, %65
  %76 = load %struct.atl1c_buffer*, %struct.atl1c_buffer** %4, align 8
  %77 = getelementptr inbounds %struct.atl1c_buffer, %struct.atl1c_buffer* %76, i32 0, i32 2
  store i64 0, i64* %77, align 8
  %78 = load %struct.atl1c_buffer*, %struct.atl1c_buffer** %4, align 8
  %79 = getelementptr inbounds %struct.atl1c_buffer, %struct.atl1c_buffer* %78, i32 0, i32 1
  store i32* null, i32** %79, align 8
  %80 = load %struct.atl1c_buffer*, %struct.atl1c_buffer** %4, align 8
  %81 = load i32, i32* @ATL1C_BUFFER_FREE, align 4
  %82 = call i32 @ATL1C_SET_BUFFER_STATE(%struct.atl1c_buffer* %80, i32 %81)
  br label %83

83:                                               ; preds = %75, %12
  ret void
}

declare dso_local i32 @pci_unmap_single(%struct.pci_dev*, i64, i32, i32) #1

declare dso_local i32 @pci_unmap_page(%struct.pci_dev*, i64, i32, i32) #1

declare dso_local i32 @dev_consume_skb_any(i32*) #1

declare dso_local i32 @ATL1C_SET_BUFFER_STATE(%struct.atl1c_buffer*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
