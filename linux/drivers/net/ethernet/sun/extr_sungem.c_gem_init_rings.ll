; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_sungem.c_gem_init_rings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_sungem.c_gem_init_rings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gem = type { i32, i64, %struct.sk_buff**, i64, i64, i64, i64, %struct.net_device*, %struct.gem_init_block* }
%struct.sk_buff = type { i32 }
%struct.net_device = type { i64 }
%struct.gem_init_block = type { %struct.gem_txd*, %struct.gem_rxd* }
%struct.gem_txd = type { i64, i64 }
%struct.gem_rxd = type { i8*, i8* }

@ETH_HLEN = common dso_local global i64 0, align 8
@VLAN_HLEN = common dso_local global i64 0, align 8
@VLAN_ETH_FRAME_LEN = common dso_local global i64 0, align 8
@RX_RING_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@RX_OFFSET = common dso_local global i64 0, align 8
@PCI_DMA_FROMDEVICE = common dso_local global i32 0, align 4
@TX_RING_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gem*)* @gem_init_rings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gem_init_rings(%struct.gem* %0) #0 {
  %2 = alloca %struct.gem*, align 8
  %3 = alloca %struct.gem_init_block*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.gem_rxd*, align 8
  %9 = alloca %struct.gem_txd*, align 8
  store %struct.gem* %0, %struct.gem** %2, align 8
  %10 = load %struct.gem*, %struct.gem** %2, align 8
  %11 = getelementptr inbounds %struct.gem, %struct.gem* %10, i32 0, i32 8
  %12 = load %struct.gem_init_block*, %struct.gem_init_block** %11, align 8
  store %struct.gem_init_block* %12, %struct.gem_init_block** %3, align 8
  %13 = load %struct.gem*, %struct.gem** %2, align 8
  %14 = getelementptr inbounds %struct.gem, %struct.gem* %13, i32 0, i32 7
  %15 = load %struct.net_device*, %struct.net_device** %14, align 8
  store %struct.net_device* %15, %struct.net_device** %4, align 8
  %16 = load %struct.gem*, %struct.gem** %2, align 8
  %17 = getelementptr inbounds %struct.gem, %struct.gem* %16, i32 0, i32 3
  store i64 0, i64* %17, align 8
  %18 = load %struct.gem*, %struct.gem** %2, align 8
  %19 = getelementptr inbounds %struct.gem, %struct.gem* %18, i32 0, i32 4
  store i64 0, i64* %19, align 8
  %20 = load %struct.gem*, %struct.gem** %2, align 8
  %21 = getelementptr inbounds %struct.gem, %struct.gem* %20, i32 0, i32 5
  store i64 0, i64* %21, align 8
  %22 = load %struct.gem*, %struct.gem** %2, align 8
  %23 = getelementptr inbounds %struct.gem, %struct.gem* %22, i32 0, i32 6
  store i64 0, i64* %23, align 8
  %24 = load %struct.gem*, %struct.gem** %2, align 8
  %25 = call i32 @gem_clean_rings(%struct.gem* %24)
  %26 = load %struct.net_device*, %struct.net_device** %4, align 8
  %27 = getelementptr inbounds %struct.net_device, %struct.net_device* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @ETH_HLEN, align 8
  %30 = add nsw i64 %28, %29
  %31 = load i64, i64* @VLAN_HLEN, align 8
  %32 = add nsw i64 %30, %31
  %33 = load i64, i64* @VLAN_ETH_FRAME_LEN, align 8
  %34 = trunc i64 %33 to i32
  %35 = call i64 @max(i64 %32, i32 %34)
  %36 = load %struct.gem*, %struct.gem** %2, align 8
  %37 = getelementptr inbounds %struct.gem, %struct.gem* %36, i32 0, i32 1
  store i64 %35, i64* %37, align 8
  store i32 0, i32* %5, align 4
  br label %38

38:                                               ; preds = %104, %1
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* @RX_RING_SIZE, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %107

42:                                               ; preds = %38
  %43 = load %struct.gem_init_block*, %struct.gem_init_block** %3, align 8
  %44 = getelementptr inbounds %struct.gem_init_block, %struct.gem_init_block* %43, i32 0, i32 1
  %45 = load %struct.gem_rxd*, %struct.gem_rxd** %44, align 8
  %46 = load i32, i32* %5, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.gem_rxd, %struct.gem_rxd* %45, i64 %47
  store %struct.gem_rxd* %48, %struct.gem_rxd** %8, align 8
  %49 = load %struct.net_device*, %struct.net_device** %4, align 8
  %50 = load %struct.gem*, %struct.gem** %2, align 8
  %51 = call i32 @RX_BUF_ALLOC_SIZE(%struct.gem* %50)
  %52 = load i32, i32* @GFP_KERNEL, align 4
  %53 = call %struct.sk_buff* @gem_alloc_skb(%struct.net_device* %49, i32 %51, i32 %52)
  store %struct.sk_buff* %53, %struct.sk_buff** %7, align 8
  %54 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %55 = icmp ne %struct.sk_buff* %54, null
  br i1 %55, label %61, label %56

56:                                               ; preds = %42
  %57 = load %struct.gem_rxd*, %struct.gem_rxd** %8, align 8
  %58 = getelementptr inbounds %struct.gem_rxd, %struct.gem_rxd* %57, i32 0, i32 1
  store i8* null, i8** %58, align 8
  %59 = load %struct.gem_rxd*, %struct.gem_rxd** %8, align 8
  %60 = getelementptr inbounds %struct.gem_rxd, %struct.gem_rxd* %59, i32 0, i32 0
  store i8* null, i8** %60, align 8
  br label %104

61:                                               ; preds = %42
  %62 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %63 = load %struct.gem*, %struct.gem** %2, align 8
  %64 = getelementptr inbounds %struct.gem, %struct.gem* %63, i32 0, i32 2
  %65 = load %struct.sk_buff**, %struct.sk_buff*** %64, align 8
  %66 = load i32, i32* %5, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %65, i64 %67
  store %struct.sk_buff* %62, %struct.sk_buff** %68, align 8
  %69 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %70 = load %struct.gem*, %struct.gem** %2, align 8
  %71 = getelementptr inbounds %struct.gem, %struct.gem* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @RX_OFFSET, align 8
  %74 = add nsw i64 %72, %73
  %75 = call i32 @skb_put(%struct.sk_buff* %69, i64 %74)
  %76 = load %struct.gem*, %struct.gem** %2, align 8
  %77 = getelementptr inbounds %struct.gem, %struct.gem* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %80 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @virt_to_page(i32 %81)
  %83 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %84 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @offset_in_page(i32 %85)
  %87 = load %struct.gem*, %struct.gem** %2, align 8
  %88 = call i32 @RX_BUF_ALLOC_SIZE(%struct.gem* %87)
  %89 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  %90 = call i32 @pci_map_page(i32 %78, i32 %82, i32 %86, i32 %88, i32 %89)
  store i32 %90, i32* %6, align 4
  %91 = load i32, i32* %6, align 4
  %92 = call i8* @cpu_to_le64(i32 %91)
  %93 = load %struct.gem_rxd*, %struct.gem_rxd** %8, align 8
  %94 = getelementptr inbounds %struct.gem_rxd, %struct.gem_rxd* %93, i32 0, i32 1
  store i8* %92, i8** %94, align 8
  %95 = call i32 (...) @dma_wmb()
  %96 = load %struct.gem*, %struct.gem** %2, align 8
  %97 = call i32 @RXDCTRL_FRESH(%struct.gem* %96)
  %98 = call i8* @cpu_to_le64(i32 %97)
  %99 = load %struct.gem_rxd*, %struct.gem_rxd** %8, align 8
  %100 = getelementptr inbounds %struct.gem_rxd, %struct.gem_rxd* %99, i32 0, i32 0
  store i8* %98, i8** %100, align 8
  %101 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %102 = load i64, i64* @RX_OFFSET, align 8
  %103 = call i32 @skb_reserve(%struct.sk_buff* %101, i64 %102)
  br label %104

104:                                              ; preds = %61, %56
  %105 = load i32, i32* %5, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %5, align 4
  br label %38

107:                                              ; preds = %38
  store i32 0, i32* %5, align 4
  br label %108

108:                                              ; preds = %124, %107
  %109 = load i32, i32* %5, align 4
  %110 = load i32, i32* @TX_RING_SIZE, align 4
  %111 = icmp slt i32 %109, %110
  br i1 %111, label %112, label %127

112:                                              ; preds = %108
  %113 = load %struct.gem_init_block*, %struct.gem_init_block** %3, align 8
  %114 = getelementptr inbounds %struct.gem_init_block, %struct.gem_init_block* %113, i32 0, i32 0
  %115 = load %struct.gem_txd*, %struct.gem_txd** %114, align 8
  %116 = load i32, i32* %5, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds %struct.gem_txd, %struct.gem_txd* %115, i64 %117
  store %struct.gem_txd* %118, %struct.gem_txd** %9, align 8
  %119 = load %struct.gem_txd*, %struct.gem_txd** %9, align 8
  %120 = getelementptr inbounds %struct.gem_txd, %struct.gem_txd* %119, i32 0, i32 1
  store i64 0, i64* %120, align 8
  %121 = call i32 (...) @dma_wmb()
  %122 = load %struct.gem_txd*, %struct.gem_txd** %9, align 8
  %123 = getelementptr inbounds %struct.gem_txd, %struct.gem_txd* %122, i32 0, i32 0
  store i64 0, i64* %123, align 8
  br label %124

124:                                              ; preds = %112
  %125 = load i32, i32* %5, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %5, align 4
  br label %108

127:                                              ; preds = %108
  %128 = call i32 (...) @wmb()
  ret void
}

declare dso_local i32 @gem_clean_rings(%struct.gem*) #1

declare dso_local i64 @max(i64, i32) #1

declare dso_local %struct.sk_buff* @gem_alloc_skb(%struct.net_device*, i32, i32) #1

declare dso_local i32 @RX_BUF_ALLOC_SIZE(%struct.gem*) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i64) #1

declare dso_local i32 @pci_map_page(i32, i32, i32, i32, i32) #1

declare dso_local i32 @virt_to_page(i32) #1

declare dso_local i32 @offset_in_page(i32) #1

declare dso_local i8* @cpu_to_le64(i32) #1

declare dso_local i32 @dma_wmb(...) #1

declare dso_local i32 @RXDCTRL_FRESH(%struct.gem*) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i64) #1

declare dso_local i32 @wmb(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
