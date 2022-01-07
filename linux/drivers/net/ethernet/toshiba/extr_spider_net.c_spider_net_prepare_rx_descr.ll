; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/toshiba/extr_spider_net.c_spider_net_prepare_rx_descr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/toshiba/extr_spider_net.c_spider_net_prepare_rx_descr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spider_net_card = type { %struct.TYPE_6__, %struct.TYPE_8__*, i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.spider_net_descr = type { %struct.TYPE_7__*, %struct.spider_net_hw_descr* }
%struct.TYPE_7__ = type { i64 }
%struct.spider_net_hw_descr = type { i32, i32, i32, i64, i64, i64, i64 }

@SPIDER_NET_MAX_FRAME = common dso_local global i32 0, align 4
@SPIDER_NET_RXBUF_ALIGN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"Not enough memory to allocate rx buffer\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@PCI_DMA_FROMDEVICE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"Could not iommu-map rx buffer\0A\00", align 1
@SPIDER_NET_DESCR_NOT_IN_USE = common dso_local global i32 0, align 4
@SPIDER_NET_DESCR_CARDOWNED = common dso_local global i32 0, align 4
@SPIDER_NET_DMAC_NOINTR_COMPLETE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spider_net_card*, %struct.spider_net_descr*)* @spider_net_prepare_rx_descr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spider_net_prepare_rx_descr(%struct.spider_net_card* %0, %struct.spider_net_descr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.spider_net_card*, align 8
  %5 = alloca %struct.spider_net_descr*, align 8
  %6 = alloca %struct.spider_net_hw_descr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.spider_net_card* %0, %struct.spider_net_card** %4, align 8
  store %struct.spider_net_descr* %1, %struct.spider_net_descr** %5, align 8
  %10 = load %struct.spider_net_descr*, %struct.spider_net_descr** %5, align 8
  %11 = getelementptr inbounds %struct.spider_net_descr, %struct.spider_net_descr* %10, i32 0, i32 1
  %12 = load %struct.spider_net_hw_descr*, %struct.spider_net_hw_descr** %11, align 8
  store %struct.spider_net_hw_descr* %12, %struct.spider_net_hw_descr** %6, align 8
  %13 = load i32, i32* @SPIDER_NET_MAX_FRAME, align 4
  %14 = load i32, i32* @SPIDER_NET_RXBUF_ALIGN, align 4
  %15 = add nsw i32 %13, %14
  %16 = sub nsw i32 %15, 1
  %17 = load i32, i32* @SPIDER_NET_RXBUF_ALIGN, align 4
  %18 = sub nsw i32 %17, 1
  %19 = xor i32 %18, -1
  %20 = and i32 %16, %19
  store i32 %20, i32* %9, align 4
  %21 = load %struct.spider_net_card*, %struct.spider_net_card** %4, align 8
  %22 = getelementptr inbounds %struct.spider_net_card, %struct.spider_net_card* %21, i32 0, i32 1
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %22, align 8
  %24 = load i32, i32* %9, align 4
  %25 = load i32, i32* @SPIDER_NET_RXBUF_ALIGN, align 4
  %26 = add nsw i32 %24, %25
  %27 = sub nsw i32 %26, 1
  %28 = call %struct.TYPE_7__* @netdev_alloc_skb(%struct.TYPE_8__* %23, i32 %27)
  %29 = load %struct.spider_net_descr*, %struct.spider_net_descr** %5, align 8
  %30 = getelementptr inbounds %struct.spider_net_descr, %struct.spider_net_descr* %29, i32 0, i32 0
  store %struct.TYPE_7__* %28, %struct.TYPE_7__** %30, align 8
  %31 = load %struct.spider_net_descr*, %struct.spider_net_descr** %5, align 8
  %32 = getelementptr inbounds %struct.spider_net_descr, %struct.spider_net_descr* %31, i32 0, i32 0
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %32, align 8
  %34 = icmp ne %struct.TYPE_7__* %33, null
  br i1 %34, label %56, label %35

35:                                               ; preds = %2
  %36 = load %struct.spider_net_card*, %struct.spider_net_card** %4, align 8
  %37 = call i64 @netif_msg_rx_err(%struct.spider_net_card* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %48

39:                                               ; preds = %35
  %40 = call i64 (...) @net_ratelimit()
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %39
  %43 = load %struct.spider_net_card*, %struct.spider_net_card** %4, align 8
  %44 = getelementptr inbounds %struct.spider_net_card, %struct.spider_net_card* %43, i32 0, i32 1
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 0
  %47 = call i32 @dev_err(i32* %46, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  br label %48

48:                                               ; preds = %42, %39, %35
  %49 = load %struct.spider_net_card*, %struct.spider_net_card** %4, align 8
  %50 = getelementptr inbounds %struct.spider_net_card, %struct.spider_net_card* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %51, align 4
  %54 = load i32, i32* @ENOMEM, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %3, align 4
  br label %145

56:                                               ; preds = %2
  %57 = load i32, i32* %9, align 4
  %58 = load %struct.spider_net_hw_descr*, %struct.spider_net_hw_descr** %6, align 8
  %59 = getelementptr inbounds %struct.spider_net_hw_descr, %struct.spider_net_hw_descr* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 8
  %60 = load %struct.spider_net_hw_descr*, %struct.spider_net_hw_descr** %6, align 8
  %61 = getelementptr inbounds %struct.spider_net_hw_descr, %struct.spider_net_hw_descr* %60, i32 0, i32 6
  store i64 0, i64* %61, align 8
  %62 = load %struct.spider_net_hw_descr*, %struct.spider_net_hw_descr** %6, align 8
  %63 = getelementptr inbounds %struct.spider_net_hw_descr, %struct.spider_net_hw_descr* %62, i32 0, i32 5
  store i64 0, i64* %63, align 8
  %64 = load %struct.spider_net_hw_descr*, %struct.spider_net_hw_descr** %6, align 8
  %65 = getelementptr inbounds %struct.spider_net_hw_descr, %struct.spider_net_hw_descr* %64, i32 0, i32 4
  store i64 0, i64* %65, align 8
  %66 = load %struct.spider_net_hw_descr*, %struct.spider_net_hw_descr** %6, align 8
  %67 = getelementptr inbounds %struct.spider_net_hw_descr, %struct.spider_net_hw_descr* %66, i32 0, i32 3
  store i64 0, i64* %67, align 8
  %68 = load %struct.spider_net_descr*, %struct.spider_net_descr** %5, align 8
  %69 = getelementptr inbounds %struct.spider_net_descr, %struct.spider_net_descr* %68, i32 0, i32 0
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i32, i32* @SPIDER_NET_RXBUF_ALIGN, align 4
  %74 = sub nsw i32 %73, 1
  %75 = sext i32 %74 to i64
  %76 = and i64 %72, %75
  %77 = trunc i64 %76 to i32
  store i32 %77, i32* %8, align 4
  %78 = load i32, i32* %8, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %88

80:                                               ; preds = %56
  %81 = load %struct.spider_net_descr*, %struct.spider_net_descr** %5, align 8
  %82 = getelementptr inbounds %struct.spider_net_descr, %struct.spider_net_descr* %81, i32 0, i32 0
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** %82, align 8
  %84 = load i32, i32* @SPIDER_NET_RXBUF_ALIGN, align 4
  %85 = load i32, i32* %8, align 4
  %86 = sub nsw i32 %84, %85
  %87 = call i32 @skb_reserve(%struct.TYPE_7__* %83, i32 %86)
  br label %88

88:                                               ; preds = %80, %56
  %89 = load %struct.spider_net_card*, %struct.spider_net_card** %4, align 8
  %90 = getelementptr inbounds %struct.spider_net_card, %struct.spider_net_card* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 8
  %92 = load %struct.spider_net_descr*, %struct.spider_net_descr** %5, align 8
  %93 = getelementptr inbounds %struct.spider_net_descr, %struct.spider_net_descr* %92, i32 0, i32 0
  %94 = load %struct.TYPE_7__*, %struct.TYPE_7__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = load i32, i32* @SPIDER_NET_MAX_FRAME, align 4
  %98 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  %99 = call i32 @pci_map_single(i32 %91, i64 %96, i32 %97, i32 %98)
  store i32 %99, i32* %7, align 4
  %100 = load %struct.spider_net_card*, %struct.spider_net_card** %4, align 8
  %101 = getelementptr inbounds %struct.spider_net_card, %struct.spider_net_card* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 8
  %103 = load i32, i32* %7, align 4
  %104 = call i64 @pci_dma_mapping_error(i32 %102, i32 %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %134

106:                                              ; preds = %88
  %107 = load %struct.spider_net_descr*, %struct.spider_net_descr** %5, align 8
  %108 = getelementptr inbounds %struct.spider_net_descr, %struct.spider_net_descr* %107, i32 0, i32 0
  %109 = load %struct.TYPE_7__*, %struct.TYPE_7__** %108, align 8
  %110 = call i32 @dev_kfree_skb_any(%struct.TYPE_7__* %109)
  %111 = load %struct.spider_net_descr*, %struct.spider_net_descr** %5, align 8
  %112 = getelementptr inbounds %struct.spider_net_descr, %struct.spider_net_descr* %111, i32 0, i32 0
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %112, align 8
  %113 = load %struct.spider_net_card*, %struct.spider_net_card** %4, align 8
  %114 = call i64 @netif_msg_rx_err(%struct.spider_net_card* %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %125

116:                                              ; preds = %106
  %117 = call i64 (...) @net_ratelimit()
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %125

119:                                              ; preds = %116
  %120 = load %struct.spider_net_card*, %struct.spider_net_card** %4, align 8
  %121 = getelementptr inbounds %struct.spider_net_card, %struct.spider_net_card* %120, i32 0, i32 1
  %122 = load %struct.TYPE_8__*, %struct.TYPE_8__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %122, i32 0, i32 0
  %124 = call i32 @dev_err(i32* %123, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  br label %125

125:                                              ; preds = %119, %116, %106
  %126 = load %struct.spider_net_card*, %struct.spider_net_card** %4, align 8
  %127 = getelementptr inbounds %struct.spider_net_card, %struct.spider_net_card* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %128, align 8
  %131 = load i32, i32* @SPIDER_NET_DESCR_NOT_IN_USE, align 4
  %132 = load %struct.spider_net_hw_descr*, %struct.spider_net_hw_descr** %6, align 8
  %133 = getelementptr inbounds %struct.spider_net_hw_descr, %struct.spider_net_hw_descr* %132, i32 0, i32 1
  store i32 %131, i32* %133, align 4
  br label %144

134:                                              ; preds = %88
  %135 = load i32, i32* %7, align 4
  %136 = load %struct.spider_net_hw_descr*, %struct.spider_net_hw_descr** %6, align 8
  %137 = getelementptr inbounds %struct.spider_net_hw_descr, %struct.spider_net_hw_descr* %136, i32 0, i32 2
  store i32 %135, i32* %137, align 8
  %138 = call i32 (...) @wmb()
  %139 = load i32, i32* @SPIDER_NET_DESCR_CARDOWNED, align 4
  %140 = load i32, i32* @SPIDER_NET_DMAC_NOINTR_COMPLETE, align 4
  %141 = or i32 %139, %140
  %142 = load %struct.spider_net_hw_descr*, %struct.spider_net_hw_descr** %6, align 8
  %143 = getelementptr inbounds %struct.spider_net_hw_descr, %struct.spider_net_hw_descr* %142, i32 0, i32 1
  store i32 %141, i32* %143, align 4
  br label %144

144:                                              ; preds = %134, %125
  store i32 0, i32* %3, align 4
  br label %145

145:                                              ; preds = %144, %48
  %146 = load i32, i32* %3, align 4
  ret i32 %146
}

declare dso_local %struct.TYPE_7__* @netdev_alloc_skb(%struct.TYPE_8__*, i32) #1

declare dso_local i64 @netif_msg_rx_err(%struct.spider_net_card*) #1

declare dso_local i64 @net_ratelimit(...) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @skb_reserve(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @pci_map_single(i32, i64, i32, i32) #1

declare dso_local i64 @pci_dma_mapping_error(i32, i32) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.TYPE_7__*) #1

declare dso_local i32 @wmb(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
