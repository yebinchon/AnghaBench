; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/extr_xilinx_can.c_xcan_start_xmit_mailbox.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/extr_xilinx_can.c_xcan_start_xmit_mailbox.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.net_device = type { i32 }
%struct.xcan_priv = type { i32 (%struct.xcan_priv*, i32)*, i32, i32 (%struct.xcan_priv*, i32, i32)*, i32 }

@XCAN_TRR_OFFSET = common dso_local global i32 0, align 4
@XCAN_TX_MAILBOX_IDX = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*)* @xcan_start_xmit_mailbox to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xcan_start_xmit_mailbox(%struct.sk_buff* %0, %struct.net_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.xcan_priv*, align 8
  %7 = alloca i64, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  %8 = load %struct.net_device*, %struct.net_device** %5, align 8
  %9 = call %struct.xcan_priv* @netdev_priv(%struct.net_device* %8)
  store %struct.xcan_priv* %9, %struct.xcan_priv** %6, align 8
  %10 = load %struct.xcan_priv*, %struct.xcan_priv** %6, align 8
  %11 = getelementptr inbounds %struct.xcan_priv, %struct.xcan_priv* %10, i32 0, i32 0
  %12 = load i32 (%struct.xcan_priv*, i32)*, i32 (%struct.xcan_priv*, i32)** %11, align 8
  %13 = load %struct.xcan_priv*, %struct.xcan_priv** %6, align 8
  %14 = load i32, i32* @XCAN_TRR_OFFSET, align 4
  %15 = call i32 %12(%struct.xcan_priv* %13, i32 %14)
  %16 = load i32, i32* @XCAN_TX_MAILBOX_IDX, align 4
  %17 = call i32 @BIT(i32 %16)
  %18 = and i32 %15, %17
  %19 = call i64 @unlikely(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %2
  %22 = load i32, i32* @ENOSPC, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %55

24:                                               ; preds = %2
  %25 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %26 = load %struct.net_device*, %struct.net_device** %5, align 8
  %27 = call i32 @can_put_echo_skb(%struct.sk_buff* %25, %struct.net_device* %26, i32 0)
  %28 = load %struct.xcan_priv*, %struct.xcan_priv** %6, align 8
  %29 = getelementptr inbounds %struct.xcan_priv, %struct.xcan_priv* %28, i32 0, i32 1
  %30 = load i64, i64* %7, align 8
  %31 = call i32 @spin_lock_irqsave(i32* %29, i64 %30)
  %32 = load %struct.xcan_priv*, %struct.xcan_priv** %6, align 8
  %33 = getelementptr inbounds %struct.xcan_priv, %struct.xcan_priv* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 8
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %33, align 8
  %36 = load %struct.xcan_priv*, %struct.xcan_priv** %6, align 8
  %37 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %38 = load i32, i32* @XCAN_TX_MAILBOX_IDX, align 4
  %39 = call i32 @XCAN_TXMSG_FRAME_OFFSET(i32 %38)
  %40 = call i32 @xcan_write_frame(%struct.xcan_priv* %36, %struct.sk_buff* %37, i32 %39)
  %41 = load %struct.xcan_priv*, %struct.xcan_priv** %6, align 8
  %42 = getelementptr inbounds %struct.xcan_priv, %struct.xcan_priv* %41, i32 0, i32 2
  %43 = load i32 (%struct.xcan_priv*, i32, i32)*, i32 (%struct.xcan_priv*, i32, i32)** %42, align 8
  %44 = load %struct.xcan_priv*, %struct.xcan_priv** %6, align 8
  %45 = load i32, i32* @XCAN_TRR_OFFSET, align 4
  %46 = load i32, i32* @XCAN_TX_MAILBOX_IDX, align 4
  %47 = call i32 @BIT(i32 %46)
  %48 = call i32 %43(%struct.xcan_priv* %44, i32 %45, i32 %47)
  %49 = load %struct.net_device*, %struct.net_device** %5, align 8
  %50 = call i32 @netif_stop_queue(%struct.net_device* %49)
  %51 = load %struct.xcan_priv*, %struct.xcan_priv** %6, align 8
  %52 = getelementptr inbounds %struct.xcan_priv, %struct.xcan_priv* %51, i32 0, i32 1
  %53 = load i64, i64* %7, align 8
  %54 = call i32 @spin_unlock_irqrestore(i32* %52, i64 %53)
  store i32 0, i32* %3, align 4
  br label %55

55:                                               ; preds = %24, %21
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

declare dso_local %struct.xcan_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @can_put_echo_skb(%struct.sk_buff*, %struct.net_device*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @xcan_write_frame(%struct.xcan_priv*, %struct.sk_buff*, i32) #1

declare dso_local i32 @XCAN_TXMSG_FRAME_OFFSET(i32) #1

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
