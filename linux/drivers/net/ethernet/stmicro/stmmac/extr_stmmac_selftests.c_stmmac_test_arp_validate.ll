; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_stmmac_selftests.c_stmmac_test_arp_validate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_stmmac_selftests.c_stmmac_test_arp_validate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.packet_type = type { %struct.stmmac_test_priv* }
%struct.stmmac_test_priv = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.net_device = type { i32 }
%struct.ethhdr = type { i32 }
%struct.arphdr = type { i64 }

@ARPOP_REPLY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*, %struct.packet_type*, %struct.net_device*)* @stmmac_test_arp_validate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stmmac_test_arp_validate(%struct.sk_buff* %0, %struct.net_device* %1, %struct.packet_type* %2, %struct.net_device* %3) #0 {
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.packet_type*, align 8
  %8 = alloca %struct.net_device*, align 8
  %9 = alloca %struct.stmmac_test_priv*, align 8
  %10 = alloca %struct.ethhdr*, align 8
  %11 = alloca %struct.arphdr*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store %struct.net_device* %1, %struct.net_device** %6, align 8
  store %struct.packet_type* %2, %struct.packet_type** %7, align 8
  store %struct.net_device* %3, %struct.net_device** %8, align 8
  %12 = load %struct.packet_type*, %struct.packet_type** %7, align 8
  %13 = getelementptr inbounds %struct.packet_type, %struct.packet_type* %12, i32 0, i32 0
  %14 = load %struct.stmmac_test_priv*, %struct.stmmac_test_priv** %13, align 8
  store %struct.stmmac_test_priv* %14, %struct.stmmac_test_priv** %9, align 8
  %15 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %16 = call i64 @skb_mac_header(%struct.sk_buff* %15)
  %17 = inttoptr i64 %16 to %struct.ethhdr*
  store %struct.ethhdr* %17, %struct.ethhdr** %10, align 8
  %18 = load %struct.ethhdr*, %struct.ethhdr** %10, align 8
  %19 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.stmmac_test_priv*, %struct.stmmac_test_priv** %9, align 8
  %22 = getelementptr inbounds %struct.stmmac_test_priv, %struct.stmmac_test_priv* %21, i32 0, i32 2
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @ether_addr_equal(i32 %20, i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %4
  br label %45

29:                                               ; preds = %4
  %30 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %31 = call %struct.arphdr* @arp_hdr(%struct.sk_buff* %30)
  store %struct.arphdr* %31, %struct.arphdr** %11, align 8
  %32 = load %struct.arphdr*, %struct.arphdr** %11, align 8
  %33 = getelementptr inbounds %struct.arphdr, %struct.arphdr* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i32, i32* @ARPOP_REPLY, align 4
  %36 = call i64 @htons(i32 %35)
  %37 = icmp ne i64 %34, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %29
  br label %45

39:                                               ; preds = %29
  %40 = load %struct.stmmac_test_priv*, %struct.stmmac_test_priv** %9, align 8
  %41 = getelementptr inbounds %struct.stmmac_test_priv, %struct.stmmac_test_priv* %40, i32 0, i32 0
  store i32 1, i32* %41, align 8
  %42 = load %struct.stmmac_test_priv*, %struct.stmmac_test_priv** %9, align 8
  %43 = getelementptr inbounds %struct.stmmac_test_priv, %struct.stmmac_test_priv* %42, i32 0, i32 1
  %44 = call i32 @complete(i32* %43)
  br label %45

45:                                               ; preds = %39, %38, %28
  %46 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %47 = call i32 @kfree_skb(%struct.sk_buff* %46)
  ret i32 0
}

declare dso_local i64 @skb_mac_header(%struct.sk_buff*) #1

declare dso_local i32 @ether_addr_equal(i32, i32) #1

declare dso_local %struct.arphdr* @arp_hdr(%struct.sk_buff*) #1

declare dso_local i64 @htons(i32) #1

declare dso_local i32 @complete(i32*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
