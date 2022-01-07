; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/microchip/extr_lan743x_main.c_lan743x_rx_allocate_skb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/microchip/extr_lan743x_main.c_lan743x_rx_allocate_skb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.lan743x_rx = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@LAN743X_MAX_FRAME_SIZE = common dso_local global i32 0, align 4
@ETH_HLEN = common dso_local global i32 0, align 4
@RX_HEAD_PADDING = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@GFP_DMA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.lan743x_rx*)* @lan743x_rx_allocate_skb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @lan743x_rx_allocate_skb(%struct.lan743x_rx* %0) #0 {
  %2 = alloca %struct.lan743x_rx*, align 8
  %3 = alloca i32, align 4
  store %struct.lan743x_rx* %0, %struct.lan743x_rx** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load i32, i32* @LAN743X_MAX_FRAME_SIZE, align 4
  %5 = load i32, i32* @ETH_HLEN, align 4
  %6 = add nsw i32 %4, %5
  %7 = add nsw i32 %6, 4
  %8 = load i32, i32* @RX_HEAD_PADDING, align 4
  %9 = add nsw i32 %7, %8
  store i32 %9, i32* %3, align 4
  %10 = load %struct.lan743x_rx*, %struct.lan743x_rx** %2, align 8
  %11 = getelementptr inbounds %struct.lan743x_rx, %struct.lan743x_rx* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* %3, align 4
  %16 = load i32, i32* @GFP_ATOMIC, align 4
  %17 = load i32, i32* @GFP_DMA, align 4
  %18 = or i32 %16, %17
  %19 = call %struct.sk_buff* @__netdev_alloc_skb(i32 %14, i32 %15, i32 %18)
  ret %struct.sk_buff* %19
}

declare dso_local %struct.sk_buff* @__netdev_alloc_skb(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
