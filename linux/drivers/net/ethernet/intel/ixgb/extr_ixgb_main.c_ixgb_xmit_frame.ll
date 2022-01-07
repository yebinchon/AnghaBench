; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgb/extr_ixgb_main.c_ixgb_xmit_frame.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgb/extr_ixgb_main.c_ixgb_xmit_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64 }
%struct.net_device = type { i32 }
%struct.ixgb_adapter = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }

@__IXGB_DOWN = common dso_local global i32 0, align 4
@NETDEV_TX_OK = common dso_local global i32 0, align 4
@DESC_NEEDED = common dso_local global i32 0, align 4
@NETDEV_TX_BUSY = common dso_local global i32 0, align 4
@IXGB_TX_FLAGS_VLAN = common dso_local global i32 0, align 4
@IXGB_TX_FLAGS_TSO = common dso_local global i32 0, align 4
@IXGB_TX_FLAGS_CSUM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*)* @ixgb_xmit_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ixgb_xmit_frame(%struct.sk_buff* %0, %struct.net_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.ixgb_adapter*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  %12 = load %struct.net_device*, %struct.net_device** %5, align 8
  %13 = call %struct.ixgb_adapter* @netdev_priv(%struct.net_device* %12)
  store %struct.ixgb_adapter* %13, %struct.ixgb_adapter** %6, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %14 = load i32, i32* @__IXGB_DOWN, align 4
  %15 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %6, align 8
  %16 = getelementptr inbounds %struct.ixgb_adapter, %struct.ixgb_adapter* %15, i32 0, i32 1
  %17 = call i64 @test_bit(i32 %14, i32* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %2
  %20 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %21 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %20)
  %22 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %22, i32* %3, align 4
  br label %119

23:                                               ; preds = %2
  %24 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %25 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp sle i64 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %23
  %29 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %30 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %29)
  %31 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %31, i32* %3, align 4
  br label %119

32:                                               ; preds = %23
  %33 = load %struct.net_device*, %struct.net_device** %5, align 8
  %34 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %6, align 8
  %35 = getelementptr inbounds %struct.ixgb_adapter, %struct.ixgb_adapter* %34, i32 0, i32 0
  %36 = load i32, i32* @DESC_NEEDED, align 4
  %37 = call i32 @ixgb_maybe_stop_tx(%struct.net_device* %33, %struct.TYPE_4__* %35, i32 %36)
  %38 = call i64 @unlikely(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %32
  %41 = load i32, i32* @NETDEV_TX_BUSY, align 4
  store i32 %41, i32* %3, align 4
  br label %119

42:                                               ; preds = %32
  %43 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %44 = call i64 @skb_vlan_tag_present(%struct.sk_buff* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %42
  %47 = load i32, i32* @IXGB_TX_FLAGS_VLAN, align 4
  %48 = load i32, i32* %8, align 4
  %49 = or i32 %48, %47
  store i32 %49, i32* %8, align 4
  %50 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %51 = call i32 @skb_vlan_tag_get(%struct.sk_buff* %50)
  store i32 %51, i32* %9, align 4
  br label %52

52:                                               ; preds = %46, %42
  %53 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %6, align 8
  %54 = getelementptr inbounds %struct.ixgb_adapter, %struct.ixgb_adapter* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  store i32 %56, i32* %7, align 4
  %57 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %6, align 8
  %58 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %59 = call i32 @ixgb_tso(%struct.ixgb_adapter* %57, %struct.sk_buff* %58)
  store i32 %59, i32* %11, align 4
  %60 = load i32, i32* %11, align 4
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %52
  %63 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %64 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %63)
  %65 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %65, i32* %3, align 4
  br label %119

66:                                               ; preds = %52
  %67 = load i32, i32* %11, align 4
  %68 = call i64 @likely(i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %66
  %71 = load i32, i32* @IXGB_TX_FLAGS_TSO, align 4
  %72 = load i32, i32* %8, align 4
  %73 = or i32 %72, %71
  store i32 %73, i32* %8, align 4
  br label %84

74:                                               ; preds = %66
  %75 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %6, align 8
  %76 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %77 = call i64 @ixgb_tx_csum(%struct.ixgb_adapter* %75, %struct.sk_buff* %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %74
  %80 = load i32, i32* @IXGB_TX_FLAGS_CSUM, align 4
  %81 = load i32, i32* %8, align 4
  %82 = or i32 %81, %80
  store i32 %82, i32* %8, align 4
  br label %83

83:                                               ; preds = %79, %74
  br label %84

84:                                               ; preds = %83, %70
  %85 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %6, align 8
  %86 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %87 = load i32, i32* %7, align 4
  %88 = call i32 @ixgb_tx_map(%struct.ixgb_adapter* %85, %struct.sk_buff* %86, i32 %87)
  store i32 %88, i32* %10, align 4
  %89 = load i32, i32* %10, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %102

91:                                               ; preds = %84
  %92 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %6, align 8
  %93 = load i32, i32* %10, align 4
  %94 = load i32, i32* %9, align 4
  %95 = load i32, i32* %8, align 4
  %96 = call i32 @ixgb_tx_queue(%struct.ixgb_adapter* %92, i32 %93, i32 %94, i32 %95)
  %97 = load %struct.net_device*, %struct.net_device** %5, align 8
  %98 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %6, align 8
  %99 = getelementptr inbounds %struct.ixgb_adapter, %struct.ixgb_adapter* %98, i32 0, i32 0
  %100 = load i32, i32* @DESC_NEEDED, align 4
  %101 = call i32 @ixgb_maybe_stop_tx(%struct.net_device* %97, %struct.TYPE_4__* %99, i32 %100)
  br label %117

102:                                              ; preds = %84
  %103 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %104 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %103)
  %105 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %6, align 8
  %106 = getelementptr inbounds %struct.ixgb_adapter, %struct.ixgb_adapter* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 1
  %108 = load %struct.TYPE_3__*, %struct.TYPE_3__** %107, align 8
  %109 = load i32, i32* %7, align 4
  %110 = zext i32 %109 to i64
  %111 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %108, i64 %110
  %112 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %111, i32 0, i32 0
  store i64 0, i64* %112, align 8
  %113 = load i32, i32* %7, align 4
  %114 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %6, align 8
  %115 = getelementptr inbounds %struct.ixgb_adapter, %struct.ixgb_adapter* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 0
  store i32 %113, i32* %116, align 8
  br label %117

117:                                              ; preds = %102, %91
  %118 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %118, i32* %3, align 4
  br label %119

119:                                              ; preds = %117, %62, %40, %28, %19
  %120 = load i32, i32* %3, align 4
  ret i32 %120
}

declare dso_local %struct.ixgb_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @ixgb_maybe_stop_tx(%struct.net_device*, %struct.TYPE_4__*, i32) #1

declare dso_local i64 @skb_vlan_tag_present(%struct.sk_buff*) #1

declare dso_local i32 @skb_vlan_tag_get(%struct.sk_buff*) #1

declare dso_local i32 @ixgb_tso(%struct.ixgb_adapter*, %struct.sk_buff*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i64 @ixgb_tx_csum(%struct.ixgb_adapter*, %struct.sk_buff*) #1

declare dso_local i32 @ixgb_tx_map(%struct.ixgb_adapter*, %struct.sk_buff*, i32) #1

declare dso_local i32 @ixgb_tx_queue(%struct.ixgb_adapter*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
