; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_txrx.c_i40e_tx_prepare_vlan_flags.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_txrx.c_i40e_tx_prepare_vlan_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64, i32, i64 }
%struct.i40e_ring = type { %struct.TYPE_6__*, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.vlan_hdr = type { i64, i32 }
%struct.vlan_ethhdr = type { i64 }

@ETH_P_8021Q = common dso_local global i32 0, align 4
@NETIF_F_HW_VLAN_CTAG_TX = common dso_local global i32 0, align 4
@I40E_TX_FLAGS_VLAN_SHIFT = common dso_local global i32 0, align 4
@I40E_TX_FLAGS_HW_VLAN = common dso_local global i32 0, align 4
@ETH_HLEN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@I40E_TX_FLAGS_SW_VLAN = common dso_local global i32 0, align 4
@I40E_FLAG_DCB_ENABLED = common dso_local global i32 0, align 4
@TC_PRIO_CONTROL = common dso_local global i32 0, align 4
@I40E_TX_FLAGS_VLAN_PRIO_MASK = common dso_local global i32 0, align 4
@I40E_TX_FLAGS_VLAN_PRIO_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.i40e_ring*, i32*)* @i40e_tx_prepare_vlan_flags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i40e_tx_prepare_vlan_flags(%struct.sk_buff* %0, %struct.i40e_ring* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.i40e_ring*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.vlan_hdr*, align 8
  %11 = alloca %struct.vlan_hdr, align 8
  %12 = alloca %struct.vlan_ethhdr*, align 8
  %13 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store %struct.i40e_ring* %1, %struct.i40e_ring** %6, align 8
  store i32* %2, i32** %7, align 8
  %14 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %15 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  store i64 %16, i64* %8, align 8
  store i32 0, i32* %9, align 4
  %17 = load i64, i64* %8, align 8
  %18 = load i32, i32* @ETH_P_8021Q, align 4
  %19 = call i64 @htons(i32 %18)
  %20 = icmp eq i64 %17, %19
  br i1 %20, label %21, label %35

21:                                               ; preds = %3
  %22 = load %struct.i40e_ring*, %struct.i40e_ring** %6, align 8
  %23 = getelementptr inbounds %struct.i40e_ring, %struct.i40e_ring* %22, i32 0, i32 1
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @NETIF_F_HW_VLAN_CTAG_TX, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %35, label %30

30:                                               ; preds = %21
  %31 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %32 = call i64 @vlan_get_protocol(%struct.sk_buff* %31)
  %33 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %34 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %33, i32 0, i32 0
  store i64 %32, i64* %34, align 8
  br label %145

35:                                               ; preds = %21, %3
  %36 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %37 = call i64 @skb_vlan_tag_present(%struct.sk_buff* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %49

39:                                               ; preds = %35
  %40 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %41 = call i32 @skb_vlan_tag_get(%struct.sk_buff* %40)
  %42 = load i32, i32* @I40E_TX_FLAGS_VLAN_SHIFT, align 4
  %43 = shl i32 %41, %42
  %44 = load i32, i32* %9, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %9, align 4
  %46 = load i32, i32* @I40E_TX_FLAGS_HW_VLAN, align 4
  %47 = load i32, i32* %9, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %9, align 4
  br label %79

49:                                               ; preds = %35
  %50 = load i64, i64* %8, align 8
  %51 = load i32, i32* @ETH_P_8021Q, align 4
  %52 = call i64 @htons(i32 %51)
  %53 = icmp eq i64 %50, %52
  br i1 %53, label %54, label %78

54:                                               ; preds = %49
  %55 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %56 = load i32, i32* @ETH_HLEN, align 4
  %57 = call %struct.vlan_hdr* @skb_header_pointer(%struct.sk_buff* %55, i32 %56, i32 16, %struct.vlan_hdr* %11)
  store %struct.vlan_hdr* %57, %struct.vlan_hdr** %10, align 8
  %58 = load %struct.vlan_hdr*, %struct.vlan_hdr** %10, align 8
  %59 = icmp ne %struct.vlan_hdr* %58, null
  br i1 %59, label %63, label %60

60:                                               ; preds = %54
  %61 = load i32, i32* @EINVAL, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %4, align 4
  br label %148

63:                                               ; preds = %54
  %64 = load %struct.vlan_hdr*, %struct.vlan_hdr** %10, align 8
  %65 = getelementptr inbounds %struct.vlan_hdr, %struct.vlan_hdr* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  store i64 %66, i64* %8, align 8
  %67 = load %struct.vlan_hdr*, %struct.vlan_hdr** %10, align 8
  %68 = getelementptr inbounds %struct.vlan_hdr, %struct.vlan_hdr* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @ntohs(i32 %69)
  %71 = load i32, i32* @I40E_TX_FLAGS_VLAN_SHIFT, align 4
  %72 = shl i32 %70, %71
  %73 = load i32, i32* %9, align 4
  %74 = or i32 %73, %72
  store i32 %74, i32* %9, align 4
  %75 = load i32, i32* @I40E_TX_FLAGS_SW_VLAN, align 4
  %76 = load i32, i32* %9, align 4
  %77 = or i32 %76, %75
  store i32 %77, i32* %9, align 4
  br label %78

78:                                               ; preds = %63, %49
  br label %79

79:                                               ; preds = %78, %39
  %80 = load %struct.i40e_ring*, %struct.i40e_ring** %6, align 8
  %81 = getelementptr inbounds %struct.i40e_ring, %struct.i40e_ring* %80, i32 0, i32 0
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 0
  %84 = load %struct.TYPE_5__*, %struct.TYPE_5__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* @I40E_FLAG_DCB_ENABLED, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %91, label %90

90:                                               ; preds = %79
  br label %145

91:                                               ; preds = %79
  %92 = load i32, i32* %9, align 4
  %93 = load i32, i32* @I40E_TX_FLAGS_HW_VLAN, align 4
  %94 = load i32, i32* @I40E_TX_FLAGS_SW_VLAN, align 4
  %95 = or i32 %93, %94
  %96 = and i32 %92, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %104, label %98

98:                                               ; preds = %91
  %99 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %100 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 8
  %102 = load i32, i32* @TC_PRIO_CONTROL, align 4
  %103 = icmp ne i32 %101, %102
  br i1 %103, label %104, label %144

104:                                              ; preds = %98, %91
  %105 = load i32, i32* @I40E_TX_FLAGS_VLAN_PRIO_MASK, align 4
  %106 = xor i32 %105, -1
  %107 = load i32, i32* %9, align 4
  %108 = and i32 %107, %106
  store i32 %108, i32* %9, align 4
  %109 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %110 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 8
  %112 = and i32 %111, 7
  %113 = load i32, i32* @I40E_TX_FLAGS_VLAN_PRIO_SHIFT, align 4
  %114 = shl i32 %112, %113
  %115 = load i32, i32* %9, align 4
  %116 = or i32 %115, %114
  store i32 %116, i32* %9, align 4
  %117 = load i32, i32* %9, align 4
  %118 = load i32, i32* @I40E_TX_FLAGS_SW_VLAN, align 4
  %119 = and i32 %117, %118
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %139

121:                                              ; preds = %104
  %122 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %123 = call i32 @skb_cow_head(%struct.sk_buff* %122, i32 0)
  store i32 %123, i32* %13, align 4
  %124 = load i32, i32* %13, align 4
  %125 = icmp slt i32 %124, 0
  br i1 %125, label %126, label %128

126:                                              ; preds = %121
  %127 = load i32, i32* %13, align 4
  store i32 %127, i32* %4, align 4
  br label %148

128:                                              ; preds = %121
  %129 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %130 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %129, i32 0, i32 2
  %131 = load i64, i64* %130, align 8
  %132 = inttoptr i64 %131 to %struct.vlan_ethhdr*
  store %struct.vlan_ethhdr* %132, %struct.vlan_ethhdr** %12, align 8
  %133 = load i32, i32* %9, align 4
  %134 = load i32, i32* @I40E_TX_FLAGS_VLAN_SHIFT, align 4
  %135 = ashr i32 %133, %134
  %136 = call i64 @htons(i32 %135)
  %137 = load %struct.vlan_ethhdr*, %struct.vlan_ethhdr** %12, align 8
  %138 = getelementptr inbounds %struct.vlan_ethhdr, %struct.vlan_ethhdr* %137, i32 0, i32 0
  store i64 %136, i64* %138, align 8
  br label %143

139:                                              ; preds = %104
  %140 = load i32, i32* @I40E_TX_FLAGS_HW_VLAN, align 4
  %141 = load i32, i32* %9, align 4
  %142 = or i32 %141, %140
  store i32 %142, i32* %9, align 4
  br label %143

143:                                              ; preds = %139, %128
  br label %144

144:                                              ; preds = %143, %98
  br label %145

145:                                              ; preds = %144, %90, %30
  %146 = load i32, i32* %9, align 4
  %147 = load i32*, i32** %7, align 8
  store i32 %146, i32* %147, align 4
  store i32 0, i32* %4, align 4
  br label %148

148:                                              ; preds = %145, %126, %60
  %149 = load i32, i32* %4, align 4
  ret i32 %149
}

declare dso_local i64 @htons(i32) #1

declare dso_local i64 @vlan_get_protocol(%struct.sk_buff*) #1

declare dso_local i64 @skb_vlan_tag_present(%struct.sk_buff*) #1

declare dso_local i32 @skb_vlan_tag_get(%struct.sk_buff*) #1

declare dso_local %struct.vlan_hdr* @skb_header_pointer(%struct.sk_buff*, i32, i32, %struct.vlan_hdr*) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local i32 @skb_cow_head(%struct.sk_buff*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
