; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_sky2.c_sky2_rx_map_skb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_sky2.c_sky2_rx_map_skb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.rx_ring_info = type { i32, i32*, %struct.sk_buff* }
%struct.sk_buff = type { %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32, i32* }

@PCI_DMA_FROMDEVICE = common dso_local global i32 0, align 4
@data_size = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"%s: rx mapping error\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, %struct.rx_ring_info*, i32)* @sky2_rx_map_skb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sky2_rx_map_skb(%struct.pci_dev* %0, %struct.rx_ring_info* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca %struct.rx_ring_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %5, align 8
  store %struct.rx_ring_info* %1, %struct.rx_ring_info** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.rx_ring_info*, %struct.rx_ring_info** %6, align 8
  %12 = getelementptr inbounds %struct.rx_ring_info, %struct.rx_ring_info* %11, i32 0, i32 2
  %13 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  store %struct.sk_buff* %13, %struct.sk_buff** %8, align 8
  %14 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %15 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %16 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  %20 = call i32 @pci_map_single(%struct.pci_dev* %14, i32 %17, i32 %18, i32 %19)
  %21 = load %struct.rx_ring_info*, %struct.rx_ring_info** %6, align 8
  %22 = getelementptr inbounds %struct.rx_ring_info, %struct.rx_ring_info* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 8
  %23 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %24 = load %struct.rx_ring_info*, %struct.rx_ring_info** %6, align 8
  %25 = getelementptr inbounds %struct.rx_ring_info, %struct.rx_ring_info* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i64 @pci_dma_mapping_error(%struct.pci_dev* %23, i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %3
  br label %114

30:                                               ; preds = %3
  %31 = load %struct.rx_ring_info*, %struct.rx_ring_info** %6, align 8
  %32 = load i32, i32* @data_size, align 4
  %33 = load i32, i32* %7, align 4
  %34 = call i32 @dma_unmap_len_set(%struct.rx_ring_info* %31, i32 %32, i32 %33)
  store i32 0, i32* %9, align 4
  br label %35

35:                                               ; preds = %76, %30
  %36 = load i32, i32* %9, align 4
  %37 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %38 = call %struct.TYPE_4__* @skb_shinfo(%struct.sk_buff* %37)
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp slt i32 %36, %40
  br i1 %41, label %42, label %79

42:                                               ; preds = %35
  %43 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %44 = call %struct.TYPE_4__* @skb_shinfo(%struct.sk_buff* %43)
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 1
  %46 = load i32*, i32** %45, align 8
  %47 = load i32, i32* %9, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  store i32* %49, i32** %10, align 8
  %50 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %51 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %50, i32 0, i32 0
  %52 = load i32*, i32** %10, align 8
  %53 = load i32*, i32** %10, align 8
  %54 = call i32 @skb_frag_size(i32* %53)
  %55 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %56 = call i32 @skb_frag_dma_map(i32* %51, i32* %52, i32 0, i32 %54, i32 %55)
  %57 = load %struct.rx_ring_info*, %struct.rx_ring_info** %6, align 8
  %58 = getelementptr inbounds %struct.rx_ring_info, %struct.rx_ring_info* %57, i32 0, i32 1
  %59 = load i32*, i32** %58, align 8
  %60 = load i32, i32* %9, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  store i32 %56, i32* %62, align 4
  %63 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %64 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %63, i32 0, i32 0
  %65 = load %struct.rx_ring_info*, %struct.rx_ring_info** %6, align 8
  %66 = getelementptr inbounds %struct.rx_ring_info, %struct.rx_ring_info* %65, i32 0, i32 1
  %67 = load i32*, i32** %66, align 8
  %68 = load i32, i32* %9, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %67, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = call i64 @dma_mapping_error(i32* %64, i32 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %42
  br label %80

75:                                               ; preds = %42
  br label %76

76:                                               ; preds = %75
  %77 = load i32, i32* %9, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %9, align 4
  br label %35

79:                                               ; preds = %35
  store i32 0, i32* %4, align 4
  br label %129

80:                                               ; preds = %74
  br label %81

81:                                               ; preds = %85, %80
  %82 = load i32, i32* %9, align 4
  %83 = add nsw i32 %82, -1
  store i32 %83, i32* %9, align 4
  %84 = icmp sge i32 %83, 0
  br i1 %84, label %85, label %104

85:                                               ; preds = %81
  %86 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %87 = load %struct.rx_ring_info*, %struct.rx_ring_info** %6, align 8
  %88 = getelementptr inbounds %struct.rx_ring_info, %struct.rx_ring_info* %87, i32 0, i32 1
  %89 = load i32*, i32** %88, align 8
  %90 = load i32, i32* %9, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %89, i64 %91
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %95 = call %struct.TYPE_4__* @skb_shinfo(%struct.sk_buff* %94)
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 1
  %97 = load i32*, i32** %96, align 8
  %98 = load i32, i32* %9, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i32, i32* %97, i64 %99
  %101 = call i32 @skb_frag_size(i32* %100)
  %102 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  %103 = call i32 @pci_unmap_page(%struct.pci_dev* %86, i32 %93, i32 %101, i32 %102)
  br label %81

104:                                              ; preds = %81
  %105 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %106 = load %struct.rx_ring_info*, %struct.rx_ring_info** %6, align 8
  %107 = getelementptr inbounds %struct.rx_ring_info, %struct.rx_ring_info* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = load %struct.rx_ring_info*, %struct.rx_ring_info** %6, align 8
  %110 = load i32, i32* @data_size, align 4
  %111 = call i32 @dma_unmap_len(%struct.rx_ring_info* %109, i32 %110)
  %112 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  %113 = call i32 @pci_unmap_single(%struct.pci_dev* %105, i32 %108, i32 %111, i32 %112)
  br label %114

114:                                              ; preds = %104, %29
  %115 = call i64 (...) @net_ratelimit()
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %126

117:                                              ; preds = %114
  %118 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %119 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %118, i32 0, i32 0
  %120 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %121 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %120, i32 0, i32 0
  %122 = load %struct.TYPE_3__*, %struct.TYPE_3__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @dev_warn(i32* %119, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %124)
  br label %126

126:                                              ; preds = %117, %114
  %127 = load i32, i32* @EIO, align 4
  %128 = sub nsw i32 0, %127
  store i32 %128, i32* %4, align 4
  br label %129

129:                                              ; preds = %126, %79
  %130 = load i32, i32* %4, align 4
  ret i32 %130
}

declare dso_local i32 @pci_map_single(%struct.pci_dev*, i32, i32, i32) #1

declare dso_local i64 @pci_dma_mapping_error(%struct.pci_dev*, i32) #1

declare dso_local i32 @dma_unmap_len_set(%struct.rx_ring_info*, i32, i32) #1

declare dso_local %struct.TYPE_4__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i32 @skb_frag_dma_map(i32*, i32*, i32, i32, i32) #1

declare dso_local i32 @skb_frag_size(i32*) #1

declare dso_local i64 @dma_mapping_error(i32*, i32) #1

declare dso_local i32 @pci_unmap_page(%struct.pci_dev*, i32, i32, i32) #1

declare dso_local i32 @pci_unmap_single(%struct.pci_dev*, i32, i32, i32) #1

declare dso_local i32 @dma_unmap_len(%struct.rx_ring_info*, i32) #1

declare dso_local i64 @net_ratelimit(...) #1

declare dso_local i32 @dev_warn(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
