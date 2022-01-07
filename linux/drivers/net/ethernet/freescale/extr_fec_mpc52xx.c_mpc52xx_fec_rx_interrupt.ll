; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/extr_fec_mpc52xx.c_mpc52xx_fec_rx_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/extr_fec_mpc52xx.c_mpc52xx_fec_rx_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.mpc52xx_fec_priv = type { i32, i32 }
%struct.sk_buff = type { i32, i32 }
%struct.bcom_fec_bd = type { i32 }
%struct.bcom_bd = type { i32 }

@BCOM_FEC_RX_BD_ERRORS = common dso_local global i32 0, align 4
@FEC_RX_BUFFER_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Low memory - dropped packet.\0A\00", align 1
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@BCOM_FEC_RX_BD_LEN_MASK = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @mpc52xx_fec_rx_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mpc52xx_fec_rx_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.mpc52xx_fec_priv*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca %struct.bcom_fec_bd*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %13 = load i8*, i8** %4, align 8
  %14 = bitcast i8* %13 to %struct.net_device*
  store %struct.net_device* %14, %struct.net_device** %5, align 8
  %15 = load %struct.net_device*, %struct.net_device** %5, align 8
  %16 = call %struct.mpc52xx_fec_priv* @netdev_priv(%struct.net_device* %15)
  store %struct.mpc52xx_fec_priv* %16, %struct.mpc52xx_fec_priv** %6, align 8
  %17 = load %struct.mpc52xx_fec_priv*, %struct.mpc52xx_fec_priv** %6, align 8
  %18 = getelementptr inbounds %struct.mpc52xx_fec_priv, %struct.mpc52xx_fec_priv* %17, i32 0, i32 0
  %19 = call i32 @spin_lock(i32* %18)
  br label %20

20:                                               ; preds = %101, %54, %39, %2
  %21 = load %struct.mpc52xx_fec_priv*, %struct.mpc52xx_fec_priv** %6, align 8
  %22 = getelementptr inbounds %struct.mpc52xx_fec_priv, %struct.mpc52xx_fec_priv* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i64 @bcom_buffer_done(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %105

26:                                               ; preds = %20
  %27 = load %struct.mpc52xx_fec_priv*, %struct.mpc52xx_fec_priv** %6, align 8
  %28 = getelementptr inbounds %struct.mpc52xx_fec_priv, %struct.mpc52xx_fec_priv* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = bitcast %struct.bcom_fec_bd** %9 to %struct.bcom_bd**
  %31 = call %struct.sk_buff* @bcom_retrieve_buffer(i32 %29, i32* %10, %struct.bcom_bd** %30)
  store %struct.sk_buff* %31, %struct.sk_buff** %7, align 8
  %32 = load %struct.bcom_fec_bd*, %struct.bcom_fec_bd** %9, align 8
  %33 = getelementptr inbounds %struct.bcom_fec_bd, %struct.bcom_fec_bd* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %11, align 4
  %35 = load i32, i32* %10, align 4
  %36 = load i32, i32* @BCOM_FEC_RX_BD_ERRORS, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %48

39:                                               ; preds = %26
  %40 = load %struct.net_device*, %struct.net_device** %5, align 8
  %41 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %42 = call i32 @mpc52xx_fec_rx_submit(%struct.net_device* %40, %struct.sk_buff* %41)
  %43 = load %struct.net_device*, %struct.net_device** %5, align 8
  %44 = getelementptr inbounds %struct.net_device, %struct.net_device* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %45, align 4
  br label %20

48:                                               ; preds = %26
  %49 = load %struct.net_device*, %struct.net_device** %5, align 8
  %50 = load i32, i32* @FEC_RX_BUFFER_SIZE, align 4
  %51 = call %struct.sk_buff* @netdev_alloc_skb(%struct.net_device* %49, i32 %50)
  store %struct.sk_buff* %51, %struct.sk_buff** %8, align 8
  %52 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %53 = icmp ne %struct.sk_buff* %52, null
  br i1 %53, label %66, label %54

54:                                               ; preds = %48
  %55 = load %struct.net_device*, %struct.net_device** %5, align 8
  %56 = getelementptr inbounds %struct.net_device, %struct.net_device* %55, i32 0, i32 0
  %57 = call i32 @dev_notice(%struct.TYPE_4__* %56, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %58 = load %struct.net_device*, %struct.net_device** %5, align 8
  %59 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %60 = call i32 @mpc52xx_fec_rx_submit(%struct.net_device* %58, %struct.sk_buff* %59)
  %61 = load %struct.net_device*, %struct.net_device** %5, align 8
  %62 = getelementptr inbounds %struct.net_device, %struct.net_device* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %63, align 4
  br label %20

66:                                               ; preds = %48
  %67 = load %struct.net_device*, %struct.net_device** %5, align 8
  %68 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %69 = call i32 @mpc52xx_fec_rx_submit(%struct.net_device* %67, %struct.sk_buff* %68)
  %70 = load %struct.mpc52xx_fec_priv*, %struct.mpc52xx_fec_priv** %6, align 8
  %71 = getelementptr inbounds %struct.mpc52xx_fec_priv, %struct.mpc52xx_fec_priv* %70, i32 0, i32 0
  %72 = call i32 @spin_unlock(i32* %71)
  %73 = load %struct.net_device*, %struct.net_device** %5, align 8
  %74 = getelementptr inbounds %struct.net_device, %struct.net_device* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* %11, align 4
  %78 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %79 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %82 = call i32 @dma_unmap_single(i32 %76, i32 %77, i32 %80, i32 %81)
  %83 = load i32, i32* %10, align 4
  %84 = load i32, i32* @BCOM_FEC_RX_BD_LEN_MASK, align 4
  %85 = and i32 %83, %84
  store i32 %85, i32* %12, align 4
  %86 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %87 = load i32, i32* %12, align 4
  %88 = sub nsw i32 %87, 4
  %89 = call i32 @skb_put(%struct.sk_buff* %86, i32 %88)
  %90 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %91 = load %struct.net_device*, %struct.net_device** %5, align 8
  %92 = call i32 @eth_type_trans(%struct.sk_buff* %90, %struct.net_device* %91)
  %93 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %94 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %93, i32 0, i32 0
  store i32 %92, i32* %94, align 4
  %95 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %96 = call i32 @skb_defer_rx_timestamp(%struct.sk_buff* %95)
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %101, label %98

98:                                               ; preds = %66
  %99 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %100 = call i32 @netif_rx(%struct.sk_buff* %99)
  br label %101

101:                                              ; preds = %98, %66
  %102 = load %struct.mpc52xx_fec_priv*, %struct.mpc52xx_fec_priv** %6, align 8
  %103 = getelementptr inbounds %struct.mpc52xx_fec_priv, %struct.mpc52xx_fec_priv* %102, i32 0, i32 0
  %104 = call i32 @spin_lock(i32* %103)
  br label %20

105:                                              ; preds = %20
  %106 = load %struct.mpc52xx_fec_priv*, %struct.mpc52xx_fec_priv** %6, align 8
  %107 = getelementptr inbounds %struct.mpc52xx_fec_priv, %struct.mpc52xx_fec_priv* %106, i32 0, i32 0
  %108 = call i32 @spin_unlock(i32* %107)
  %109 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %109
}

declare dso_local %struct.mpc52xx_fec_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @bcom_buffer_done(i32) #1

declare dso_local %struct.sk_buff* @bcom_retrieve_buffer(i32, i32*, %struct.bcom_bd**) #1

declare dso_local i32 @mpc52xx_fec_rx_submit(%struct.net_device*, %struct.sk_buff*) #1

declare dso_local %struct.sk_buff* @netdev_alloc_skb(%struct.net_device*, i32) #1

declare dso_local i32 @dev_notice(%struct.TYPE_4__*, i8*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @dma_unmap_single(i32, i32, i32, i32) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @eth_type_trans(%struct.sk_buff*, %struct.net_device*) #1

declare dso_local i32 @skb_defer_rx_timestamp(%struct.sk_buff*) #1

declare dso_local i32 @netif_rx(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
