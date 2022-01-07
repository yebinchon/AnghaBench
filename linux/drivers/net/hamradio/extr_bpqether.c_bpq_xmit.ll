; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/hamradio/extr_bpqether.c_bpq_xmit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/hamradio/extr_bpqether.c_bpq_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64, i32 }
%struct.net_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.bpqdev = type { i32 }

@ETH_P_IP = common dso_local global i32 0, align 4
@NETDEV_TX_OK = common dso_local global i32 0, align 4
@AX25_BPQ_HEADER_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"bpqether: out of memory\0A\00", align 1
@ETH_P_BPQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*)* @bpq_xmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bpq_xmit(%struct.sk_buff* %0, %struct.net_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.bpqdev*, align 8
  %8 = alloca %struct.net_device*, align 8
  %9 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  %10 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %11 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i32, i32* @ETH_P_IP, align 4
  %14 = call i64 @htons(i32 %13)
  %15 = icmp eq i64 %12, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %18 = call i32 @ax25_ip_xmit(%struct.sk_buff* %17)
  store i32 %18, i32* %3, align 4
  br label %109

19:                                               ; preds = %2
  %20 = load %struct.net_device*, %struct.net_device** %5, align 8
  %21 = call i32 @netif_running(%struct.net_device* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %27, label %23

23:                                               ; preds = %19
  %24 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %25 = call i32 @kfree_skb(%struct.sk_buff* %24)
  %26 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %26, i32* %3, align 4
  br label %109

27:                                               ; preds = %19
  %28 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %29 = call i32 @skb_pull(%struct.sk_buff* %28, i32 1)
  %30 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %31 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  store i32 %32, i32* %9, align 4
  %33 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %34 = load i32, i32* @AX25_BPQ_HEADER_LEN, align 4
  %35 = call i64 @skb_cow(%struct.sk_buff* %33, i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %46

37:                                               ; preds = %27
  %38 = call i64 (...) @net_ratelimit()
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %37
  %41 = call i32 @pr_err(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %42

42:                                               ; preds = %40, %37
  %43 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %44 = call i32 @kfree_skb(%struct.sk_buff* %43)
  %45 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %45, i32* %3, align 4
  br label %109

46:                                               ; preds = %27
  %47 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %48 = call i8* @skb_push(%struct.sk_buff* %47, i32 2)
  store i8* %48, i8** %6, align 8
  %49 = load i32, i32* %9, align 4
  %50 = add nsw i32 %49, 5
  %51 = srem i32 %50, 256
  %52 = trunc i32 %51 to i8
  %53 = load i8*, i8** %6, align 8
  %54 = getelementptr inbounds i8, i8* %53, i32 1
  store i8* %54, i8** %6, align 8
  store i8 %52, i8* %53, align 1
  %55 = load i32, i32* %9, align 4
  %56 = add nsw i32 %55, 5
  %57 = sdiv i32 %56, 256
  %58 = trunc i32 %57 to i8
  %59 = load i8*, i8** %6, align 8
  %60 = getelementptr inbounds i8, i8* %59, i32 1
  store i8* %60, i8** %6, align 8
  store i8 %58, i8* %59, align 1
  %61 = load %struct.net_device*, %struct.net_device** %5, align 8
  %62 = call %struct.bpqdev* @netdev_priv(%struct.net_device* %61)
  store %struct.bpqdev* %62, %struct.bpqdev** %7, align 8
  %63 = load %struct.net_device*, %struct.net_device** %5, align 8
  store %struct.net_device* %63, %struct.net_device** %8, align 8
  %64 = load %struct.net_device*, %struct.net_device** %5, align 8
  %65 = call %struct.net_device* @bpq_get_ether_dev(%struct.net_device* %64)
  store %struct.net_device* %65, %struct.net_device** %5, align 8
  %66 = icmp eq %struct.net_device* %65, null
  br i1 %66, label %67, label %76

67:                                               ; preds = %46
  %68 = load %struct.net_device*, %struct.net_device** %8, align 8
  %69 = getelementptr inbounds %struct.net_device, %struct.net_device* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %70, align 4
  %73 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %74 = call i32 @kfree_skb(%struct.sk_buff* %73)
  %75 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %75, i32* %3, align 4
  br label %109

76:                                               ; preds = %46
  %77 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %78 = load %struct.net_device*, %struct.net_device** %5, align 8
  %79 = call i64 @ax25_type_trans(%struct.sk_buff* %77, %struct.net_device* %78)
  %80 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %81 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %80, i32 0, i32 0
  store i64 %79, i64* %81, align 8
  %82 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %83 = call i32 @skb_reset_network_header(%struct.sk_buff* %82)
  %84 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %85 = load %struct.net_device*, %struct.net_device** %5, align 8
  %86 = load i32, i32* @ETH_P_BPQ, align 4
  %87 = load %struct.bpqdev*, %struct.bpqdev** %7, align 8
  %88 = getelementptr inbounds %struct.bpqdev, %struct.bpqdev* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @dev_hard_header(%struct.sk_buff* %84, %struct.net_device* %85, i32 %86, i32 %89, i32* null, i32 0)
  %91 = load %struct.net_device*, %struct.net_device** %5, align 8
  %92 = getelementptr inbounds %struct.net_device, %struct.net_device* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %93, align 4
  %96 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %97 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 8
  %99 = load %struct.net_device*, %struct.net_device** %5, align 8
  %100 = getelementptr inbounds %struct.net_device, %struct.net_device* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = add nsw i32 %102, %98
  store i32 %103, i32* %101, align 4
  %104 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %105 = call i32 @dev_queue_xmit(%struct.sk_buff* %104)
  %106 = load %struct.net_device*, %struct.net_device** %5, align 8
  %107 = call i32 @netif_wake_queue(%struct.net_device* %106)
  %108 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %108, i32* %3, align 4
  br label %109

109:                                              ; preds = %76, %67, %42, %23, %16
  %110 = load i32, i32* %3, align 4
  ret i32 %110
}

declare dso_local i64 @htons(i32) #1

declare dso_local i32 @ax25_ip_xmit(%struct.sk_buff*) #1

declare dso_local i32 @netif_running(%struct.net_device*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @skb_pull(%struct.sk_buff*, i32) #1

declare dso_local i64 @skb_cow(%struct.sk_buff*, i32) #1

declare dso_local i64 @net_ratelimit(...) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i8* @skb_push(%struct.sk_buff*, i32) #1

declare dso_local %struct.bpqdev* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.net_device* @bpq_get_ether_dev(%struct.net_device*) #1

declare dso_local i64 @ax25_type_trans(%struct.sk_buff*, %struct.net_device*) #1

declare dso_local i32 @skb_reset_network_header(%struct.sk_buff*) #1

declare dso_local i32 @dev_hard_header(%struct.sk_buff*, %struct.net_device*, i32, i32, i32*, i32) #1

declare dso_local i32 @dev_queue_xmit(%struct.sk_buff*) #1

declare dso_local i32 @netif_wake_queue(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
