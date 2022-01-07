; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/extr_fec_mpc52xx.c_mpc52xx_fec_rx_submit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/extr_fec_mpc52xx.c_mpc52xx_fec_rx_submit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.sk_buff = type { i32 }
%struct.mpc52xx_fec_priv = type { i32 }
%struct.bcom_fec_bd = type { i32, i32 }

@FEC_RX_BUFFER_SIZE = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.sk_buff*)* @mpc52xx_fec_rx_submit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mpc52xx_fec_rx_submit(%struct.net_device* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.mpc52xx_fec_priv*, align 8
  %6 = alloca %struct.bcom_fec_bd*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = call %struct.mpc52xx_fec_priv* @netdev_priv(%struct.net_device* %7)
  store %struct.mpc52xx_fec_priv* %8, %struct.mpc52xx_fec_priv** %5, align 8
  %9 = load %struct.mpc52xx_fec_priv*, %struct.mpc52xx_fec_priv** %5, align 8
  %10 = getelementptr inbounds %struct.mpc52xx_fec_priv, %struct.mpc52xx_fec_priv* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i64 @bcom_prepare_next_buffer(i32 %11)
  %13 = inttoptr i64 %12 to %struct.bcom_fec_bd*
  store %struct.bcom_fec_bd* %13, %struct.bcom_fec_bd** %6, align 8
  %14 = load i32, i32* @FEC_RX_BUFFER_SIZE, align 4
  %15 = load %struct.bcom_fec_bd*, %struct.bcom_fec_bd** %6, align 8
  %16 = getelementptr inbounds %struct.bcom_fec_bd, %struct.bcom_fec_bd* %15, i32 0, i32 1
  store i32 %14, i32* %16, align 4
  %17 = load %struct.net_device*, %struct.net_device** %3, align 8
  %18 = getelementptr inbounds %struct.net_device, %struct.net_device* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %22 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @FEC_RX_BUFFER_SIZE, align 4
  %25 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %26 = call i32 @dma_map_single(i32 %20, i32 %23, i32 %24, i32 %25)
  %27 = load %struct.bcom_fec_bd*, %struct.bcom_fec_bd** %6, align 8
  %28 = getelementptr inbounds %struct.bcom_fec_bd, %struct.bcom_fec_bd* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 4
  %29 = load %struct.mpc52xx_fec_priv*, %struct.mpc52xx_fec_priv** %5, align 8
  %30 = getelementptr inbounds %struct.mpc52xx_fec_priv, %struct.mpc52xx_fec_priv* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %33 = call i32 @bcom_submit_next_buffer(i32 %31, %struct.sk_buff* %32)
  ret void
}

declare dso_local %struct.mpc52xx_fec_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @bcom_prepare_next_buffer(i32) #1

declare dso_local i32 @dma_map_single(i32, i32, i32, i32) #1

declare dso_local i32 @bcom_submit_next_buffer(i32, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
