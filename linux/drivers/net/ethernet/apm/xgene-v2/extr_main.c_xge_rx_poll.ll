; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/apm/xgene-v2/extr_main.c_xge_rx_poll.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/apm/xgene-v2/extr_main.c_xge_rx_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.xge_pdata = type { i32, %struct.TYPE_6__, %struct.xge_desc_ring*, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.xge_desc_ring = type { i64, %struct.TYPE_5__*, %struct.xge_raw_desc* }
%struct.TYPE_5__ = type { i32, %struct.sk_buff* }
%struct.sk_buff = type { i32 }
%struct.xge_raw_desc = type { i32, i32 }
%struct.TYPE_4__ = type { %struct.device }
%struct.device = type { i32 }

@DMARXSTATUS = common dso_local global i32 0, align 4
@RXPKTCOUNT = common dso_local global i32 0, align 4
@E = common dso_local global i32 0, align 4
@PKT_SIZE = common dso_local global i32 0, align 4
@XGENE_ENET_STD_MTU = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@D = common dso_local global i32 0, align 4
@DMARXCTRL = common dso_local global i32 0, align 4
@XGENE_ENET_NUM_DESC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32)* @xge_rx_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xge_rx_poll(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.xge_pdata*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca %struct.xge_desc_ring*, align 8
  %9 = alloca %struct.xge_raw_desc*, align 8
  %10 = alloca %struct.sk_buff*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %19 = load %struct.net_device*, %struct.net_device** %4, align 8
  %20 = call %struct.xge_pdata* @netdev_priv(%struct.net_device* %19)
  store %struct.xge_pdata* %20, %struct.xge_pdata** %6, align 8
  %21 = load %struct.xge_pdata*, %struct.xge_pdata** %6, align 8
  %22 = getelementptr inbounds %struct.xge_pdata, %struct.xge_pdata* %21, i32 0, i32 3
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  store %struct.device* %24, %struct.device** %7, align 8
  store i32 0, i32* %12, align 4
  %25 = load %struct.xge_pdata*, %struct.xge_pdata** %6, align 8
  %26 = getelementptr inbounds %struct.xge_pdata, %struct.xge_pdata* %25, i32 0, i32 2
  %27 = load %struct.xge_desc_ring*, %struct.xge_desc_ring** %26, align 8
  store %struct.xge_desc_ring* %27, %struct.xge_desc_ring** %8, align 8
  %28 = load %struct.xge_desc_ring*, %struct.xge_desc_ring** %8, align 8
  %29 = getelementptr inbounds %struct.xge_desc_ring, %struct.xge_desc_ring* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  store i64 %30, i64* %13, align 8
  %31 = load %struct.xge_pdata*, %struct.xge_pdata** %6, align 8
  %32 = load i32, i32* @DMARXSTATUS, align 4
  %33 = call i32 @xge_rd_csr(%struct.xge_pdata* %31, i32 %32)
  store i32 %33, i32* %17, align 4
  %34 = load i32, i32* @RXPKTCOUNT, align 4
  %35 = load i32, i32* %17, align 4
  %36 = call i8* @GET_BITS(i32 %34, i32 %35)
  %37 = icmp ne i8* %36, null
  br i1 %37, label %39, label %38

38:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %164

39:                                               ; preds = %2
  store i32 0, i32* %15, align 4
  br label %40

40:                                               ; preds = %156, %39
  %41 = load i32, i32* %15, align 4
  %42 = load i32, i32* %5, align 4
  %43 = icmp ult i32 %41, %42
  br i1 %43, label %44, label %159

44:                                               ; preds = %40
  %45 = load %struct.xge_desc_ring*, %struct.xge_desc_ring** %8, align 8
  %46 = getelementptr inbounds %struct.xge_desc_ring, %struct.xge_desc_ring* %45, i32 0, i32 2
  %47 = load %struct.xge_raw_desc*, %struct.xge_raw_desc** %46, align 8
  %48 = load i64, i64* %13, align 8
  %49 = getelementptr inbounds %struct.xge_raw_desc, %struct.xge_raw_desc* %47, i64 %48
  store %struct.xge_raw_desc* %49, %struct.xge_raw_desc** %9, align 8
  %50 = load i32, i32* @E, align 4
  %51 = load %struct.xge_raw_desc*, %struct.xge_raw_desc** %9, align 8
  %52 = getelementptr inbounds %struct.xge_raw_desc, %struct.xge_raw_desc* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @le64_to_cpu(i32 %53)
  %55 = call i8* @GET_BITS(i32 %50, i32 %54)
  %56 = icmp ne i8* %55, null
  br i1 %56, label %57, label %58

57:                                               ; preds = %44
  br label %159

58:                                               ; preds = %44
  %59 = call i32 (...) @dma_rmb()
  %60 = load %struct.xge_desc_ring*, %struct.xge_desc_ring** %8, align 8
  %61 = getelementptr inbounds %struct.xge_desc_ring, %struct.xge_desc_ring* %60, i32 0, i32 1
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %61, align 8
  %63 = load i64, i64* %13, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 1
  %66 = load %struct.sk_buff*, %struct.sk_buff** %65, align 8
  store %struct.sk_buff* %66, %struct.sk_buff** %10, align 8
  %67 = load %struct.xge_desc_ring*, %struct.xge_desc_ring** %8, align 8
  %68 = getelementptr inbounds %struct.xge_desc_ring, %struct.xge_desc_ring* %67, i32 0, i32 1
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %68, align 8
  %70 = load i64, i64* %13, align 8
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 1
  store %struct.sk_buff* null, %struct.sk_buff** %72, align 8
  %73 = load %struct.xge_desc_ring*, %struct.xge_desc_ring** %8, align 8
  %74 = getelementptr inbounds %struct.xge_desc_ring, %struct.xge_desc_ring* %73, i32 0, i32 1
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %74, align 8
  %76 = load i64, i64* %13, align 8
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  store i32 %79, i32* %11, align 4
  %80 = load i32, i32* @PKT_SIZE, align 4
  %81 = load %struct.xge_raw_desc*, %struct.xge_raw_desc** %9, align 8
  %82 = getelementptr inbounds %struct.xge_raw_desc, %struct.xge_raw_desc* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @le64_to_cpu(i32 %83)
  %85 = call i8* @GET_BITS(i32 %80, i32 %84)
  store i8* %85, i8** %18, align 8
  %86 = load %struct.device*, %struct.device** %7, align 8
  %87 = load i32, i32* %11, align 4
  %88 = load i32, i32* @XGENE_ENET_STD_MTU, align 4
  %89 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %90 = call i32 @dma_unmap_single(%struct.device* %86, i32 %87, i32 %88, i32 %89)
  %91 = load i32, i32* @D, align 4
  %92 = load %struct.xge_raw_desc*, %struct.xge_raw_desc** %9, align 8
  %93 = getelementptr inbounds %struct.xge_raw_desc, %struct.xge_raw_desc* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @le64_to_cpu(i32 %94)
  %96 = call i8* @GET_BITS(i32 %91, i32 %95)
  %97 = ptrtoint i8* %96 to i64
  store i64 %97, i64* %14, align 8
  %98 = load i64, i64* %14, align 8
  %99 = call i64 @unlikely(i64 %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %109

101:                                              ; preds = %58
  %102 = load %struct.xge_pdata*, %struct.xge_pdata** %6, align 8
  %103 = getelementptr inbounds %struct.xge_pdata, %struct.xge_pdata* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %104, align 4
  %107 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %108 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %107)
  br label %135

109:                                              ; preds = %58
  %110 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %111 = load i8*, i8** %18, align 8
  %112 = call i32 @skb_put(%struct.sk_buff* %110, i8* %111)
  %113 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %114 = load %struct.net_device*, %struct.net_device** %4, align 8
  %115 = call i32 @eth_type_trans(%struct.sk_buff* %113, %struct.net_device* %114)
  %116 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %117 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %116, i32 0, i32 0
  store i32 %115, i32* %117, align 4
  %118 = load %struct.xge_pdata*, %struct.xge_pdata** %6, align 8
  %119 = getelementptr inbounds %struct.xge_pdata, %struct.xge_pdata* %118, i32 0, i32 1
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %120, align 4
  %123 = load i8*, i8** %18, align 8
  %124 = load %struct.xge_pdata*, %struct.xge_pdata** %6, align 8
  %125 = getelementptr inbounds %struct.xge_pdata, %struct.xge_pdata* %124, i32 0, i32 1
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr i8, i8* %123, i64 %128
  %130 = ptrtoint i8* %129 to i32
  store i32 %130, i32* %126, align 4
  %131 = load %struct.xge_pdata*, %struct.xge_pdata** %6, align 8
  %132 = getelementptr inbounds %struct.xge_pdata, %struct.xge_pdata* %131, i32 0, i32 0
  %133 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %134 = call i32 @napi_gro_receive(i32* %132, %struct.sk_buff* %133)
  br label %135

135:                                              ; preds = %109, %101
  %136 = load %struct.net_device*, %struct.net_device** %4, align 8
  %137 = call i32 @xge_refill_buffers(%struct.net_device* %136, i32 1)
  store i32 %137, i32* %16, align 4
  %138 = load %struct.xge_pdata*, %struct.xge_pdata** %6, align 8
  %139 = load i32, i32* @DMARXSTATUS, align 4
  %140 = call i32 @xge_wr_csr(%struct.xge_pdata* %138, i32 %139, i32 1)
  %141 = load %struct.xge_pdata*, %struct.xge_pdata** %6, align 8
  %142 = load i32, i32* @DMARXCTRL, align 4
  %143 = call i32 @xge_wr_csr(%struct.xge_pdata* %141, i32 %142, i32 1)
  %144 = load i32, i32* %16, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %147

146:                                              ; preds = %135
  br label %159

147:                                              ; preds = %135
  %148 = load i64, i64* %13, align 8
  %149 = add i64 %148, 1
  %150 = load i32, i32* @XGENE_ENET_NUM_DESC, align 4
  %151 = sub nsw i32 %150, 1
  %152 = sext i32 %151 to i64
  %153 = and i64 %149, %152
  store i64 %153, i64* %13, align 8
  %154 = load i32, i32* %12, align 4
  %155 = add nsw i32 %154, 1
  store i32 %155, i32* %12, align 4
  br label %156

156:                                              ; preds = %147
  %157 = load i32, i32* %15, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %15, align 4
  br label %40

159:                                              ; preds = %146, %57, %40
  %160 = load i64, i64* %13, align 8
  %161 = load %struct.xge_desc_ring*, %struct.xge_desc_ring** %8, align 8
  %162 = getelementptr inbounds %struct.xge_desc_ring, %struct.xge_desc_ring* %161, i32 0, i32 0
  store i64 %160, i64* %162, align 8
  %163 = load i32, i32* %12, align 4
  store i32 %163, i32* %3, align 4
  br label %164

164:                                              ; preds = %159, %38
  %165 = load i32, i32* %3, align 4
  ret i32 %165
}

declare dso_local %struct.xge_pdata* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @xge_rd_csr(%struct.xge_pdata*, i32) #1

declare dso_local i8* @GET_BITS(i32, i32) #1

declare dso_local i32 @le64_to_cpu(i32) #1

declare dso_local i32 @dma_rmb(...) #1

declare dso_local i32 @dma_unmap_single(%struct.device*, i32, i32, i32) #1

declare dso_local i64 @unlikely(i64) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i8*) #1

declare dso_local i32 @eth_type_trans(%struct.sk_buff*, %struct.net_device*) #1

declare dso_local i32 @napi_gro_receive(i32*, %struct.sk_buff*) #1

declare dso_local i32 @xge_refill_buffers(%struct.net_device*, i32) #1

declare dso_local i32 @xge_wr_csr(%struct.xge_pdata*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
