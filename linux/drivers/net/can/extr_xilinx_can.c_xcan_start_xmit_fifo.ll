; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/extr_xilinx_can.c_xcan_start_xmit_fifo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/extr_xilinx_can.c_xcan_start_xmit_fifo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.net_device = type { i32 }
%struct.xcan_priv = type { i32 (%struct.xcan_priv*, i32)*, i32, i32, i32, i32, i32 (%struct.xcan_priv*, i32, i32)* }

@XCAN_SR_OFFSET = common dso_local global i32 0, align 4
@XCAN_SR_TXFLL_MASK = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@XCAN_TXFIFO_OFFSET = common dso_local global i32 0, align 4
@XCAN_ICR_OFFSET = common dso_local global i32 0, align 4
@XCAN_IXR_TXFEMP_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*)* @xcan_start_xmit_fifo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xcan_start_xmit_fifo(%struct.sk_buff* %0, %struct.net_device* %1) #0 {
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
  %14 = load i32, i32* @XCAN_SR_OFFSET, align 4
  %15 = call i32 %12(%struct.xcan_priv* %13, i32 %14)
  %16 = load i32, i32* @XCAN_SR_TXFLL_MASK, align 4
  %17 = and i32 %15, %16
  %18 = call i64 @unlikely(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %2
  %21 = load i32, i32* @ENOSPC, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %78

23:                                               ; preds = %2
  %24 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %25 = load %struct.net_device*, %struct.net_device** %5, align 8
  %26 = load %struct.xcan_priv*, %struct.xcan_priv** %6, align 8
  %27 = getelementptr inbounds %struct.xcan_priv, %struct.xcan_priv* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.xcan_priv*, %struct.xcan_priv** %6, align 8
  %30 = getelementptr inbounds %struct.xcan_priv, %struct.xcan_priv* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = srem i32 %28, %31
  %33 = call i32 @can_put_echo_skb(%struct.sk_buff* %24, %struct.net_device* %25, i32 %32)
  %34 = load %struct.xcan_priv*, %struct.xcan_priv** %6, align 8
  %35 = getelementptr inbounds %struct.xcan_priv, %struct.xcan_priv* %34, i32 0, i32 4
  %36 = load i64, i64* %7, align 8
  %37 = call i32 @spin_lock_irqsave(i32* %35, i64 %36)
  %38 = load %struct.xcan_priv*, %struct.xcan_priv** %6, align 8
  %39 = getelementptr inbounds %struct.xcan_priv, %struct.xcan_priv* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %39, align 8
  %42 = load %struct.xcan_priv*, %struct.xcan_priv** %6, align 8
  %43 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %44 = load i32, i32* @XCAN_TXFIFO_OFFSET, align 4
  %45 = call i32 @xcan_write_frame(%struct.xcan_priv* %42, %struct.sk_buff* %43, i32 %44)
  %46 = load %struct.xcan_priv*, %struct.xcan_priv** %6, align 8
  %47 = getelementptr inbounds %struct.xcan_priv, %struct.xcan_priv* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = icmp sgt i32 %48, 1
  br i1 %49, label %50, label %58

50:                                               ; preds = %23
  %51 = load %struct.xcan_priv*, %struct.xcan_priv** %6, align 8
  %52 = getelementptr inbounds %struct.xcan_priv, %struct.xcan_priv* %51, i32 0, i32 5
  %53 = load i32 (%struct.xcan_priv*, i32, i32)*, i32 (%struct.xcan_priv*, i32, i32)** %52, align 8
  %54 = load %struct.xcan_priv*, %struct.xcan_priv** %6, align 8
  %55 = load i32, i32* @XCAN_ICR_OFFSET, align 4
  %56 = load i32, i32* @XCAN_IXR_TXFEMP_MASK, align 4
  %57 = call i32 %53(%struct.xcan_priv* %54, i32 %55, i32 %56)
  br label %58

58:                                               ; preds = %50, %23
  %59 = load %struct.xcan_priv*, %struct.xcan_priv** %6, align 8
  %60 = getelementptr inbounds %struct.xcan_priv, %struct.xcan_priv* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.xcan_priv*, %struct.xcan_priv** %6, align 8
  %63 = getelementptr inbounds %struct.xcan_priv, %struct.xcan_priv* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 8
  %65 = sub nsw i32 %61, %64
  %66 = load %struct.xcan_priv*, %struct.xcan_priv** %6, align 8
  %67 = getelementptr inbounds %struct.xcan_priv, %struct.xcan_priv* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = icmp eq i32 %65, %68
  br i1 %69, label %70, label %73

70:                                               ; preds = %58
  %71 = load %struct.net_device*, %struct.net_device** %5, align 8
  %72 = call i32 @netif_stop_queue(%struct.net_device* %71)
  br label %73

73:                                               ; preds = %70, %58
  %74 = load %struct.xcan_priv*, %struct.xcan_priv** %6, align 8
  %75 = getelementptr inbounds %struct.xcan_priv, %struct.xcan_priv* %74, i32 0, i32 4
  %76 = load i64, i64* %7, align 8
  %77 = call i32 @spin_unlock_irqrestore(i32* %75, i64 %76)
  store i32 0, i32* %3, align 4
  br label %78

78:                                               ; preds = %73, %20
  %79 = load i32, i32* %3, align 4
  ret i32 %79
}

declare dso_local %struct.xcan_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @can_put_echo_skb(%struct.sk_buff*, %struct.net_device*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @xcan_write_frame(%struct.xcan_priv*, %struct.sk_buff*, i32) #1

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
