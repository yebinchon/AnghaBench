; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/extr_hns3_ethtool.c_hns3_lp_setup_skb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/extr_hns3_ethtool.c_hns3_lp_setup_skb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { %struct.net_device* }
%struct.net_device = type { i32 }
%struct.hnae3_handle = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.ethhdr = type { i32, i32, i32* }

@NET_IP_ALIGN = common dso_local global i32 0, align 4
@HNS3_NIC_LB_TEST_PACKET_SIZE = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@ETH_P_ARP = common dso_local global i32 0, align 4
@HNS3_NIC_LB_DST_MAC_ADDR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sk_buff*)* @hns3_lp_setup_skb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hns3_lp_setup_skb(%struct.sk_buff* %0) #0 {
  %2 = alloca %struct.sk_buff*, align 8
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.hnae3_handle*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.ethhdr*, align 8
  %7 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %2, align 8
  %8 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %9 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %8, i32 0, i32 0
  %10 = load %struct.net_device*, %struct.net_device** %9, align 8
  store %struct.net_device* %10, %struct.net_device** %3, align 8
  %11 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %12 = load i32, i32* @NET_IP_ALIGN, align 4
  %13 = call i32 @skb_reserve(%struct.sk_buff* %11, i32 %12)
  %14 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %15 = call i8* @skb_put(%struct.sk_buff* %14, i32 16)
  %16 = bitcast i8* %15 to %struct.ethhdr*
  store %struct.ethhdr* %16, %struct.ethhdr** %6, align 8
  %17 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %18 = load i32, i32* @HNS3_NIC_LB_TEST_PACKET_SIZE, align 4
  %19 = call i8* @skb_put(%struct.sk_buff* %17, i32 %18)
  store i8* %19, i8** %5, align 8
  %20 = load %struct.ethhdr*, %struct.ethhdr** %6, align 8
  %21 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %20, i32 0, i32 2
  %22 = load i32*, i32** %21, align 8
  %23 = load %struct.net_device*, %struct.net_device** %3, align 8
  %24 = getelementptr inbounds %struct.net_device, %struct.net_device* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @ETH_ALEN, align 4
  %27 = call i32 @memcpy(i32* %22, i32 %25, i32 %26)
  %28 = load %struct.net_device*, %struct.net_device** %3, align 8
  %29 = call %struct.hnae3_handle* @hns3_get_handle(%struct.net_device* %28)
  store %struct.hnae3_handle* %29, %struct.hnae3_handle** %4, align 8
  %30 = load %struct.hnae3_handle*, %struct.hnae3_handle** %4, align 8
  %31 = getelementptr inbounds %struct.hnae3_handle, %struct.hnae3_handle* %30, i32 0, i32 0
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp eq i32 %34, 32
  br i1 %35, label %36, label %43

36:                                               ; preds = %1
  %37 = load %struct.ethhdr*, %struct.ethhdr** %6, align 8
  %38 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %37, i32 0, i32 2
  %39 = load i32*, i32** %38, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 5
  %41 = load i32, i32* %40, align 4
  %42 = add nsw i32 %41, 31
  store i32 %42, i32* %40, align 4
  br label %43

43:                                               ; preds = %36, %1
  %44 = load %struct.ethhdr*, %struct.ethhdr** %6, align 8
  %45 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @eth_zero_addr(i32 %46)
  %48 = load i32, i32* @ETH_P_ARP, align 4
  %49 = call i32 @htons(i32 %48)
  %50 = load %struct.ethhdr*, %struct.ethhdr** %6, align 8
  %51 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 8
  %52 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %53 = call i32 @skb_reset_mac_header(%struct.sk_buff* %52)
  store i32 0, i32* %7, align 4
  br label %54

54:                                               ; preds = %66, %43
  %55 = load i32, i32* %7, align 4
  %56 = load i32, i32* @HNS3_NIC_LB_TEST_PACKET_SIZE, align 4
  %57 = icmp ult i32 %55, %56
  br i1 %57, label %58, label %69

58:                                               ; preds = %54
  %59 = load i32, i32* %7, align 4
  %60 = and i32 %59, 255
  %61 = trunc i32 %60 to i8
  %62 = load i8*, i8** %5, align 8
  %63 = load i32, i32* %7, align 4
  %64 = zext i32 %63 to i64
  %65 = getelementptr inbounds i8, i8* %62, i64 %64
  store i8 %61, i8* %65, align 1
  br label %66

66:                                               ; preds = %58
  %67 = load i32, i32* %7, align 4
  %68 = add i32 %67, 1
  store i32 %68, i32* %7, align 4
  br label %54

69:                                               ; preds = %54
  ret void
}

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i32) #1

declare dso_local i8* @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local %struct.hnae3_handle* @hns3_get_handle(%struct.net_device*) #1

declare dso_local i32 @eth_zero_addr(i32) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @skb_reset_mac_header(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
