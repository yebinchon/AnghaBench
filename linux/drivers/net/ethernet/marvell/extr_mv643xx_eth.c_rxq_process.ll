; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_mv643xx_eth.c_rxq_process.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_mv643xx_eth.c_rxq_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rx_queue = type { i64, i64, i32, i64, %struct.sk_buff**, %struct.rx_desc* }
%struct.sk_buff = type { i32, i32 }
%struct.rx_desc = type { i32, i32, i32, i32 }
%struct.mv643xx_eth_private = type { i32, i32, %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__, %struct.net_device_stats }
%struct.TYPE_4__ = type { i32 }
%struct.net_device_stats = type { i32, i32, i32, i32 }

@BUFFER_OWNED_BY_DMA = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@RX_FIRST_DESC = common dso_local global i32 0, align 4
@RX_LAST_DESC = common dso_local global i32 0, align 4
@ERROR_SUMMARY = common dso_local global i32 0, align 4
@LAYER_4_CHECKSUM_OK = common dso_local global i32 0, align 4
@CHECKSUM_UNNECESSARY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"received packet spanning multiple descriptors\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rx_queue*, i32)* @rxq_process to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rxq_process(%struct.rx_queue* %0, i32 %1) #0 {
  %3 = alloca %struct.rx_queue*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mv643xx_eth_private*, align 8
  %6 = alloca %struct.net_device_stats*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.rx_desc*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.sk_buff*, align 8
  %11 = alloca i32, align 4
  store %struct.rx_queue* %0, %struct.rx_queue** %3, align 8
  store i32 %1, i32* %4, align 4
  %12 = load %struct.rx_queue*, %struct.rx_queue** %3, align 8
  %13 = call %struct.mv643xx_eth_private* @rxq_to_mp(%struct.rx_queue* %12)
  store %struct.mv643xx_eth_private* %13, %struct.mv643xx_eth_private** %5, align 8
  %14 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %5, align 8
  %15 = getelementptr inbounds %struct.mv643xx_eth_private, %struct.mv643xx_eth_private* %14, i32 0, i32 2
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 1
  store %struct.net_device_stats* %17, %struct.net_device_stats** %6, align 8
  store i32 0, i32* %7, align 4
  br label %18

18:                                               ; preds = %189, %144, %2
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* %4, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %27

22:                                               ; preds = %18
  %23 = load %struct.rx_queue*, %struct.rx_queue** %3, align 8
  %24 = getelementptr inbounds %struct.rx_queue, %struct.rx_queue* %23, i32 0, i32 3
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br label %27

27:                                               ; preds = %22, %18
  %28 = phi i1 [ false, %18 ], [ %26, %22 ]
  br i1 %28, label %29, label %192

29:                                               ; preds = %27
  %30 = load %struct.rx_queue*, %struct.rx_queue** %3, align 8
  %31 = getelementptr inbounds %struct.rx_queue, %struct.rx_queue* %30, i32 0, i32 5
  %32 = load %struct.rx_desc*, %struct.rx_desc** %31, align 8
  %33 = load %struct.rx_queue*, %struct.rx_queue** %3, align 8
  %34 = getelementptr inbounds %struct.rx_queue, %struct.rx_queue* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = getelementptr inbounds %struct.rx_desc, %struct.rx_desc* %32, i64 %35
  store %struct.rx_desc* %36, %struct.rx_desc** %8, align 8
  %37 = load %struct.rx_desc*, %struct.rx_desc** %8, align 8
  %38 = getelementptr inbounds %struct.rx_desc, %struct.rx_desc* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %9, align 4
  %40 = load i32, i32* %9, align 4
  %41 = load i32, i32* @BUFFER_OWNED_BY_DMA, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %29
  br label %192

45:                                               ; preds = %29
  %46 = call i32 (...) @rmb()
  %47 = load %struct.rx_queue*, %struct.rx_queue** %3, align 8
  %48 = getelementptr inbounds %struct.rx_queue, %struct.rx_queue* %47, i32 0, i32 4
  %49 = load %struct.sk_buff**, %struct.sk_buff*** %48, align 8
  %50 = load %struct.rx_queue*, %struct.rx_queue** %3, align 8
  %51 = getelementptr inbounds %struct.rx_queue, %struct.rx_queue* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %49, i64 %52
  %54 = load %struct.sk_buff*, %struct.sk_buff** %53, align 8
  store %struct.sk_buff* %54, %struct.sk_buff** %10, align 8
  %55 = load %struct.rx_queue*, %struct.rx_queue** %3, align 8
  %56 = getelementptr inbounds %struct.rx_queue, %struct.rx_queue* %55, i32 0, i32 4
  %57 = load %struct.sk_buff**, %struct.sk_buff*** %56, align 8
  %58 = load %struct.rx_queue*, %struct.rx_queue** %3, align 8
  %59 = getelementptr inbounds %struct.rx_queue, %struct.rx_queue* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %57, i64 %60
  store %struct.sk_buff* null, %struct.sk_buff** %61, align 8
  %62 = load %struct.rx_queue*, %struct.rx_queue** %3, align 8
  %63 = getelementptr inbounds %struct.rx_queue, %struct.rx_queue* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = add i64 %64, 1
  store i64 %65, i64* %63, align 8
  %66 = load %struct.rx_queue*, %struct.rx_queue** %3, align 8
  %67 = getelementptr inbounds %struct.rx_queue, %struct.rx_queue* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.rx_queue*, %struct.rx_queue** %3, align 8
  %70 = getelementptr inbounds %struct.rx_queue, %struct.rx_queue* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = icmp eq i64 %68, %71
  br i1 %72, label %73, label %76

73:                                               ; preds = %45
  %74 = load %struct.rx_queue*, %struct.rx_queue** %3, align 8
  %75 = getelementptr inbounds %struct.rx_queue, %struct.rx_queue* %74, i32 0, i32 0
  store i64 0, i64* %75, align 8
  br label %76

76:                                               ; preds = %73, %45
  %77 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %5, align 8
  %78 = getelementptr inbounds %struct.mv643xx_eth_private, %struct.mv643xx_eth_private* %77, i32 0, i32 2
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.rx_desc*, %struct.rx_desc** %8, align 8
  %84 = getelementptr inbounds %struct.rx_desc, %struct.rx_desc* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.rx_desc*, %struct.rx_desc** %8, align 8
  %87 = getelementptr inbounds %struct.rx_desc, %struct.rx_desc* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %90 = call i32 @dma_unmap_single(i32 %82, i32 %85, i32 %88, i32 %89)
  %91 = load %struct.rx_queue*, %struct.rx_queue** %3, align 8
  %92 = getelementptr inbounds %struct.rx_queue, %struct.rx_queue* %91, i32 0, i32 3
  %93 = load i64, i64* %92, align 8
  %94 = add nsw i64 %93, -1
  store i64 %94, i64* %92, align 8
  %95 = load i32, i32* %7, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %7, align 4
  %97 = load %struct.rx_queue*, %struct.rx_queue** %3, align 8
  %98 = getelementptr inbounds %struct.rx_queue, %struct.rx_queue* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 8
  %100 = shl i32 1, %99
  %101 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %5, align 8
  %102 = getelementptr inbounds %struct.mv643xx_eth_private, %struct.mv643xx_eth_private* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = or i32 %103, %100
  store i32 %104, i32* %102, align 8
  %105 = load %struct.rx_desc*, %struct.rx_desc** %8, align 8
  %106 = getelementptr inbounds %struct.rx_desc, %struct.rx_desc* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  store i32 %107, i32* %11, align 4
  %108 = load %struct.net_device_stats*, %struct.net_device_stats** %6, align 8
  %109 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %108, i32 0, i32 3
  %110 = load i32, i32* %109, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %109, align 4
  %112 = load i32, i32* %11, align 4
  %113 = sub nsw i32 %112, 2
  %114 = load %struct.net_device_stats*, %struct.net_device_stats** %6, align 8
  %115 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 4
  %117 = add nsw i32 %116, %113
  store i32 %117, i32* %115, align 4
  %118 = load i32, i32* %9, align 4
  %119 = load i32, i32* @RX_FIRST_DESC, align 4
  %120 = load i32, i32* @RX_LAST_DESC, align 4
  %121 = or i32 %119, %120
  %122 = load i32, i32* @ERROR_SUMMARY, align 4
  %123 = or i32 %121, %122
  %124 = and i32 %118, %123
  %125 = load i32, i32* @RX_FIRST_DESC, align 4
  %126 = load i32, i32* @RX_LAST_DESC, align 4
  %127 = or i32 %125, %126
  %128 = icmp ne i32 %124, %127
  br i1 %128, label %129, label %130

129:                                              ; preds = %76
  br label %156

130:                                              ; preds = %76
  %131 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %132 = load i32, i32* %11, align 4
  %133 = sub nsw i32 %132, 2
  %134 = sub nsw i32 %133, 4
  %135 = call i32 @skb_put(%struct.sk_buff* %131, i32 %134)
  %136 = load i32, i32* %9, align 4
  %137 = load i32, i32* @LAYER_4_CHECKSUM_OK, align 4
  %138 = and i32 %136, %137
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %144

140:                                              ; preds = %130
  %141 = load i32, i32* @CHECKSUM_UNNECESSARY, align 4
  %142 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %143 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %142, i32 0, i32 1
  store i32 %141, i32* %143, align 4
  br label %144

144:                                              ; preds = %140, %130
  %145 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %146 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %5, align 8
  %147 = getelementptr inbounds %struct.mv643xx_eth_private, %struct.mv643xx_eth_private* %146, i32 0, i32 2
  %148 = load %struct.TYPE_5__*, %struct.TYPE_5__** %147, align 8
  %149 = call i32 @eth_type_trans(%struct.sk_buff* %145, %struct.TYPE_5__* %148)
  %150 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %151 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %150, i32 0, i32 0
  store i32 %149, i32* %151, align 4
  %152 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %5, align 8
  %153 = getelementptr inbounds %struct.mv643xx_eth_private, %struct.mv643xx_eth_private* %152, i32 0, i32 3
  %154 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %155 = call i32 @napi_gro_receive(i32* %153, %struct.sk_buff* %154)
  br label %18

156:                                              ; preds = %129
  %157 = load %struct.net_device_stats*, %struct.net_device_stats** %6, align 8
  %158 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 4
  %160 = add nsw i32 %159, 1
  store i32 %160, i32* %158, align 4
  %161 = load i32, i32* %9, align 4
  %162 = load i32, i32* @RX_FIRST_DESC, align 4
  %163 = load i32, i32* @RX_LAST_DESC, align 4
  %164 = or i32 %162, %163
  %165 = and i32 %161, %164
  %166 = load i32, i32* @RX_FIRST_DESC, align 4
  %167 = load i32, i32* @RX_LAST_DESC, align 4
  %168 = or i32 %166, %167
  %169 = icmp ne i32 %165, %168
  br i1 %169, label %170, label %179

170:                                              ; preds = %156
  %171 = call i64 (...) @net_ratelimit()
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %173, label %178

173:                                              ; preds = %170
  %174 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %5, align 8
  %175 = getelementptr inbounds %struct.mv643xx_eth_private, %struct.mv643xx_eth_private* %174, i32 0, i32 2
  %176 = load %struct.TYPE_5__*, %struct.TYPE_5__** %175, align 8
  %177 = call i32 @netdev_err(%struct.TYPE_5__* %176, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  br label %178

178:                                              ; preds = %173, %170
  br label %179

179:                                              ; preds = %178, %156
  %180 = load i32, i32* %9, align 4
  %181 = load i32, i32* @ERROR_SUMMARY, align 4
  %182 = and i32 %180, %181
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %189

184:                                              ; preds = %179
  %185 = load %struct.net_device_stats*, %struct.net_device_stats** %6, align 8
  %186 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 4
  %188 = add nsw i32 %187, 1
  store i32 %188, i32* %186, align 4
  br label %189

189:                                              ; preds = %184, %179
  %190 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %191 = call i32 @dev_kfree_skb(%struct.sk_buff* %190)
  br label %18

192:                                              ; preds = %44, %27
  %193 = load i32, i32* %7, align 4
  %194 = load i32, i32* %4, align 4
  %195 = icmp slt i32 %193, %194
  br i1 %195, label %196, label %206

196:                                              ; preds = %192
  %197 = load %struct.rx_queue*, %struct.rx_queue** %3, align 8
  %198 = getelementptr inbounds %struct.rx_queue, %struct.rx_queue* %197, i32 0, i32 2
  %199 = load i32, i32* %198, align 8
  %200 = shl i32 1, %199
  %201 = xor i32 %200, -1
  %202 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %5, align 8
  %203 = getelementptr inbounds %struct.mv643xx_eth_private, %struct.mv643xx_eth_private* %202, i32 0, i32 1
  %204 = load i32, i32* %203, align 4
  %205 = and i32 %204, %201
  store i32 %205, i32* %203, align 4
  br label %206

206:                                              ; preds = %196, %192
  %207 = load i32, i32* %7, align 4
  ret i32 %207
}

declare dso_local %struct.mv643xx_eth_private* @rxq_to_mp(%struct.rx_queue*) #1

declare dso_local i32 @rmb(...) #1

declare dso_local i32 @dma_unmap_single(i32, i32, i32, i32) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @eth_type_trans(%struct.sk_buff*, %struct.TYPE_5__*) #1

declare dso_local i32 @napi_gro_receive(i32*, %struct.sk_buff*) #1

declare dso_local i64 @net_ratelimit(...) #1

declare dso_local i32 @netdev_err(%struct.TYPE_5__*, i8*) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
