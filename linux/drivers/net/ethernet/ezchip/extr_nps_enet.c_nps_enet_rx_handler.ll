; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ezchip/extr_nps_enet.c_nps_enet_rx_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ezchip/extr_nps_enet.c_nps_enet_rx_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32 }
%struct.nps_enet_priv = type { i32 }
%struct.sk_buff = type { i32, i32, i32 }

@NPS_ENET_REG_RX_CTL = common dso_local global i32 0, align 4
@RX_CTL_CR_MASK = common dso_local global i32 0, align 4
@RX_CTL_CR_SHIFT = common dso_local global i32 0, align 4
@RX_CTL_ER_MASK = common dso_local global i32 0, align 4
@RX_CTL_ER_SHIFT = common dso_local global i32 0, align 4
@RX_CTL_CRC_MASK = common dso_local global i32 0, align 4
@RX_CTL_CRC_SHIFT = common dso_local global i32 0, align 4
@RX_CTL_NR_MASK = common dso_local global i32 0, align 4
@RX_CTL_NR_SHIFT = common dso_local global i32 0, align 4
@ETH_ZLEN = common dso_local global i32 0, align 4
@CHECKSUM_UNNECESSARY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @nps_enet_rx_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nps_enet_rx_handler(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.nps_enet_priv*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %13 = load %struct.net_device*, %struct.net_device** %3, align 8
  %14 = call %struct.nps_enet_priv* @netdev_priv(%struct.net_device* %13)
  store %struct.nps_enet_priv* %14, %struct.nps_enet_priv** %7, align 8
  %15 = load %struct.nps_enet_priv*, %struct.nps_enet_priv** %7, align 8
  %16 = load i32, i32* @NPS_ENET_REG_RX_CTL, align 4
  %17 = call i32 @nps_enet_reg_get(%struct.nps_enet_priv* %15, i32 %16)
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* %9, align 4
  %19 = load i32, i32* @RX_CTL_CR_MASK, align 4
  %20 = and i32 %18, %19
  %21 = load i32, i32* @RX_CTL_CR_SHIFT, align 4
  %22 = ashr i32 %20, %21
  store i32 %22, i32* %10, align 4
  %23 = load i32, i32* %9, align 4
  %24 = load i32, i32* @RX_CTL_ER_MASK, align 4
  %25 = and i32 %23, %24
  %26 = load i32, i32* @RX_CTL_ER_SHIFT, align 4
  %27 = ashr i32 %25, %26
  store i32 %27, i32* %11, align 4
  %28 = load i32, i32* %9, align 4
  %29 = load i32, i32* @RX_CTL_CRC_MASK, align 4
  %30 = and i32 %28, %29
  %31 = load i32, i32* @RX_CTL_CRC_SHIFT, align 4
  %32 = ashr i32 %30, %31
  store i32 %32, i32* %12, align 4
  %33 = load i32, i32* %9, align 4
  %34 = load i32, i32* @RX_CTL_NR_MASK, align 4
  %35 = and i32 %33, %34
  %36 = load i32, i32* @RX_CTL_NR_SHIFT, align 4
  %37 = ashr i32 %35, %36
  store i32 %37, i32* %4, align 4
  %38 = load i32, i32* %10, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %42, label %40

40:                                               ; preds = %1
  %41 = load i32, i32* %6, align 4
  store i32 %41, i32* %2, align 4
  br label %150

42:                                               ; preds = %1
  %43 = load i32, i32* %6, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %6, align 4
  %45 = load i32, i32* %11, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %42
  %48 = load %struct.net_device*, %struct.net_device** %3, align 8
  %49 = getelementptr inbounds %struct.net_device, %struct.net_device* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %50, align 4
  store i32 1, i32* %5, align 4
  br label %53

53:                                               ; preds = %47, %42
  %54 = load i32, i32* %12, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %67

56:                                               ; preds = %53
  %57 = load %struct.net_device*, %struct.net_device** %3, align 8
  %58 = getelementptr inbounds %struct.net_device, %struct.net_device* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 5
  %60 = load i32, i32* %59, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %59, align 4
  %62 = load %struct.net_device*, %struct.net_device** %3, align 8
  %63 = getelementptr inbounds %struct.net_device, %struct.net_device* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %64, align 4
  store i32 1, i32* %5, align 4
  br label %67

67:                                               ; preds = %56, %53
  %68 = load i32, i32* %4, align 4
  %69 = load i32, i32* @ETH_ZLEN, align 4
  %70 = icmp slt i32 %68, %69
  %71 = zext i1 %70 to i32
  %72 = call i64 @unlikely(i32 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %85

74:                                               ; preds = %67
  %75 = load %struct.net_device*, %struct.net_device** %3, align 8
  %76 = getelementptr inbounds %struct.net_device, %struct.net_device* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 4
  %78 = load i32, i32* %77, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %77, align 4
  %80 = load %struct.net_device*, %struct.net_device** %3, align 8
  %81 = getelementptr inbounds %struct.net_device, %struct.net_device* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %82, align 4
  store i32 1, i32* %5, align 4
  br label %85

85:                                               ; preds = %74, %67
  %86 = load i32, i32* %5, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %85
  br label %141

89:                                               ; preds = %85
  %90 = load %struct.net_device*, %struct.net_device** %3, align 8
  %91 = load i32, i32* %4, align 4
  %92 = call %struct.sk_buff* @netdev_alloc_skb_ip_align(%struct.net_device* %90, i32 %91)
  store %struct.sk_buff* %92, %struct.sk_buff** %8, align 8
  %93 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %94 = icmp ne %struct.sk_buff* %93, null
  %95 = xor i1 %94, true
  %96 = zext i1 %95 to i32
  %97 = call i64 @unlikely(i32 %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %110

99:                                               ; preds = %89
  %100 = load %struct.net_device*, %struct.net_device** %3, align 8
  %101 = getelementptr inbounds %struct.net_device, %struct.net_device* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 3
  %103 = load i32, i32* %102, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %102, align 4
  %105 = load %struct.net_device*, %struct.net_device** %3, align 8
  %106 = getelementptr inbounds %struct.net_device, %struct.net_device* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %107, align 4
  br label %141

110:                                              ; preds = %89
  %111 = load %struct.net_device*, %struct.net_device** %3, align 8
  %112 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %113 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* %4, align 4
  %116 = call i32 @nps_enet_read_rx_fifo(%struct.net_device* %111, i32 %114, i32 %115)
  %117 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %118 = load i32, i32* %4, align 4
  %119 = call i32 @skb_put(%struct.sk_buff* %117, i32 %118)
  %120 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %121 = load %struct.net_device*, %struct.net_device** %3, align 8
  %122 = call i32 @eth_type_trans(%struct.sk_buff* %120, %struct.net_device* %121)
  %123 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %124 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %123, i32 0, i32 1
  store i32 %122, i32* %124, align 4
  %125 = load i32, i32* @CHECKSUM_UNNECESSARY, align 4
  %126 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %127 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %126, i32 0, i32 0
  store i32 %125, i32* %127, align 4
  %128 = load %struct.net_device*, %struct.net_device** %3, align 8
  %129 = getelementptr inbounds %struct.net_device, %struct.net_device* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %130, align 4
  %133 = load i32, i32* %4, align 4
  %134 = load %struct.net_device*, %struct.net_device** %3, align 8
  %135 = getelementptr inbounds %struct.net_device, %struct.net_device* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = add nsw i32 %137, %133
  store i32 %138, i32* %136, align 4
  %139 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %140 = call i32 @netif_receive_skb(%struct.sk_buff* %139)
  br label %145

141:                                              ; preds = %99, %88
  %142 = load %struct.net_device*, %struct.net_device** %3, align 8
  %143 = load i32, i32* %4, align 4
  %144 = call i32 @nps_enet_clean_rx_fifo(%struct.net_device* %142, i32 %143)
  br label %145

145:                                              ; preds = %141, %110
  %146 = load %struct.nps_enet_priv*, %struct.nps_enet_priv** %7, align 8
  %147 = load i32, i32* @NPS_ENET_REG_RX_CTL, align 4
  %148 = call i32 @nps_enet_reg_set(%struct.nps_enet_priv* %146, i32 %147, i32 0)
  %149 = load i32, i32* %6, align 4
  store i32 %149, i32* %2, align 4
  br label %150

150:                                              ; preds = %145, %40
  %151 = load i32, i32* %2, align 4
  ret i32 %151
}

declare dso_local %struct.nps_enet_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @nps_enet_reg_get(%struct.nps_enet_priv*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.sk_buff* @netdev_alloc_skb_ip_align(%struct.net_device*, i32) #1

declare dso_local i32 @nps_enet_read_rx_fifo(%struct.net_device*, i32, i32) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @eth_type_trans(%struct.sk_buff*, %struct.net_device*) #1

declare dso_local i32 @netif_receive_skb(%struct.sk_buff*) #1

declare dso_local i32 @nps_enet_clean_rx_fifo(%struct.net_device*, i32) #1

declare dso_local i32 @nps_enet_reg_set(%struct.nps_enet_priv*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
