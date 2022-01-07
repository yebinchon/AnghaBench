; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/apm/xgene-v2/extr_main.c_xge_txc_poll.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/apm/xgene-v2/extr_main.c_xge_txc_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.xge_pdata = type { %struct.TYPE_6__, %struct.xge_desc_ring*, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { i32, i32 }
%struct.xge_desc_ring = type { i64, %struct.TYPE_5__*, %struct.xge_raw_desc* }
%struct.TYPE_5__ = type { i8*, i32, %struct.sk_buff* }
%struct.sk_buff = type { i64 }
%struct.xge_raw_desc = type { i32 }
%struct.TYPE_4__ = type { %struct.device }
%struct.device = type { i32 }

@DMATXSTATUS = common dso_local global i32 0, align 4
@TXPKTCOUNT = common dso_local global i32 0, align 4
@XGENE_ENET_STD_MTU = common dso_local global i32 0, align 4
@E = common dso_local global i32 0, align 4
@PKT_SIZE = common dso_local global i32 0, align 4
@SLOT_EMPTY = common dso_local global i32 0, align 4
@XGENE_ENET_NUM_DESC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @xge_txc_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xge_txc_poll(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.xge_pdata*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.xge_desc_ring*, align 8
  %6 = alloca %struct.xge_raw_desc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %12 = load %struct.net_device*, %struct.net_device** %2, align 8
  %13 = call %struct.xge_pdata* @netdev_priv(%struct.net_device* %12)
  store %struct.xge_pdata* %13, %struct.xge_pdata** %3, align 8
  %14 = load %struct.xge_pdata*, %struct.xge_pdata** %3, align 8
  %15 = getelementptr inbounds %struct.xge_pdata, %struct.xge_pdata* %14, i32 0, i32 2
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  store %struct.device* %17, %struct.device** %4, align 8
  %18 = load %struct.xge_pdata*, %struct.xge_pdata** %3, align 8
  %19 = getelementptr inbounds %struct.xge_pdata, %struct.xge_pdata* %18, i32 0, i32 1
  %20 = load %struct.xge_desc_ring*, %struct.xge_desc_ring** %19, align 8
  store %struct.xge_desc_ring* %20, %struct.xge_desc_ring** %5, align 8
  %21 = load %struct.xge_desc_ring*, %struct.xge_desc_ring** %5, align 8
  %22 = getelementptr inbounds %struct.xge_desc_ring, %struct.xge_desc_ring* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* %11, align 8
  %24 = load %struct.xge_pdata*, %struct.xge_pdata** %3, align 8
  %25 = load i32, i32* @DMATXSTATUS, align 4
  %26 = call i32 @xge_rd_csr(%struct.xge_pdata* %24, i32 %25)
  store i32 %26, i32* %10, align 4
  %27 = load i32, i32* @TXPKTCOUNT, align 4
  %28 = load i32, i32* %10, align 4
  %29 = call i32 @GET_BITS(i32 %27, i32 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %1
  br label %117

32:                                               ; preds = %1
  br label %33

33:                                               ; preds = %32, %43
  %34 = load %struct.xge_desc_ring*, %struct.xge_desc_ring** %5, align 8
  %35 = getelementptr inbounds %struct.xge_desc_ring, %struct.xge_desc_ring* %34, i32 0, i32 2
  %36 = load %struct.xge_raw_desc*, %struct.xge_raw_desc** %35, align 8
  %37 = load i64, i64* %11, align 8
  %38 = getelementptr inbounds %struct.xge_raw_desc, %struct.xge_raw_desc* %36, i64 %37
  store %struct.xge_raw_desc* %38, %struct.xge_raw_desc** %6, align 8
  %39 = load %struct.xge_raw_desc*, %struct.xge_raw_desc** %6, align 8
  %40 = call i32 @is_tx_hw_done(%struct.xge_raw_desc* %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %33
  br label %106

43:                                               ; preds = %33
  %44 = call i32 (...) @dma_rmb()
  %45 = load %struct.xge_desc_ring*, %struct.xge_desc_ring** %5, align 8
  %46 = getelementptr inbounds %struct.xge_desc_ring, %struct.xge_desc_ring* %45, i32 0, i32 1
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %46, align 8
  %48 = load i64, i64* %11, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 2
  %51 = load %struct.sk_buff*, %struct.sk_buff** %50, align 8
  store %struct.sk_buff* %51, %struct.sk_buff** %8, align 8
  %52 = load %struct.xge_desc_ring*, %struct.xge_desc_ring** %5, align 8
  %53 = getelementptr inbounds %struct.xge_desc_ring, %struct.xge_desc_ring* %52, i32 0, i32 1
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %53, align 8
  %55 = load i64, i64* %11, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  store i32 %58, i32* %7, align 4
  %59 = load %struct.xge_desc_ring*, %struct.xge_desc_ring** %5, align 8
  %60 = getelementptr inbounds %struct.xge_desc_ring, %struct.xge_desc_ring* %59, i32 0, i32 1
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %60, align 8
  %62 = load i64, i64* %11, align 8
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 0
  %65 = load i8*, i8** %64, align 8
  store i8* %65, i8** %9, align 8
  %66 = load %struct.xge_pdata*, %struct.xge_pdata** %3, align 8
  %67 = getelementptr inbounds %struct.xge_pdata, %struct.xge_pdata* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %68, align 4
  %71 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %72 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load %struct.xge_pdata*, %struct.xge_pdata** %3, align 8
  %75 = getelementptr inbounds %struct.xge_pdata, %struct.xge_pdata* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = sext i32 %77 to i64
  %79 = add nsw i64 %78, %73
  %80 = trunc i64 %79 to i32
  store i32 %80, i32* %76, align 8
  %81 = load %struct.device*, %struct.device** %4, align 8
  %82 = load i32, i32* @XGENE_ENET_STD_MTU, align 4
  %83 = load i8*, i8** %9, align 8
  %84 = load i32, i32* %7, align 4
  %85 = call i32 @dma_free_coherent(%struct.device* %81, i32 %82, i8* %83, i32 %84)
  %86 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %87 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %86)
  %88 = load i32, i32* @E, align 4
  %89 = call i32 @SET_BITS(i32 %88, i32 1)
  %90 = load i32, i32* @PKT_SIZE, align 4
  %91 = load i32, i32* @SLOT_EMPTY, align 4
  %92 = call i32 @SET_BITS(i32 %90, i32 %91)
  %93 = or i32 %89, %92
  %94 = call i32 @cpu_to_le64(i32 %93)
  %95 = load %struct.xge_raw_desc*, %struct.xge_raw_desc** %6, align 8
  %96 = getelementptr inbounds %struct.xge_raw_desc, %struct.xge_raw_desc* %95, i32 0, i32 0
  store i32 %94, i32* %96, align 4
  %97 = load %struct.xge_pdata*, %struct.xge_pdata** %3, align 8
  %98 = load i32, i32* @DMATXSTATUS, align 4
  %99 = call i32 @xge_wr_csr(%struct.xge_pdata* %97, i32 %98, i32 1)
  %100 = load i64, i64* %11, align 8
  %101 = add i64 %100, 1
  %102 = load i32, i32* @XGENE_ENET_NUM_DESC, align 4
  %103 = sub nsw i32 %102, 1
  %104 = sext i32 %103 to i64
  %105 = and i64 %101, %104
  store i64 %105, i64* %11, align 8
  br label %33

106:                                              ; preds = %42
  %107 = load %struct.net_device*, %struct.net_device** %2, align 8
  %108 = call i64 @netif_queue_stopped(%struct.net_device* %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %113

110:                                              ; preds = %106
  %111 = load %struct.net_device*, %struct.net_device** %2, align 8
  %112 = call i32 @netif_wake_queue(%struct.net_device* %111)
  br label %113

113:                                              ; preds = %110, %106
  %114 = load i64, i64* %11, align 8
  %115 = load %struct.xge_desc_ring*, %struct.xge_desc_ring** %5, align 8
  %116 = getelementptr inbounds %struct.xge_desc_ring, %struct.xge_desc_ring* %115, i32 0, i32 0
  store i64 %114, i64* %116, align 8
  br label %117

117:                                              ; preds = %113, %31
  ret void
}

declare dso_local %struct.xge_pdata* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @xge_rd_csr(%struct.xge_pdata*, i32) #1

declare dso_local i32 @GET_BITS(i32, i32) #1

declare dso_local i32 @is_tx_hw_done(%struct.xge_raw_desc*) #1

declare dso_local i32 @dma_rmb(...) #1

declare dso_local i32 @dma_free_coherent(%struct.device*, i32, i8*, i32) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

declare dso_local i32 @cpu_to_le64(i32) #1

declare dso_local i32 @SET_BITS(i32, i32) #1

declare dso_local i32 @xge_wr_csr(%struct.xge_pdata*, i32, i32) #1

declare dso_local i64 @netif_queue_stopped(%struct.net_device*) #1

declare dso_local i32 @netif_wake_queue(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
