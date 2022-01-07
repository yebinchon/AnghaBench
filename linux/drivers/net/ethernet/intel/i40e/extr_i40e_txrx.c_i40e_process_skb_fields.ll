; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_txrx.c_i40e_process_skb_fields.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_txrx.c_i40e_process_skb_fields.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_ring = type { i32, i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 }
%union.i40e_rx_desc = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.sk_buff = type { i32 }

@I40E_RXD_QW1_STATUS_MASK = common dso_local global i32 0, align 4
@I40E_RXD_QW1_STATUS_SHIFT = common dso_local global i32 0, align 4
@I40E_RXD_QW1_STATUS_TSYNVALID_MASK = common dso_local global i32 0, align 4
@I40E_RXD_QW1_STATUS_TSYNINDX_MASK = common dso_local global i32 0, align 4
@I40E_RXD_QW1_STATUS_TSYNINDX_SHIFT = common dso_local global i32 0, align 4
@I40E_RXD_QW1_PTYPE_MASK = common dso_local global i32 0, align 4
@I40E_RXD_QW1_PTYPE_SHIFT = common dso_local global i32 0, align 4
@I40E_RX_DESC_STATUS_L2TAG1P_SHIFT = common dso_local global i32 0, align 4
@ETH_P_8021Q = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @i40e_process_skb_fields(%struct.i40e_ring* %0, %union.i40e_rx_desc* %1, %struct.sk_buff* %2) #0 {
  %4 = alloca %struct.i40e_ring*, align 8
  %5 = alloca %union.i40e_rx_desc*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.i40e_ring* %0, %struct.i40e_ring** %4, align 8
  store %union.i40e_rx_desc* %1, %union.i40e_rx_desc** %5, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %6, align 8
  %13 = load %union.i40e_rx_desc*, %union.i40e_rx_desc** %5, align 8
  %14 = bitcast %union.i40e_rx_desc* %13 to %struct.TYPE_9__*
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @le64_to_cpu(i32 %17)
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* @I40E_RXD_QW1_STATUS_MASK, align 4
  %21 = and i32 %19, %20
  %22 = load i32, i32* @I40E_RXD_QW1_STATUS_SHIFT, align 4
  %23 = ashr i32 %21, %22
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* @I40E_RXD_QW1_STATUS_TSYNVALID_MASK, align 4
  %26 = and i32 %24, %25
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* @I40E_RXD_QW1_STATUS_TSYNINDX_MASK, align 4
  %29 = and i32 %27, %28
  %30 = load i32, i32* @I40E_RXD_QW1_STATUS_TSYNINDX_SHIFT, align 4
  %31 = ashr i32 %29, %30
  store i32 %31, i32* %10, align 4
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* @I40E_RXD_QW1_PTYPE_MASK, align 4
  %34 = and i32 %32, %33
  %35 = load i32, i32* @I40E_RXD_QW1_PTYPE_SHIFT, align 4
  %36 = ashr i32 %34, %35
  store i32 %36, i32* %11, align 4
  %37 = load i32, i32* %9, align 4
  %38 = call i64 @unlikely(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %49

40:                                               ; preds = %3
  %41 = load %struct.i40e_ring*, %struct.i40e_ring** %4, align 8
  %42 = getelementptr inbounds %struct.i40e_ring, %struct.i40e_ring* %41, i32 0, i32 2
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %47 = load i32, i32* %10, align 4
  %48 = call i32 @i40e_ptp_rx_hwtstamp(i32 %45, %struct.sk_buff* %46, i32 %47)
  br label %49

49:                                               ; preds = %40, %3
  %50 = load %struct.i40e_ring*, %struct.i40e_ring** %4, align 8
  %51 = load %union.i40e_rx_desc*, %union.i40e_rx_desc** %5, align 8
  %52 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %53 = load i32, i32* %11, align 4
  %54 = call i32 @i40e_rx_hash(%struct.i40e_ring* %50, %union.i40e_rx_desc* %51, %struct.sk_buff* %52, i32 %53)
  %55 = load %struct.i40e_ring*, %struct.i40e_ring** %4, align 8
  %56 = getelementptr inbounds %struct.i40e_ring, %struct.i40e_ring* %55, i32 0, i32 2
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %56, align 8
  %58 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %59 = load %union.i40e_rx_desc*, %union.i40e_rx_desc** %5, align 8
  %60 = call i32 @i40e_rx_checksum(%struct.TYPE_10__* %57, %struct.sk_buff* %58, %union.i40e_rx_desc* %59)
  %61 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %62 = load %struct.i40e_ring*, %struct.i40e_ring** %4, align 8
  %63 = getelementptr inbounds %struct.i40e_ring, %struct.i40e_ring* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @skb_record_rx_queue(%struct.sk_buff* %61, i32 %64)
  %66 = load i32, i32* %7, align 4
  %67 = load i32, i32* @I40E_RX_DESC_STATUS_L2TAG1P_SHIFT, align 4
  %68 = call i32 @BIT(i32 %67)
  %69 = and i32 %66, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %84

71:                                               ; preds = %49
  %72 = load %union.i40e_rx_desc*, %union.i40e_rx_desc** %5, align 8
  %73 = bitcast %union.i40e_rx_desc* %72 to %struct.TYPE_9__*
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  store i32 %77, i32* %12, align 4
  %78 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %79 = load i32, i32* @ETH_P_8021Q, align 4
  %80 = call i32 @htons(i32 %79)
  %81 = load i32, i32* %12, align 4
  %82 = call i32 @le16_to_cpu(i32 %81)
  %83 = call i32 @__vlan_hwaccel_put_tag(%struct.sk_buff* %78, i32 %80, i32 %82)
  br label %84

84:                                               ; preds = %71, %49
  %85 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %86 = load %struct.i40e_ring*, %struct.i40e_ring** %4, align 8
  %87 = getelementptr inbounds %struct.i40e_ring, %struct.i40e_ring* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = call i32 @eth_type_trans(%struct.sk_buff* %85, i32 %88)
  %90 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %91 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %90, i32 0, i32 0
  store i32 %89, i32* %91, align 4
  ret void
}

declare dso_local i32 @le64_to_cpu(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @i40e_ptp_rx_hwtstamp(i32, %struct.sk_buff*, i32) #1

declare dso_local i32 @i40e_rx_hash(%struct.i40e_ring*, %union.i40e_rx_desc*, %struct.sk_buff*, i32) #1

declare dso_local i32 @i40e_rx_checksum(%struct.TYPE_10__*, %struct.sk_buff*, %union.i40e_rx_desc*) #1

declare dso_local i32 @skb_record_rx_queue(%struct.sk_buff*, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @__vlan_hwaccel_put_tag(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @eth_type_trans(%struct.sk_buff*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
