; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/arc/extr_emac_main.c_arc_emac_rx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/arc/extr_emac_main.c_arc_emac_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, %struct.net_device_stats }
%struct.net_device_stats = type { i32, i32, i32, i32, i32 }
%struct.arc_emac_priv = type { i32, %struct.arc_emac_bd*, %struct.buffer_state* }
%struct.arc_emac_bd = type { i8*, i8* }
%struct.buffer_state = type { %struct.sk_buff* }
%struct.sk_buff = type { i32, %struct.net_device*, i64 }

@OWN_MASK = common dso_local global i32 0, align 4
@FOR_EMAC = common dso_local global i32 0, align 4
@RX_BD_NUM = common dso_local global i32 0, align 4
@FIRST_OR_LAST_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"incomplete packet received\0A\00", align 1
@EMAC_BUFFER_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"cannot allocate skb\0A\00", align 1
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"cannot map dma buffer\0A\00", align 1
@len = common dso_local global i32 0, align 4
@LEN_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32)* @arc_emac_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @arc_emac_rx(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.arc_emac_priv*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.net_device_stats*, align 8
  %9 = alloca %struct.buffer_state*, align 8
  %10 = alloca %struct.arc_emac_bd*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.sk_buff*, align 8
  %14 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %15 = load %struct.net_device*, %struct.net_device** %3, align 8
  %16 = call %struct.arc_emac_priv* @netdev_priv(%struct.net_device* %15)
  store %struct.arc_emac_priv* %16, %struct.arc_emac_priv** %5, align 8
  store i32 0, i32* %6, align 4
  br label %17

17:                                               ; preds = %226, %2
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* %4, align 4
  %20 = icmp ult i32 %18, %19
  br i1 %20, label %21, label %229

21:                                               ; preds = %17
  %22 = load %struct.arc_emac_priv*, %struct.arc_emac_priv** %5, align 8
  %23 = getelementptr inbounds %struct.arc_emac_priv, %struct.arc_emac_priv* %22, i32 0, i32 0
  store i32* %23, i32** %7, align 8
  %24 = load %struct.net_device*, %struct.net_device** %3, align 8
  %25 = getelementptr inbounds %struct.net_device, %struct.net_device* %24, i32 0, i32 1
  store %struct.net_device_stats* %25, %struct.net_device_stats** %8, align 8
  %26 = load %struct.arc_emac_priv*, %struct.arc_emac_priv** %5, align 8
  %27 = getelementptr inbounds %struct.arc_emac_priv, %struct.arc_emac_priv* %26, i32 0, i32 2
  %28 = load %struct.buffer_state*, %struct.buffer_state** %27, align 8
  %29 = load i32*, i32** %7, align 8
  %30 = load i32, i32* %29, align 4
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds %struct.buffer_state, %struct.buffer_state* %28, i64 %31
  store %struct.buffer_state* %32, %struct.buffer_state** %9, align 8
  %33 = load %struct.arc_emac_priv*, %struct.arc_emac_priv** %5, align 8
  %34 = getelementptr inbounds %struct.arc_emac_priv, %struct.arc_emac_priv* %33, i32 0, i32 1
  %35 = load %struct.arc_emac_bd*, %struct.arc_emac_bd** %34, align 8
  %36 = load i32*, i32** %7, align 8
  %37 = load i32, i32* %36, align 4
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds %struct.arc_emac_bd, %struct.arc_emac_bd* %35, i64 %38
  store %struct.arc_emac_bd* %39, %struct.arc_emac_bd** %10, align 8
  %40 = load %struct.arc_emac_bd*, %struct.arc_emac_bd** %10, align 8
  %41 = getelementptr inbounds %struct.arc_emac_bd, %struct.arc_emac_bd* %40, i32 0, i32 0
  %42 = load i8*, i8** %41, align 8
  %43 = call i32 @le32_to_cpu(i8* %42)
  store i32 %43, i32* %12, align 4
  %44 = load i32, i32* %12, align 4
  %45 = load i32, i32* @OWN_MASK, align 4
  %46 = and i32 %44, %45
  %47 = load i32, i32* @FOR_EMAC, align 4
  %48 = icmp eq i32 %46, %47
  %49 = zext i1 %48 to i32
  %50 = call i64 @unlikely(i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %21
  br label %229

53:                                               ; preds = %21
  %54 = load i32*, i32** %7, align 8
  %55 = load i32, i32* %54, align 4
  %56 = add i32 %55, 1
  %57 = load i32, i32* @RX_BD_NUM, align 4
  %58 = urem i32 %56, %57
  %59 = load i32*, i32** %7, align 8
  store i32 %58, i32* %59, align 4
  %60 = load i32, i32* %12, align 4
  %61 = load i32, i32* @FIRST_OR_LAST_MASK, align 4
  %62 = and i32 %60, %61
  %63 = load i32, i32* @FIRST_OR_LAST_MASK, align 4
  %64 = icmp ne i32 %62, %63
  %65 = zext i1 %64 to i32
  %66 = call i64 @unlikely(i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %89

68:                                               ; preds = %53
  %69 = call i64 (...) @net_ratelimit()
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %68
  %72 = load %struct.net_device*, %struct.net_device** %3, align 8
  %73 = call i32 @netdev_err(%struct.net_device* %72, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %74

74:                                               ; preds = %71, %68
  %75 = load i32, i32* @FOR_EMAC, align 4
  %76 = load i32, i32* @EMAC_BUFFER_SIZE, align 4
  %77 = or i32 %75, %76
  %78 = call i8* @cpu_to_le32(i32 %77)
  %79 = load %struct.arc_emac_bd*, %struct.arc_emac_bd** %10, align 8
  %80 = getelementptr inbounds %struct.arc_emac_bd, %struct.arc_emac_bd* %79, i32 0, i32 0
  store i8* %78, i8** %80, align 8
  %81 = load %struct.net_device_stats*, %struct.net_device_stats** %8, align 8
  %82 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %82, align 4
  %85 = load %struct.net_device_stats*, %struct.net_device_stats** %8, align 8
  %86 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %85, i32 0, i32 4
  %87 = load i32, i32* %86, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %86, align 4
  br label %226

89:                                               ; preds = %53
  %90 = load %struct.net_device*, %struct.net_device** %3, align 8
  %91 = load i32, i32* @EMAC_BUFFER_SIZE, align 4
  %92 = call %struct.sk_buff* @netdev_alloc_skb_ip_align(%struct.net_device* %90, i32 %91)
  store %struct.sk_buff* %92, %struct.sk_buff** %13, align 8
  %93 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %94 = icmp ne %struct.sk_buff* %93, null
  %95 = xor i1 %94, true
  %96 = zext i1 %95 to i32
  %97 = call i64 @unlikely(i32 %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %120

99:                                               ; preds = %89
  %100 = call i64 (...) @net_ratelimit()
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %105

102:                                              ; preds = %99
  %103 = load %struct.net_device*, %struct.net_device** %3, align 8
  %104 = call i32 @netdev_err(%struct.net_device* %103, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  br label %105

105:                                              ; preds = %102, %99
  %106 = load i32, i32* @FOR_EMAC, align 4
  %107 = load i32, i32* @EMAC_BUFFER_SIZE, align 4
  %108 = or i32 %106, %107
  %109 = call i8* @cpu_to_le32(i32 %108)
  %110 = load %struct.arc_emac_bd*, %struct.arc_emac_bd** %10, align 8
  %111 = getelementptr inbounds %struct.arc_emac_bd, %struct.arc_emac_bd* %110, i32 0, i32 0
  store i8* %109, i8** %111, align 8
  %112 = load %struct.net_device_stats*, %struct.net_device_stats** %8, align 8
  %113 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %112, i32 0, i32 3
  %114 = load i32, i32* %113, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %113, align 4
  %116 = load %struct.net_device_stats*, %struct.net_device_stats** %8, align 8
  %117 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %117, align 4
  br label %226

120:                                              ; preds = %89
  %121 = load %struct.net_device*, %struct.net_device** %3, align 8
  %122 = getelementptr inbounds %struct.net_device, %struct.net_device* %121, i32 0, i32 0
  %123 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %124 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %123, i32 0, i32 2
  %125 = load i64, i64* %124, align 8
  %126 = inttoptr i64 %125 to i8*
  %127 = load i32, i32* @EMAC_BUFFER_SIZE, align 4
  %128 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %129 = call i32 @dma_map_single(i32* %122, i8* %126, i32 %127, i32 %128)
  store i32 %129, i32* %14, align 4
  %130 = load %struct.net_device*, %struct.net_device** %3, align 8
  %131 = getelementptr inbounds %struct.net_device, %struct.net_device* %130, i32 0, i32 0
  %132 = load i32, i32* %14, align 4
  %133 = call i64 @dma_mapping_error(i32* %131, i32 %132)
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %158

135:                                              ; preds = %120
  %136 = call i64 (...) @net_ratelimit()
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %141

138:                                              ; preds = %135
  %139 = load %struct.net_device*, %struct.net_device** %3, align 8
  %140 = call i32 @netdev_err(%struct.net_device* %139, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  br label %141

141:                                              ; preds = %138, %135
  %142 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %143 = call i32 @dev_kfree_skb(%struct.sk_buff* %142)
  %144 = load i32, i32* @FOR_EMAC, align 4
  %145 = load i32, i32* @EMAC_BUFFER_SIZE, align 4
  %146 = or i32 %144, %145
  %147 = call i8* @cpu_to_le32(i32 %146)
  %148 = load %struct.arc_emac_bd*, %struct.arc_emac_bd** %10, align 8
  %149 = getelementptr inbounds %struct.arc_emac_bd, %struct.arc_emac_bd* %148, i32 0, i32 0
  store i8* %147, i8** %149, align 8
  %150 = load %struct.net_device_stats*, %struct.net_device_stats** %8, align 8
  %151 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %150, i32 0, i32 3
  %152 = load i32, i32* %151, align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %151, align 4
  %154 = load %struct.net_device_stats*, %struct.net_device_stats** %8, align 8
  %155 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %154, i32 0, i32 2
  %156 = load i32, i32* %155, align 4
  %157 = add nsw i32 %156, 1
  store i32 %157, i32* %155, align 4
  br label %226

158:                                              ; preds = %120
  %159 = load %struct.net_device*, %struct.net_device** %3, align 8
  %160 = getelementptr inbounds %struct.net_device, %struct.net_device* %159, i32 0, i32 0
  %161 = load %struct.buffer_state*, %struct.buffer_state** %9, align 8
  %162 = load i32, i32* %14, align 4
  %163 = call i32 @dma_unmap_addr(%struct.buffer_state* %161, i32 %162)
  %164 = load %struct.buffer_state*, %struct.buffer_state** %9, align 8
  %165 = load i32, i32* @len, align 4
  %166 = call i32 @dma_unmap_len(%struct.buffer_state* %164, i32 %165)
  %167 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %168 = call i32 @dma_unmap_single(i32* %160, i32 %163, i32 %166, i32 %167)
  %169 = load i32, i32* %12, align 4
  %170 = load i32, i32* @LEN_MASK, align 4
  %171 = and i32 %169, %170
  store i32 %171, i32* %11, align 4
  %172 = load %struct.net_device_stats*, %struct.net_device_stats** %8, align 8
  %173 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %172, i32 0, i32 1
  %174 = load i32, i32* %173, align 4
  %175 = add nsw i32 %174, 1
  store i32 %175, i32* %173, align 4
  %176 = load i32, i32* %11, align 4
  %177 = load %struct.net_device_stats*, %struct.net_device_stats** %8, align 8
  %178 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 4
  %180 = add i32 %179, %176
  store i32 %180, i32* %178, align 4
  %181 = load %struct.buffer_state*, %struct.buffer_state** %9, align 8
  %182 = getelementptr inbounds %struct.buffer_state, %struct.buffer_state* %181, i32 0, i32 0
  %183 = load %struct.sk_buff*, %struct.sk_buff** %182, align 8
  %184 = load i32, i32* %11, align 4
  %185 = call i32 @skb_put(%struct.sk_buff* %183, i32 %184)
  %186 = load %struct.net_device*, %struct.net_device** %3, align 8
  %187 = load %struct.buffer_state*, %struct.buffer_state** %9, align 8
  %188 = getelementptr inbounds %struct.buffer_state, %struct.buffer_state* %187, i32 0, i32 0
  %189 = load %struct.sk_buff*, %struct.sk_buff** %188, align 8
  %190 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %189, i32 0, i32 1
  store %struct.net_device* %186, %struct.net_device** %190, align 8
  %191 = load %struct.buffer_state*, %struct.buffer_state** %9, align 8
  %192 = getelementptr inbounds %struct.buffer_state, %struct.buffer_state* %191, i32 0, i32 0
  %193 = load %struct.sk_buff*, %struct.sk_buff** %192, align 8
  %194 = load %struct.net_device*, %struct.net_device** %3, align 8
  %195 = call i32 @eth_type_trans(%struct.sk_buff* %193, %struct.net_device* %194)
  %196 = load %struct.buffer_state*, %struct.buffer_state** %9, align 8
  %197 = getelementptr inbounds %struct.buffer_state, %struct.buffer_state* %196, i32 0, i32 0
  %198 = load %struct.sk_buff*, %struct.sk_buff** %197, align 8
  %199 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %198, i32 0, i32 0
  store i32 %195, i32* %199, align 8
  %200 = load %struct.buffer_state*, %struct.buffer_state** %9, align 8
  %201 = getelementptr inbounds %struct.buffer_state, %struct.buffer_state* %200, i32 0, i32 0
  %202 = load %struct.sk_buff*, %struct.sk_buff** %201, align 8
  %203 = call i32 @netif_receive_skb(%struct.sk_buff* %202)
  %204 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %205 = load %struct.buffer_state*, %struct.buffer_state** %9, align 8
  %206 = getelementptr inbounds %struct.buffer_state, %struct.buffer_state* %205, i32 0, i32 0
  store %struct.sk_buff* %204, %struct.sk_buff** %206, align 8
  %207 = load %struct.buffer_state*, %struct.buffer_state** %9, align 8
  %208 = load i32, i32* %14, align 4
  %209 = load i32, i32* %14, align 4
  %210 = call i32 @dma_unmap_addr_set(%struct.buffer_state* %207, i32 %208, i32 %209)
  %211 = load %struct.buffer_state*, %struct.buffer_state** %9, align 8
  %212 = load i32, i32* @len, align 4
  %213 = load i32, i32* @EMAC_BUFFER_SIZE, align 4
  %214 = call i32 @dma_unmap_len_set(%struct.buffer_state* %211, i32 %212, i32 %213)
  %215 = load i32, i32* %14, align 4
  %216 = call i8* @cpu_to_le32(i32 %215)
  %217 = load %struct.arc_emac_bd*, %struct.arc_emac_bd** %10, align 8
  %218 = getelementptr inbounds %struct.arc_emac_bd, %struct.arc_emac_bd* %217, i32 0, i32 1
  store i8* %216, i8** %218, align 8
  %219 = call i32 (...) @wmb()
  %220 = load i32, i32* @FOR_EMAC, align 4
  %221 = load i32, i32* @EMAC_BUFFER_SIZE, align 4
  %222 = or i32 %220, %221
  %223 = call i8* @cpu_to_le32(i32 %222)
  %224 = load %struct.arc_emac_bd*, %struct.arc_emac_bd** %10, align 8
  %225 = getelementptr inbounds %struct.arc_emac_bd, %struct.arc_emac_bd* %224, i32 0, i32 0
  store i8* %223, i8** %225, align 8
  br label %226

226:                                              ; preds = %158, %141, %105, %74
  %227 = load i32, i32* %6, align 4
  %228 = add i32 %227, 1
  store i32 %228, i32* %6, align 4
  br label %17

229:                                              ; preds = %52, %17
  %230 = load i32, i32* %6, align 4
  ret i32 %230
}

declare dso_local %struct.arc_emac_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @le32_to_cpu(i8*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @net_ratelimit(...) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local %struct.sk_buff* @netdev_alloc_skb_ip_align(%struct.net_device*, i32) #1

declare dso_local i32 @dma_map_single(i32*, i8*, i32, i32) #1

declare dso_local i64 @dma_mapping_error(i32*, i32) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @dma_unmap_single(i32*, i32, i32, i32) #1

declare dso_local i32 @dma_unmap_addr(%struct.buffer_state*, i32) #1

declare dso_local i32 @dma_unmap_len(%struct.buffer_state*, i32) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @eth_type_trans(%struct.sk_buff*, %struct.net_device*) #1

declare dso_local i32 @netif_receive_skb(%struct.sk_buff*) #1

declare dso_local i32 @dma_unmap_addr_set(%struct.buffer_state*, i32, i32) #1

declare dso_local i32 @dma_unmap_len_set(%struct.buffer_state*, i32, i32) #1

declare dso_local i32 @wmb(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
