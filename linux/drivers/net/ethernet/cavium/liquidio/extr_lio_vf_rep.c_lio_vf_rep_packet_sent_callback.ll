; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_lio_vf_rep.c_lio_vf_rep_packet_sent_callback.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_lio_vf_rep.c_lio_vf_rep_packet_sent_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.octeon_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.octeon_soft_command = type { i32, i32, i32, %struct.sk_buff* }
%struct.sk_buff = type { %struct.net_device* }
%struct.net_device = type { i32 }

@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.octeon_device*, i32, i8*)* @lio_vf_rep_packet_sent_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lio_vf_rep_packet_sent_callback(%struct.octeon_device* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.octeon_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.octeon_soft_command*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca %struct.net_device*, align 8
  %10 = alloca i32, align 4
  store %struct.octeon_device* %0, %struct.octeon_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = bitcast i8* %11 to %struct.octeon_soft_command*
  store %struct.octeon_soft_command* %12, %struct.octeon_soft_command** %7, align 8
  %13 = load %struct.octeon_soft_command*, %struct.octeon_soft_command** %7, align 8
  %14 = getelementptr inbounds %struct.octeon_soft_command, %struct.octeon_soft_command* %13, i32 0, i32 3
  %15 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  store %struct.sk_buff* %15, %struct.sk_buff** %8, align 8
  %16 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %17 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %16, i32 0, i32 0
  %18 = load %struct.net_device*, %struct.net_device** %17, align 8
  store %struct.net_device* %18, %struct.net_device** %9, align 8
  %19 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %20 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load %struct.octeon_soft_command*, %struct.octeon_soft_command** %7, align 8
  %24 = getelementptr inbounds %struct.octeon_soft_command, %struct.octeon_soft_command* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.octeon_soft_command*, %struct.octeon_soft_command** %7, align 8
  %27 = getelementptr inbounds %struct.octeon_soft_command, %struct.octeon_soft_command* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @DMA_TO_DEVICE, align 4
  %30 = call i32 @dma_unmap_single(i32* %22, i32 %25, i32 %28, i32 %29)
  %31 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %32 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %31)
  %33 = load %struct.octeon_soft_command*, %struct.octeon_soft_command** %7, align 8
  %34 = getelementptr inbounds %struct.octeon_soft_command, %struct.octeon_soft_command* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  store i32 %35, i32* %10, align 4
  %36 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %37 = load %struct.octeon_soft_command*, %struct.octeon_soft_command** %7, align 8
  %38 = call i32 @octeon_free_soft_command(%struct.octeon_device* %36, %struct.octeon_soft_command* %37)
  %39 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %40 = load i32, i32* %10, align 4
  %41 = call i64 @octnet_iq_is_full(%struct.octeon_device* %39, i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %3
  br label %51

44:                                               ; preds = %3
  %45 = load %struct.net_device*, %struct.net_device** %9, align 8
  %46 = call i64 @netif_queue_stopped(%struct.net_device* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %44
  %49 = load %struct.net_device*, %struct.net_device** %9, align 8
  %50 = call i32 @netif_wake_queue(%struct.net_device* %49)
  br label %51

51:                                               ; preds = %43, %48, %44
  ret void
}

declare dso_local i32 @dma_unmap_single(i32*, i32, i32, i32) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

declare dso_local i32 @octeon_free_soft_command(%struct.octeon_device*, %struct.octeon_soft_command*) #1

declare dso_local i64 @octnet_iq_is_full(%struct.octeon_device*, i32) #1

declare dso_local i64 @netif_queue_stopped(%struct.net_device*) #1

declare dso_local i32 @netif_wake_queue(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
