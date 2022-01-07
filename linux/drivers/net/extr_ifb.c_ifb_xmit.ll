; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_ifb.c_ifb_xmit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_ifb.c_ifb_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i32, i64 }
%struct.net_device = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.ifb_dev_private = type { %struct.ifb_q_private* }
%struct.ifb_q_private = type { i32, i32, i32, i32, i32, i32, i32 }

@NETDEV_TX_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*)* @ifb_xmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ifb_xmit(%struct.sk_buff* %0, %struct.net_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.ifb_dev_private*, align 8
  %7 = alloca %struct.ifb_q_private*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  %8 = load %struct.net_device*, %struct.net_device** %5, align 8
  %9 = call %struct.ifb_dev_private* @netdev_priv(%struct.net_device* %8)
  store %struct.ifb_dev_private* %9, %struct.ifb_dev_private** %6, align 8
  %10 = load %struct.ifb_dev_private*, %struct.ifb_dev_private** %6, align 8
  %11 = getelementptr inbounds %struct.ifb_dev_private, %struct.ifb_dev_private* %10, i32 0, i32 0
  %12 = load %struct.ifb_q_private*, %struct.ifb_q_private** %11, align 8
  %13 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %14 = call i32 @skb_get_queue_mapping(%struct.sk_buff* %13)
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.ifb_q_private, %struct.ifb_q_private* %12, i64 %15
  store %struct.ifb_q_private* %16, %struct.ifb_q_private** %7, align 8
  %17 = load %struct.ifb_q_private*, %struct.ifb_q_private** %7, align 8
  %18 = getelementptr inbounds %struct.ifb_q_private, %struct.ifb_q_private* %17, i32 0, i32 4
  %19 = call i32 @u64_stats_update_begin(i32* %18)
  %20 = load %struct.ifb_q_private*, %struct.ifb_q_private** %7, align 8
  %21 = getelementptr inbounds %struct.ifb_q_private, %struct.ifb_q_private* %20, i32 0, i32 6
  %22 = load i32, i32* %21, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %21, align 4
  %24 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %25 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.ifb_q_private*, %struct.ifb_q_private** %7, align 8
  %28 = getelementptr inbounds %struct.ifb_q_private, %struct.ifb_q_private* %27, i32 0, i32 5
  %29 = load i32, i32* %28, align 4
  %30 = sext i32 %29 to i64
  %31 = add nsw i64 %30, %26
  %32 = trunc i64 %31 to i32
  store i32 %32, i32* %28, align 4
  %33 = load %struct.ifb_q_private*, %struct.ifb_q_private** %7, align 8
  %34 = getelementptr inbounds %struct.ifb_q_private, %struct.ifb_q_private* %33, i32 0, i32 4
  %35 = call i32 @u64_stats_update_end(i32* %34)
  %36 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %37 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %2
  %41 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %42 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %54, label %45

45:                                               ; preds = %40, %2
  %46 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %47 = call i32 @dev_kfree_skb(%struct.sk_buff* %46)
  %48 = load %struct.net_device*, %struct.net_device** %5, align 8
  %49 = getelementptr inbounds %struct.net_device, %struct.net_device* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %50, align 8
  %53 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %53, i32* %3, align 4
  br label %86

54:                                               ; preds = %40
  %55 = load %struct.ifb_q_private*, %struct.ifb_q_private** %7, align 8
  %56 = getelementptr inbounds %struct.ifb_q_private, %struct.ifb_q_private* %55, i32 0, i32 2
  %57 = call i64 @skb_queue_len(i32* %56)
  %58 = load %struct.net_device*, %struct.net_device** %5, align 8
  %59 = getelementptr inbounds %struct.net_device, %struct.net_device* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = icmp sge i64 %57, %60
  br i1 %61, label %62, label %69

62:                                               ; preds = %54
  %63 = load %struct.net_device*, %struct.net_device** %5, align 8
  %64 = load %struct.ifb_q_private*, %struct.ifb_q_private** %7, align 8
  %65 = getelementptr inbounds %struct.ifb_q_private, %struct.ifb_q_private* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @netdev_get_tx_queue(%struct.net_device* %63, i32 %66)
  %68 = call i32 @netif_tx_stop_queue(i32 %67)
  br label %69

69:                                               ; preds = %62, %54
  %70 = load %struct.ifb_q_private*, %struct.ifb_q_private** %7, align 8
  %71 = getelementptr inbounds %struct.ifb_q_private, %struct.ifb_q_private* %70, i32 0, i32 2
  %72 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %73 = call i32 @__skb_queue_tail(i32* %71, %struct.sk_buff* %72)
  %74 = load %struct.ifb_q_private*, %struct.ifb_q_private** %7, align 8
  %75 = getelementptr inbounds %struct.ifb_q_private, %struct.ifb_q_private* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %84, label %78

78:                                               ; preds = %69
  %79 = load %struct.ifb_q_private*, %struct.ifb_q_private** %7, align 8
  %80 = getelementptr inbounds %struct.ifb_q_private, %struct.ifb_q_private* %79, i32 0, i32 0
  store i32 1, i32* %80, align 4
  %81 = load %struct.ifb_q_private*, %struct.ifb_q_private** %7, align 8
  %82 = getelementptr inbounds %struct.ifb_q_private, %struct.ifb_q_private* %81, i32 0, i32 1
  %83 = call i32 @tasklet_schedule(i32* %82)
  br label %84

84:                                               ; preds = %78, %69
  %85 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %85, i32* %3, align 4
  br label %86

86:                                               ; preds = %84, %45
  %87 = load i32, i32* %3, align 4
  ret i32 %87
}

declare dso_local %struct.ifb_dev_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @skb_get_queue_mapping(%struct.sk_buff*) #1

declare dso_local i32 @u64_stats_update_begin(i32*) #1

declare dso_local i32 @u64_stats_update_end(i32*) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

declare dso_local i64 @skb_queue_len(i32*) #1

declare dso_local i32 @netif_tx_stop_queue(i32) #1

declare dso_local i32 @netdev_get_tx_queue(%struct.net_device*, i32) #1

declare dso_local i32 @__skb_queue_tail(i32*, %struct.sk_buff*) #1

declare dso_local i32 @tasklet_schedule(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
