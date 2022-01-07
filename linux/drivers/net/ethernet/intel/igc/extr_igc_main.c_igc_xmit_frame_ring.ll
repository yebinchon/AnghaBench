; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igc/extr_igc_main.c_igc_xmit_frame_ring.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igc/extr_igc_main.c_igc_xmit_frame_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.igc_ring = type { i64, %struct.igc_tx_buffer* }
%struct.igc_tx_buffer = type { i32, i32, i32, i32, %struct.sk_buff* }
%struct.TYPE_2__ = type { i16, i32* }

@NETDEV_TX_BUSY = common dso_local global i32 0, align 4
@NETDEV_TX_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.igc_ring*)* @igc_xmit_frame_ring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @igc_xmit_frame_ring(%struct.sk_buff* %0, %struct.igc_ring* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.igc_ring*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.igc_tx_buffer*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i16, align 2
  %11 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.igc_ring* %1, %struct.igc_ring** %5, align 8
  %12 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %13 = call i32 @skb_headlen(%struct.sk_buff* %12)
  %14 = call i64 @TXD_USE_COUNT(i32 %13)
  store i64 %14, i64* %6, align 8
  %15 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %16 = call i32 @vlan_get_protocol(%struct.sk_buff* %15)
  store i32 %16, i32* %7, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %11, align 4
  store i16 0, i16* %10, align 2
  br label %17

17:                                               ; preds = %38, %2
  %18 = load i16, i16* %10, align 2
  %19 = zext i16 %18 to i32
  %20 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %21 = call %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff* %20)
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i16, i16* %22, align 8
  %24 = zext i16 %23 to i32
  %25 = icmp slt i32 %19, %24
  br i1 %25, label %26, label %41

26:                                               ; preds = %17
  %27 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %28 = call %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff* %27)
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 1
  %30 = load i32*, i32** %29, align 8
  %31 = load i16, i16* %10, align 2
  %32 = zext i16 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  %34 = call i32 @skb_frag_size(i32* %33)
  %35 = call i64 @TXD_USE_COUNT(i32 %34)
  %36 = load i64, i64* %6, align 8
  %37 = add nsw i64 %36, %35
  store i64 %37, i64* %6, align 8
  br label %38

38:                                               ; preds = %26
  %39 = load i16, i16* %10, align 2
  %40 = add i16 %39, 1
  store i16 %40, i16* %10, align 2
  br label %17

41:                                               ; preds = %17
  %42 = load %struct.igc_ring*, %struct.igc_ring** %5, align 8
  %43 = load i64, i64* %6, align 8
  %44 = add nsw i64 %43, 3
  %45 = call i64 @igc_maybe_stop_tx(%struct.igc_ring* %42, i64 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %41
  %48 = load i32, i32* @NETDEV_TX_BUSY, align 4
  store i32 %48, i32* %3, align 4
  br label %81

49:                                               ; preds = %41
  %50 = load %struct.igc_ring*, %struct.igc_ring** %5, align 8
  %51 = getelementptr inbounds %struct.igc_ring, %struct.igc_ring* %50, i32 0, i32 1
  %52 = load %struct.igc_tx_buffer*, %struct.igc_tx_buffer** %51, align 8
  %53 = load %struct.igc_ring*, %struct.igc_ring** %5, align 8
  %54 = getelementptr inbounds %struct.igc_ring, %struct.igc_ring* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = getelementptr inbounds %struct.igc_tx_buffer, %struct.igc_tx_buffer* %52, i64 %55
  store %struct.igc_tx_buffer* %56, %struct.igc_tx_buffer** %8, align 8
  %57 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %58 = load %struct.igc_tx_buffer*, %struct.igc_tx_buffer** %8, align 8
  %59 = getelementptr inbounds %struct.igc_tx_buffer, %struct.igc_tx_buffer* %58, i32 0, i32 4
  store %struct.sk_buff* %57, %struct.sk_buff** %59, align 8
  %60 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %61 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.igc_tx_buffer*, %struct.igc_tx_buffer** %8, align 8
  %64 = getelementptr inbounds %struct.igc_tx_buffer, %struct.igc_tx_buffer* %63, i32 0, i32 3
  store i32 %62, i32* %64, align 4
  %65 = load %struct.igc_tx_buffer*, %struct.igc_tx_buffer** %8, align 8
  %66 = getelementptr inbounds %struct.igc_tx_buffer, %struct.igc_tx_buffer* %65, i32 0, i32 0
  store i32 1, i32* %66, align 8
  %67 = load i32, i32* %9, align 4
  %68 = load %struct.igc_tx_buffer*, %struct.igc_tx_buffer** %8, align 8
  %69 = getelementptr inbounds %struct.igc_tx_buffer, %struct.igc_tx_buffer* %68, i32 0, i32 2
  store i32 %67, i32* %69, align 8
  %70 = load i32, i32* %7, align 4
  %71 = load %struct.igc_tx_buffer*, %struct.igc_tx_buffer** %8, align 8
  %72 = getelementptr inbounds %struct.igc_tx_buffer, %struct.igc_tx_buffer* %71, i32 0, i32 1
  store i32 %70, i32* %72, align 4
  %73 = load %struct.igc_ring*, %struct.igc_ring** %5, align 8
  %74 = load %struct.igc_tx_buffer*, %struct.igc_tx_buffer** %8, align 8
  %75 = call i32 @igc_tx_csum(%struct.igc_ring* %73, %struct.igc_tx_buffer* %74)
  %76 = load %struct.igc_ring*, %struct.igc_ring** %5, align 8
  %77 = load %struct.igc_tx_buffer*, %struct.igc_tx_buffer** %8, align 8
  %78 = load i32, i32* %11, align 4
  %79 = call i32 @igc_tx_map(%struct.igc_ring* %76, %struct.igc_tx_buffer* %77, i32 %78)
  %80 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %80, i32* %3, align 4
  br label %81

81:                                               ; preds = %49, %47
  %82 = load i32, i32* %3, align 4
  ret i32 %82
}

declare dso_local i64 @TXD_USE_COUNT(i32) #1

declare dso_local i32 @skb_headlen(%struct.sk_buff*) #1

declare dso_local i32 @vlan_get_protocol(%struct.sk_buff*) #1

declare dso_local %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i32 @skb_frag_size(i32*) #1

declare dso_local i64 @igc_maybe_stop_tx(%struct.igc_ring*, i64) #1

declare dso_local i32 @igc_tx_csum(%struct.igc_ring*, %struct.igc_tx_buffer*) #1

declare dso_local i32 @igc_tx_map(%struct.igc_ring*, %struct.igc_tx_buffer*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
