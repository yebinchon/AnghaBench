; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/aquantia/atlantic/extr_aq_nic.c_aq_nic_xmit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/aquantia/atlantic/extr_aq_nic.c_aq_nic_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aq_nic_s = type { i32, %struct.TYPE_7__*, i32, %struct.aq_ring_s**, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i32 (i32, %struct.aq_ring_s*, i32)* }
%struct.aq_ring_s = type { %struct.TYPE_9__, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.sk_buff = type { i32, i64 }
%struct.TYPE_10__ = type { i32 }

@NETDEV_TX_OK = common dso_local global i32 0, align 4
@AQ_CFG_SKB_FRAGS_MAX = common dso_local global i32 0, align 4
@NETDEV_TX_BUSY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @aq_nic_xmit(%struct.aq_nic_s* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.aq_nic_s*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.aq_ring_s*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.aq_nic_s* %0, %struct.aq_nic_s** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  store %struct.aq_ring_s* null, %struct.aq_ring_s** %5, align 8
  store i32 0, i32* %6, align 4
  %10 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %11 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load %struct.aq_nic_s*, %struct.aq_nic_s** %3, align 8
  %14 = getelementptr inbounds %struct.aq_nic_s, %struct.aq_nic_s* %13, i32 0, i32 4
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = urem i32 %12, %16
  store i32 %17, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %18 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %18, i32* %9, align 4
  %19 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %20 = call %struct.TYPE_10__* @skb_shinfo(%struct.sk_buff* %19)
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %6, align 4
  %24 = load %struct.aq_nic_s*, %struct.aq_nic_s** %3, align 8
  %25 = getelementptr inbounds %struct.aq_nic_s, %struct.aq_nic_s* %24, i32 0, i32 3
  %26 = load %struct.aq_ring_s**, %struct.aq_ring_s*** %25, align 8
  %27 = load %struct.aq_nic_s*, %struct.aq_nic_s** %3, align 8
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* %7, align 4
  %30 = call i64 @AQ_NIC_TCVEC2RING(%struct.aq_nic_s* %27, i32 %28, i32 %29)
  %31 = getelementptr inbounds %struct.aq_ring_s*, %struct.aq_ring_s** %26, i64 %30
  %32 = load %struct.aq_ring_s*, %struct.aq_ring_s** %31, align 8
  store %struct.aq_ring_s* %32, %struct.aq_ring_s** %5, align 8
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* @AQ_CFG_SKB_FRAGS_MAX, align 4
  %35 = icmp ugt i32 %33, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %2
  %37 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %38 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %37)
  br label %96

39:                                               ; preds = %2
  %40 = load %struct.aq_ring_s*, %struct.aq_ring_s** %5, align 8
  %41 = call i32 @aq_ring_update_queue_state(%struct.aq_ring_s* %40)
  %42 = load %struct.aq_nic_s*, %struct.aq_nic_s** %3, align 8
  %43 = getelementptr inbounds %struct.aq_nic_s, %struct.aq_nic_s* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.aq_ring_s*, %struct.aq_ring_s** %5, align 8
  %46 = getelementptr inbounds %struct.aq_ring_s, %struct.aq_ring_s* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i64 @__netif_subqueue_stopped(i32 %44, i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %39
  %51 = load i32, i32* @NETDEV_TX_BUSY, align 4
  store i32 %51, i32* %9, align 4
  br label %96

52:                                               ; preds = %39
  %53 = load %struct.aq_nic_s*, %struct.aq_nic_s** %3, align 8
  %54 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %55 = load %struct.aq_ring_s*, %struct.aq_ring_s** %5, align 8
  %56 = call i32 @aq_nic_map_skb(%struct.aq_nic_s* %53, %struct.sk_buff* %54, %struct.aq_ring_s* %55)
  store i32 %56, i32* %6, align 4
  %57 = load i32, i32* %6, align 4
  %58 = call i64 @likely(i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %93

60:                                               ; preds = %52
  %61 = load %struct.aq_nic_s*, %struct.aq_nic_s** %3, align 8
  %62 = getelementptr inbounds %struct.aq_nic_s, %struct.aq_nic_s* %61, i32 0, i32 1
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 0
  %65 = load i32 (i32, %struct.aq_ring_s*, i32)*, i32 (i32, %struct.aq_ring_s*, i32)** %64, align 8
  %66 = load %struct.aq_nic_s*, %struct.aq_nic_s** %3, align 8
  %67 = getelementptr inbounds %struct.aq_nic_s, %struct.aq_nic_s* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.aq_ring_s*, %struct.aq_ring_s** %5, align 8
  %70 = load i32, i32* %6, align 4
  %71 = call i32 %65(i32 %68, %struct.aq_ring_s* %69, i32 %70)
  store i32 %71, i32* %9, align 4
  %72 = load i32, i32* %9, align 4
  %73 = icmp sge i32 %72, 0
  br i1 %73, label %74, label %92

74:                                               ; preds = %60
  %75 = load %struct.aq_ring_s*, %struct.aq_ring_s** %5, align 8
  %76 = getelementptr inbounds %struct.aq_ring_s, %struct.aq_ring_s* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %78, align 4
  %81 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %82 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = load %struct.aq_ring_s*, %struct.aq_ring_s** %5, align 8
  %85 = getelementptr inbounds %struct.aq_ring_s, %struct.aq_ring_s* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = sext i32 %88 to i64
  %90 = add nsw i64 %89, %83
  %91 = trunc i64 %90 to i32
  store i32 %91, i32* %87, align 4
  br label %92

92:                                               ; preds = %74, %60
  br label %95

93:                                               ; preds = %52
  %94 = load i32, i32* @NETDEV_TX_BUSY, align 4
  store i32 %94, i32* %9, align 4
  br label %95

95:                                               ; preds = %93, %92
  br label %96

96:                                               ; preds = %95, %50, %36
  %97 = load i32, i32* %9, align 4
  ret i32 %97
}

declare dso_local %struct.TYPE_10__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i64 @AQ_NIC_TCVEC2RING(%struct.aq_nic_s*, i32, i32) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

declare dso_local i32 @aq_ring_update_queue_state(%struct.aq_ring_s*) #1

declare dso_local i64 @__netif_subqueue_stopped(i32, i32) #1

declare dso_local i32 @aq_nic_map_skb(%struct.aq_nic_s*, %struct.sk_buff*, %struct.aq_ring_s*) #1

declare dso_local i64 @likely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
