; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/oki-semi/pch_gbe/extr_pch_gbe_main.c_pch_gbe_alloc_tx_buffers.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/oki-semi/pch_gbe/extr_pch_gbe_main.c_pch_gbe_alloc_tx_buffers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pch_gbe_adapter = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.pch_gbe_tx_ring = type { i32, %struct.pch_gbe_buffer* }
%struct.pch_gbe_buffer = type { %struct.sk_buff* }
%struct.sk_buff = type { i32 }
%struct.pch_gbe_tx_desc = type { i32 }

@PCH_GBE_DMA_ALIGN = common dso_local global i32 0, align 4
@NET_IP_ALIGN = common dso_local global i32 0, align 4
@DSC_INIT16 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pch_gbe_adapter*, %struct.pch_gbe_tx_ring*)* @pch_gbe_alloc_tx_buffers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pch_gbe_alloc_tx_buffers(%struct.pch_gbe_adapter* %0, %struct.pch_gbe_tx_ring* %1) #0 {
  %3 = alloca %struct.pch_gbe_adapter*, align 8
  %4 = alloca %struct.pch_gbe_tx_ring*, align 8
  %5 = alloca %struct.pch_gbe_buffer*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.pch_gbe_tx_desc*, align 8
  store %struct.pch_gbe_adapter* %0, %struct.pch_gbe_adapter** %3, align 8
  store %struct.pch_gbe_tx_ring* %1, %struct.pch_gbe_tx_ring** %4, align 8
  %10 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %3, align 8
  %11 = getelementptr inbounds %struct.pch_gbe_adapter, %struct.pch_gbe_adapter* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @PCH_GBE_DMA_ALIGN, align 4
  %16 = add i32 %14, %15
  %17 = load i32, i32* @NET_IP_ALIGN, align 4
  %18 = add i32 %16, %17
  store i32 %18, i32* %8, align 4
  store i32 0, i32* %7, align 4
  br label %19

19:                                               ; preds = %54, %2
  %20 = load i32, i32* %7, align 4
  %21 = load %struct.pch_gbe_tx_ring*, %struct.pch_gbe_tx_ring** %4, align 8
  %22 = getelementptr inbounds %struct.pch_gbe_tx_ring, %struct.pch_gbe_tx_ring* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp ult i32 %20, %23
  br i1 %24, label %25, label %57

25:                                               ; preds = %19
  %26 = load %struct.pch_gbe_tx_ring*, %struct.pch_gbe_tx_ring** %4, align 8
  %27 = getelementptr inbounds %struct.pch_gbe_tx_ring, %struct.pch_gbe_tx_ring* %26, i32 0, i32 1
  %28 = load %struct.pch_gbe_buffer*, %struct.pch_gbe_buffer** %27, align 8
  %29 = load i32, i32* %7, align 4
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds %struct.pch_gbe_buffer, %struct.pch_gbe_buffer* %28, i64 %30
  store %struct.pch_gbe_buffer* %31, %struct.pch_gbe_buffer** %5, align 8
  %32 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %3, align 8
  %33 = getelementptr inbounds %struct.pch_gbe_adapter, %struct.pch_gbe_adapter* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %8, align 4
  %36 = call %struct.sk_buff* @netdev_alloc_skb(i32 %34, i32 %35)
  store %struct.sk_buff* %36, %struct.sk_buff** %6, align 8
  %37 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %38 = load i32, i32* @PCH_GBE_DMA_ALIGN, align 4
  %39 = call i32 @skb_reserve(%struct.sk_buff* %37, i32 %38)
  %40 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %41 = load %struct.pch_gbe_buffer*, %struct.pch_gbe_buffer** %5, align 8
  %42 = getelementptr inbounds %struct.pch_gbe_buffer, %struct.pch_gbe_buffer* %41, i32 0, i32 0
  store %struct.sk_buff* %40, %struct.sk_buff** %42, align 8
  %43 = load %struct.pch_gbe_tx_ring*, %struct.pch_gbe_tx_ring** %4, align 8
  %44 = load i32, i32* %7, align 4
  %45 = bitcast %struct.pch_gbe_tx_ring* %43 to { i32, %struct.pch_gbe_buffer* }*
  %46 = getelementptr inbounds { i32, %struct.pch_gbe_buffer* }, { i32, %struct.pch_gbe_buffer* }* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = getelementptr inbounds { i32, %struct.pch_gbe_buffer* }, { i32, %struct.pch_gbe_buffer* }* %45, i32 0, i32 1
  %49 = load %struct.pch_gbe_buffer*, %struct.pch_gbe_buffer** %48, align 8
  %50 = call %struct.pch_gbe_tx_desc* @PCH_GBE_TX_DESC(i32 %47, %struct.pch_gbe_buffer* %49, i32 %44)
  store %struct.pch_gbe_tx_desc* %50, %struct.pch_gbe_tx_desc** %9, align 8
  %51 = load i32, i32* @DSC_INIT16, align 4
  %52 = load %struct.pch_gbe_tx_desc*, %struct.pch_gbe_tx_desc** %9, align 8
  %53 = getelementptr inbounds %struct.pch_gbe_tx_desc, %struct.pch_gbe_tx_desc* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 4
  br label %54

54:                                               ; preds = %25
  %55 = load i32, i32* %7, align 4
  %56 = add i32 %55, 1
  store i32 %56, i32* %7, align 4
  br label %19

57:                                               ; preds = %19
  ret void
}

declare dso_local %struct.sk_buff* @netdev_alloc_skb(i32, i32) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i32) #1

declare dso_local %struct.pch_gbe_tx_desc* @PCH_GBE_TX_DESC(i32, %struct.pch_gbe_buffer*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
