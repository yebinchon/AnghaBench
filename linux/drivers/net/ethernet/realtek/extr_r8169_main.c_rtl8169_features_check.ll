; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/realtek/extr_r8169_main.c_rtl8169_features_check.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/realtek/extr_r8169_main.c_rtl8169_features_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64, i64 }
%struct.net_device = type { i32 }
%struct.rtl8169_private = type { i32 }

@GTTCPHO_MAX = common dso_local global i32 0, align 4
@NETIF_F_ALL_TSO = common dso_local global i32 0, align 4
@CHECKSUM_PARTIAL = common dso_local global i64 0, align 8
@ETH_ZLEN = common dso_local global i64 0, align 8
@NETIF_F_CSUM_MASK = common dso_local global i32 0, align 4
@TCPHO_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*, i32)* @rtl8169_features_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtl8169_features_check(%struct.sk_buff* %0, %struct.net_device* %1, i32 %2) #0 {
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.rtl8169_private*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %10 = call i32 @skb_transport_offset(%struct.sk_buff* %9)
  store i32 %10, i32* %7, align 4
  %11 = load %struct.net_device*, %struct.net_device** %5, align 8
  %12 = call %struct.rtl8169_private* @netdev_priv(%struct.net_device* %11)
  store %struct.rtl8169_private* %12, %struct.rtl8169_private** %8, align 8
  %13 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %14 = call i64 @skb_is_gso(%struct.sk_buff* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %30

16:                                               ; preds = %3
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* @GTTCPHO_MAX, align 4
  %19 = icmp sgt i32 %17, %18
  br i1 %19, label %20, label %29

20:                                               ; preds = %16
  %21 = load %struct.rtl8169_private*, %struct.rtl8169_private** %8, align 8
  %22 = call i64 @rtl_chip_supports_csum_v2(%struct.rtl8169_private* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %20
  %25 = load i32, i32* @NETIF_F_ALL_TSO, align 4
  %26 = xor i32 %25, -1
  %27 = load i32, i32* %6, align 4
  %28 = and i32 %27, %26
  store i32 %28, i32* %6, align 4
  br label %29

29:                                               ; preds = %24, %20, %16
  br label %68

30:                                               ; preds = %3
  %31 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %32 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @CHECKSUM_PARTIAL, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %67

36:                                               ; preds = %30
  %37 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %38 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @ETH_ZLEN, align 8
  %41 = icmp slt i64 %39, %40
  br i1 %41, label %42, label %53

42:                                               ; preds = %36
  %43 = load %struct.rtl8169_private*, %struct.rtl8169_private** %8, align 8
  %44 = getelementptr inbounds %struct.rtl8169_private, %struct.rtl8169_private* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  switch i32 %45, label %51 [
    i32 131, label %46
    i32 130, label %46
    i32 129, label %46
    i32 128, label %46
  ]

46:                                               ; preds = %42, %42, %42, %42
  %47 = load i32, i32* @NETIF_F_CSUM_MASK, align 4
  %48 = xor i32 %47, -1
  %49 = load i32, i32* %6, align 4
  %50 = and i32 %49, %48
  store i32 %50, i32* %6, align 4
  br label %52

51:                                               ; preds = %42
  br label %52

52:                                               ; preds = %51, %46
  br label %53

53:                                               ; preds = %52, %36
  %54 = load i32, i32* %7, align 4
  %55 = load i32, i32* @TCPHO_MAX, align 4
  %56 = icmp sgt i32 %54, %55
  br i1 %56, label %57, label %66

57:                                               ; preds = %53
  %58 = load %struct.rtl8169_private*, %struct.rtl8169_private** %8, align 8
  %59 = call i64 @rtl_chip_supports_csum_v2(%struct.rtl8169_private* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %57
  %62 = load i32, i32* @NETIF_F_CSUM_MASK, align 4
  %63 = xor i32 %62, -1
  %64 = load i32, i32* %6, align 4
  %65 = and i32 %64, %63
  store i32 %65, i32* %6, align 4
  br label %66

66:                                               ; preds = %61, %57, %53
  br label %67

67:                                               ; preds = %66, %30
  br label %68

68:                                               ; preds = %67, %29
  %69 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %70 = load i32, i32* %6, align 4
  %71 = call i32 @vlan_features_check(%struct.sk_buff* %69, i32 %70)
  ret i32 %71
}

declare dso_local i32 @skb_transport_offset(%struct.sk_buff*) #1

declare dso_local %struct.rtl8169_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @skb_is_gso(%struct.sk_buff*) #1

declare dso_local i64 @rtl_chip_supports_csum_v2(%struct.rtl8169_private*) #1

declare dso_local i32 @vlan_features_check(%struct.sk_buff*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
