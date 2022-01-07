; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/toshiba/extr_spider_net.c_spider_net_pass_skb_up.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/toshiba/extr_spider_net.c_spider_net_pass_skb_up.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spider_net_descr = type { %struct.sk_buff*, %struct.spider_net_hw_descr* }
%struct.sk_buff = type { i64, i32, i32 }
%struct.spider_net_hw_descr = type { i32, i32, i32 }
%struct.spider_net_card = type { %struct.net_device* }
%struct.net_device = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@NETIF_F_RXCSUM = common dso_local global i32 0, align 4
@SPIDER_NET_DATA_STATUS_CKSUM_MASK = common dso_local global i32 0, align 4
@SPIDER_NET_DATA_ERR_CKSUM_MASK = common dso_local global i32 0, align 4
@CHECKSUM_UNNECESSARY = common dso_local global i32 0, align 4
@SPIDER_NET_VLAN_PACKET = common dso_local global i32 0, align 4
@SPIDER_MISALIGN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.spider_net_descr*, %struct.spider_net_card*)* @spider_net_pass_skb_up to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @spider_net_pass_skb_up(%struct.spider_net_descr* %0, %struct.spider_net_card* %1) #0 {
  %3 = alloca %struct.spider_net_descr*, align 8
  %4 = alloca %struct.spider_net_card*, align 8
  %5 = alloca %struct.spider_net_hw_descr*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.spider_net_descr* %0, %struct.spider_net_descr** %3, align 8
  store %struct.spider_net_card* %1, %struct.spider_net_card** %4, align 8
  %10 = load %struct.spider_net_descr*, %struct.spider_net_descr** %3, align 8
  %11 = getelementptr inbounds %struct.spider_net_descr, %struct.spider_net_descr* %10, i32 0, i32 1
  %12 = load %struct.spider_net_hw_descr*, %struct.spider_net_hw_descr** %11, align 8
  store %struct.spider_net_hw_descr* %12, %struct.spider_net_hw_descr** %5, align 8
  %13 = load %struct.spider_net_descr*, %struct.spider_net_descr** %3, align 8
  %14 = getelementptr inbounds %struct.spider_net_descr, %struct.spider_net_descr* %13, i32 0, i32 0
  %15 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  store %struct.sk_buff* %15, %struct.sk_buff** %6, align 8
  %16 = load %struct.spider_net_card*, %struct.spider_net_card** %4, align 8
  %17 = getelementptr inbounds %struct.spider_net_card, %struct.spider_net_card* %16, i32 0, i32 0
  %18 = load %struct.net_device*, %struct.net_device** %17, align 8
  store %struct.net_device* %18, %struct.net_device** %7, align 8
  %19 = load %struct.spider_net_hw_descr*, %struct.spider_net_hw_descr** %5, align 8
  %20 = getelementptr inbounds %struct.spider_net_hw_descr, %struct.spider_net_hw_descr* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %8, align 4
  %22 = load %struct.spider_net_hw_descr*, %struct.spider_net_hw_descr** %5, align 8
  %23 = getelementptr inbounds %struct.spider_net_hw_descr, %struct.spider_net_hw_descr* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %9, align 4
  %25 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %26 = load %struct.spider_net_hw_descr*, %struct.spider_net_hw_descr** %5, align 8
  %27 = getelementptr inbounds %struct.spider_net_hw_descr, %struct.spider_net_hw_descr* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @skb_put(%struct.sk_buff* %25, i32 %28)
  %30 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %31 = call i32 @skb_pull(%struct.sk_buff* %30, i32 2)
  %32 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %33 = load %struct.net_device*, %struct.net_device** %7, align 8
  %34 = call i32 @eth_type_trans(%struct.sk_buff* %32, %struct.net_device* %33)
  %35 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %36 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %35, i32 0, i32 2
  store i32 %34, i32* %36, align 4
  %37 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %38 = call i32 @skb_checksum_none_assert(%struct.sk_buff* %37)
  %39 = load %struct.net_device*, %struct.net_device** %7, align 8
  %40 = getelementptr inbounds %struct.net_device, %struct.net_device* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @NETIF_F_RXCSUM, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %61

45:                                               ; preds = %2
  %46 = load i32, i32* %8, align 4
  %47 = load i32, i32* @SPIDER_NET_DATA_STATUS_CKSUM_MASK, align 4
  %48 = and i32 %46, %47
  %49 = load i32, i32* @SPIDER_NET_DATA_STATUS_CKSUM_MASK, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %60

51:                                               ; preds = %45
  %52 = load i32, i32* %9, align 4
  %53 = load i32, i32* @SPIDER_NET_DATA_ERR_CKSUM_MASK, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %60, label %56

56:                                               ; preds = %51
  %57 = load i32, i32* @CHECKSUM_UNNECESSARY, align 4
  %58 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %59 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %58, i32 0, i32 1
  store i32 %57, i32* %59, align 8
  br label %60

60:                                               ; preds = %56, %51, %45
  br label %61

61:                                               ; preds = %60, %2
  %62 = load i32, i32* %8, align 4
  %63 = load i32, i32* @SPIDER_NET_VLAN_PACKET, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %61
  br label %67

67:                                               ; preds = %66, %61
  %68 = load %struct.net_device*, %struct.net_device** %7, align 8
  %69 = getelementptr inbounds %struct.net_device, %struct.net_device* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %70, align 4
  %73 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %74 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load %struct.net_device*, %struct.net_device** %7, align 8
  %77 = getelementptr inbounds %struct.net_device, %struct.net_device* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = sext i32 %79 to i64
  %81 = add nsw i64 %80, %75
  %82 = trunc i64 %81 to i32
  store i32 %82, i32* %78, align 4
  %83 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %84 = call i32 @netif_receive_skb(%struct.sk_buff* %83)
  ret void
}

declare dso_local i32 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_pull(%struct.sk_buff*, i32) #1

declare dso_local i32 @eth_type_trans(%struct.sk_buff*, %struct.net_device*) #1

declare dso_local i32 @skb_checksum_none_assert(%struct.sk_buff*) #1

declare dso_local i32 @netif_receive_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
