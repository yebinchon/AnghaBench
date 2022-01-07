; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/huawei/hinic/extr_hinic_tx.c_tx_map_skb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/huawei/hinic/extr_hinic_tx.c_tx_map_skb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hinic_dev = type { %struct.hinic_hwdev* }
%struct.hinic_hwdev = type { %struct.hinic_hwif* }
%struct.hinic_hwif = type { %struct.pci_dev* }
%struct.pci_dev = type { i32 }
%struct.sk_buff = type { i32 }
%struct.hinic_sge = type { i32 }
%struct.TYPE_2__ = type { i32, i32* }

@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Failed to map Tx skb data\0A\00", align 1
@EFAULT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"Failed to map Tx skb frag\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hinic_dev*, %struct.sk_buff*, %struct.hinic_sge*)* @tx_map_skb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tx_map_skb(%struct.hinic_dev* %0, %struct.sk_buff* %1, %struct.hinic_sge* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hinic_dev*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.hinic_sge*, align 8
  %8 = alloca %struct.hinic_hwdev*, align 8
  %9 = alloca %struct.hinic_hwif*, align 8
  %10 = alloca %struct.pci_dev*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.hinic_dev* %0, %struct.hinic_dev** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store %struct.hinic_sge* %2, %struct.hinic_sge** %7, align 8
  %15 = load %struct.hinic_dev*, %struct.hinic_dev** %5, align 8
  %16 = getelementptr inbounds %struct.hinic_dev, %struct.hinic_dev* %15, i32 0, i32 0
  %17 = load %struct.hinic_hwdev*, %struct.hinic_hwdev** %16, align 8
  store %struct.hinic_hwdev* %17, %struct.hinic_hwdev** %8, align 8
  %18 = load %struct.hinic_hwdev*, %struct.hinic_hwdev** %8, align 8
  %19 = getelementptr inbounds %struct.hinic_hwdev, %struct.hinic_hwdev* %18, i32 0, i32 0
  %20 = load %struct.hinic_hwif*, %struct.hinic_hwif** %19, align 8
  store %struct.hinic_hwif* %20, %struct.hinic_hwif** %9, align 8
  %21 = load %struct.hinic_hwif*, %struct.hinic_hwif** %9, align 8
  %22 = getelementptr inbounds %struct.hinic_hwif, %struct.hinic_hwif* %21, i32 0, i32 0
  %23 = load %struct.pci_dev*, %struct.pci_dev** %22, align 8
  store %struct.pci_dev* %23, %struct.pci_dev** %10, align 8
  %24 = load %struct.pci_dev*, %struct.pci_dev** %10, align 8
  %25 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %24, i32 0, i32 0
  %26 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %27 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %30 = call i32 @skb_headlen(%struct.sk_buff* %29)
  %31 = load i32, i32* @DMA_TO_DEVICE, align 4
  %32 = call i32 @dma_map_single(i32* %25, i32 %28, i32 %30, i32 %31)
  store i32 %32, i32* %12, align 4
  %33 = load %struct.pci_dev*, %struct.pci_dev** %10, align 8
  %34 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %33, i32 0, i32 0
  %35 = load i32, i32* %12, align 4
  %36 = call i64 @dma_mapping_error(i32* %34, i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %3
  %39 = load %struct.pci_dev*, %struct.pci_dev** %10, align 8
  %40 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %39, i32 0, i32 0
  %41 = call i32 @dev_err(i32* %40, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %42 = load i32, i32* @EFAULT, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %4, align 4
  br label %136

44:                                               ; preds = %3
  %45 = load %struct.hinic_sge*, %struct.hinic_sge** %7, align 8
  %46 = getelementptr inbounds %struct.hinic_sge, %struct.hinic_sge* %45, i64 0
  %47 = load i32, i32* %12, align 4
  %48 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %49 = call i32 @skb_headlen(%struct.sk_buff* %48)
  %50 = call i32 @hinic_set_sge(%struct.hinic_sge* %46, i32 %47, i32 %49)
  store i32 0, i32* %13, align 4
  br label %51

51:                                               ; preds = %92, %44
  %52 = load i32, i32* %13, align 4
  %53 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %54 = call %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff* %53)
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = icmp slt i32 %52, %56
  br i1 %57, label %58, label %95

58:                                               ; preds = %51
  %59 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %60 = call %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff* %59)
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 1
  %62 = load i32*, i32** %61, align 8
  %63 = load i32, i32* %13, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %62, i64 %64
  store i32* %65, i32** %11, align 8
  %66 = load %struct.pci_dev*, %struct.pci_dev** %10, align 8
  %67 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %66, i32 0, i32 0
  %68 = load i32*, i32** %11, align 8
  %69 = load i32*, i32** %11, align 8
  %70 = call i32 @skb_frag_size(i32* %69)
  %71 = load i32, i32* @DMA_TO_DEVICE, align 4
  %72 = call i32 @skb_frag_dma_map(i32* %67, i32* %68, i32 0, i32 %70, i32 %71)
  store i32 %72, i32* %12, align 4
  %73 = load %struct.pci_dev*, %struct.pci_dev** %10, align 8
  %74 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %73, i32 0, i32 0
  %75 = load i32, i32* %12, align 4
  %76 = call i64 @dma_mapping_error(i32* %74, i32 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %82

78:                                               ; preds = %58
  %79 = load %struct.pci_dev*, %struct.pci_dev** %10, align 8
  %80 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %79, i32 0, i32 0
  %81 = call i32 @dev_err(i32* %80, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  br label %96

82:                                               ; preds = %58
  %83 = load %struct.hinic_sge*, %struct.hinic_sge** %7, align 8
  %84 = load i32, i32* %13, align 4
  %85 = add nsw i32 %84, 1
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.hinic_sge, %struct.hinic_sge* %83, i64 %86
  %88 = load i32, i32* %12, align 4
  %89 = load i32*, i32** %11, align 8
  %90 = call i32 @skb_frag_size(i32* %89)
  %91 = call i32 @hinic_set_sge(%struct.hinic_sge* %87, i32 %88, i32 %90)
  br label %92

92:                                               ; preds = %82
  %93 = load i32, i32* %13, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %13, align 4
  br label %51

95:                                               ; preds = %51
  store i32 0, i32* %4, align 4
  br label %136

96:                                               ; preds = %78
  store i32 0, i32* %14, align 4
  br label %97

97:                                               ; preds = %119, %96
  %98 = load i32, i32* %14, align 4
  %99 = load i32, i32* %13, align 4
  %100 = icmp slt i32 %98, %99
  br i1 %100, label %101, label %122

101:                                              ; preds = %97
  %102 = load %struct.pci_dev*, %struct.pci_dev** %10, align 8
  %103 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %102, i32 0, i32 0
  %104 = load %struct.hinic_sge*, %struct.hinic_sge** %7, align 8
  %105 = load i32, i32* %14, align 4
  %106 = add nsw i32 %105, 1
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.hinic_sge, %struct.hinic_sge* %104, i64 %107
  %109 = call i32 @hinic_sge_to_dma(%struct.hinic_sge* %108)
  %110 = load %struct.hinic_sge*, %struct.hinic_sge** %7, align 8
  %111 = load i32, i32* %14, align 4
  %112 = add nsw i32 %111, 1
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds %struct.hinic_sge, %struct.hinic_sge* %110, i64 %113
  %115 = getelementptr inbounds %struct.hinic_sge, %struct.hinic_sge* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* @DMA_TO_DEVICE, align 4
  %118 = call i32 @dma_unmap_page(i32* %103, i32 %109, i32 %116, i32 %117)
  br label %119

119:                                              ; preds = %101
  %120 = load i32, i32* %14, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %14, align 4
  br label %97

122:                                              ; preds = %97
  %123 = load %struct.pci_dev*, %struct.pci_dev** %10, align 8
  %124 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %123, i32 0, i32 0
  %125 = load %struct.hinic_sge*, %struct.hinic_sge** %7, align 8
  %126 = getelementptr inbounds %struct.hinic_sge, %struct.hinic_sge* %125, i64 0
  %127 = call i32 @hinic_sge_to_dma(%struct.hinic_sge* %126)
  %128 = load %struct.hinic_sge*, %struct.hinic_sge** %7, align 8
  %129 = getelementptr inbounds %struct.hinic_sge, %struct.hinic_sge* %128, i64 0
  %130 = getelementptr inbounds %struct.hinic_sge, %struct.hinic_sge* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = load i32, i32* @DMA_TO_DEVICE, align 4
  %133 = call i32 @dma_unmap_single(i32* %124, i32 %127, i32 %131, i32 %132)
  %134 = load i32, i32* @EFAULT, align 4
  %135 = sub nsw i32 0, %134
  store i32 %135, i32* %4, align 4
  br label %136

136:                                              ; preds = %122, %95, %38
  %137 = load i32, i32* %4, align 4
  ret i32 %137
}

declare dso_local i32 @dma_map_single(i32*, i32, i32, i32) #1

declare dso_local i32 @skb_headlen(%struct.sk_buff*) #1

declare dso_local i64 @dma_mapping_error(i32*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @hinic_set_sge(%struct.hinic_sge*, i32, i32) #1

declare dso_local %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i32 @skb_frag_dma_map(i32*, i32*, i32, i32, i32) #1

declare dso_local i32 @skb_frag_size(i32*) #1

declare dso_local i32 @dma_unmap_page(i32*, i32, i32, i32) #1

declare dso_local i32 @hinic_sge_to_dma(%struct.hinic_sge*) #1

declare dso_local i32 @dma_unmap_single(i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
