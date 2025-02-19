; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/fm10k/extr_fm10k_main.c_fm10k_rx_hash.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/fm10k/extr_fm10k_main.c_fm10k_rx_hash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fm10k_ring = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%union.fm10k_rx_desc = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.sk_buff = type { i32 }
%struct.TYPE_5__ = type { i32 }

@NETIF_F_RXHASH = common dso_local global i32 0, align 4
@FM10K_RXD_RSSTYPE_MASK = common dso_local global i32 0, align 4
@FM10K_RSS_L4_TYPES_MASK = common dso_local global i32 0, align 4
@PKT_HASH_TYPE_L4 = common dso_local global i32 0, align 4
@PKT_HASH_TYPE_L3 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fm10k_ring*, %union.fm10k_rx_desc*, %struct.sk_buff*)* @fm10k_rx_hash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fm10k_rx_hash(%struct.fm10k_ring* %0, %union.fm10k_rx_desc* %1, %struct.sk_buff* %2) #0 {
  %4 = alloca %struct.fm10k_ring*, align 8
  %5 = alloca %union.fm10k_rx_desc*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32, align 4
  store %struct.fm10k_ring* %0, %struct.fm10k_ring** %4, align 8
  store %union.fm10k_rx_desc* %1, %union.fm10k_rx_desc** %5, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %6, align 8
  %8 = load %struct.fm10k_ring*, %struct.fm10k_ring** %4, align 8
  %9 = getelementptr inbounds %struct.fm10k_ring, %struct.fm10k_ring* %8, i32 0, i32 0
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @NETIF_F_RXHASH, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %3
  br label %47

17:                                               ; preds = %3
  %18 = load %union.fm10k_rx_desc*, %union.fm10k_rx_desc** %5, align 8
  %19 = bitcast %union.fm10k_rx_desc* %18 to %struct.TYPE_5__*
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @le16_to_cpu(i32 %21)
  %23 = load i32, i32* @FM10K_RXD_RSSTYPE_MASK, align 4
  %24 = and i32 %22, %23
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %7, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %17
  br label %47

28:                                               ; preds = %17
  %29 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %30 = load %union.fm10k_rx_desc*, %union.fm10k_rx_desc** %5, align 8
  %31 = bitcast %union.fm10k_rx_desc* %30 to %struct.TYPE_6__*
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @le32_to_cpu(i32 %33)
  %35 = load i32, i32* %7, align 4
  %36 = call i32 @BIT(i32 %35)
  %37 = load i32, i32* @FM10K_RSS_L4_TYPES_MASK, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %28
  %41 = load i32, i32* @PKT_HASH_TYPE_L4, align 4
  br label %44

42:                                               ; preds = %28
  %43 = load i32, i32* @PKT_HASH_TYPE_L3, align 4
  br label %44

44:                                               ; preds = %42, %40
  %45 = phi i32 [ %41, %40 ], [ %43, %42 ]
  %46 = call i32 @skb_set_hash(%struct.sk_buff* %29, i32 %34, i32 %45)
  br label %47

47:                                               ; preds = %44, %27, %16
  ret void
}

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @skb_set_hash(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
