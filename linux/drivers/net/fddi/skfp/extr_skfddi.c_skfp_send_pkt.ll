; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/fddi/skfp/extr_skfddi.c_skfp_send_pkt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/fddi/skfp/extr_skfddi.c_skfp_send_pkt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64 }
%struct.net_device = type { i32 }
%struct.s_smc = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [15 x i8] c"skfp_send_pkt\0A\00", align 1
@FDDI_K_LLC_ZLEN = common dso_local global i64 0, align 8
@FDDI_K_LLC_LEN = common dso_local global i64 0, align 8
@NETDEV_TX_OK = common dso_local global i32 0, align 4
@NETDEV_TX_BUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*)* @skfp_send_pkt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @skfp_send_pkt(%struct.sk_buff* %0, %struct.net_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.s_smc*, align 8
  %7 = alloca %struct.TYPE_6__*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  %8 = load %struct.net_device*, %struct.net_device** %5, align 8
  %9 = call %struct.s_smc* @netdev_priv(%struct.net_device* %8)
  store %struct.s_smc* %9, %struct.s_smc** %6, align 8
  %10 = load %struct.s_smc*, %struct.s_smc** %6, align 8
  %11 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %10, i32 0, i32 0
  store %struct.TYPE_6__* %11, %struct.TYPE_6__** %7, align 8
  %12 = call i32 @pr_debug(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %13 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %14 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @FDDI_K_LLC_ZLEN, align 8
  %17 = icmp sge i64 %15, %16
  br i1 %17, label %18, label %24

18:                                               ; preds = %2
  %19 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %20 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @FDDI_K_LLC_LEN, align 8
  %23 = icmp sle i64 %21, %22
  br i1 %23, label %36, label %24

24:                                               ; preds = %18, %2
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %28, align 4
  %31 = load %struct.net_device*, %struct.net_device** %5, align 8
  %32 = call i32 @netif_start_queue(%struct.net_device* %31)
  %33 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %34 = call i32 @dev_kfree_skb(%struct.sk_buff* %33)
  %35 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %35, i32* %3, align 4
  br label %66

36:                                               ; preds = %18
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %36
  %42 = load %struct.net_device*, %struct.net_device** %5, align 8
  %43 = call i32 @netif_stop_queue(%struct.net_device* %42)
  %44 = load i32, i32* @NETDEV_TX_BUSY, align 4
  store i32 %44, i32* %3, align 4
  br label %66

45:                                               ; preds = %36
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = add nsw i64 %48, -1
  store i64 %49, i64* %47, align 8
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 1
  %52 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %53 = call i32 @skb_queue_tail(i32* %51, %struct.sk_buff* %52)
  %54 = load %struct.net_device*, %struct.net_device** %5, align 8
  %55 = call %struct.s_smc* @netdev_priv(%struct.net_device* %54)
  %56 = call i32 @send_queued_packets(%struct.s_smc* %55)
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %45
  %62 = load %struct.net_device*, %struct.net_device** %5, align 8
  %63 = call i32 @netif_stop_queue(%struct.net_device* %62)
  br label %64

64:                                               ; preds = %61, %45
  %65 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %65, i32* %3, align 4
  br label %66

66:                                               ; preds = %64, %41, %24
  %67 = load i32, i32* %3, align 4
  ret i32 %67
}

declare dso_local %struct.s_smc* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @pr_debug(i8*) #1

declare dso_local i32 @netif_start_queue(%struct.net_device*) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

declare dso_local i32 @skb_queue_tail(i32*, %struct.sk_buff*) #1

declare dso_local i32 @send_queued_packets(%struct.s_smc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
