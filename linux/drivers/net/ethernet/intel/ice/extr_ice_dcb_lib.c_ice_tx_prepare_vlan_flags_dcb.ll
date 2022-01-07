; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_dcb_lib.c_ice_tx_prepare_vlan_flags_dcb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_dcb_lib.c_ice_tx_prepare_vlan_flags_dcb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ice_ring = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.ice_tx_buf = type { i32, %struct.sk_buff* }
%struct.sk_buff = type { i32, i64 }
%struct.vlan_ethhdr = type { i32 }

@ICE_FLAG_DCB_ENA = common dso_local global i32 0, align 4
@ICE_TX_FLAGS_HW_VLAN = common dso_local global i32 0, align 4
@ICE_TX_FLAGS_SW_VLAN = common dso_local global i32 0, align 4
@TC_PRIO_CONTROL = common dso_local global i32 0, align 4
@ICE_TX_FLAGS_VLAN_PR_M = common dso_local global i32 0, align 4
@ICE_TX_FLAGS_VLAN_PR_S = common dso_local global i32 0, align 4
@ICE_TX_FLAGS_VLAN_S = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ice_tx_prepare_vlan_flags_dcb(%struct.ice_ring* %0, %struct.ice_tx_buf* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ice_ring*, align 8
  %5 = alloca %struct.ice_tx_buf*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.vlan_ethhdr*, align 8
  %8 = alloca i32, align 4
  store %struct.ice_ring* %0, %struct.ice_ring** %4, align 8
  store %struct.ice_tx_buf* %1, %struct.ice_tx_buf** %5, align 8
  %9 = load %struct.ice_tx_buf*, %struct.ice_tx_buf** %5, align 8
  %10 = getelementptr inbounds %struct.ice_tx_buf, %struct.ice_tx_buf* %9, i32 0, i32 1
  %11 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  store %struct.sk_buff* %11, %struct.sk_buff** %6, align 8
  %12 = load i32, i32* @ICE_FLAG_DCB_ENA, align 4
  %13 = load %struct.ice_ring*, %struct.ice_ring** %4, align 8
  %14 = getelementptr inbounds %struct.ice_ring, %struct.ice_ring* %13, i32 0, i32 0
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @test_bit(i32 %12, i32 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %89

23:                                               ; preds = %2
  %24 = load %struct.ice_tx_buf*, %struct.ice_tx_buf** %5, align 8
  %25 = getelementptr inbounds %struct.ice_tx_buf, %struct.ice_tx_buf* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @ICE_TX_FLAGS_HW_VLAN, align 4
  %28 = load i32, i32* @ICE_TX_FLAGS_SW_VLAN, align 4
  %29 = or i32 %27, %28
  %30 = and i32 %26, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %38, label %32

32:                                               ; preds = %23
  %33 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %34 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @TC_PRIO_CONTROL, align 4
  %37 = icmp ne i32 %35, %36
  br i1 %37, label %38, label %88

38:                                               ; preds = %32, %23
  %39 = load i32, i32* @ICE_TX_FLAGS_VLAN_PR_M, align 4
  %40 = xor i32 %39, -1
  %41 = load %struct.ice_tx_buf*, %struct.ice_tx_buf** %5, align 8
  %42 = getelementptr inbounds %struct.ice_tx_buf, %struct.ice_tx_buf* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = and i32 %43, %40
  store i32 %44, i32* %42, align 8
  %45 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %46 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = and i32 %47, 7
  %49 = load i32, i32* @ICE_TX_FLAGS_VLAN_PR_S, align 4
  %50 = shl i32 %48, %49
  %51 = load %struct.ice_tx_buf*, %struct.ice_tx_buf** %5, align 8
  %52 = getelementptr inbounds %struct.ice_tx_buf, %struct.ice_tx_buf* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = or i32 %53, %50
  store i32 %54, i32* %52, align 8
  %55 = load %struct.ice_tx_buf*, %struct.ice_tx_buf** %5, align 8
  %56 = getelementptr inbounds %struct.ice_tx_buf, %struct.ice_tx_buf* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @ICE_TX_FLAGS_SW_VLAN, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %81

61:                                               ; preds = %38
  %62 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %63 = call i32 @skb_cow_head(%struct.sk_buff* %62, i32 0)
  store i32 %63, i32* %8, align 4
  %64 = load i32, i32* %8, align 4
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %61
  %67 = load i32, i32* %8, align 4
  store i32 %67, i32* %3, align 4
  br label %89

68:                                               ; preds = %61
  %69 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %70 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = inttoptr i64 %71 to %struct.vlan_ethhdr*
  store %struct.vlan_ethhdr* %72, %struct.vlan_ethhdr** %7, align 8
  %73 = load %struct.ice_tx_buf*, %struct.ice_tx_buf** %5, align 8
  %74 = getelementptr inbounds %struct.ice_tx_buf, %struct.ice_tx_buf* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* @ICE_TX_FLAGS_VLAN_S, align 4
  %77 = ashr i32 %75, %76
  %78 = call i32 @htons(i32 %77)
  %79 = load %struct.vlan_ethhdr*, %struct.vlan_ethhdr** %7, align 8
  %80 = getelementptr inbounds %struct.vlan_ethhdr, %struct.vlan_ethhdr* %79, i32 0, i32 0
  store i32 %78, i32* %80, align 4
  br label %87

81:                                               ; preds = %38
  %82 = load i32, i32* @ICE_TX_FLAGS_HW_VLAN, align 4
  %83 = load %struct.ice_tx_buf*, %struct.ice_tx_buf** %5, align 8
  %84 = getelementptr inbounds %struct.ice_tx_buf, %struct.ice_tx_buf* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = or i32 %85, %82
  store i32 %86, i32* %84, align 8
  br label %87

87:                                               ; preds = %81, %68
  br label %88

88:                                               ; preds = %87, %32
  store i32 0, i32* %3, align 4
  br label %89

89:                                               ; preds = %88, %66, %22
  %90 = load i32, i32* %3, align 4
  ret i32 %90
}

declare dso_local i32 @test_bit(i32, i32) #1

declare dso_local i32 @skb_cow_head(%struct.sk_buff*, i32) #1

declare dso_local i32 @htons(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
