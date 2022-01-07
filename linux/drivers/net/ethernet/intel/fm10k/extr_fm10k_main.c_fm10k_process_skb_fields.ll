; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/fm10k/extr_fm10k_main.c_fm10k_process_skb_fields.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/fm10k/extr_fm10k_main.c_fm10k_process_skb_fields.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fm10k_ring = type { i32 }
%union.fm10k_rx_desc = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i64 }
%struct.sk_buff = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_14__ = type { %struct.TYPE_11__, i32 }
%struct.TYPE_11__ = type { %struct.TYPE_10__, %struct.TYPE_9__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_12__ = type { i32 }

@VLAN_VID_MASK = common dso_local global i32 0, align 4
@ETH_P_8021Q = common dso_local global i32 0, align 4
@VLAN_PRIO_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fm10k_ring*, %union.fm10k_rx_desc*, %struct.sk_buff*)* @fm10k_process_skb_fields to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fm10k_process_skb_fields(%struct.fm10k_ring* %0, %union.fm10k_rx_desc* %1, %struct.sk_buff* %2) #0 {
  %4 = alloca %struct.fm10k_ring*, align 8
  %5 = alloca %union.fm10k_rx_desc*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.fm10k_ring* %0, %struct.fm10k_ring** %4, align 8
  store %union.fm10k_rx_desc* %1, %union.fm10k_rx_desc** %5, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %6, align 8
  %9 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %10 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %7, align 4
  %12 = load %struct.fm10k_ring*, %struct.fm10k_ring** %4, align 8
  %13 = load %union.fm10k_rx_desc*, %union.fm10k_rx_desc** %5, align 8
  %14 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %15 = call i32 @fm10k_rx_hash(%struct.fm10k_ring* %12, %union.fm10k_rx_desc* %13, %struct.sk_buff* %14)
  %16 = load %struct.fm10k_ring*, %struct.fm10k_ring** %4, align 8
  %17 = load %union.fm10k_rx_desc*, %union.fm10k_rx_desc** %5, align 8
  %18 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %19 = call i32 @fm10k_rx_checksum(%struct.fm10k_ring* %16, %union.fm10k_rx_desc* %17, %struct.sk_buff* %18)
  %20 = load %union.fm10k_rx_desc*, %union.fm10k_rx_desc** %5, align 8
  %21 = bitcast %union.fm10k_rx_desc* %20 to %struct.TYPE_8__*
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %25 = call %struct.TYPE_14__* @FM10K_CB(%struct.sk_buff* %24)
  %26 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %25, i32 0, i32 1
  store i32 %23, i32* %26, align 8
  %27 = load %union.fm10k_rx_desc*, %union.fm10k_rx_desc** %5, align 8
  %28 = bitcast %union.fm10k_rx_desc* %27 to %struct.TYPE_13__*
  %29 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %32 = call %struct.TYPE_14__* @FM10K_CB(%struct.sk_buff* %31)
  %33 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 0
  store i64 %30, i64* %35, align 8
  %36 = load %union.fm10k_rx_desc*, %union.fm10k_rx_desc** %5, align 8
  %37 = bitcast %union.fm10k_rx_desc* %36 to %struct.TYPE_12__*
  %38 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %41 = call %struct.TYPE_14__* @FM10K_CB(%struct.sk_buff* %40)
  %42 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 0
  store i32 %39, i32* %44, align 8
  %45 = load %union.fm10k_rx_desc*, %union.fm10k_rx_desc** %5, align 8
  %46 = bitcast %union.fm10k_rx_desc* %45 to %struct.TYPE_13__*
  %47 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %84

50:                                               ; preds = %3
  %51 = load %union.fm10k_rx_desc*, %union.fm10k_rx_desc** %5, align 8
  %52 = bitcast %union.fm10k_rx_desc* %51 to %struct.TYPE_13__*
  %53 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = call i32 @le16_to_cpu(i64 %54)
  store i32 %55, i32* %8, align 4
  %56 = load i32, i32* %8, align 4
  %57 = load i32, i32* @VLAN_VID_MASK, align 4
  %58 = and i32 %56, %57
  %59 = load %struct.fm10k_ring*, %struct.fm10k_ring** %4, align 8
  %60 = getelementptr inbounds %struct.fm10k_ring, %struct.fm10k_ring* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = icmp ne i32 %58, %61
  br i1 %62, label %63, label %69

63:                                               ; preds = %50
  %64 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %65 = load i32, i32* @ETH_P_8021Q, align 4
  %66 = call i32 @htons(i32 %65)
  %67 = load i32, i32* %8, align 4
  %68 = call i32 @__vlan_hwaccel_put_tag(%struct.sk_buff* %64, i32 %66, i32 %67)
  br label %83

69:                                               ; preds = %50
  %70 = load i32, i32* %8, align 4
  %71 = load i32, i32* @VLAN_PRIO_MASK, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %82

74:                                               ; preds = %69
  %75 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %76 = load i32, i32* @ETH_P_8021Q, align 4
  %77 = call i32 @htons(i32 %76)
  %78 = load i32, i32* %8, align 4
  %79 = load i32, i32* @VLAN_PRIO_MASK, align 4
  %80 = and i32 %78, %79
  %81 = call i32 @__vlan_hwaccel_put_tag(%struct.sk_buff* %75, i32 %77, i32 %80)
  br label %82

82:                                               ; preds = %74, %69
  br label %83

83:                                               ; preds = %82, %63
  br label %84

84:                                               ; preds = %83, %3
  %85 = load %struct.fm10k_ring*, %struct.fm10k_ring** %4, align 8
  %86 = load %union.fm10k_rx_desc*, %union.fm10k_rx_desc** %5, align 8
  %87 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %88 = call i32 @fm10k_type_trans(%struct.fm10k_ring* %85, %union.fm10k_rx_desc* %86, %struct.sk_buff* %87)
  %89 = load i32, i32* %7, align 4
  ret i32 %89
}

declare dso_local i32 @fm10k_rx_hash(%struct.fm10k_ring*, %union.fm10k_rx_desc*, %struct.sk_buff*) #1

declare dso_local i32 @fm10k_rx_checksum(%struct.fm10k_ring*, %union.fm10k_rx_desc*, %struct.sk_buff*) #1

declare dso_local %struct.TYPE_14__* @FM10K_CB(%struct.sk_buff*) #1

declare dso_local i32 @le16_to_cpu(i64) #1

declare dso_local i32 @__vlan_hwaccel_put_tag(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @fm10k_type_trans(%struct.fm10k_ring*, %union.fm10k_rx_desc*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
