; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_stmmac_selftests.c_stmmac_test_flowctrl_validate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_stmmac_selftests.c_stmmac_test_flowctrl_validate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.packet_type = type { %struct.stmmac_test_priv* }
%struct.stmmac_test_priv = type { i32, i32 }
%struct.net_device = type { i32 }
%struct.ethhdr = type { i64, i32 }

@ETH_P_PAUSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*, %struct.packet_type*, %struct.net_device*)* @stmmac_test_flowctrl_validate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stmmac_test_flowctrl_validate(%struct.sk_buff* %0, %struct.net_device* %1, %struct.packet_type* %2, %struct.net_device* %3) #0 {
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.packet_type*, align 8
  %8 = alloca %struct.net_device*, align 8
  %9 = alloca %struct.stmmac_test_priv*, align 8
  %10 = alloca %struct.ethhdr*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store %struct.net_device* %1, %struct.net_device** %6, align 8
  store %struct.packet_type* %2, %struct.packet_type** %7, align 8
  store %struct.net_device* %3, %struct.net_device** %8, align 8
  %11 = load %struct.packet_type*, %struct.packet_type** %7, align 8
  %12 = getelementptr inbounds %struct.packet_type, %struct.packet_type* %11, i32 0, i32 0
  %13 = load %struct.stmmac_test_priv*, %struct.stmmac_test_priv** %12, align 8
  store %struct.stmmac_test_priv* %13, %struct.stmmac_test_priv** %9, align 8
  %14 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %15 = call i64 @skb_mac_header(%struct.sk_buff* %14)
  %16 = inttoptr i64 %15 to %struct.ethhdr*
  store %struct.ethhdr* %16, %struct.ethhdr** %10, align 8
  %17 = load %struct.ethhdr*, %struct.ethhdr** %10, align 8
  %18 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.net_device*, %struct.net_device** %8, align 8
  %21 = getelementptr inbounds %struct.net_device, %struct.net_device* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @ether_addr_equal(i32 %19, i32 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %4
  br label %40

26:                                               ; preds = %4
  %27 = load %struct.ethhdr*, %struct.ethhdr** %10, align 8
  %28 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i32, i32* @ETH_P_PAUSE, align 4
  %31 = call i64 @htons(i32 %30)
  %32 = icmp ne i64 %29, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %26
  br label %40

34:                                               ; preds = %26
  %35 = load %struct.stmmac_test_priv*, %struct.stmmac_test_priv** %9, align 8
  %36 = getelementptr inbounds %struct.stmmac_test_priv, %struct.stmmac_test_priv* %35, i32 0, i32 0
  store i32 1, i32* %36, align 4
  %37 = load %struct.stmmac_test_priv*, %struct.stmmac_test_priv** %9, align 8
  %38 = getelementptr inbounds %struct.stmmac_test_priv, %struct.stmmac_test_priv* %37, i32 0, i32 1
  %39 = call i32 @complete(i32* %38)
  br label %40

40:                                               ; preds = %34, %33, %25
  %41 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %42 = call i32 @kfree_skb(%struct.sk_buff* %41)
  ret i32 0
}

declare dso_local i64 @skb_mac_header(%struct.sk_buff*) #1

declare dso_local i32 @ether_addr_equal(i32, i32) #1

declare dso_local i64 @htons(i32) #1

declare dso_local i32 @complete(i32*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
