; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_selftest.c_efx_begin_loopback.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_selftest.c_efx_begin_loopback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_tx_queue = type { i32, %struct.efx_nic* }
%struct.efx_nic = type { i32, %struct.efx_loopback_state* }
%struct.efx_loopback_state = type { i32, i32, %struct.sk_buff** }
%struct.sk_buff = type { i32 }
%struct.efx_loopback_payload = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@INADDR_LOOPBACK = common dso_local global i32 0, align 4
@NETDEV_TX_OK = common dso_local global i32 0, align 4
@drv = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [68 x i8] c"TX queue %d could not transmit packet %d of %d in %s loopback test\0A\00", align 1
@EPIPE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.efx_tx_queue*)* @efx_begin_loopback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @efx_begin_loopback(%struct.efx_tx_queue* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.efx_tx_queue*, align 8
  %4 = alloca %struct.efx_nic*, align 8
  %5 = alloca %struct.efx_loopback_state*, align 8
  %6 = alloca %struct.efx_loopback_payload*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.efx_tx_queue* %0, %struct.efx_tx_queue** %3, align 8
  %10 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %3, align 8
  %11 = getelementptr inbounds %struct.efx_tx_queue, %struct.efx_tx_queue* %10, i32 0, i32 1
  %12 = load %struct.efx_nic*, %struct.efx_nic** %11, align 8
  store %struct.efx_nic* %12, %struct.efx_nic** %4, align 8
  %13 = load %struct.efx_nic*, %struct.efx_nic** %4, align 8
  %14 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %13, i32 0, i32 1
  %15 = load %struct.efx_loopback_state*, %struct.efx_loopback_state** %14, align 8
  store %struct.efx_loopback_state* %15, %struct.efx_loopback_state** %5, align 8
  store i32 0, i32* %8, align 4
  br label %16

16:                                               ; preds = %91, %1
  %17 = load i32, i32* %8, align 4
  %18 = load %struct.efx_loopback_state*, %struct.efx_loopback_state** %5, align 8
  %19 = getelementptr inbounds %struct.efx_loopback_state, %struct.efx_loopback_state* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp slt i32 %17, %20
  br i1 %21, label %22, label %94

22:                                               ; preds = %16
  %23 = load i32, i32* @GFP_KERNEL, align 4
  %24 = call %struct.sk_buff* @alloc_skb(i32 4, i32 %23)
  store %struct.sk_buff* %24, %struct.sk_buff** %7, align 8
  %25 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %26 = icmp ne %struct.sk_buff* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %22
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %2, align 4
  br label %95

30:                                               ; preds = %22
  %31 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %32 = load %struct.efx_loopback_state*, %struct.efx_loopback_state** %5, align 8
  %33 = getelementptr inbounds %struct.efx_loopback_state, %struct.efx_loopback_state* %32, i32 0, i32 2
  %34 = load %struct.sk_buff**, %struct.sk_buff*** %33, align 8
  %35 = load i32, i32* %8, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %34, i64 %36
  store %struct.sk_buff* %31, %struct.sk_buff** %37, align 8
  %38 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %39 = call i32 @skb_get(%struct.sk_buff* %38)
  %40 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %41 = call %struct.efx_loopback_payload* @skb_put(%struct.sk_buff* %40, i32 4)
  store %struct.efx_loopback_payload* %41, %struct.efx_loopback_payload** %6, align 8
  %42 = load %struct.efx_loopback_payload*, %struct.efx_loopback_payload** %6, align 8
  %43 = load %struct.efx_loopback_state*, %struct.efx_loopback_state** %5, align 8
  %44 = getelementptr inbounds %struct.efx_loopback_state, %struct.efx_loopback_state* %43, i32 0, i32 1
  %45 = call i32 @memcpy(%struct.efx_loopback_payload* %42, i32* %44, i32 4)
  %46 = load i32, i32* @INADDR_LOOPBACK, align 4
  %47 = load i32, i32* %8, align 4
  %48 = shl i32 %47, 2
  %49 = or i32 %46, %48
  %50 = call i32 @htonl(i32 %49)
  %51 = load %struct.efx_loopback_payload*, %struct.efx_loopback_payload** %6, align 8
  %52 = getelementptr inbounds %struct.efx_loopback_payload, %struct.efx_loopback_payload* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  store i32 %50, i32* %53, align 4
  %54 = call i32 (...) @smp_wmb()
  %55 = load %struct.efx_nic*, %struct.efx_nic** %4, align 8
  %56 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @netif_tx_lock_bh(i32 %57)
  %59 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %3, align 8
  %60 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %61 = call i32 @efx_enqueue_skb(%struct.efx_tx_queue* %59, %struct.sk_buff* %60)
  store i32 %61, i32* %9, align 4
  %62 = load %struct.efx_nic*, %struct.efx_nic** %4, align 8
  %63 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @netif_tx_unlock_bh(i32 %64)
  %66 = load i32, i32* %9, align 4
  %67 = load i32, i32* @NETDEV_TX_OK, align 4
  %68 = icmp ne i32 %66, %67
  br i1 %68, label %69, label %90

69:                                               ; preds = %30
  %70 = load %struct.efx_nic*, %struct.efx_nic** %4, align 8
  %71 = load i32, i32* @drv, align 4
  %72 = load %struct.efx_nic*, %struct.efx_nic** %4, align 8
  %73 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.efx_tx_queue*, %struct.efx_tx_queue** %3, align 8
  %76 = getelementptr inbounds %struct.efx_tx_queue, %struct.efx_tx_queue* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* %8, align 4
  %79 = add nsw i32 %78, 1
  %80 = load %struct.efx_loopback_state*, %struct.efx_loopback_state** %5, align 8
  %81 = getelementptr inbounds %struct.efx_loopback_state, %struct.efx_loopback_state* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load %struct.efx_nic*, %struct.efx_nic** %4, align 8
  %84 = call i32 @LOOPBACK_MODE(%struct.efx_nic* %83)
  %85 = call i32 @netif_err(%struct.efx_nic* %70, i32 %71, i32 %74, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str, i64 0, i64 0), i32 %77, i32 %79, i32 %82, i32 %84)
  %86 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %87 = call i32 @kfree_skb(%struct.sk_buff* %86)
  %88 = load i32, i32* @EPIPE, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %2, align 4
  br label %95

90:                                               ; preds = %30
  br label %91

91:                                               ; preds = %90
  %92 = load i32, i32* %8, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %8, align 4
  br label %16

94:                                               ; preds = %16
  store i32 0, i32* %2, align 4
  br label %95

95:                                               ; preds = %94, %69, %27
  %96 = load i32, i32* %2, align 4
  ret i32 %96
}

declare dso_local %struct.sk_buff* @alloc_skb(i32, i32) #1

declare dso_local i32 @skb_get(%struct.sk_buff*) #1

declare dso_local %struct.efx_loopback_payload* @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @memcpy(%struct.efx_loopback_payload*, i32*, i32) #1

declare dso_local i32 @htonl(i32) #1

declare dso_local i32 @smp_wmb(...) #1

declare dso_local i32 @netif_tx_lock_bh(i32) #1

declare dso_local i32 @efx_enqueue_skb(%struct.efx_tx_queue*, %struct.sk_buff*) #1

declare dso_local i32 @netif_tx_unlock_bh(i32) #1

declare dso_local i32 @netif_err(%struct.efx_nic*, i32, i32, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @LOOPBACK_MODE(%struct.efx_nic*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
