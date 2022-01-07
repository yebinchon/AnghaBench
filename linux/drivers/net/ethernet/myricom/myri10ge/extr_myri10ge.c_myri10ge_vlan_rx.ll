; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/myricom/myri10ge/extr_myri10ge.c_myri10ge_vlan_rx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/myricom/myri10ge/extr_myri10ge.c_myri10ge_vlan_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.sk_buff = type { i64, i32, i32, i32 }
%struct.vlan_ethhdr = type { i64, i32 }
%struct.TYPE_2__ = type { i32* }

@MXGEFW_PAD = common dso_local global i32 0, align 4
@NETIF_F_HW_VLAN_CTAG_RX = common dso_local global i32 0, align 4
@ETH_P_8021Q = common dso_local global i32 0, align 4
@CHECKSUM_COMPLETE = common dso_local global i64 0, align 8
@ETH_HLEN = common dso_local global i32 0, align 4
@VLAN_HLEN = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, i8*, %struct.sk_buff*)* @myri10ge_vlan_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @myri10ge_vlan_rx(%struct.net_device* %0, i8* %1, %struct.sk_buff* %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.vlan_ethhdr*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %6, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to i32*
  store i32* %12, i32** %7, align 8
  %13 = load i32, i32* @MXGEFW_PAD, align 4
  %14 = load i32*, i32** %7, align 8
  %15 = sext i32 %13 to i64
  %16 = getelementptr inbounds i32, i32* %14, i64 %15
  store i32* %16, i32** %7, align 8
  %17 = load i32*, i32** %7, align 8
  %18 = bitcast i32* %17 to %struct.vlan_ethhdr*
  store %struct.vlan_ethhdr* %18, %struct.vlan_ethhdr** %8, align 8
  %19 = load %struct.net_device*, %struct.net_device** %4, align 8
  %20 = getelementptr inbounds %struct.net_device, %struct.net_device* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @NETIF_F_HW_VLAN_CTAG_RX, align 4
  %23 = and i32 %21, %22
  %24 = load i32, i32* @NETIF_F_HW_VLAN_CTAG_RX, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %90

26:                                               ; preds = %3
  %27 = load %struct.vlan_ethhdr*, %struct.vlan_ethhdr** %8, align 8
  %28 = getelementptr inbounds %struct.vlan_ethhdr, %struct.vlan_ethhdr* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i32, i32* @ETH_P_8021Q, align 4
  %31 = call i64 @htons(i32 %30)
  %32 = icmp eq i64 %29, %31
  br i1 %32, label %33, label %90

33:                                               ; preds = %26
  %34 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %35 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @CHECKSUM_COMPLETE, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %53

39:                                               ; preds = %33
  %40 = load i32*, i32** %7, align 8
  %41 = load i32, i32* @ETH_HLEN, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  %44 = load i32, i32* @VLAN_HLEN, align 4
  %45 = call i32 @csum_partial(i32* %43, i32 %44, i32 0)
  store i32 %45, i32* %10, align 4
  %46 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %47 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* %10, align 4
  %50 = call i32 @csum_sub(i32 %48, i32 %49)
  %51 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %52 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %51, i32 0, i32 3
  store i32 %50, i32* %52, align 8
  br label %53

53:                                               ; preds = %39, %33
  %54 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %55 = load i32, i32* @ETH_P_8021Q, align 4
  %56 = call i64 @htons(i32 %55)
  %57 = load %struct.vlan_ethhdr*, %struct.vlan_ethhdr** %8, align 8
  %58 = getelementptr inbounds %struct.vlan_ethhdr, %struct.vlan_ethhdr* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @ntohs(i32 %59)
  %61 = call i32 @__vlan_hwaccel_put_tag(%struct.sk_buff* %54, i64 %56, i32 %60)
  %62 = load i32*, i32** %7, align 8
  %63 = load i32, i32* @VLAN_HLEN, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %62, i64 %64
  %66 = load i32*, i32** %7, align 8
  %67 = load i32, i32* @ETH_ALEN, align 4
  %68 = mul nsw i32 2, %67
  %69 = call i32 @memmove(i32* %65, i32* %66, i32 %68)
  %70 = load i32, i32* @VLAN_HLEN, align 4
  %71 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %72 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 4
  %74 = sub nsw i32 %73, %70
  store i32 %74, i32* %72, align 4
  %75 = load i32, i32* @VLAN_HLEN, align 4
  %76 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %77 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = sub nsw i32 %78, %75
  store i32 %79, i32* %77, align 8
  %80 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %81 = call %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff* %80)
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 0
  %83 = load i32*, i32** %82, align 8
  store i32* %83, i32** %9, align 8
  %84 = load i32*, i32** %9, align 8
  %85 = load i32, i32* @VLAN_HLEN, align 4
  %86 = call i32 @skb_frag_off_add(i32* %84, i32 %85)
  %87 = load i32*, i32** %9, align 8
  %88 = load i32, i32* @VLAN_HLEN, align 4
  %89 = call i32 @skb_frag_size_sub(i32* %87, i32 %88)
  br label %90

90:                                               ; preds = %53, %26, %3
  ret void
}

declare dso_local i64 @htons(i32) #1

declare dso_local i32 @csum_partial(i32*, i32, i32) #1

declare dso_local i32 @csum_sub(i32, i32) #1

declare dso_local i32 @__vlan_hwaccel_put_tag(%struct.sk_buff*, i64, i32) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local i32 @memmove(i32*, i32*, i32) #1

declare dso_local %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i32 @skb_frag_off_add(i32*, i32) #1

declare dso_local i32 @skb_frag_size_sub(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
