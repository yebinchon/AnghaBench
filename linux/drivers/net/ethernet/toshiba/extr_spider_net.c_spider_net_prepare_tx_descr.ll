; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/toshiba/extr_spider_net.c_spider_net_prepare_tx_descr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/toshiba/extr_spider_net.c_spider_net_prepare_tx_descr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spider_net_card = type { %struct.TYPE_11__*, i32, %struct.spider_net_descr_chain, %struct.TYPE_7__ }
%struct.TYPE_11__ = type { i32 }
%struct.spider_net_descr_chain = type { i64, i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_7__ = type { i32 }
%struct.sk_buff = type { i64, i32, i32 }
%struct.spider_net_descr = type { i64, i32, %struct.TYPE_10__*, %struct.sk_buff*, %struct.spider_net_hw_descr* }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }
%struct.spider_net_hw_descr = type { i32, i64, i64, i32, i32 }
%struct.TYPE_12__ = type { i32 }

@PCI_DMA_TODEVICE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"could not iommu-map packet (%p, %i). Dropping packet\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@SPIDER_NET_DESCR_CARDOWNED = common dso_local global i32 0, align 4
@SPIDER_NET_DMAC_TXFRMTL = common dso_local global i32 0, align 4
@CHECKSUM_PARTIAL = common dso_local global i64 0, align 8
@SPIDER_NET_DMAC_TCP = common dso_local global i32 0, align 4
@SPIDER_NET_DMAC_UDP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spider_net_card*, %struct.sk_buff*)* @spider_net_prepare_tx_descr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spider_net_prepare_tx_descr(%struct.spider_net_card* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.spider_net_card*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.spider_net_descr_chain*, align 8
  %7 = alloca %struct.spider_net_descr*, align 8
  %8 = alloca %struct.spider_net_hw_descr*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.spider_net_card* %0, %struct.spider_net_card** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %11 = load %struct.spider_net_card*, %struct.spider_net_card** %4, align 8
  %12 = getelementptr inbounds %struct.spider_net_card, %struct.spider_net_card* %11, i32 0, i32 2
  store %struct.spider_net_descr_chain* %12, %struct.spider_net_descr_chain** %6, align 8
  %13 = load %struct.spider_net_card*, %struct.spider_net_card** %4, align 8
  %14 = getelementptr inbounds %struct.spider_net_card, %struct.spider_net_card* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %17 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %20 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @PCI_DMA_TODEVICE, align 4
  %23 = call i32 @pci_map_single(i32 %15, i32 %18, i32 %21, i32 %22)
  store i32 %23, i32* %9, align 4
  %24 = load %struct.spider_net_card*, %struct.spider_net_card** %4, align 8
  %25 = getelementptr inbounds %struct.spider_net_card, %struct.spider_net_card* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* %9, align 4
  %28 = call i64 @pci_dma_mapping_error(i32 %26, i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %57

30:                                               ; preds = %2
  %31 = load %struct.spider_net_card*, %struct.spider_net_card** %4, align 8
  %32 = call i64 @netif_msg_tx_err(%struct.spider_net_card* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %49

34:                                               ; preds = %30
  %35 = call i64 (...) @net_ratelimit()
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %49

37:                                               ; preds = %34
  %38 = load %struct.spider_net_card*, %struct.spider_net_card** %4, align 8
  %39 = getelementptr inbounds %struct.spider_net_card, %struct.spider_net_card* %38, i32 0, i32 0
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 0
  %42 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %43 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %46 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @dev_err(i32* %41, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i32 %44, i32 %47)
  br label %49

49:                                               ; preds = %37, %34, %30
  %50 = load %struct.spider_net_card*, %struct.spider_net_card** %4, align 8
  %51 = getelementptr inbounds %struct.spider_net_card, %struct.spider_net_card* %50, i32 0, i32 3
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %52, align 8
  %55 = load i32, i32* @ENOMEM, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %3, align 4
  br label %163

57:                                               ; preds = %2
  %58 = load %struct.spider_net_descr_chain*, %struct.spider_net_descr_chain** %6, align 8
  %59 = getelementptr inbounds %struct.spider_net_descr_chain, %struct.spider_net_descr_chain* %58, i32 0, i32 1
  %60 = load i64, i64* %10, align 8
  %61 = call i32 @spin_lock_irqsave(i32* %59, i64 %60)
  %62 = load %struct.spider_net_card*, %struct.spider_net_card** %4, align 8
  %63 = getelementptr inbounds %struct.spider_net_card, %struct.spider_net_card* %62, i32 0, i32 2
  %64 = getelementptr inbounds %struct.spider_net_descr_chain, %struct.spider_net_descr_chain* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = inttoptr i64 %65 to %struct.spider_net_descr*
  store %struct.spider_net_descr* %66, %struct.spider_net_descr** %7, align 8
  %67 = load %struct.spider_net_descr*, %struct.spider_net_descr** %7, align 8
  %68 = getelementptr inbounds %struct.spider_net_descr, %struct.spider_net_descr* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.spider_net_descr_chain*, %struct.spider_net_descr_chain** %6, align 8
  %71 = getelementptr inbounds %struct.spider_net_descr_chain, %struct.spider_net_descr_chain* %70, i32 0, i32 2
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = icmp eq i64 %69, %74
  br i1 %75, label %76, label %92

76:                                               ; preds = %57
  %77 = load %struct.spider_net_descr_chain*, %struct.spider_net_descr_chain** %6, align 8
  %78 = getelementptr inbounds %struct.spider_net_descr_chain, %struct.spider_net_descr_chain* %77, i32 0, i32 1
  %79 = load i64, i64* %10, align 8
  %80 = call i32 @spin_unlock_irqrestore(i32* %78, i64 %79)
  %81 = load %struct.spider_net_card*, %struct.spider_net_card** %4, align 8
  %82 = getelementptr inbounds %struct.spider_net_card, %struct.spider_net_card* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* %9, align 4
  %85 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %86 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* @PCI_DMA_TODEVICE, align 4
  %89 = call i32 @pci_unmap_single(i32 %83, i32 %84, i32 %87, i32 %88)
  %90 = load i32, i32* @ENOMEM, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %3, align 4
  br label %163

92:                                               ; preds = %57
  %93 = load %struct.spider_net_descr*, %struct.spider_net_descr** %7, align 8
  %94 = getelementptr inbounds %struct.spider_net_descr, %struct.spider_net_descr* %93, i32 0, i32 4
  %95 = load %struct.spider_net_hw_descr*, %struct.spider_net_hw_descr** %94, align 8
  store %struct.spider_net_hw_descr* %95, %struct.spider_net_hw_descr** %8, align 8
  %96 = load %struct.spider_net_descr*, %struct.spider_net_descr** %7, align 8
  %97 = getelementptr inbounds %struct.spider_net_descr, %struct.spider_net_descr* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = load %struct.spider_net_descr_chain*, %struct.spider_net_descr_chain** %6, align 8
  %100 = getelementptr inbounds %struct.spider_net_descr_chain, %struct.spider_net_descr_chain* %99, i32 0, i32 0
  store i64 %98, i64* %100, align 8
  %101 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %102 = load %struct.spider_net_descr*, %struct.spider_net_descr** %7, align 8
  %103 = getelementptr inbounds %struct.spider_net_descr, %struct.spider_net_descr* %102, i32 0, i32 3
  store %struct.sk_buff* %101, %struct.sk_buff** %103, align 8
  %104 = load i32, i32* %9, align 4
  %105 = load %struct.spider_net_hw_descr*, %struct.spider_net_hw_descr** %8, align 8
  %106 = getelementptr inbounds %struct.spider_net_hw_descr, %struct.spider_net_hw_descr* %105, i32 0, i32 4
  store i32 %104, i32* %106, align 4
  %107 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %108 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 8
  %110 = load %struct.spider_net_hw_descr*, %struct.spider_net_hw_descr** %8, align 8
  %111 = getelementptr inbounds %struct.spider_net_hw_descr, %struct.spider_net_hw_descr* %110, i32 0, i32 3
  store i32 %109, i32* %111, align 8
  %112 = load %struct.spider_net_hw_descr*, %struct.spider_net_hw_descr** %8, align 8
  %113 = getelementptr inbounds %struct.spider_net_hw_descr, %struct.spider_net_hw_descr* %112, i32 0, i32 2
  store i64 0, i64* %113, align 8
  %114 = load %struct.spider_net_hw_descr*, %struct.spider_net_hw_descr** %8, align 8
  %115 = getelementptr inbounds %struct.spider_net_hw_descr, %struct.spider_net_hw_descr* %114, i32 0, i32 1
  store i64 0, i64* %115, align 8
  %116 = load i32, i32* @SPIDER_NET_DESCR_CARDOWNED, align 4
  %117 = load i32, i32* @SPIDER_NET_DMAC_TXFRMTL, align 4
  %118 = or i32 %116, %117
  %119 = load %struct.spider_net_hw_descr*, %struct.spider_net_hw_descr** %8, align 8
  %120 = getelementptr inbounds %struct.spider_net_hw_descr, %struct.spider_net_hw_descr* %119, i32 0, i32 0
  store i32 %118, i32* %120, align 8
  %121 = load %struct.spider_net_descr_chain*, %struct.spider_net_descr_chain** %6, align 8
  %122 = getelementptr inbounds %struct.spider_net_descr_chain, %struct.spider_net_descr_chain* %121, i32 0, i32 1
  %123 = load i64, i64* %10, align 8
  %124 = call i32 @spin_unlock_irqrestore(i32* %122, i64 %123)
  %125 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %126 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = load i64, i64* @CHECKSUM_PARTIAL, align 8
  %129 = icmp eq i64 %127, %128
  br i1 %129, label %130, label %148

130:                                              ; preds = %92
  %131 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %132 = call %struct.TYPE_12__* @ip_hdr(%struct.sk_buff* %131)
  %133 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  switch i32 %134, label %147 [
    i32 129, label %135
    i32 128, label %141
  ]

135:                                              ; preds = %130
  %136 = load i32, i32* @SPIDER_NET_DMAC_TCP, align 4
  %137 = load %struct.spider_net_hw_descr*, %struct.spider_net_hw_descr** %8, align 8
  %138 = getelementptr inbounds %struct.spider_net_hw_descr, %struct.spider_net_hw_descr* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = or i32 %139, %136
  store i32 %140, i32* %138, align 8
  br label %147

141:                                              ; preds = %130
  %142 = load i32, i32* @SPIDER_NET_DMAC_UDP, align 4
  %143 = load %struct.spider_net_hw_descr*, %struct.spider_net_hw_descr** %8, align 8
  %144 = getelementptr inbounds %struct.spider_net_hw_descr, %struct.spider_net_hw_descr* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = or i32 %145, %142
  store i32 %146, i32* %144, align 8
  br label %147

147:                                              ; preds = %130, %141, %135
  br label %148

148:                                              ; preds = %147, %92
  %149 = call i32 (...) @wmb()
  %150 = load %struct.spider_net_descr*, %struct.spider_net_descr** %7, align 8
  %151 = getelementptr inbounds %struct.spider_net_descr, %struct.spider_net_descr* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 8
  %153 = load %struct.spider_net_descr*, %struct.spider_net_descr** %7, align 8
  %154 = getelementptr inbounds %struct.spider_net_descr, %struct.spider_net_descr* %153, i32 0, i32 2
  %155 = load %struct.TYPE_10__*, %struct.TYPE_10__** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %155, i32 0, i32 0
  %157 = load %struct.TYPE_9__*, %struct.TYPE_9__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %157, i32 0, i32 0
  store i32 %152, i32* %158, align 4
  %159 = load %struct.spider_net_card*, %struct.spider_net_card** %4, align 8
  %160 = getelementptr inbounds %struct.spider_net_card, %struct.spider_net_card* %159, i32 0, i32 0
  %161 = load %struct.TYPE_11__*, %struct.TYPE_11__** %160, align 8
  %162 = call i32 @netif_trans_update(%struct.TYPE_11__* %161)
  store i32 0, i32* %3, align 4
  br label %163

163:                                              ; preds = %148, %76, %49
  %164 = load i32, i32* %3, align 4
  ret i32 %164
}

declare dso_local i32 @pci_map_single(i32, i32, i32, i32) #1

declare dso_local i64 @pci_dma_mapping_error(i32, i32) #1

declare dso_local i64 @netif_msg_tx_err(%struct.spider_net_card*) #1

declare dso_local i64 @net_ratelimit(...) #1

declare dso_local i32 @dev_err(i32*, i8*, i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @pci_unmap_single(i32, i32, i32, i32) #1

declare dso_local %struct.TYPE_12__* @ip_hdr(%struct.sk_buff*) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @netif_trans_update(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
