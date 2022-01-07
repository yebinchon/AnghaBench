; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/extr_hisi_femac.c_hisi_femac_rx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/extr_hisi_femac.c_hisi_femac_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }
%struct.hisi_femac_priv = type { i32, i32, i64, i64, %struct.hisi_femac_queue }
%struct.hisi_femac_queue = type { i64, i64, i32*, %struct.sk_buff** }
%struct.sk_buff = type { i64, i32 }

@GLB_IRQ_RAW = common dso_local global i64 0, align 8
@IRQ_INT_RX_RDY = common dso_local global i32 0, align 4
@IQFRM_DES = common dso_local global i64 0, align 8
@RX_FRAME_LEN_MASK = common dso_local global i64 0, align 8
@ETH_FCS_LEN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [21 x i8] c"rx skb NULL. pos=%d\0A\00", align 1
@MAX_FRAME_SIZE = common dso_local global i64 0, align 8
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"rcv len err, len = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32)* @hisi_femac_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hisi_femac_rx(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.hisi_femac_priv*, align 8
  %6 = alloca %struct.hisi_femac_queue*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %13 = load %struct.net_device*, %struct.net_device** %3, align 8
  %14 = call %struct.hisi_femac_priv* @netdev_priv(%struct.net_device* %13)
  store %struct.hisi_femac_priv* %14, %struct.hisi_femac_priv** %5, align 8
  %15 = load %struct.hisi_femac_priv*, %struct.hisi_femac_priv** %5, align 8
  %16 = getelementptr inbounds %struct.hisi_femac_priv, %struct.hisi_femac_priv* %15, i32 0, i32 4
  store %struct.hisi_femac_queue* %16, %struct.hisi_femac_queue** %6, align 8
  store i64 0, i64* %12, align 8
  %17 = load %struct.hisi_femac_queue*, %struct.hisi_femac_queue** %6, align 8
  %18 = getelementptr inbounds %struct.hisi_femac_queue, %struct.hisi_femac_queue* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  store i64 %19, i64* %10, align 8
  br label %20

20:                                               ; preds = %154, %2
  %21 = load %struct.hisi_femac_priv*, %struct.hisi_femac_priv** %5, align 8
  %22 = getelementptr inbounds %struct.hisi_femac_priv, %struct.hisi_femac_priv* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @GLB_IRQ_RAW, align 8
  %25 = add nsw i64 %23, %24
  %26 = call i32 @readl(i64 %25)
  %27 = load i32, i32* @IRQ_INT_RX_RDY, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %155

30:                                               ; preds = %20
  %31 = load %struct.hisi_femac_priv*, %struct.hisi_femac_priv** %5, align 8
  %32 = getelementptr inbounds %struct.hisi_femac_priv, %struct.hisi_femac_priv* %31, i32 0, i32 3
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @IQFRM_DES, align 8
  %35 = add nsw i64 %33, %34
  %36 = call i32 @readl(i64 %35)
  %37 = sext i32 %36 to i64
  store i64 %37, i64* %9, align 8
  %38 = load i64, i64* %9, align 8
  %39 = load i64, i64* @RX_FRAME_LEN_MASK, align 8
  %40 = and i64 %38, %39
  store i64 %40, i64* %11, align 8
  %41 = load i64, i64* @ETH_FCS_LEN, align 8
  %42 = load i64, i64* %11, align 8
  %43 = sub i64 %42, %41
  store i64 %43, i64* %11, align 8
  %44 = load i32, i32* @IRQ_INT_RX_RDY, align 4
  %45 = load %struct.hisi_femac_priv*, %struct.hisi_femac_priv** %5, align 8
  %46 = getelementptr inbounds %struct.hisi_femac_priv, %struct.hisi_femac_priv* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @GLB_IRQ_RAW, align 8
  %49 = add nsw i64 %47, %48
  %50 = call i32 @writel(i32 %44, i64 %49)
  %51 = load i64, i64* %12, align 8
  %52 = add i64 %51, 1
  store i64 %52, i64* %12, align 8
  %53 = load %struct.hisi_femac_queue*, %struct.hisi_femac_queue** %6, align 8
  %54 = getelementptr inbounds %struct.hisi_femac_queue, %struct.hisi_femac_queue* %53, i32 0, i32 3
  %55 = load %struct.sk_buff**, %struct.sk_buff*** %54, align 8
  %56 = load i64, i64* %10, align 8
  %57 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %55, i64 %56
  %58 = load %struct.sk_buff*, %struct.sk_buff** %57, align 8
  store %struct.sk_buff* %58, %struct.sk_buff** %7, align 8
  %59 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %60 = icmp ne %struct.sk_buff* %59, null
  %61 = xor i1 %60, true
  %62 = zext i1 %61 to i32
  %63 = call i64 @unlikely(i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %30
  %66 = load %struct.net_device*, %struct.net_device** %3, align 8
  %67 = load i64, i64* %10, align 8
  %68 = call i32 @netdev_err(%struct.net_device* %66, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i64 %67)
  br label %155

69:                                               ; preds = %30
  %70 = load %struct.hisi_femac_queue*, %struct.hisi_femac_queue** %6, align 8
  %71 = getelementptr inbounds %struct.hisi_femac_queue, %struct.hisi_femac_queue* %70, i32 0, i32 3
  %72 = load %struct.sk_buff**, %struct.sk_buff*** %71, align 8
  %73 = load i64, i64* %10, align 8
  %74 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %72, i64 %73
  store %struct.sk_buff* null, %struct.sk_buff** %74, align 8
  %75 = load %struct.hisi_femac_queue*, %struct.hisi_femac_queue** %6, align 8
  %76 = getelementptr inbounds %struct.hisi_femac_queue, %struct.hisi_femac_queue* %75, i32 0, i32 2
  %77 = load i32*, i32** %76, align 8
  %78 = load i64, i64* %10, align 8
  %79 = getelementptr inbounds i32, i32* %77, i64 %78
  %80 = load i32, i32* %79, align 4
  store i32 %80, i32* %8, align 4
  %81 = load %struct.hisi_femac_priv*, %struct.hisi_femac_priv** %5, align 8
  %82 = getelementptr inbounds %struct.hisi_femac_priv, %struct.hisi_femac_priv* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* %8, align 4
  %85 = load i64, i64* @MAX_FRAME_SIZE, align 8
  %86 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %87 = call i32 @dma_unmap_single(i32 %83, i32 %84, i64 %85, i32 %86)
  %88 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %89 = load i64, i64* %11, align 8
  %90 = call i32 @skb_put(%struct.sk_buff* %88, i64 %89)
  %91 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %92 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* @MAX_FRAME_SIZE, align 8
  %95 = icmp sgt i64 %93, %94
  %96 = zext i1 %95 to i32
  %97 = call i64 @unlikely(i32 %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %117

99:                                               ; preds = %69
  %100 = load %struct.net_device*, %struct.net_device** %3, align 8
  %101 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %102 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = call i32 @netdev_err(%struct.net_device* %100, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i64 %103)
  %105 = load %struct.net_device*, %struct.net_device** %3, align 8
  %106 = getelementptr inbounds %struct.net_device, %struct.net_device* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 3
  %108 = load i32, i32* %107, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %107, align 4
  %110 = load %struct.net_device*, %struct.net_device** %3, align 8
  %111 = getelementptr inbounds %struct.net_device, %struct.net_device* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %112, align 4
  %115 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %116 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %115)
  br label %142

117:                                              ; preds = %69
  %118 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %119 = load %struct.net_device*, %struct.net_device** %3, align 8
  %120 = call i32 @eth_type_trans(%struct.sk_buff* %118, %struct.net_device* %119)
  %121 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %122 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %121, i32 0, i32 1
  store i32 %120, i32* %122, align 8
  %123 = load %struct.hisi_femac_priv*, %struct.hisi_femac_priv** %5, align 8
  %124 = getelementptr inbounds %struct.hisi_femac_priv, %struct.hisi_femac_priv* %123, i32 0, i32 0
  %125 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %126 = call i32 @napi_gro_receive(i32* %124, %struct.sk_buff* %125)
  %127 = load %struct.net_device*, %struct.net_device** %3, align 8
  %128 = getelementptr inbounds %struct.net_device, %struct.net_device* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %129, align 4
  %132 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %133 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = load %struct.net_device*, %struct.net_device** %3, align 8
  %136 = getelementptr inbounds %struct.net_device, %struct.net_device* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = sext i32 %138 to i64
  %140 = add nsw i64 %139, %134
  %141 = trunc i64 %140 to i32
  store i32 %141, i32* %137, align 4
  br label %142

142:                                              ; preds = %117, %99
  %143 = load i64, i64* %10, align 8
  %144 = add i64 %143, 1
  %145 = load %struct.hisi_femac_queue*, %struct.hisi_femac_queue** %6, align 8
  %146 = getelementptr inbounds %struct.hisi_femac_queue, %struct.hisi_femac_queue* %145, i32 0, i32 1
  %147 = load i64, i64* %146, align 8
  %148 = urem i64 %144, %147
  store i64 %148, i64* %10, align 8
  %149 = load i64, i64* %12, align 8
  %150 = load i32, i32* %4, align 4
  %151 = sext i32 %150 to i64
  %152 = icmp uge i64 %149, %151
  br i1 %152, label %153, label %154

153:                                              ; preds = %142
  br label %155

154:                                              ; preds = %142
  br label %20

155:                                              ; preds = %153, %65, %20
  %156 = load i64, i64* %10, align 8
  %157 = load %struct.hisi_femac_queue*, %struct.hisi_femac_queue** %6, align 8
  %158 = getelementptr inbounds %struct.hisi_femac_queue, %struct.hisi_femac_queue* %157, i32 0, i32 0
  store i64 %156, i64* %158, align 8
  %159 = load %struct.hisi_femac_priv*, %struct.hisi_femac_priv** %5, align 8
  %160 = call i32 @hisi_femac_rx_refill(%struct.hisi_femac_priv* %159)
  %161 = load i64, i64* %12, align 8
  %162 = trunc i64 %161 to i32
  ret i32 %162
}

declare dso_local %struct.hisi_femac_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*, i64) #1

declare dso_local i32 @dma_unmap_single(i32, i32, i64, i32) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i64) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

declare dso_local i32 @eth_type_trans(%struct.sk_buff*, %struct.net_device*) #1

declare dso_local i32 @napi_gro_receive(i32*, %struct.sk_buff*) #1

declare dso_local i32 @hisi_femac_rx_refill(%struct.hisi_femac_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
