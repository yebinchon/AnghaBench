; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/extr_ec_bhf.c_ec_bhf_start_xmit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/extr_ec_bhf.c_ec_bhf_start_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.net_device = type { i32 }
%struct.ec_bhf_priv = type { i64, i32, i32, %struct.tx_desc* }
%struct.tx_desc = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@TX_HDR_PORT_0 = common dso_local global i32 0, align 4
@NETDEV_TX_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*)* @ec_bhf_start_xmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ec_bhf_start_xmit(%struct.sk_buff* %0, %struct.net_device* %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ec_bhf_priv*, align 8
  %6 = alloca %struct.tx_desc*, align 8
  %7 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  store %struct.net_device* %1, %struct.net_device** %4, align 8
  %8 = load %struct.net_device*, %struct.net_device** %4, align 8
  %9 = call %struct.ec_bhf_priv* @netdev_priv(%struct.net_device* %8)
  store %struct.ec_bhf_priv* %9, %struct.ec_bhf_priv** %5, align 8
  %10 = load %struct.ec_bhf_priv*, %struct.ec_bhf_priv** %5, align 8
  %11 = getelementptr inbounds %struct.ec_bhf_priv, %struct.ec_bhf_priv* %10, i32 0, i32 3
  %12 = load %struct.tx_desc*, %struct.tx_desc** %11, align 8
  %13 = load %struct.ec_bhf_priv*, %struct.ec_bhf_priv** %5, align 8
  %14 = getelementptr inbounds %struct.ec_bhf_priv, %struct.ec_bhf_priv* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = getelementptr inbounds %struct.tx_desc, %struct.tx_desc* %12, i64 %15
  store %struct.tx_desc* %16, %struct.tx_desc** %6, align 8
  %17 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %18 = load %struct.tx_desc*, %struct.tx_desc** %6, align 8
  %19 = getelementptr inbounds %struct.tx_desc, %struct.tx_desc* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @skb_copy_and_csum_dev(%struct.sk_buff* %17, i32 %20)
  %22 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %23 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %7, align 4
  %25 = load %struct.tx_desc*, %struct.tx_desc** %6, align 8
  %26 = getelementptr inbounds %struct.tx_desc, %struct.tx_desc* %25, i32 0, i32 0
  %27 = call i32 @memset(%struct.TYPE_2__* %26, i32 0, i32 8)
  %28 = load i32, i32* %7, align 4
  %29 = call i32 @cpu_to_le16(i32 %28)
  %30 = load %struct.tx_desc*, %struct.tx_desc** %6, align 8
  %31 = getelementptr inbounds %struct.tx_desc, %struct.tx_desc* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  store i32 %29, i32* %32, align 4
  %33 = load i32, i32* @TX_HDR_PORT_0, align 4
  %34 = load %struct.tx_desc*, %struct.tx_desc** %6, align 8
  %35 = getelementptr inbounds %struct.tx_desc, %struct.tx_desc* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  store i32 %33, i32* %36, align 4
  %37 = load %struct.ec_bhf_priv*, %struct.ec_bhf_priv** %5, align 8
  %38 = load %struct.tx_desc*, %struct.tx_desc** %6, align 8
  %39 = call i32 @ec_bhf_send_packet(%struct.ec_bhf_priv* %37, %struct.tx_desc* %38)
  %40 = load %struct.ec_bhf_priv*, %struct.ec_bhf_priv** %5, align 8
  %41 = getelementptr inbounds %struct.ec_bhf_priv, %struct.ec_bhf_priv* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = add i64 %42, 1
  %44 = load %struct.ec_bhf_priv*, %struct.ec_bhf_priv** %5, align 8
  %45 = getelementptr inbounds %struct.ec_bhf_priv, %struct.ec_bhf_priv* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = sext i32 %46 to i64
  %48 = urem i64 %43, %47
  %49 = load %struct.ec_bhf_priv*, %struct.ec_bhf_priv** %5, align 8
  %50 = getelementptr inbounds %struct.ec_bhf_priv, %struct.ec_bhf_priv* %49, i32 0, i32 0
  store i64 %48, i64* %50, align 8
  %51 = load %struct.ec_bhf_priv*, %struct.ec_bhf_priv** %5, align 8
  %52 = getelementptr inbounds %struct.ec_bhf_priv, %struct.ec_bhf_priv* %51, i32 0, i32 3
  %53 = load %struct.tx_desc*, %struct.tx_desc** %52, align 8
  %54 = load %struct.ec_bhf_priv*, %struct.ec_bhf_priv** %5, align 8
  %55 = getelementptr inbounds %struct.ec_bhf_priv, %struct.ec_bhf_priv* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = getelementptr inbounds %struct.tx_desc, %struct.tx_desc* %53, i64 %56
  %58 = call i32 @ec_bhf_desc_sent(%struct.tx_desc* %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %64, label %60

60:                                               ; preds = %2
  %61 = call i32 (...) @smp_wmb()
  %62 = load %struct.net_device*, %struct.net_device** %4, align 8
  %63 = call i32 @netif_stop_queue(%struct.net_device* %62)
  br label %64

64:                                               ; preds = %60, %2
  %65 = load i32, i32* %7, align 4
  %66 = load %struct.ec_bhf_priv*, %struct.ec_bhf_priv** %5, align 8
  %67 = getelementptr inbounds %struct.ec_bhf_priv, %struct.ec_bhf_priv* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = add i32 %68, %65
  store i32 %69, i32* %67, align 4
  %70 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %71 = call i32 @dev_kfree_skb(%struct.sk_buff* %70)
  %72 = load i32, i32* @NETDEV_TX_OK, align 4
  ret i32 %72
}

declare dso_local %struct.ec_bhf_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @skb_copy_and_csum_dev(%struct.sk_buff*, i32) #1

declare dso_local i32 @memset(%struct.TYPE_2__*, i32, i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @ec_bhf_send_packet(%struct.ec_bhf_priv*, %struct.tx_desc*) #1

declare dso_local i32 @ec_bhf_desc_sent(%struct.tx_desc*) #1

declare dso_local i32 @smp_wmb(...) #1

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
