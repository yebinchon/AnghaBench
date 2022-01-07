; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb3/extr_sge.c_map_skb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb3/extr_sge.c_map_skb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.sk_buff = type { i32 }
%struct.skb_shared_info = type { i64, i32* }

@PCI_DMA_TODEVICE = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, %struct.sk_buff*, i32*)* @map_skb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @map_skb(%struct.pci_dev* %0, %struct.sk_buff* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.skb_shared_info*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store i32* %2, i32** %7, align 8
  %11 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %12 = call i64 @skb_headlen(%struct.sk_buff* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %33

14:                                               ; preds = %3
  %15 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %16 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %17 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %20 = call i64 @skb_headlen(%struct.sk_buff* %19)
  %21 = load i32, i32* @PCI_DMA_TODEVICE, align 4
  %22 = call i32 @pci_map_single(%struct.pci_dev* %15, i32 %18, i64 %20, i32 %21)
  %23 = load i32*, i32** %7, align 8
  store i32 %22, i32* %23, align 4
  %24 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %25 = load i32*, i32** %7, align 8
  %26 = load i32, i32* %25, align 4
  %27 = call i64 @pci_dma_mapping_error(%struct.pci_dev* %24, i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %14
  br label %99

30:                                               ; preds = %14
  %31 = load i32*, i32** %7, align 8
  %32 = getelementptr inbounds i32, i32* %31, i32 1
  store i32* %32, i32** %7, align 8
  br label %33

33:                                               ; preds = %30, %3
  %34 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %35 = call %struct.skb_shared_info* @skb_shinfo(%struct.sk_buff* %34)
  store %struct.skb_shared_info* %35, %struct.skb_shared_info** %10, align 8
  %36 = load %struct.skb_shared_info*, %struct.skb_shared_info** %10, align 8
  %37 = getelementptr inbounds %struct.skb_shared_info, %struct.skb_shared_info* %36, i32 0, i32 1
  %38 = load i32*, i32** %37, align 8
  %39 = load %struct.skb_shared_info*, %struct.skb_shared_info** %10, align 8
  %40 = getelementptr inbounds %struct.skb_shared_info, %struct.skb_shared_info* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = getelementptr inbounds i32, i32* %38, i64 %41
  store i32* %42, i32** %9, align 8
  %43 = load %struct.skb_shared_info*, %struct.skb_shared_info** %10, align 8
  %44 = getelementptr inbounds %struct.skb_shared_info, %struct.skb_shared_info* %43, i32 0, i32 1
  %45 = load i32*, i32** %44, align 8
  store i32* %45, i32** %8, align 8
  br label %46

46:                                               ; preds = %68, %33
  %47 = load i32*, i32** %8, align 8
  %48 = load i32*, i32** %9, align 8
  %49 = icmp ult i32* %47, %48
  br i1 %49, label %50, label %71

50:                                               ; preds = %46
  %51 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %52 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %51, i32 0, i32 0
  %53 = load i32*, i32** %8, align 8
  %54 = load i32*, i32** %8, align 8
  %55 = call i32 @skb_frag_size(i32* %54)
  %56 = load i32, i32* @DMA_TO_DEVICE, align 4
  %57 = call i32 @skb_frag_dma_map(i32* %52, i32* %53, i32 0, i32 %55, i32 %56)
  %58 = load i32*, i32** %7, align 8
  store i32 %57, i32* %58, align 4
  %59 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %60 = load i32*, i32** %7, align 8
  %61 = load i32, i32* %60, align 4
  %62 = call i64 @pci_dma_mapping_error(%struct.pci_dev* %59, i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %50
  br label %72

65:                                               ; preds = %50
  %66 = load i32*, i32** %7, align 8
  %67 = getelementptr inbounds i32, i32* %66, i32 1
  store i32* %67, i32** %7, align 8
  br label %68

68:                                               ; preds = %65
  %69 = load i32*, i32** %8, align 8
  %70 = getelementptr inbounds i32, i32* %69, i32 1
  store i32* %70, i32** %8, align 8
  br label %46

71:                                               ; preds = %46
  store i32 0, i32* %4, align 4
  br label %102

72:                                               ; preds = %64
  br label %73

73:                                               ; preds = %80, %72
  %74 = load i32*, i32** %8, align 8
  %75 = getelementptr inbounds i32, i32* %74, i32 -1
  store i32* %75, i32** %8, align 8
  %76 = load %struct.skb_shared_info*, %struct.skb_shared_info** %10, align 8
  %77 = getelementptr inbounds %struct.skb_shared_info, %struct.skb_shared_info* %76, i32 0, i32 1
  %78 = load i32*, i32** %77, align 8
  %79 = icmp ugt i32* %74, %78
  br i1 %79, label %80, label %90

80:                                               ; preds = %73
  %81 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %82 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %81, i32 0, i32 0
  %83 = load i32*, i32** %7, align 8
  %84 = getelementptr inbounds i32, i32* %83, i32 -1
  store i32* %84, i32** %7, align 8
  %85 = load i32, i32* %84, align 4
  %86 = load i32*, i32** %8, align 8
  %87 = call i32 @skb_frag_size(i32* %86)
  %88 = load i32, i32* @DMA_TO_DEVICE, align 4
  %89 = call i32 @dma_unmap_page(i32* %82, i32 %85, i32 %87, i32 %88)
  br label %73

90:                                               ; preds = %73
  %91 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %92 = load i32*, i32** %7, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 -1
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %96 = call i64 @skb_headlen(%struct.sk_buff* %95)
  %97 = load i32, i32* @PCI_DMA_TODEVICE, align 4
  %98 = call i32 @pci_unmap_single(%struct.pci_dev* %91, i32 %94, i64 %96, i32 %97)
  br label %99

99:                                               ; preds = %90, %29
  %100 = load i32, i32* @ENOMEM, align 4
  %101 = sub nsw i32 0, %100
  store i32 %101, i32* %4, align 4
  br label %102

102:                                              ; preds = %99, %71
  %103 = load i32, i32* %4, align 4
  ret i32 %103
}

declare dso_local i64 @skb_headlen(%struct.sk_buff*) #1

declare dso_local i32 @pci_map_single(%struct.pci_dev*, i32, i64, i32) #1

declare dso_local i64 @pci_dma_mapping_error(%struct.pci_dev*, i32) #1

declare dso_local %struct.skb_shared_info* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i32 @skb_frag_dma_map(i32*, i32*, i32, i32, i32) #1

declare dso_local i32 @skb_frag_size(i32*) #1

declare dso_local i32 @dma_unmap_page(i32*, i32, i32, i32) #1

declare dso_local i32 @pci_unmap_single(%struct.pci_dev*, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
