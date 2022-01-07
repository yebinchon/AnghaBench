; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/iavf/extr_iavf_txrx.c_iavf_tx_prepare_vlan_flags.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/iavf/extr_iavf_txrx.c_iavf_tx_prepare_vlan_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64 }
%struct.iavf_ring = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.vlan_hdr = type { i64, i32 }

@ETH_P_8021Q = common dso_local global i32 0, align 4
@NETIF_F_HW_VLAN_CTAG_TX = common dso_local global i32 0, align 4
@IAVF_TX_FLAGS_VLAN_SHIFT = common dso_local global i32 0, align 4
@IAVF_TX_FLAGS_HW_VLAN = common dso_local global i32 0, align 4
@ETH_HLEN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@IAVF_TX_FLAGS_SW_VLAN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.iavf_ring*, i32*)* @iavf_tx_prepare_vlan_flags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iavf_tx_prepare_vlan_flags(%struct.sk_buff* %0, %struct.iavf_ring* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.iavf_ring*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.vlan_hdr*, align 8
  %11 = alloca %struct.vlan_hdr, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store %struct.iavf_ring* %1, %struct.iavf_ring** %6, align 8
  store i32* %2, i32** %7, align 8
  %12 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %13 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  store i64 %14, i64* %8, align 8
  store i32 0, i32* %9, align 4
  %15 = load i64, i64* %8, align 8
  %16 = load i32, i32* @ETH_P_8021Q, align 4
  %17 = call i64 @htons(i32 %16)
  %18 = icmp eq i64 %15, %17
  br i1 %18, label %19, label %33

19:                                               ; preds = %3
  %20 = load %struct.iavf_ring*, %struct.iavf_ring** %6, align 8
  %21 = getelementptr inbounds %struct.iavf_ring, %struct.iavf_ring* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @NETIF_F_HW_VLAN_CTAG_TX, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %33, label %28

28:                                               ; preds = %19
  %29 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %30 = call i64 @vlan_get_protocol(%struct.sk_buff* %29)
  %31 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %32 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %31, i32 0, i32 0
  store i64 %30, i64* %32, align 8
  br label %78

33:                                               ; preds = %19, %3
  %34 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %35 = call i64 @skb_vlan_tag_present(%struct.sk_buff* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %47

37:                                               ; preds = %33
  %38 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %39 = call i32 @skb_vlan_tag_get(%struct.sk_buff* %38)
  %40 = load i32, i32* @IAVF_TX_FLAGS_VLAN_SHIFT, align 4
  %41 = shl i32 %39, %40
  %42 = load i32, i32* %9, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %9, align 4
  %44 = load i32, i32* @IAVF_TX_FLAGS_HW_VLAN, align 4
  %45 = load i32, i32* %9, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %9, align 4
  br label %77

47:                                               ; preds = %33
  %48 = load i64, i64* %8, align 8
  %49 = load i32, i32* @ETH_P_8021Q, align 4
  %50 = call i64 @htons(i32 %49)
  %51 = icmp eq i64 %48, %50
  br i1 %51, label %52, label %76

52:                                               ; preds = %47
  %53 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %54 = load i32, i32* @ETH_HLEN, align 4
  %55 = call %struct.vlan_hdr* @skb_header_pointer(%struct.sk_buff* %53, i32 %54, i32 16, %struct.vlan_hdr* %11)
  store %struct.vlan_hdr* %55, %struct.vlan_hdr** %10, align 8
  %56 = load %struct.vlan_hdr*, %struct.vlan_hdr** %10, align 8
  %57 = icmp ne %struct.vlan_hdr* %56, null
  br i1 %57, label %61, label %58

58:                                               ; preds = %52
  %59 = load i32, i32* @EINVAL, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %4, align 4
  br label %81

61:                                               ; preds = %52
  %62 = load %struct.vlan_hdr*, %struct.vlan_hdr** %10, align 8
  %63 = getelementptr inbounds %struct.vlan_hdr, %struct.vlan_hdr* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  store i64 %64, i64* %8, align 8
  %65 = load %struct.vlan_hdr*, %struct.vlan_hdr** %10, align 8
  %66 = getelementptr inbounds %struct.vlan_hdr, %struct.vlan_hdr* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @ntohs(i32 %67)
  %69 = load i32, i32* @IAVF_TX_FLAGS_VLAN_SHIFT, align 4
  %70 = shl i32 %68, %69
  %71 = load i32, i32* %9, align 4
  %72 = or i32 %71, %70
  store i32 %72, i32* %9, align 4
  %73 = load i32, i32* @IAVF_TX_FLAGS_SW_VLAN, align 4
  %74 = load i32, i32* %9, align 4
  %75 = or i32 %74, %73
  store i32 %75, i32* %9, align 4
  br label %76

76:                                               ; preds = %61, %47
  br label %77

77:                                               ; preds = %76, %37
  br label %78

78:                                               ; preds = %77, %28
  %79 = load i32, i32* %9, align 4
  %80 = load i32*, i32** %7, align 8
  store i32 %79, i32* %80, align 4
  store i32 0, i32* %4, align 4
  br label %81

81:                                               ; preds = %78, %58
  %82 = load i32, i32* %4, align 4
  ret i32 %82
}

declare dso_local i64 @htons(i32) #1

declare dso_local i64 @vlan_get_protocol(%struct.sk_buff*) #1

declare dso_local i64 @skb_vlan_tag_present(%struct.sk_buff*) #1

declare dso_local i32 @skb_vlan_tag_get(%struct.sk_buff*) #1

declare dso_local %struct.vlan_hdr* @skb_header_pointer(%struct.sk_buff*, i32, i32, %struct.vlan_hdr*) #1

declare dso_local i32 @ntohs(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
