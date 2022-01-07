; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/extr_hix5hd2_gmac.c_hix5hd2_rx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/extr_hix5hd2_gmac.c_hix5hd2_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }
%struct.hix5hd2_priv = type { i64, i32, i32, %struct.TYPE_3__, %struct.sk_buff** }
%struct.TYPE_3__ = type { %struct.hix5hd2_desc* }
%struct.hix5hd2_desc = type { i32, i32 }
%struct.sk_buff = type { i64, i32 }

@RX_BQ_RD_ADDR = common dso_local global i64 0, align 8
@RX_BQ_WR_ADDR = common dso_local global i64 0, align 8
@RX_DESC_NUM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"inconsistent rx_skb\0A\00", align 1
@DESC_DATA_LEN_OFF = common dso_local global i32 0, align 4
@DESC_DATA_MASK = common dso_local global i32 0, align 4
@MAC_MAX_FRAME_SIZE = common dso_local global i64 0, align 8
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"rcv len err, len = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32)* @hix5hd2_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hix5hd2_rx(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.hix5hd2_priv*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.hix5hd2_desc*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %15 = load %struct.net_device*, %struct.net_device** %3, align 8
  %16 = call %struct.hix5hd2_priv* @netdev_priv(%struct.net_device* %15)
  store %struct.hix5hd2_priv* %16, %struct.hix5hd2_priv** %5, align 8
  %17 = load %struct.hix5hd2_priv*, %struct.hix5hd2_priv** %5, align 8
  %18 = getelementptr inbounds %struct.hix5hd2_priv, %struct.hix5hd2_priv* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @RX_BQ_RD_ADDR, align 8
  %21 = add nsw i64 %19, %20
  %22 = call i32 @readl_relaxed(i64 %21)
  %23 = call i32 @dma_cnt(i32 %22)
  store i32 %23, i32* %9, align 4
  %24 = load %struct.hix5hd2_priv*, %struct.hix5hd2_priv** %5, align 8
  %25 = getelementptr inbounds %struct.hix5hd2_priv, %struct.hix5hd2_priv* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @RX_BQ_WR_ADDR, align 8
  %28 = add nsw i64 %26, %27
  %29 = call i32 @readl_relaxed(i64 %28)
  %30 = call i32 @dma_cnt(i32 %29)
  store i32 %30, i32* %10, align 4
  %31 = load i32, i32* %10, align 4
  %32 = load i32, i32* %9, align 4
  %33 = load i32, i32* @RX_DESC_NUM, align 4
  %34 = call i32 @CIRC_CNT(i32 %31, i32 %32, i32 %33)
  store i32 %34, i32* %11, align 4
  %35 = load i32, i32* %11, align 4
  %36 = load i32, i32* %4, align 4
  %37 = icmp sgt i32 %35, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %2
  %39 = load i32, i32* %4, align 4
  store i32 %39, i32* %11, align 4
  br label %40

40:                                               ; preds = %38, %2
  %41 = call i32 (...) @rmb()
  store i32 0, i32* %13, align 4
  %42 = load i32, i32* %9, align 4
  store i32 %42, i32* %12, align 4
  br label %43

43:                                               ; preds = %152, %40
  %44 = load i32, i32* %13, align 4
  %45 = load i32, i32* %11, align 4
  %46 = icmp slt i32 %44, %45
  br i1 %46, label %47, label %155

47:                                               ; preds = %43
  %48 = load %struct.hix5hd2_priv*, %struct.hix5hd2_priv** %5, align 8
  %49 = getelementptr inbounds %struct.hix5hd2_priv, %struct.hix5hd2_priv* %48, i32 0, i32 4
  %50 = load %struct.sk_buff**, %struct.sk_buff*** %49, align 8
  %51 = load i32, i32* %12, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %50, i64 %52
  %54 = load %struct.sk_buff*, %struct.sk_buff** %53, align 8
  store %struct.sk_buff* %54, %struct.sk_buff** %6, align 8
  %55 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %56 = icmp ne %struct.sk_buff* %55, null
  %57 = xor i1 %56, true
  %58 = zext i1 %57 to i32
  %59 = call i64 @unlikely(i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %47
  %62 = load %struct.net_device*, %struct.net_device** %3, align 8
  %63 = call i32 (%struct.net_device*, i8*, ...) @netdev_err(%struct.net_device* %62, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  br label %155

64:                                               ; preds = %47
  %65 = load %struct.hix5hd2_priv*, %struct.hix5hd2_priv** %5, align 8
  %66 = getelementptr inbounds %struct.hix5hd2_priv, %struct.hix5hd2_priv* %65, i32 0, i32 4
  %67 = load %struct.sk_buff**, %struct.sk_buff*** %66, align 8
  %68 = load i32, i32* %12, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %67, i64 %69
  store %struct.sk_buff* null, %struct.sk_buff** %70, align 8
  %71 = load %struct.hix5hd2_priv*, %struct.hix5hd2_priv** %5, align 8
  %72 = getelementptr inbounds %struct.hix5hd2_priv, %struct.hix5hd2_priv* %71, i32 0, i32 3
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 0
  %74 = load %struct.hix5hd2_desc*, %struct.hix5hd2_desc** %73, align 8
  %75 = load i32, i32* %12, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.hix5hd2_desc, %struct.hix5hd2_desc* %74, i64 %76
  store %struct.hix5hd2_desc* %77, %struct.hix5hd2_desc** %7, align 8
  %78 = load %struct.hix5hd2_desc*, %struct.hix5hd2_desc** %7, align 8
  %79 = getelementptr inbounds %struct.hix5hd2_desc, %struct.hix5hd2_desc* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @le32_to_cpu(i32 %80)
  %82 = load i32, i32* @DESC_DATA_LEN_OFF, align 4
  %83 = ashr i32 %81, %82
  %84 = load i32, i32* @DESC_DATA_MASK, align 4
  %85 = and i32 %83, %84
  store i32 %85, i32* %14, align 4
  %86 = load %struct.hix5hd2_desc*, %struct.hix5hd2_desc** %7, align 8
  %87 = getelementptr inbounds %struct.hix5hd2_desc, %struct.hix5hd2_desc* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @le32_to_cpu(i32 %88)
  store i32 %89, i32* %8, align 4
  %90 = load %struct.hix5hd2_priv*, %struct.hix5hd2_priv** %5, align 8
  %91 = getelementptr inbounds %struct.hix5hd2_priv, %struct.hix5hd2_priv* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* %8, align 4
  %94 = load i64, i64* @MAC_MAX_FRAME_SIZE, align 8
  %95 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %96 = call i32 @dma_unmap_single(i32 %92, i32 %93, i64 %94, i32 %95)
  %97 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %98 = load i32, i32* %14, align 4
  %99 = call i32 @skb_put(%struct.sk_buff* %97, i32 %98)
  %100 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %101 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = load i64, i64* @MAC_MAX_FRAME_SIZE, align 8
  %104 = icmp sgt i64 %102, %103
  br i1 %104, label %105, label %123

105:                                              ; preds = %64
  %106 = load %struct.net_device*, %struct.net_device** %3, align 8
  %107 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %108 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = call i32 (%struct.net_device*, i8*, ...) @netdev_err(%struct.net_device* %106, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i64 %109)
  %111 = load %struct.net_device*, %struct.net_device** %3, align 8
  %112 = getelementptr inbounds %struct.net_device, %struct.net_device* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 3
  %114 = load i32, i32* %113, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %113, align 4
  %116 = load %struct.net_device*, %struct.net_device** %3, align 8
  %117 = getelementptr inbounds %struct.net_device, %struct.net_device* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %118, align 4
  %121 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %122 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %121)
  br label %148

123:                                              ; preds = %64
  %124 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %125 = load %struct.net_device*, %struct.net_device** %3, align 8
  %126 = call i32 @eth_type_trans(%struct.sk_buff* %124, %struct.net_device* %125)
  %127 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %128 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %127, i32 0, i32 1
  store i32 %126, i32* %128, align 8
  %129 = load %struct.hix5hd2_priv*, %struct.hix5hd2_priv** %5, align 8
  %130 = getelementptr inbounds %struct.hix5hd2_priv, %struct.hix5hd2_priv* %129, i32 0, i32 1
  %131 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %132 = call i32 @napi_gro_receive(i32* %130, %struct.sk_buff* %131)
  %133 = load %struct.net_device*, %struct.net_device** %3, align 8
  %134 = getelementptr inbounds %struct.net_device, %struct.net_device* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %135, align 4
  %138 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %139 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = load %struct.net_device*, %struct.net_device** %3, align 8
  %142 = getelementptr inbounds %struct.net_device, %struct.net_device* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = sext i32 %144 to i64
  %146 = add nsw i64 %145, %140
  %147 = trunc i64 %146 to i32
  store i32 %147, i32* %143, align 4
  br label %148

148:                                              ; preds = %123, %105
  %149 = load i32, i32* %12, align 4
  %150 = load i32, i32* @RX_DESC_NUM, align 4
  %151 = call i32 @dma_ring_incr(i32 %149, i32 %150)
  store i32 %151, i32* %12, align 4
  br label %152

152:                                              ; preds = %148
  %153 = load i32, i32* %13, align 4
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* %13, align 4
  br label %43

155:                                              ; preds = %61, %43
  %156 = load i32, i32* %12, align 4
  %157 = load i32, i32* %9, align 4
  %158 = icmp ne i32 %156, %157
  br i1 %158, label %159, label %168

159:                                              ; preds = %155
  %160 = load i32, i32* %12, align 4
  %161 = call i32 @dma_byte(i32 %160)
  %162 = load %struct.hix5hd2_priv*, %struct.hix5hd2_priv** %5, align 8
  %163 = getelementptr inbounds %struct.hix5hd2_priv, %struct.hix5hd2_priv* %162, i32 0, i32 0
  %164 = load i64, i64* %163, align 8
  %165 = load i64, i64* @RX_BQ_RD_ADDR, align 8
  %166 = add nsw i64 %164, %165
  %167 = call i32 @writel_relaxed(i32 %161, i64 %166)
  br label %168

168:                                              ; preds = %159, %155
  %169 = load %struct.hix5hd2_priv*, %struct.hix5hd2_priv** %5, align 8
  %170 = call i32 @hix5hd2_rx_refill(%struct.hix5hd2_priv* %169)
  %171 = load i32, i32* %11, align 4
  ret i32 %171
}

declare dso_local %struct.hix5hd2_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @dma_cnt(i32) #1

declare dso_local i32 @readl_relaxed(i64) #1

declare dso_local i32 @CIRC_CNT(i32, i32, i32) #1

declare dso_local i32 @rmb(...) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*, ...) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @dma_unmap_single(i32, i32, i64, i32) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

declare dso_local i32 @eth_type_trans(%struct.sk_buff*, %struct.net_device*) #1

declare dso_local i32 @napi_gro_receive(i32*, %struct.sk_buff*) #1

declare dso_local i32 @dma_ring_incr(i32, i32) #1

declare dso_local i32 @writel_relaxed(i32, i64) #1

declare dso_local i32 @dma_byte(i32) #1

declare dso_local i32 @hix5hd2_rx_refill(%struct.hix5hd2_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
