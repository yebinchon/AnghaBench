; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/extr_virt_wifi.c_virt_wifi_rx_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/extr_virt_wifi.c_virt_wifi_rx_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.virt_wifi_netdev_priv = type { %struct.TYPE_2__*, i32 }

@RX_HANDLER_PASS = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"can't skb_share_check\0A\00", align 1
@RX_HANDLER_CONSUMED = common dso_local global i32 0, align 4
@PACKET_HOST = common dso_local global i32 0, align 4
@RX_HANDLER_ANOTHER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff**)* @virt_wifi_rx_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @virt_wifi_rx_handler(%struct.sk_buff** %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sk_buff**, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.virt_wifi_netdev_priv*, align 8
  store %struct.sk_buff** %0, %struct.sk_buff*** %3, align 8
  %6 = load %struct.sk_buff**, %struct.sk_buff*** %3, align 8
  %7 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  store %struct.sk_buff* %7, %struct.sk_buff** %4, align 8
  %8 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %9 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %8, i32 0, i32 1
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.virt_wifi_netdev_priv* @rcu_dereference(i32 %12)
  store %struct.virt_wifi_netdev_priv* %13, %struct.virt_wifi_netdev_priv** %5, align 8
  %14 = load %struct.virt_wifi_netdev_priv*, %struct.virt_wifi_netdev_priv** %5, align 8
  %15 = getelementptr inbounds %struct.virt_wifi_netdev_priv, %struct.virt_wifi_netdev_priv* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %1
  %19 = load i32, i32* @RX_HANDLER_PASS, align 4
  store i32 %19, i32* %2, align 4
  br label %45

20:                                               ; preds = %1
  %21 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %22 = load i32, i32* @GFP_ATOMIC, align 4
  %23 = call %struct.sk_buff* @skb_share_check(%struct.sk_buff* %21, i32 %22)
  store %struct.sk_buff* %23, %struct.sk_buff** %4, align 8
  %24 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %25 = icmp ne %struct.sk_buff* %24, null
  br i1 %25, label %33, label %26

26:                                               ; preds = %20
  %27 = load %struct.virt_wifi_netdev_priv*, %struct.virt_wifi_netdev_priv** %5, align 8
  %28 = getelementptr inbounds %struct.virt_wifi_netdev_priv, %struct.virt_wifi_netdev_priv* %27, i32 0, i32 0
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = call i32 @dev_err(i32* %30, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %32 = load i32, i32* @RX_HANDLER_CONSUMED, align 4
  store i32 %32, i32* %2, align 4
  br label %45

33:                                               ; preds = %20
  %34 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %35 = load %struct.sk_buff**, %struct.sk_buff*** %3, align 8
  store %struct.sk_buff* %34, %struct.sk_buff** %35, align 8
  %36 = load %struct.virt_wifi_netdev_priv*, %struct.virt_wifi_netdev_priv** %5, align 8
  %37 = getelementptr inbounds %struct.virt_wifi_netdev_priv, %struct.virt_wifi_netdev_priv* %36, i32 0, i32 0
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %40 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %39, i32 0, i32 1
  store %struct.TYPE_2__* %38, %struct.TYPE_2__** %40, align 8
  %41 = load i32, i32* @PACKET_HOST, align 4
  %42 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %43 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 8
  %44 = load i32, i32* @RX_HANDLER_ANOTHER, align 4
  store i32 %44, i32* %2, align 4
  br label %45

45:                                               ; preds = %33, %26, %18
  %46 = load i32, i32* %2, align 4
  ret i32 %46
}

declare dso_local %struct.virt_wifi_netdev_priv* @rcu_dereference(i32) #1

declare dso_local %struct.sk_buff* @skb_share_check(%struct.sk_buff*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
