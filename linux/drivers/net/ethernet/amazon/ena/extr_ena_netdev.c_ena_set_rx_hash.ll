; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amazon/ena/extr_ena_netdev.c_ena_set_rx_hash.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amazon/ena/extr_ena_netdev.c_ena_set_rx_hash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ena_ring = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.ena_com_rx_ctx = type { i64, i32, i64 }
%struct.sk_buff = type { i32 }

@NETIF_F_RXHASH = common dso_local global i32 0, align 4
@ENA_ETH_IO_L4_PROTO_TCP = common dso_local global i64 0, align 8
@ENA_ETH_IO_L4_PROTO_UDP = common dso_local global i64 0, align 8
@PKT_HASH_TYPE_L4 = common dso_local global i32 0, align 4
@PKT_HASH_TYPE_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ena_ring*, %struct.ena_com_rx_ctx*, %struct.sk_buff*)* @ena_set_rx_hash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ena_set_rx_hash(%struct.ena_ring* %0, %struct.ena_com_rx_ctx* %1, %struct.sk_buff* %2) #0 {
  %4 = alloca %struct.ena_ring*, align 8
  %5 = alloca %struct.ena_com_rx_ctx*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32, align 4
  store %struct.ena_ring* %0, %struct.ena_ring** %4, align 8
  store %struct.ena_com_rx_ctx* %1, %struct.ena_com_rx_ctx** %5, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %6, align 8
  %8 = load %struct.ena_ring*, %struct.ena_ring** %4, align 8
  %9 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @NETIF_F_RXHASH, align 4
  %14 = and i32 %12, %13
  %15 = call i64 @likely(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %52

17:                                               ; preds = %3
  %18 = load %struct.ena_com_rx_ctx*, %struct.ena_com_rx_ctx** %5, align 8
  %19 = getelementptr inbounds %struct.ena_com_rx_ctx, %struct.ena_com_rx_ctx* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @ENA_ETH_IO_L4_PROTO_TCP, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %29, label %23

23:                                               ; preds = %17
  %24 = load %struct.ena_com_rx_ctx*, %struct.ena_com_rx_ctx** %5, align 8
  %25 = getelementptr inbounds %struct.ena_com_rx_ctx, %struct.ena_com_rx_ctx* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @ENA_ETH_IO_L4_PROTO_UDP, align 8
  %28 = icmp eq i64 %26, %27
  br label %29

29:                                               ; preds = %23, %17
  %30 = phi i1 [ true, %17 ], [ %28, %23 ]
  %31 = zext i1 %30 to i32
  %32 = call i64 @likely(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %29
  %35 = load i32, i32* @PKT_HASH_TYPE_L4, align 4
  store i32 %35, i32* %7, align 4
  br label %38

36:                                               ; preds = %29
  %37 = load i32, i32* @PKT_HASH_TYPE_NONE, align 4
  store i32 %37, i32* %7, align 4
  br label %38

38:                                               ; preds = %36, %34
  %39 = load %struct.ena_com_rx_ctx*, %struct.ena_com_rx_ctx** %5, align 8
  %40 = getelementptr inbounds %struct.ena_com_rx_ctx, %struct.ena_com_rx_ctx* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %38
  %44 = load i32, i32* @PKT_HASH_TYPE_NONE, align 4
  store i32 %44, i32* %7, align 4
  br label %45

45:                                               ; preds = %43, %38
  %46 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %47 = load %struct.ena_com_rx_ctx*, %struct.ena_com_rx_ctx** %5, align 8
  %48 = getelementptr inbounds %struct.ena_com_rx_ctx, %struct.ena_com_rx_ctx* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* %7, align 4
  %51 = call i32 @skb_set_hash(%struct.sk_buff* %46, i32 %49, i32 %50)
  br label %52

52:                                               ; preds = %45, %3
  ret void
}

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @skb_set_hash(%struct.sk_buff*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
