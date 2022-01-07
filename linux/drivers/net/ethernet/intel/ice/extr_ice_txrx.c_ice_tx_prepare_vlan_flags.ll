; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_txrx.c_ice_tx_prepare_vlan_flags.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_txrx.c_ice_tx_prepare_vlan_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ice_ring = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.ice_tx_buf = type { i32, %struct.sk_buff* }
%struct.sk_buff = type { i64 }
%struct.vlan_hdr = type { i32 }

@ETH_P_8021Q = common dso_local global i32 0, align 4
@NETIF_F_HW_VLAN_CTAG_TX = common dso_local global i32 0, align 4
@ICE_TX_FLAGS_VLAN_S = common dso_local global i32 0, align 4
@ICE_TX_FLAGS_HW_VLAN = common dso_local global i32 0, align 4
@ETH_HLEN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ICE_TX_FLAGS_SW_VLAN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ice_ring*, %struct.ice_tx_buf*)* @ice_tx_prepare_vlan_flags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ice_tx_prepare_vlan_flags(%struct.ice_ring* %0, %struct.ice_tx_buf* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ice_ring*, align 8
  %5 = alloca %struct.ice_tx_buf*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.vlan_hdr*, align 8
  %9 = alloca %struct.vlan_hdr, align 4
  store %struct.ice_ring* %0, %struct.ice_ring** %4, align 8
  store %struct.ice_tx_buf* %1, %struct.ice_tx_buf** %5, align 8
  %10 = load %struct.ice_tx_buf*, %struct.ice_tx_buf** %5, align 8
  %11 = getelementptr inbounds %struct.ice_tx_buf, %struct.ice_tx_buf* %10, i32 0, i32 1
  %12 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  store %struct.sk_buff* %12, %struct.sk_buff** %6, align 8
  %13 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %14 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  store i64 %15, i64* %7, align 8
  %16 = load i64, i64* %7, align 8
  %17 = load i32, i32* @ETH_P_8021Q, align 4
  %18 = call i64 @htons(i32 %17)
  %19 = icmp eq i64 %16, %18
  br i1 %19, label %20, label %34

20:                                               ; preds = %2
  %21 = load %struct.ice_ring*, %struct.ice_ring** %4, align 8
  %22 = getelementptr inbounds %struct.ice_ring, %struct.ice_ring* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @NETIF_F_HW_VLAN_CTAG_TX, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %34, label %29

29:                                               ; preds = %20
  %30 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %31 = call i64 @vlan_get_protocol(%struct.sk_buff* %30)
  %32 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %33 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %32, i32 0, i32 0
  store i64 %31, i64* %33, align 8
  store i32 0, i32* %3, align 4
  br label %88

34:                                               ; preds = %20, %2
  %35 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %36 = call i64 @skb_vlan_tag_present(%struct.sk_buff* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %52

38:                                               ; preds = %34
  %39 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %40 = call i32 @skb_vlan_tag_get(%struct.sk_buff* %39)
  %41 = load i32, i32* @ICE_TX_FLAGS_VLAN_S, align 4
  %42 = shl i32 %40, %41
  %43 = load %struct.ice_tx_buf*, %struct.ice_tx_buf** %5, align 8
  %44 = getelementptr inbounds %struct.ice_tx_buf, %struct.ice_tx_buf* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = or i32 %45, %42
  store i32 %46, i32* %44, align 8
  %47 = load i32, i32* @ICE_TX_FLAGS_HW_VLAN, align 4
  %48 = load %struct.ice_tx_buf*, %struct.ice_tx_buf** %5, align 8
  %49 = getelementptr inbounds %struct.ice_tx_buf, %struct.ice_tx_buf* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = or i32 %50, %47
  store i32 %51, i32* %49, align 8
  br label %84

52:                                               ; preds = %34
  %53 = load i64, i64* %7, align 8
  %54 = load i32, i32* @ETH_P_8021Q, align 4
  %55 = call i64 @htons(i32 %54)
  %56 = icmp eq i64 %53, %55
  br i1 %56, label %57, label %83

57:                                               ; preds = %52
  %58 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %59 = load i32, i32* @ETH_HLEN, align 4
  %60 = call i64 @skb_header_pointer(%struct.sk_buff* %58, i32 %59, i32 4, %struct.vlan_hdr* %9)
  %61 = inttoptr i64 %60 to %struct.vlan_hdr*
  store %struct.vlan_hdr* %61, %struct.vlan_hdr** %8, align 8
  %62 = load %struct.vlan_hdr*, %struct.vlan_hdr** %8, align 8
  %63 = icmp ne %struct.vlan_hdr* %62, null
  br i1 %63, label %67, label %64

64:                                               ; preds = %57
  %65 = load i32, i32* @EINVAL, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %3, align 4
  br label %88

67:                                               ; preds = %57
  %68 = load %struct.vlan_hdr*, %struct.vlan_hdr** %8, align 8
  %69 = getelementptr inbounds %struct.vlan_hdr, %struct.vlan_hdr* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @ntohs(i32 %70)
  %72 = load i32, i32* @ICE_TX_FLAGS_VLAN_S, align 4
  %73 = shl i32 %71, %72
  %74 = load %struct.ice_tx_buf*, %struct.ice_tx_buf** %5, align 8
  %75 = getelementptr inbounds %struct.ice_tx_buf, %struct.ice_tx_buf* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = or i32 %76, %73
  store i32 %77, i32* %75, align 8
  %78 = load i32, i32* @ICE_TX_FLAGS_SW_VLAN, align 4
  %79 = load %struct.ice_tx_buf*, %struct.ice_tx_buf** %5, align 8
  %80 = getelementptr inbounds %struct.ice_tx_buf, %struct.ice_tx_buf* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = or i32 %81, %78
  store i32 %82, i32* %80, align 8
  br label %83

83:                                               ; preds = %67, %52
  br label %84

84:                                               ; preds = %83, %38
  %85 = load %struct.ice_ring*, %struct.ice_ring** %4, align 8
  %86 = load %struct.ice_tx_buf*, %struct.ice_tx_buf** %5, align 8
  %87 = call i32 @ice_tx_prepare_vlan_flags_dcb(%struct.ice_ring* %85, %struct.ice_tx_buf* %86)
  store i32 %87, i32* %3, align 4
  br label %88

88:                                               ; preds = %84, %64, %29
  %89 = load i32, i32* %3, align 4
  ret i32 %89
}

declare dso_local i64 @htons(i32) #1

declare dso_local i64 @vlan_get_protocol(%struct.sk_buff*) #1

declare dso_local i64 @skb_vlan_tag_present(%struct.sk_buff*) #1

declare dso_local i32 @skb_vlan_tag_get(%struct.sk_buff*) #1

declare dso_local i64 @skb_header_pointer(%struct.sk_buff*, i32, i32, %struct.vlan_hdr*) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local i32 @ice_tx_prepare_vlan_flags_dcb(%struct.ice_ring*, %struct.ice_tx_buf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
