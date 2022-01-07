; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/extr_fec_mpc52xx.c_mpc52xx_fec_alloc_rx_buffers.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/extr_fec_mpc52xx.c_mpc52xx_fec_alloc_rx_buffers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.bcom_task = type { i32 }
%struct.sk_buff = type { i32 }

@FEC_RX_BUFFER_SIZE = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.bcom_task*)* @mpc52xx_fec_alloc_rx_buffers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mpc52xx_fec_alloc_rx_buffers(%struct.net_device* %0, %struct.bcom_task* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.bcom_task*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.bcom_task* %1, %struct.bcom_task** %5, align 8
  br label %7

7:                                                ; preds = %21, %2
  %8 = load %struct.bcom_task*, %struct.bcom_task** %5, align 8
  %9 = call i32 @bcom_queue_full(%struct.bcom_task* %8)
  %10 = icmp ne i32 %9, 0
  %11 = xor i1 %10, true
  br i1 %11, label %12, label %30

12:                                               ; preds = %7
  %13 = load %struct.net_device*, %struct.net_device** %4, align 8
  %14 = load i32, i32* @FEC_RX_BUFFER_SIZE, align 4
  %15 = call %struct.sk_buff* @netdev_alloc_skb(%struct.net_device* %13, i32 %14)
  store %struct.sk_buff* %15, %struct.sk_buff** %6, align 8
  %16 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %17 = icmp ne %struct.sk_buff* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %12
  %19 = load i32, i32* @EAGAIN, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %31

21:                                               ; preds = %12
  %22 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %23 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @FEC_RX_BUFFER_SIZE, align 4
  %26 = call i32 @memset(i32 %24, i32 0, i32 %25)
  %27 = load %struct.net_device*, %struct.net_device** %4, align 8
  %28 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %29 = call i32 @mpc52xx_fec_rx_submit(%struct.net_device* %27, %struct.sk_buff* %28)
  br label %7

30:                                               ; preds = %7
  store i32 0, i32* %3, align 4
  br label %31

31:                                               ; preds = %30, %18
  %32 = load i32, i32* %3, align 4
  ret i32 %32
}

declare dso_local i32 @bcom_queue_full(%struct.bcom_task*) #1

declare dso_local %struct.sk_buff* @netdev_alloc_skb(%struct.net_device*, i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @mpc52xx_fec_rx_submit(%struct.net_device*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
