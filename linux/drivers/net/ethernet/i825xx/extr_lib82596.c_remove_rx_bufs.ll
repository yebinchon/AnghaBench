; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/i825xx/extr_lib82596.c_remove_rx_bufs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/i825xx/extr_lib82596.c_remove_rx_bufs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.i596_private = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.i596_rbd* }
%struct.i596_rbd = type { i32*, i32 }

@rx_ring_size = common dso_local global i32 0, align 4
@PKT_BUF_SZ = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @remove_rx_bufs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @remove_rx_bufs(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.i596_private*, align 8
  %4 = alloca %struct.i596_rbd*, align 8
  %5 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %6 = load %struct.net_device*, %struct.net_device** %2, align 8
  %7 = call %struct.i596_private* @netdev_priv(%struct.net_device* %6)
  store %struct.i596_private* %7, %struct.i596_private** %3, align 8
  store i32 0, i32* %5, align 4
  %8 = load %struct.i596_private*, %struct.i596_private** %3, align 8
  %9 = getelementptr inbounds %struct.i596_private, %struct.i596_private* %8, i32 0, i32 0
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load %struct.i596_rbd*, %struct.i596_rbd** %11, align 8
  store %struct.i596_rbd* %12, %struct.i596_rbd** %4, align 8
  br label %13

13:                                               ; preds = %40, %1
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @rx_ring_size, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %45

17:                                               ; preds = %13
  %18 = load %struct.i596_rbd*, %struct.i596_rbd** %4, align 8
  %19 = getelementptr inbounds %struct.i596_rbd, %struct.i596_rbd* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = icmp eq i32* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %17
  br label %45

23:                                               ; preds = %17
  %24 = load %struct.net_device*, %struct.net_device** %2, align 8
  %25 = getelementptr inbounds %struct.net_device, %struct.net_device* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.i596_rbd*, %struct.i596_rbd** %4, align 8
  %29 = getelementptr inbounds %struct.i596_rbd, %struct.i596_rbd* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = call i64 @SWAP32(i32 %30)
  %32 = trunc i64 %31 to i32
  %33 = load i32, i32* @PKT_BUF_SZ, align 4
  %34 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %35 = call i32 @dma_unmap_single(i32 %27, i32 %32, i32 %33, i32 %34)
  %36 = load %struct.i596_rbd*, %struct.i596_rbd** %4, align 8
  %37 = getelementptr inbounds %struct.i596_rbd, %struct.i596_rbd* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = call i32 @dev_kfree_skb(i32* %38)
  br label %40

40:                                               ; preds = %23
  %41 = load i32, i32* %5, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %5, align 4
  %43 = load %struct.i596_rbd*, %struct.i596_rbd** %4, align 8
  %44 = getelementptr inbounds %struct.i596_rbd, %struct.i596_rbd* %43, i32 1
  store %struct.i596_rbd* %44, %struct.i596_rbd** %4, align 8
  br label %13

45:                                               ; preds = %22, %13
  ret void
}

declare dso_local %struct.i596_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @dma_unmap_single(i32, i32, i32, i32) #1

declare dso_local i64 @SWAP32(i32) #1

declare dso_local i32 @dev_kfree_skb(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
