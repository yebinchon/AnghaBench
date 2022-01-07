; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cadence/extr_macb_main.c_gem_rx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cadence/extr_macb_main.c_gem_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.macb_queue = type { %struct.TYPE_9__, %struct.sk_buff**, i32, %struct.macb* }
%struct.TYPE_9__ = type { i32, i32, i32 }
%struct.sk_buff = type { i32, i32, i32, i32, i32 }
%struct.macb = type { i32, %struct.TYPE_10__*, i32, %struct.TYPE_7__* }
%struct.TYPE_10__ = type { i32, i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.napi_struct = type { i32 }
%struct.macb_dma_desc = type { i32, i32 }

@RX_USED = common dso_local global i32 0, align 4
@RX_SOF = common dso_local global i32 0, align 4
@RX_EOF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"not whole frame pointed by descriptor\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"inconsistent Rx descriptor chain\0A\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"gem_rx %u (len %u)\0A\00", align 1
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@NETIF_F_RXCSUM = common dso_local global i32 0, align 4
@IFF_PROMISC = common dso_local global i32 0, align 4
@RX_CSUM = common dso_local global i32 0, align 4
@GEM_RX_CSUM_CHECKED_MASK = common dso_local global i32 0, align 4
@CHECKSUM_UNNECESSARY = common dso_local global i32 0, align 4
@DUMP_PREFIX_ADDRESS = common dso_local global i32 0, align 4
@KERN_DEBUG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.macb_queue*, %struct.napi_struct*, i32)* @gem_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gem_rx(%struct.macb_queue* %0, %struct.napi_struct* %1, i32 %2) #0 {
  %4 = alloca %struct.macb_queue*, align 8
  %5 = alloca %struct.napi_struct*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.macb*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.sk_buff*, align 8
  %11 = alloca %struct.macb_dma_desc*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.macb_queue* %0, %struct.macb_queue** %4, align 8
  store %struct.napi_struct* %1, %struct.napi_struct** %5, align 8
  store i32 %2, i32* %6, align 4
  %16 = load %struct.macb_queue*, %struct.macb_queue** %4, align 8
  %17 = getelementptr inbounds %struct.macb_queue, %struct.macb_queue* %16, i32 0, i32 3
  %18 = load %struct.macb*, %struct.macb** %17, align 8
  store %struct.macb* %18, %struct.macb** %7, align 8
  store i32 0, i32* %12, align 4
  br label %19

19:                                               ; preds = %186, %3
  %20 = load i32, i32* %12, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %224

23:                                               ; preds = %19
  %24 = load %struct.macb*, %struct.macb** %7, align 8
  %25 = load %struct.macb_queue*, %struct.macb_queue** %4, align 8
  %26 = getelementptr inbounds %struct.macb_queue, %struct.macb_queue* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @macb_rx_ring_wrap(%struct.macb* %24, i32 %27)
  store i32 %28, i32* %9, align 4
  %29 = load %struct.macb_queue*, %struct.macb_queue** %4, align 8
  %30 = load i32, i32* %9, align 4
  %31 = call %struct.macb_dma_desc* @macb_rx_desc(%struct.macb_queue* %29, i32 %30)
  store %struct.macb_dma_desc* %31, %struct.macb_dma_desc** %11, align 8
  %32 = call i32 (...) @rmb()
  %33 = load %struct.macb_dma_desc*, %struct.macb_dma_desc** %11, align 8
  %34 = getelementptr inbounds %struct.macb_dma_desc, %struct.macb_dma_desc* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @RX_USED, align 4
  %37 = call i32 @MACB_BIT(i32 %36)
  %38 = and i32 %35, %37
  %39 = icmp ne i32 %38, 0
  %40 = zext i1 %39 to i64
  %41 = select i1 %39, i32 1, i32 0
  store i32 %41, i32* %15, align 4
  %42 = load %struct.macb*, %struct.macb** %7, align 8
  %43 = load %struct.macb_dma_desc*, %struct.macb_dma_desc** %11, align 8
  %44 = call i32 @macb_get_addr(%struct.macb* %42, %struct.macb_dma_desc* %43)
  store i32 %44, i32* %14, align 4
  %45 = load i32, i32* %15, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %23
  br label %224

48:                                               ; preds = %23
  %49 = call i32 (...) @dma_rmb()
  %50 = load %struct.macb_dma_desc*, %struct.macb_dma_desc** %11, align 8
  %51 = getelementptr inbounds %struct.macb_dma_desc, %struct.macb_dma_desc* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  store i32 %52, i32* %13, align 4
  %53 = load %struct.macb_queue*, %struct.macb_queue** %4, align 8
  %54 = getelementptr inbounds %struct.macb_queue, %struct.macb_queue* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %54, align 8
  %57 = load i32, i32* %12, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %12, align 4
  %59 = load i32, i32* %13, align 4
  %60 = load i32, i32* @RX_SOF, align 4
  %61 = call i32 @MACB_BIT(i32 %60)
  %62 = and i32 %59, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %70

64:                                               ; preds = %48
  %65 = load i32, i32* %13, align 4
  %66 = load i32, i32* @RX_EOF, align 4
  %67 = call i32 @MACB_BIT(i32 %66)
  %68 = and i32 %65, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %87, label %70

70:                                               ; preds = %64, %48
  %71 = load %struct.macb*, %struct.macb** %7, align 8
  %72 = getelementptr inbounds %struct.macb, %struct.macb* %71, i32 0, i32 1
  %73 = load %struct.TYPE_10__*, %struct.TYPE_10__** %72, align 8
  %74 = call i32 @netdev_err(%struct.TYPE_10__* %73, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %75 = load %struct.macb*, %struct.macb** %7, align 8
  %76 = getelementptr inbounds %struct.macb, %struct.macb* %75, i32 0, i32 1
  %77 = load %struct.TYPE_10__*, %struct.TYPE_10__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 2
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %79, align 4
  %82 = load %struct.macb_queue*, %struct.macb_queue** %4, align 8
  %83 = getelementptr inbounds %struct.macb_queue, %struct.macb_queue* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 8
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %84, align 8
  br label %224

87:                                               ; preds = %64
  %88 = load %struct.macb_queue*, %struct.macb_queue** %4, align 8
  %89 = getelementptr inbounds %struct.macb_queue, %struct.macb_queue* %88, i32 0, i32 1
  %90 = load %struct.sk_buff**, %struct.sk_buff*** %89, align 8
  %91 = load i32, i32* %9, align 4
  %92 = zext i32 %91 to i64
  %93 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %90, i64 %92
  %94 = load %struct.sk_buff*, %struct.sk_buff** %93, align 8
  store %struct.sk_buff* %94, %struct.sk_buff** %10, align 8
  %95 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %96 = icmp ne %struct.sk_buff* %95, null
  %97 = xor i1 %96, true
  %98 = zext i1 %97 to i32
  %99 = call i64 @unlikely(i32 %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %118

101:                                              ; preds = %87
  %102 = load %struct.macb*, %struct.macb** %7, align 8
  %103 = getelementptr inbounds %struct.macb, %struct.macb* %102, i32 0, i32 1
  %104 = load %struct.TYPE_10__*, %struct.TYPE_10__** %103, align 8
  %105 = call i32 @netdev_err(%struct.TYPE_10__* %104, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %106 = load %struct.macb*, %struct.macb** %7, align 8
  %107 = getelementptr inbounds %struct.macb, %struct.macb* %106, i32 0, i32 1
  %108 = load %struct.TYPE_10__*, %struct.TYPE_10__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %108, i32 0, i32 2
  %110 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %110, align 4
  %113 = load %struct.macb_queue*, %struct.macb_queue** %4, align 8
  %114 = getelementptr inbounds %struct.macb_queue, %struct.macb_queue* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 8
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %115, align 8
  br label %224

118:                                              ; preds = %87
  %119 = load %struct.macb_queue*, %struct.macb_queue** %4, align 8
  %120 = getelementptr inbounds %struct.macb_queue, %struct.macb_queue* %119, i32 0, i32 1
  %121 = load %struct.sk_buff**, %struct.sk_buff*** %120, align 8
  %122 = load i32, i32* %9, align 4
  %123 = zext i32 %122 to i64
  %124 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %121, i64 %123
  store %struct.sk_buff* null, %struct.sk_buff** %124, align 8
  %125 = load i32, i32* %13, align 4
  %126 = load %struct.macb*, %struct.macb** %7, align 8
  %127 = getelementptr inbounds %struct.macb, %struct.macb* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = and i32 %125, %128
  store i32 %129, i32* %8, align 4
  %130 = load %struct.macb*, %struct.macb** %7, align 8
  %131 = getelementptr inbounds %struct.macb, %struct.macb* %130, i32 0, i32 1
  %132 = load %struct.TYPE_10__*, %struct.TYPE_10__** %131, align 8
  %133 = load i32, i32* %9, align 4
  %134 = load i32, i32* %8, align 4
  %135 = call i32 @netdev_vdbg(%struct.TYPE_10__* %132, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 %133, i32 %134)
  %136 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %137 = load i32, i32* %8, align 4
  %138 = call i32 @skb_put(%struct.sk_buff* %136, i32 %137)
  %139 = load %struct.macb*, %struct.macb** %7, align 8
  %140 = getelementptr inbounds %struct.macb, %struct.macb* %139, i32 0, i32 3
  %141 = load %struct.TYPE_7__*, %struct.TYPE_7__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %141, i32 0, i32 0
  %143 = load i32, i32* %14, align 4
  %144 = load %struct.macb*, %struct.macb** %7, align 8
  %145 = getelementptr inbounds %struct.macb, %struct.macb* %144, i32 0, i32 2
  %146 = load i32, i32* %145, align 8
  %147 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %148 = call i32 @dma_unmap_single(i32* %142, i32 %143, i32 %146, i32 %147)
  %149 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %150 = load %struct.macb*, %struct.macb** %7, align 8
  %151 = getelementptr inbounds %struct.macb, %struct.macb* %150, i32 0, i32 1
  %152 = load %struct.TYPE_10__*, %struct.TYPE_10__** %151, align 8
  %153 = call i32 @eth_type_trans(%struct.sk_buff* %149, %struct.TYPE_10__* %152)
  %154 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %155 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %154, i32 0, i32 4
  store i32 %153, i32* %155, align 4
  %156 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %157 = call i32 @skb_checksum_none_assert(%struct.sk_buff* %156)
  %158 = load %struct.macb*, %struct.macb** %7, align 8
  %159 = getelementptr inbounds %struct.macb, %struct.macb* %158, i32 0, i32 1
  %160 = load %struct.TYPE_10__*, %struct.TYPE_10__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  %163 = load i32, i32* @NETIF_F_RXCSUM, align 4
  %164 = and i32 %162, %163
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %186

166:                                              ; preds = %118
  %167 = load %struct.macb*, %struct.macb** %7, align 8
  %168 = getelementptr inbounds %struct.macb, %struct.macb* %167, i32 0, i32 1
  %169 = load %struct.TYPE_10__*, %struct.TYPE_10__** %168, align 8
  %170 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 4
  %172 = load i32, i32* @IFF_PROMISC, align 4
  %173 = and i32 %171, %172
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %186, label %175

175:                                              ; preds = %166
  %176 = load i32, i32* @RX_CSUM, align 4
  %177 = load i32, i32* %13, align 4
  %178 = call i32 @GEM_BFEXT(i32 %176, i32 %177)
  %179 = load i32, i32* @GEM_RX_CSUM_CHECKED_MASK, align 4
  %180 = and i32 %178, %179
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %186

182:                                              ; preds = %175
  %183 = load i32, i32* @CHECKSUM_UNNECESSARY, align 4
  %184 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %185 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %184, i32 0, i32 3
  store i32 %183, i32* %185, align 4
  br label %186

186:                                              ; preds = %182, %175, %166, %118
  %187 = load %struct.macb*, %struct.macb** %7, align 8
  %188 = getelementptr inbounds %struct.macb, %struct.macb* %187, i32 0, i32 1
  %189 = load %struct.TYPE_10__*, %struct.TYPE_10__** %188, align 8
  %190 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %189, i32 0, i32 2
  %191 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %190, i32 0, i32 1
  %192 = load i32, i32* %191, align 4
  %193 = add nsw i32 %192, 1
  store i32 %193, i32* %191, align 4
  %194 = load %struct.macb_queue*, %struct.macb_queue** %4, align 8
  %195 = getelementptr inbounds %struct.macb_queue, %struct.macb_queue* %194, i32 0, i32 0
  %196 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %195, i32 0, i32 1
  %197 = load i32, i32* %196, align 4
  %198 = add nsw i32 %197, 1
  store i32 %198, i32* %196, align 4
  %199 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %200 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 4
  %202 = load %struct.macb*, %struct.macb** %7, align 8
  %203 = getelementptr inbounds %struct.macb, %struct.macb* %202, i32 0, i32 1
  %204 = load %struct.TYPE_10__*, %struct.TYPE_10__** %203, align 8
  %205 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %204, i32 0, i32 2
  %206 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 4
  %208 = add i32 %207, %201
  store i32 %208, i32* %206, align 4
  %209 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %210 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 4
  %212 = load %struct.macb_queue*, %struct.macb_queue** %4, align 8
  %213 = getelementptr inbounds %struct.macb_queue, %struct.macb_queue* %212, i32 0, i32 0
  %214 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 8
  %216 = add i32 %215, %211
  store i32 %216, i32* %214, align 8
  %217 = load %struct.macb*, %struct.macb** %7, align 8
  %218 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %219 = load %struct.macb_dma_desc*, %struct.macb_dma_desc** %11, align 8
  %220 = call i32 @gem_ptp_do_rxstamp(%struct.macb* %217, %struct.sk_buff* %218, %struct.macb_dma_desc* %219)
  %221 = load %struct.napi_struct*, %struct.napi_struct** %5, align 8
  %222 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %223 = call i32 @napi_gro_receive(%struct.napi_struct* %221, %struct.sk_buff* %222)
  br label %19

224:                                              ; preds = %101, %70, %47, %19
  %225 = load %struct.macb_queue*, %struct.macb_queue** %4, align 8
  %226 = call i32 @gem_rx_refill(%struct.macb_queue* %225)
  %227 = load i32, i32* %12, align 4
  ret i32 %227
}

declare dso_local i32 @macb_rx_ring_wrap(%struct.macb*, i32) #1

declare dso_local %struct.macb_dma_desc* @macb_rx_desc(%struct.macb_queue*, i32) #1

declare dso_local i32 @rmb(...) #1

declare dso_local i32 @MACB_BIT(i32) #1

declare dso_local i32 @macb_get_addr(%struct.macb*, %struct.macb_dma_desc*) #1

declare dso_local i32 @dma_rmb(...) #1

declare dso_local i32 @netdev_err(%struct.TYPE_10__*, i8*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @netdev_vdbg(%struct.TYPE_10__*, i8*, i32, i32) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @dma_unmap_single(i32*, i32, i32, i32) #1

declare dso_local i32 @eth_type_trans(%struct.sk_buff*, %struct.TYPE_10__*) #1

declare dso_local i32 @skb_checksum_none_assert(%struct.sk_buff*) #1

declare dso_local i32 @GEM_BFEXT(i32, i32) #1

declare dso_local i32 @gem_ptp_do_rxstamp(%struct.macb*, %struct.sk_buff*, %struct.macb_dma_desc*) #1

declare dso_local i32 @napi_gro_receive(%struct.napi_struct*, %struct.sk_buff*) #1

declare dso_local i32 @gem_rx_refill(%struct.macb_queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
