; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igbvf/extr_netdev.c_igbvf_receive_skb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igbvf/extr_netdev.c_igbvf_receive_skb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.igbvf_adapter = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.net_device = type { i32 }
%struct.sk_buff = type { i32 }

@E1000_RXD_STAT_VP = common dso_local global i32 0, align 4
@IGBVF_FLAG_RX_LB_VLAN_BSWAP = common dso_local global i32 0, align 4
@E1000_RXDEXT_STATERR_LB = common dso_local global i32 0, align 4
@E1000_RXD_SPC_VLAN_MASK = common dso_local global i32 0, align 4
@ETH_P_8021Q = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.igbvf_adapter*, %struct.net_device*, %struct.sk_buff*, i32, i32)* @igbvf_receive_skb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @igbvf_receive_skb(%struct.igbvf_adapter* %0, %struct.net_device* %1, %struct.sk_buff* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.igbvf_adapter*, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.igbvf_adapter* %0, %struct.igbvf_adapter** %6, align 8
  store %struct.net_device* %1, %struct.net_device** %7, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %12 = load i32, i32* %9, align 4
  %13 = load i32, i32* @E1000_RXD_STAT_VP, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %52

16:                                               ; preds = %5
  %17 = load %struct.igbvf_adapter*, %struct.igbvf_adapter** %6, align 8
  %18 = getelementptr inbounds %struct.igbvf_adapter, %struct.igbvf_adapter* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @IGBVF_FLAG_RX_LB_VLAN_BSWAP, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %33

23:                                               ; preds = %16
  %24 = load i32, i32* %9, align 4
  %25 = load i32, i32* @E1000_RXDEXT_STATERR_LB, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %23
  %29 = load i32, i32* %10, align 4
  %30 = call i32 @be16_to_cpu(i32 %29)
  %31 = load i32, i32* @E1000_RXD_SPC_VLAN_MASK, align 4
  %32 = and i32 %30, %31
  store i32 %32, i32* %11, align 4
  br label %38

33:                                               ; preds = %23, %16
  %34 = load i32, i32* %10, align 4
  %35 = call i32 @le16_to_cpu(i32 %34)
  %36 = load i32, i32* @E1000_RXD_SPC_VLAN_MASK, align 4
  %37 = and i32 %35, %36
  store i32 %37, i32* %11, align 4
  br label %38

38:                                               ; preds = %33, %28
  %39 = load i32, i32* %11, align 4
  %40 = load %struct.igbvf_adapter*, %struct.igbvf_adapter** %6, align 8
  %41 = getelementptr inbounds %struct.igbvf_adapter, %struct.igbvf_adapter* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = call i64 @test_bit(i32 %39, i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %38
  %46 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %47 = load i32, i32* @ETH_P_8021Q, align 4
  %48 = call i32 @htons(i32 %47)
  %49 = load i32, i32* %11, align 4
  %50 = call i32 @__vlan_hwaccel_put_tag(%struct.sk_buff* %46, i32 %48, i32 %49)
  br label %51

51:                                               ; preds = %45, %38
  br label %52

52:                                               ; preds = %51, %5
  %53 = load %struct.igbvf_adapter*, %struct.igbvf_adapter** %6, align 8
  %54 = getelementptr inbounds %struct.igbvf_adapter, %struct.igbvf_adapter* %53, i32 0, i32 1
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %58 = call i32 @napi_gro_receive(i32* %56, %struct.sk_buff* %57)
  ret void
}

declare dso_local i32 @be16_to_cpu(i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i64 @test_bit(i32, i32) #1

declare dso_local i32 @__vlan_hwaccel_put_tag(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @napi_gro_receive(i32*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
