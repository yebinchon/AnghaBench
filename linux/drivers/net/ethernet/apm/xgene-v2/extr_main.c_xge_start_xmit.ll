; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/apm/xgene-v2/extr_main.c_xge_start_xmit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/apm/xgene-v2/extr_main.c_xge_start_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.net_device = type { i32 }
%struct.xge_pdata = type { %struct.xge_desc_ring*, %struct.TYPE_3__* }
%struct.xge_desc_ring = type { i64, %struct.TYPE_4__*, %struct.xge_raw_desc* }
%struct.TYPE_4__ = type { i8*, i32, %struct.sk_buff* }
%struct.xge_raw_desc = type { i8*, i8* }
%struct.TYPE_3__ = type { %struct.device }
%struct.device = type { i32 }

@xge_start_xmit.dma_addr = internal global i32 0, align 4
@NETDEV_TX_BUSY = common dso_local global i32 0, align 4
@XGENE_ENET_STD_MTU = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@NETDEV_TX_OK = common dso_local global i32 0, align 4
@NEXT_DESC_ADDRH = common dso_local global i32 0, align 4
@NEXT_DESC_ADDRL = common dso_local global i32 0, align 4
@PKT_ADDRH = common dso_local global i32 0, align 4
@PKT_ADDRL = common dso_local global i32 0, align 4
@PKT_SIZE = common dso_local global i32 0, align 4
@E = common dso_local global i32 0, align 4
@DMATXCTRL = common dso_local global i32 0, align 4
@XGENE_ENET_NUM_DESC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*)* @xge_start_xmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xge_start_xmit(%struct.sk_buff* %0, %struct.net_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.xge_pdata*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca %struct.xge_desc_ring*, align 8
  %9 = alloca %struct.xge_raw_desc*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  %15 = load %struct.net_device*, %struct.net_device** %5, align 8
  %16 = call %struct.xge_pdata* @netdev_priv(%struct.net_device* %15)
  store %struct.xge_pdata* %16, %struct.xge_pdata** %6, align 8
  %17 = load %struct.xge_pdata*, %struct.xge_pdata** %6, align 8
  %18 = getelementptr inbounds %struct.xge_pdata, %struct.xge_pdata* %17, i32 0, i32 1
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  store %struct.device* %20, %struct.device** %7, align 8
  %21 = load %struct.xge_pdata*, %struct.xge_pdata** %6, align 8
  %22 = getelementptr inbounds %struct.xge_pdata, %struct.xge_pdata* %21, i32 0, i32 0
  %23 = load %struct.xge_desc_ring*, %struct.xge_desc_ring** %22, align 8
  store %struct.xge_desc_ring* %23, %struct.xge_desc_ring** %8, align 8
  %24 = load %struct.xge_desc_ring*, %struct.xge_desc_ring** %8, align 8
  %25 = getelementptr inbounds %struct.xge_desc_ring, %struct.xge_desc_ring* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  store i64 %26, i64* %13, align 8
  %27 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %28 = call i32 @skb_headlen(%struct.sk_buff* %27)
  store i32 %28, i32* %14, align 4
  %29 = load %struct.xge_desc_ring*, %struct.xge_desc_ring** %8, align 8
  %30 = getelementptr inbounds %struct.xge_desc_ring, %struct.xge_desc_ring* %29, i32 0, i32 2
  %31 = load %struct.xge_raw_desc*, %struct.xge_raw_desc** %30, align 8
  %32 = load i64, i64* %13, align 8
  %33 = getelementptr inbounds %struct.xge_raw_desc, %struct.xge_raw_desc* %31, i64 %32
  store %struct.xge_raw_desc* %33, %struct.xge_raw_desc** %9, align 8
  %34 = load %struct.xge_raw_desc*, %struct.xge_raw_desc** %9, align 8
  %35 = call i32 @is_tx_slot_available(%struct.xge_raw_desc* %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %41, label %37

37:                                               ; preds = %2
  %38 = load %struct.net_device*, %struct.net_device** %5, align 8
  %39 = call i32 @netif_stop_queue(%struct.net_device* %38)
  %40 = load i32, i32* @NETDEV_TX_BUSY, align 4
  store i32 %40, i32* %3, align 4
  br label %139

41:                                               ; preds = %2
  %42 = load %struct.device*, %struct.device** %7, align 8
  %43 = load i32, i32* @XGENE_ENET_STD_MTU, align 4
  %44 = load i32, i32* @GFP_ATOMIC, align 4
  %45 = call i8* @dma_alloc_coherent(%struct.device* %42, i32 %43, i32* @xge_start_xmit.dma_addr, i32 %44)
  store i8* %45, i8** %12, align 8
  %46 = load i8*, i8** %12, align 8
  %47 = icmp ne i8* %46, null
  %48 = xor i1 %47, true
  %49 = zext i1 %48 to i32
  %50 = call i64 @unlikely(i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %41
  %53 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %54 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %53)
  %55 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %55, i32* %3, align 4
  br label %139

56:                                               ; preds = %41
  %57 = load i8*, i8** %12, align 8
  %58 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %59 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* %14, align 4
  %62 = call i32 @memcpy(i8* %57, i32 %60, i32 %61)
  %63 = load i32, i32* @NEXT_DESC_ADDRH, align 4
  %64 = load %struct.xge_raw_desc*, %struct.xge_raw_desc** %9, align 8
  %65 = getelementptr inbounds %struct.xge_raw_desc, %struct.xge_raw_desc* %64, i32 0, i32 1
  %66 = load i8*, i8** %65, align 8
  %67 = call i32 @le64_to_cpu(i8* %66)
  %68 = call i32 @GET_BITS(i32 %63, i32 %67)
  store i32 %68, i32* %11, align 4
  %69 = load i32, i32* @NEXT_DESC_ADDRL, align 4
  %70 = load %struct.xge_raw_desc*, %struct.xge_raw_desc** %9, align 8
  %71 = getelementptr inbounds %struct.xge_raw_desc, %struct.xge_raw_desc* %70, i32 0, i32 1
  %72 = load i8*, i8** %71, align 8
  %73 = call i32 @le64_to_cpu(i8* %72)
  %74 = call i32 @GET_BITS(i32 %69, i32 %73)
  store i32 %74, i32* %10, align 4
  %75 = load i32, i32* @NEXT_DESC_ADDRL, align 4
  %76 = load i32, i32* %10, align 4
  %77 = call i32 @SET_BITS(i32 %75, i32 %76)
  %78 = load i32, i32* @NEXT_DESC_ADDRH, align 4
  %79 = load i32, i32* %11, align 4
  %80 = call i32 @SET_BITS(i32 %78, i32 %79)
  %81 = or i32 %77, %80
  %82 = load i32, i32* @PKT_ADDRH, align 4
  %83 = load i32, i32* @xge_start_xmit.dma_addr, align 4
  %84 = call i32 @upper_32_bits(i32 %83)
  %85 = call i32 @SET_BITS(i32 %82, i32 %84)
  %86 = or i32 %81, %85
  %87 = call i8* @cpu_to_le64(i32 %86)
  %88 = load %struct.xge_raw_desc*, %struct.xge_raw_desc** %9, align 8
  %89 = getelementptr inbounds %struct.xge_raw_desc, %struct.xge_raw_desc* %88, i32 0, i32 1
  store i8* %87, i8** %89, align 8
  %90 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %91 = load %struct.xge_desc_ring*, %struct.xge_desc_ring** %8, align 8
  %92 = getelementptr inbounds %struct.xge_desc_ring, %struct.xge_desc_ring* %91, i32 0, i32 1
  %93 = load %struct.TYPE_4__*, %struct.TYPE_4__** %92, align 8
  %94 = load i64, i64* %13, align 8
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i64 %94
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 2
  store %struct.sk_buff* %90, %struct.sk_buff** %96, align 8
  %97 = load i32, i32* @xge_start_xmit.dma_addr, align 4
  %98 = load %struct.xge_desc_ring*, %struct.xge_desc_ring** %8, align 8
  %99 = getelementptr inbounds %struct.xge_desc_ring, %struct.xge_desc_ring* %98, i32 0, i32 1
  %100 = load %struct.TYPE_4__*, %struct.TYPE_4__** %99, align 8
  %101 = load i64, i64* %13, align 8
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i64 %101
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 1
  store i32 %97, i32* %103, align 8
  %104 = load i8*, i8** %12, align 8
  %105 = load %struct.xge_desc_ring*, %struct.xge_desc_ring** %8, align 8
  %106 = getelementptr inbounds %struct.xge_desc_ring, %struct.xge_desc_ring* %105, i32 0, i32 1
  %107 = load %struct.TYPE_4__*, %struct.TYPE_4__** %106, align 8
  %108 = load i64, i64* %13, align 8
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i64 %108
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 0
  store i8* %104, i8** %110, align 8
  %111 = call i32 (...) @dma_wmb()
  %112 = load i32, i32* @PKT_ADDRL, align 4
  %113 = load i32, i32* @xge_start_xmit.dma_addr, align 4
  %114 = call i32 @SET_BITS(i32 %112, i32 %113)
  %115 = load i32, i32* @PKT_SIZE, align 4
  %116 = load i32, i32* %14, align 4
  %117 = call i32 @SET_BITS(i32 %115, i32 %116)
  %118 = or i32 %114, %117
  %119 = load i32, i32* @E, align 4
  %120 = call i32 @SET_BITS(i32 %119, i32 0)
  %121 = or i32 %118, %120
  %122 = call i8* @cpu_to_le64(i32 %121)
  %123 = load %struct.xge_raw_desc*, %struct.xge_raw_desc** %9, align 8
  %124 = getelementptr inbounds %struct.xge_raw_desc, %struct.xge_raw_desc* %123, i32 0, i32 0
  store i8* %122, i8** %124, align 8
  %125 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %126 = call i32 @skb_tx_timestamp(%struct.sk_buff* %125)
  %127 = load %struct.xge_pdata*, %struct.xge_pdata** %6, align 8
  %128 = load i32, i32* @DMATXCTRL, align 4
  %129 = call i32 @xge_wr_csr(%struct.xge_pdata* %127, i32 %128, i32 1)
  %130 = load i64, i64* %13, align 8
  %131 = add i64 %130, 1
  %132 = load i32, i32* @XGENE_ENET_NUM_DESC, align 4
  %133 = sub nsw i32 %132, 1
  %134 = sext i32 %133 to i64
  %135 = and i64 %131, %134
  %136 = load %struct.xge_desc_ring*, %struct.xge_desc_ring** %8, align 8
  %137 = getelementptr inbounds %struct.xge_desc_ring, %struct.xge_desc_ring* %136, i32 0, i32 0
  store i64 %135, i64* %137, align 8
  %138 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %138, i32* %3, align 4
  br label %139

139:                                              ; preds = %56, %52, %37
  %140 = load i32, i32* %3, align 4
  ret i32 %140
}

declare dso_local %struct.xge_pdata* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @skb_headlen(%struct.sk_buff*) #1

declare dso_local i32 @is_tx_slot_available(%struct.xge_raw_desc*) #1

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

declare dso_local i8* @dma_alloc_coherent(%struct.device*, i32, i32*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

declare dso_local i32 @memcpy(i8*, i32, i32) #1

declare dso_local i32 @GET_BITS(i32, i32) #1

declare dso_local i32 @le64_to_cpu(i8*) #1

declare dso_local i8* @cpu_to_le64(i32) #1

declare dso_local i32 @SET_BITS(i32, i32) #1

declare dso_local i32 @upper_32_bits(i32) #1

declare dso_local i32 @dma_wmb(...) #1

declare dso_local i32 @skb_tx_timestamp(%struct.sk_buff*) #1

declare dso_local i32 @xge_wr_csr(%struct.xge_pdata*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
