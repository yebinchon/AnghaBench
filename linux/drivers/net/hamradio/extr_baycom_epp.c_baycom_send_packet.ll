; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/hamradio/extr_baycom_epp.c_baycom_send_packet.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/hamradio/extr_baycom_epp.c_baycom_send_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64, i64*, i32 }
%struct.net_device = type { i32 }
%struct.baycom_state = type { %struct.sk_buff* }

@ETH_P_IP = common dso_local global i32 0, align 4
@NETDEV_TX_OK = common dso_local global i32 0, align 4
@HDLCDRV_MAXFLEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*)* @baycom_send_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @baycom_send_packet(%struct.sk_buff* %0, %struct.net_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.baycom_state*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  %7 = load %struct.net_device*, %struct.net_device** %5, align 8
  %8 = call %struct.baycom_state* @netdev_priv(%struct.net_device* %7)
  store %struct.baycom_state* %8, %struct.baycom_state** %6, align 8
  %9 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %10 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i32, i32* @ETH_P_IP, align 4
  %13 = call i64 @htons(i32 %12)
  %14 = icmp eq i64 %11, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %17 = call i32 @ax25_ip_xmit(%struct.sk_buff* %16)
  store i32 %17, i32* %3, align 4
  br label %69

18:                                               ; preds = %2
  %19 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %20 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %19, i32 0, i32 1
  %21 = load i64*, i64** %20, align 8
  %22 = getelementptr inbounds i64, i64* %21, i64 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %37

25:                                               ; preds = %18
  %26 = load %struct.baycom_state*, %struct.baycom_state** %6, align 8
  %27 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %28 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %27, i32 0, i32 1
  %29 = load i64*, i64** %28, align 8
  %30 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %31 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @do_kiss_params(%struct.baycom_state* %26, i64* %29, i32 %32)
  %34 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %35 = call i32 @dev_kfree_skb(%struct.sk_buff* %34)
  %36 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %36, i32* %3, align 4
  br label %69

37:                                               ; preds = %18
  %38 = load %struct.baycom_state*, %struct.baycom_state** %6, align 8
  %39 = getelementptr inbounds %struct.baycom_state, %struct.baycom_state* %38, i32 0, i32 0
  %40 = load %struct.sk_buff*, %struct.sk_buff** %39, align 8
  %41 = icmp ne %struct.sk_buff* %40, null
  br i1 %41, label %42, label %46

42:                                               ; preds = %37
  %43 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %44 = call i32 @dev_kfree_skb(%struct.sk_buff* %43)
  %45 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %45, i32* %3, align 4
  br label %69

46:                                               ; preds = %37
  %47 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %48 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @HDLCDRV_MAXFLEN, align 4
  %51 = add nsw i32 %50, 1
  %52 = icmp sge i32 %49, %51
  br i1 %52, label %58, label %53

53:                                               ; preds = %46
  %54 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %55 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = icmp slt i32 %56, 3
  br i1 %57, label %58, label %62

58:                                               ; preds = %53, %46
  %59 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %60 = call i32 @dev_kfree_skb(%struct.sk_buff* %59)
  %61 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %61, i32* %3, align 4
  br label %69

62:                                               ; preds = %53
  %63 = load %struct.net_device*, %struct.net_device** %5, align 8
  %64 = call i32 @netif_stop_queue(%struct.net_device* %63)
  %65 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %66 = load %struct.baycom_state*, %struct.baycom_state** %6, align 8
  %67 = getelementptr inbounds %struct.baycom_state, %struct.baycom_state* %66, i32 0, i32 0
  store %struct.sk_buff* %65, %struct.sk_buff** %67, align 8
  %68 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %68, i32* %3, align 4
  br label %69

69:                                               ; preds = %62, %58, %42, %25, %15
  %70 = load i32, i32* %3, align 4
  ret i32 %70
}

declare dso_local %struct.baycom_state* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @htons(i32) #1

declare dso_local i32 @ax25_ip_xmit(%struct.sk_buff*) #1

declare dso_local i32 @do_kiss_params(%struct.baycom_state*, i64*, i32) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
