; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbevf/extr_ixgbevf_main.c_ixgbevf_xmit_frame_ring.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbevf/extr_ixgbevf_main.c_ixgbevf_xmit_frame_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.ixgbevf_ring = type { i64, %struct.ixgbevf_tx_buffer*, %struct.TYPE_3__ }
%struct.ixgbevf_tx_buffer = type { i32, %struct.sk_buff*, i32, i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.ixgbevf_ipsec_tx_data = type { i32 }
%struct.TYPE_4__ = type { i16, i32* }

@NETDEV_TX_OK = common dso_local global i32 0, align 4
@NETDEV_TX_BUSY = common dso_local global i32 0, align 4
@IXGBE_TX_FLAGS_VLAN_SHIFT = common dso_local global i32 0, align 4
@IXGBE_TX_FLAGS_VLAN = common dso_local global i32 0, align 4
@DESC_NEEDED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.ixgbevf_ring*)* @ixgbevf_xmit_frame_ring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ixgbevf_xmit_frame_ring(%struct.sk_buff* %0, %struct.ixgbevf_ring* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.ixgbevf_ring*, align 8
  %6 = alloca %struct.ixgbevf_tx_buffer*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.ixgbevf_ipsec_tx_data, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.ixgbevf_ring* %1, %struct.ixgbevf_ring** %5, align 8
  store i32 0, i32* %8, align 4
  %13 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %14 = call i32 @skb_headlen(%struct.sk_buff* %13)
  %15 = call i64 @TXD_USE_COUNT(i32 %14)
  store i64 %15, i64* %9, align 8
  %16 = bitcast %struct.ixgbevf_ipsec_tx_data* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %16, i8 0, i64 4, i1 false)
  store i32 0, i32* %11, align 4
  %17 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %18 = call i32* @skb_header_pointer(%struct.sk_buff* %17, i32 0, i32 0, i32* null)
  store i32* %18, i32** %12, align 8
  %19 = load i32*, i32** %12, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %21, label %25

21:                                               ; preds = %2
  %22 = load i32*, i32** %12, align 8
  %23 = call i64 @is_link_local_ether_addr(i32* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %21, %2
  %26 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %27 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %26)
  %28 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %28, i32* %3, align 4
  br label %120

29:                                               ; preds = %21
  %30 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %31 = call %struct.TYPE_4__* @skb_shinfo(%struct.sk_buff* %30)
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i16, i16* %32, align 8
  %34 = zext i16 %33 to i64
  %35 = load i64, i64* %9, align 8
  %36 = add nsw i64 %35, %34
  store i64 %36, i64* %9, align 8
  %37 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %5, align 8
  %38 = load i64, i64* %9, align 8
  %39 = add nsw i64 %38, 3
  %40 = call i64 @ixgbevf_maybe_stop_tx(%struct.ixgbevf_ring* %37, i64 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %29
  %43 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %5, align 8
  %44 = getelementptr inbounds %struct.ixgbevf_ring, %struct.ixgbevf_ring* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %45, align 8
  %48 = load i32, i32* @NETDEV_TX_BUSY, align 4
  store i32 %48, i32* %3, align 4
  br label %120

49:                                               ; preds = %29
  %50 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %5, align 8
  %51 = getelementptr inbounds %struct.ixgbevf_ring, %struct.ixgbevf_ring* %50, i32 0, i32 1
  %52 = load %struct.ixgbevf_tx_buffer*, %struct.ixgbevf_tx_buffer** %51, align 8
  %53 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %5, align 8
  %54 = getelementptr inbounds %struct.ixgbevf_ring, %struct.ixgbevf_ring* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = getelementptr inbounds %struct.ixgbevf_tx_buffer, %struct.ixgbevf_tx_buffer* %52, i64 %55
  store %struct.ixgbevf_tx_buffer* %56, %struct.ixgbevf_tx_buffer** %6, align 8
  %57 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %58 = load %struct.ixgbevf_tx_buffer*, %struct.ixgbevf_tx_buffer** %6, align 8
  %59 = getelementptr inbounds %struct.ixgbevf_tx_buffer, %struct.ixgbevf_tx_buffer* %58, i32 0, i32 1
  store %struct.sk_buff* %57, %struct.sk_buff** %59, align 8
  %60 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %61 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.ixgbevf_tx_buffer*, %struct.ixgbevf_tx_buffer** %6, align 8
  %64 = getelementptr inbounds %struct.ixgbevf_tx_buffer, %struct.ixgbevf_tx_buffer* %63, i32 0, i32 4
  store i32 %62, i32* %64, align 8
  %65 = load %struct.ixgbevf_tx_buffer*, %struct.ixgbevf_tx_buffer** %6, align 8
  %66 = getelementptr inbounds %struct.ixgbevf_tx_buffer, %struct.ixgbevf_tx_buffer* %65, i32 0, i32 0
  store i32 1, i32* %66, align 8
  %67 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %68 = call i64 @skb_vlan_tag_present(%struct.sk_buff* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %81

70:                                               ; preds = %49
  %71 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %72 = call i32 @skb_vlan_tag_get(%struct.sk_buff* %71)
  %73 = load i32, i32* %8, align 4
  %74 = or i32 %73, %72
  store i32 %74, i32* %8, align 4
  %75 = load i32, i32* @IXGBE_TX_FLAGS_VLAN_SHIFT, align 4
  %76 = load i32, i32* %8, align 4
  %77 = shl i32 %76, %75
  store i32 %77, i32* %8, align 4
  %78 = load i32, i32* @IXGBE_TX_FLAGS_VLAN, align 4
  %79 = load i32, i32* %8, align 4
  %80 = or i32 %79, %78
  store i32 %80, i32* %8, align 4
  br label %81

81:                                               ; preds = %70, %49
  %82 = load i32, i32* %8, align 4
  %83 = load %struct.ixgbevf_tx_buffer*, %struct.ixgbevf_tx_buffer** %6, align 8
  %84 = getelementptr inbounds %struct.ixgbevf_tx_buffer, %struct.ixgbevf_tx_buffer* %83, i32 0, i32 3
  store i32 %82, i32* %84, align 4
  %85 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %86 = call i32 @vlan_get_protocol(%struct.sk_buff* %85)
  %87 = load %struct.ixgbevf_tx_buffer*, %struct.ixgbevf_tx_buffer** %6, align 8
  %88 = getelementptr inbounds %struct.ixgbevf_tx_buffer, %struct.ixgbevf_tx_buffer* %87, i32 0, i32 2
  store i32 %86, i32* %88, align 8
  %89 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %5, align 8
  %90 = load %struct.ixgbevf_tx_buffer*, %struct.ixgbevf_tx_buffer** %6, align 8
  %91 = call i32 @ixgbevf_tso(%struct.ixgbevf_ring* %89, %struct.ixgbevf_tx_buffer* %90, i32* %11, %struct.ixgbevf_ipsec_tx_data* %10)
  store i32 %91, i32* %7, align 4
  %92 = load i32, i32* %7, align 4
  %93 = icmp slt i32 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %81
  br label %112

95:                                               ; preds = %81
  %96 = load i32, i32* %7, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %102, label %98

98:                                               ; preds = %95
  %99 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %5, align 8
  %100 = load %struct.ixgbevf_tx_buffer*, %struct.ixgbevf_tx_buffer** %6, align 8
  %101 = call i32 @ixgbevf_tx_csum(%struct.ixgbevf_ring* %99, %struct.ixgbevf_tx_buffer* %100, %struct.ixgbevf_ipsec_tx_data* %10)
  br label %102

102:                                              ; preds = %98, %95
  br label %103

103:                                              ; preds = %102
  %104 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %5, align 8
  %105 = load %struct.ixgbevf_tx_buffer*, %struct.ixgbevf_tx_buffer** %6, align 8
  %106 = load i32, i32* %11, align 4
  %107 = call i32 @ixgbevf_tx_map(%struct.ixgbevf_ring* %104, %struct.ixgbevf_tx_buffer* %105, i32 %106)
  %108 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %5, align 8
  %109 = load i64, i64* @DESC_NEEDED, align 8
  %110 = call i64 @ixgbevf_maybe_stop_tx(%struct.ixgbevf_ring* %108, i64 %109)
  %111 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %111, i32* %3, align 4
  br label %120

112:                                              ; preds = %94
  %113 = load %struct.ixgbevf_tx_buffer*, %struct.ixgbevf_tx_buffer** %6, align 8
  %114 = getelementptr inbounds %struct.ixgbevf_tx_buffer, %struct.ixgbevf_tx_buffer* %113, i32 0, i32 1
  %115 = load %struct.sk_buff*, %struct.sk_buff** %114, align 8
  %116 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %115)
  %117 = load %struct.ixgbevf_tx_buffer*, %struct.ixgbevf_tx_buffer** %6, align 8
  %118 = getelementptr inbounds %struct.ixgbevf_tx_buffer, %struct.ixgbevf_tx_buffer* %117, i32 0, i32 1
  store %struct.sk_buff* null, %struct.sk_buff** %118, align 8
  %119 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %119, i32* %3, align 4
  br label %120

120:                                              ; preds = %112, %103, %42, %25
  %121 = load i32, i32* %3, align 4
  ret i32 %121
}

declare dso_local i64 @TXD_USE_COUNT(i32) #1

declare dso_local i32 @skb_headlen(%struct.sk_buff*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32* @skb_header_pointer(%struct.sk_buff*, i32, i32, i32*) #1

declare dso_local i64 @is_link_local_ether_addr(i32*) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

declare dso_local %struct.TYPE_4__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i64 @ixgbevf_maybe_stop_tx(%struct.ixgbevf_ring*, i64) #1

declare dso_local i64 @skb_vlan_tag_present(%struct.sk_buff*) #1

declare dso_local i32 @skb_vlan_tag_get(%struct.sk_buff*) #1

declare dso_local i32 @vlan_get_protocol(%struct.sk_buff*) #1

declare dso_local i32 @ixgbevf_tso(%struct.ixgbevf_ring*, %struct.ixgbevf_tx_buffer*, i32*, %struct.ixgbevf_ipsec_tx_data*) #1

declare dso_local i32 @ixgbevf_tx_csum(%struct.ixgbevf_ring*, %struct.ixgbevf_tx_buffer*, %struct.ixgbevf_ipsec_tx_data*) #1

declare dso_local i32 @ixgbevf_tx_map(%struct.ixgbevf_ring*, %struct.ixgbevf_tx_buffer*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
