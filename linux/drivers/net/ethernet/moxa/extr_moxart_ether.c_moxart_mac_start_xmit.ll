; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/moxa/extr_moxart_ether.c_moxart_mac_start_xmit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/moxa/extr_moxart_ether.c_moxart_mac_start_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i32* }
%struct.net_device = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.moxart_mac_priv_t = type { i32, i32*, i32*, i32, i64, i32, %struct.sk_buff**, i8* }

@NETDEV_TX_BUSY = common dso_local global i32 0, align 4
@TX_REG_DESC_SIZE = common dso_local global i32 0, align 4
@TX_REG_OFFSET_DESC0 = common dso_local global i32 0, align 4
@TX_DESC0_DMA_OWN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"no TX space for packet\0A\00", align 1
@TX_BUF_SIZE = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"DMA mapping error\0A\00", align 1
@TX_REG_OFFSET_DESC2 = common dso_local global i32 0, align 4
@TX_DESC2_ADDRESS_PHYS = common dso_local global i32 0, align 4
@TX_DESC2_ADDRESS_VIRT = common dso_local global i32 0, align 4
@ETH_ZLEN = common dso_local global i32 0, align 4
@TX_DESC1_LTS = common dso_local global i32 0, align 4
@TX_DESC1_FTS = common dso_local global i32 0, align 4
@TX_DESC1_BUF_SIZE_MASK = common dso_local global i32 0, align 4
@TX_DESC_NUM_MASK = common dso_local global i32 0, align 4
@TX_DESC1_END = common dso_local global i32 0, align 4
@TX_REG_OFFSET_DESC1 = common dso_local global i32 0, align 4
@REG_TX_POLL_DEMAND = common dso_local global i64 0, align 8
@NETDEV_TX_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*)* @moxart_mac_start_xmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @moxart_mac_start_xmit(%struct.sk_buff* %0, %struct.net_device* %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.moxart_mac_priv_t*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  store %struct.net_device* %1, %struct.net_device** %4, align 8
  %11 = load %struct.net_device*, %struct.net_device** %4, align 8
  %12 = call %struct.moxart_mac_priv_t* @netdev_priv(%struct.net_device* %11)
  store %struct.moxart_mac_priv_t* %12, %struct.moxart_mac_priv_t** %5, align 8
  %13 = load i32, i32* @NETDEV_TX_BUSY, align 4
  store i32 %13, i32* %10, align 4
  %14 = load %struct.moxart_mac_priv_t*, %struct.moxart_mac_priv_t** %5, align 8
  %15 = getelementptr inbounds %struct.moxart_mac_priv_t, %struct.moxart_mac_priv_t* %14, i32 0, i32 3
  %16 = call i32 @spin_lock_irq(i32* %15)
  %17 = load %struct.moxart_mac_priv_t*, %struct.moxart_mac_priv_t** %5, align 8
  %18 = getelementptr inbounds %struct.moxart_mac_priv_t, %struct.moxart_mac_priv_t* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %8, align 4
  %20 = load %struct.moxart_mac_priv_t*, %struct.moxart_mac_priv_t** %5, align 8
  %21 = getelementptr inbounds %struct.moxart_mac_priv_t, %struct.moxart_mac_priv_t* %20, i32 0, i32 7
  %22 = load i8*, i8** %21, align 8
  %23 = load i32, i32* @TX_REG_DESC_SIZE, align 4
  %24 = load i32, i32* %8, align 4
  %25 = mul i32 %23, %24
  %26 = zext i32 %25 to i64
  %27 = getelementptr i8, i8* %22, i64 %26
  store i8* %27, i8** %6, align 8
  %28 = load %struct.net_device*, %struct.net_device** %4, align 8
  %29 = call i32 @moxart_tx_queue_space(%struct.net_device* %28)
  %30 = icmp eq i32 %29, 1
  br i1 %30, label %31, label %34

31:                                               ; preds = %2
  %32 = load %struct.net_device*, %struct.net_device** %4, align 8
  %33 = call i32 @netif_stop_queue(%struct.net_device* %32)
  br label %34

34:                                               ; preds = %31, %2
  %35 = load i8*, i8** %6, align 8
  %36 = load i32, i32* @TX_REG_OFFSET_DESC0, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr i8, i8* %35, i64 %37
  %39 = call i32 @moxart_desc_read(i8* %38)
  %40 = load i32, i32* @TX_DESC0_DMA_OWN, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %50

43:                                               ; preds = %34
  %44 = call i32 @net_dbg_ratelimited(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %45 = load %struct.net_device*, %struct.net_device** %4, align 8
  %46 = getelementptr inbounds %struct.net_device, %struct.net_device* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %47, align 4
  br label %213

50:                                               ; preds = %34
  %51 = call i32 (...) @rmb()
  %52 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %53 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @TX_BUF_SIZE, align 4
  %56 = icmp ugt i32 %54, %55
  br i1 %56, label %57, label %59

57:                                               ; preds = %50
  %58 = load i32, i32* @TX_BUF_SIZE, align 4
  br label %63

59:                                               ; preds = %50
  %60 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %61 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  br label %63

63:                                               ; preds = %59, %57
  %64 = phi i32 [ %58, %57 ], [ %62, %59 ]
  store i32 %64, i32* %7, align 4
  %65 = load %struct.net_device*, %struct.net_device** %4, align 8
  %66 = getelementptr inbounds %struct.net_device, %struct.net_device* %65, i32 0, i32 0
  %67 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %68 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %67, i32 0, i32 1
  %69 = load i32*, i32** %68, align 8
  %70 = load i32, i32* %7, align 4
  %71 = load i32, i32* @DMA_TO_DEVICE, align 4
  %72 = call i32 @dma_map_single(i32* %66, i32* %69, i32 %70, i32 %71)
  %73 = load %struct.moxart_mac_priv_t*, %struct.moxart_mac_priv_t** %5, align 8
  %74 = getelementptr inbounds %struct.moxart_mac_priv_t, %struct.moxart_mac_priv_t* %73, i32 0, i32 1
  %75 = load i32*, i32** %74, align 8
  %76 = load i32, i32* %8, align 4
  %77 = zext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %75, i64 %77
  store i32 %72, i32* %78, align 4
  %79 = load %struct.net_device*, %struct.net_device** %4, align 8
  %80 = getelementptr inbounds %struct.net_device, %struct.net_device* %79, i32 0, i32 0
  %81 = load %struct.moxart_mac_priv_t*, %struct.moxart_mac_priv_t** %5, align 8
  %82 = getelementptr inbounds %struct.moxart_mac_priv_t, %struct.moxart_mac_priv_t* %81, i32 0, i32 1
  %83 = load i32*, i32** %82, align 8
  %84 = load i32, i32* %8, align 4
  %85 = zext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %83, i64 %85
  %87 = load i32, i32* %86, align 4
  %88 = call i64 @dma_mapping_error(i32* %80, i32 %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %63
  %91 = load %struct.net_device*, %struct.net_device** %4, align 8
  %92 = call i32 @netdev_err(%struct.net_device* %91, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  br label %213

93:                                               ; preds = %63
  %94 = load i32, i32* %7, align 4
  %95 = load %struct.moxart_mac_priv_t*, %struct.moxart_mac_priv_t** %5, align 8
  %96 = getelementptr inbounds %struct.moxart_mac_priv_t, %struct.moxart_mac_priv_t* %95, i32 0, i32 2
  %97 = load i32*, i32** %96, align 8
  %98 = load i32, i32* %8, align 4
  %99 = zext i32 %98 to i64
  %100 = getelementptr inbounds i32, i32* %97, i64 %99
  store i32 %94, i32* %100, align 4
  %101 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %102 = load %struct.moxart_mac_priv_t*, %struct.moxart_mac_priv_t** %5, align 8
  %103 = getelementptr inbounds %struct.moxart_mac_priv_t, %struct.moxart_mac_priv_t* %102, i32 0, i32 6
  %104 = load %struct.sk_buff**, %struct.sk_buff*** %103, align 8
  %105 = load i32, i32* %8, align 4
  %106 = zext i32 %105 to i64
  %107 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %104, i64 %106
  store %struct.sk_buff* %101, %struct.sk_buff** %107, align 8
  %108 = load %struct.moxart_mac_priv_t*, %struct.moxart_mac_priv_t** %5, align 8
  %109 = getelementptr inbounds %struct.moxart_mac_priv_t, %struct.moxart_mac_priv_t* %108, i32 0, i32 1
  %110 = load i32*, i32** %109, align 8
  %111 = load i32, i32* %8, align 4
  %112 = zext i32 %111 to i64
  %113 = getelementptr inbounds i32, i32* %110, i64 %112
  %114 = load i32, i32* %113, align 4
  %115 = load i8*, i8** %6, align 8
  %116 = load i32, i32* @TX_REG_OFFSET_DESC2, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr i8, i8* %115, i64 %117
  %119 = load i32, i32* @TX_DESC2_ADDRESS_PHYS, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr i8, i8* %118, i64 %120
  %122 = call i32 @moxart_desc_write(i32 %114, i8* %121)
  %123 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %124 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %123, i32 0, i32 1
  %125 = load i32*, i32** %124, align 8
  %126 = ptrtoint i32* %125 to i64
  %127 = trunc i64 %126 to i32
  %128 = load i8*, i8** %6, align 8
  %129 = load i32, i32* @TX_REG_OFFSET_DESC2, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr i8, i8* %128, i64 %130
  %132 = load i32, i32* @TX_DESC2_ADDRESS_VIRT, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr i8, i8* %131, i64 %133
  %135 = call i32 @moxart_desc_write(i32 %127, i8* %134)
  %136 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %137 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = load i32, i32* @ETH_ZLEN, align 4
  %140 = icmp ult i32 %138, %139
  br i1 %140, label %141, label %157

141:                                              ; preds = %93
  %142 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %143 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %142, i32 0, i32 1
  %144 = load i32*, i32** %143, align 8
  %145 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %146 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = zext i32 %147 to i64
  %149 = getelementptr inbounds i32, i32* %144, i64 %148
  %150 = load i32, i32* @ETH_ZLEN, align 4
  %151 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %152 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = sub i32 %150, %153
  %155 = call i32 @memset(i32* %149, i32 0, i32 %154)
  %156 = load i32, i32* @ETH_ZLEN, align 4
  store i32 %156, i32* %7, align 4
  br label %157

157:                                              ; preds = %141, %93
  %158 = load %struct.net_device*, %struct.net_device** %4, align 8
  %159 = getelementptr inbounds %struct.net_device, %struct.net_device* %158, i32 0, i32 0
  %160 = load %struct.moxart_mac_priv_t*, %struct.moxart_mac_priv_t** %5, align 8
  %161 = getelementptr inbounds %struct.moxart_mac_priv_t, %struct.moxart_mac_priv_t* %160, i32 0, i32 1
  %162 = load i32*, i32** %161, align 8
  %163 = load i32, i32* %8, align 4
  %164 = zext i32 %163 to i64
  %165 = getelementptr inbounds i32, i32* %162, i64 %164
  %166 = load i32, i32* %165, align 4
  %167 = load %struct.moxart_mac_priv_t*, %struct.moxart_mac_priv_t** %5, align 8
  %168 = getelementptr inbounds %struct.moxart_mac_priv_t, %struct.moxart_mac_priv_t* %167, i32 0, i32 5
  %169 = load i32, i32* %168, align 8
  %170 = load i32, i32* @DMA_TO_DEVICE, align 4
  %171 = call i32 @dma_sync_single_for_device(i32* %159, i32 %166, i32 %169, i32 %170)
  %172 = load i32, i32* @TX_DESC1_LTS, align 4
  %173 = load i32, i32* @TX_DESC1_FTS, align 4
  %174 = or i32 %172, %173
  %175 = load i32, i32* %7, align 4
  %176 = load i32, i32* @TX_DESC1_BUF_SIZE_MASK, align 4
  %177 = and i32 %175, %176
  %178 = or i32 %174, %177
  store i32 %178, i32* %9, align 4
  %179 = load i32, i32* %8, align 4
  %180 = load i32, i32* @TX_DESC_NUM_MASK, align 4
  %181 = icmp eq i32 %179, %180
  br i1 %181, label %182, label %186

182:                                              ; preds = %157
  %183 = load i32, i32* @TX_DESC1_END, align 4
  %184 = load i32, i32* %9, align 4
  %185 = or i32 %184, %183
  store i32 %185, i32* %9, align 4
  br label %186

186:                                              ; preds = %182, %157
  %187 = load i32, i32* %9, align 4
  %188 = load i8*, i8** %6, align 8
  %189 = load i32, i32* @TX_REG_OFFSET_DESC1, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr i8, i8* %188, i64 %190
  %192 = call i32 @moxart_desc_write(i32 %187, i8* %191)
  %193 = call i32 (...) @wmb()
  %194 = load i32, i32* @TX_DESC0_DMA_OWN, align 4
  %195 = load i8*, i8** %6, align 8
  %196 = load i32, i32* @TX_REG_OFFSET_DESC0, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr i8, i8* %195, i64 %197
  %199 = call i32 @moxart_desc_write(i32 %194, i8* %198)
  %200 = load %struct.moxart_mac_priv_t*, %struct.moxart_mac_priv_t** %5, align 8
  %201 = getelementptr inbounds %struct.moxart_mac_priv_t, %struct.moxart_mac_priv_t* %200, i32 0, i32 4
  %202 = load i64, i64* %201, align 8
  %203 = load i64, i64* @REG_TX_POLL_DEMAND, align 8
  %204 = add nsw i64 %202, %203
  %205 = call i32 @writel(i32 -1, i64 %204)
  %206 = load i32, i32* %8, align 4
  %207 = call i32 @TX_NEXT(i32 %206)
  %208 = load %struct.moxart_mac_priv_t*, %struct.moxart_mac_priv_t** %5, align 8
  %209 = getelementptr inbounds %struct.moxart_mac_priv_t, %struct.moxart_mac_priv_t* %208, i32 0, i32 0
  store i32 %207, i32* %209, align 8
  %210 = load %struct.net_device*, %struct.net_device** %4, align 8
  %211 = call i32 @netif_trans_update(%struct.net_device* %210)
  %212 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %212, i32* %10, align 4
  br label %213

213:                                              ; preds = %186, %90, %43
  %214 = load %struct.moxart_mac_priv_t*, %struct.moxart_mac_priv_t** %5, align 8
  %215 = getelementptr inbounds %struct.moxart_mac_priv_t, %struct.moxart_mac_priv_t* %214, i32 0, i32 3
  %216 = call i32 @spin_unlock_irq(i32* %215)
  %217 = load i32, i32* %10, align 4
  ret i32 %217
}

declare dso_local %struct.moxart_mac_priv_t* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @moxart_tx_queue_space(%struct.net_device*) #1

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

declare dso_local i32 @moxart_desc_read(i8*) #1

declare dso_local i32 @net_dbg_ratelimited(i8*) #1

declare dso_local i32 @rmb(...) #1

declare dso_local i32 @dma_map_single(i32*, i32*, i32, i32) #1

declare dso_local i64 @dma_mapping_error(i32*, i32) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*) #1

declare dso_local i32 @moxart_desc_write(i32, i8*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @dma_sync_single_for_device(i32*, i32, i32, i32) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @TX_NEXT(i32) #1

declare dso_local i32 @netif_trans_update(%struct.net_device*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
