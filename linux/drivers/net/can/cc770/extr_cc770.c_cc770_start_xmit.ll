; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/cc770/extr_cc770.c_cc770_start_xmit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/cc770/extr_cc770.c_cc770_start_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.sk_buff = type { i32 }
%struct.net_device = type { i32 }
%struct.cc770_priv = type { %struct.sk_buff* }

@CC770_OBJ_TX = common dso_local global i32 0, align 4
@NETDEV_TX_OK = common dso_local global i32 0, align 4
@msgobj = common dso_local global %struct.TYPE_2__* null, align 8
@TXRQST_UNC = common dso_local global i32 0, align 4
@TXRQST_SET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"TX register is still occupied!\0A\00", align 1
@NETDEV_TX_BUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*)* @cc770_start_xmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cc770_start_xmit(%struct.sk_buff* %0, %struct.net_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.cc770_priv*, align 8
  %7 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  %8 = load %struct.net_device*, %struct.net_device** %5, align 8
  %9 = call %struct.cc770_priv* @netdev_priv(%struct.net_device* %8)
  store %struct.cc770_priv* %9, %struct.cc770_priv** %6, align 8
  %10 = load i32, i32* @CC770_OBJ_TX, align 4
  %11 = call i32 @obj2msgobj(i32 %10)
  store i32 %11, i32* %7, align 4
  %12 = load %struct.net_device*, %struct.net_device** %5, align 8
  %13 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %14 = call i64 @can_dropped_invalid_skb(%struct.net_device* %12, %struct.sk_buff* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %17, i32* %3, align 4
  br label %45

18:                                               ; preds = %2
  %19 = load %struct.net_device*, %struct.net_device** %5, align 8
  %20 = call i32 @netif_stop_queue(%struct.net_device* %19)
  %21 = load %struct.cc770_priv*, %struct.cc770_priv** %6, align 8
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** @msgobj, align 8
  %23 = load i32, i32* %7, align 4
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @cc770_read_reg(%struct.cc770_priv* %21, i32 %27)
  %29 = load i32, i32* @TXRQST_UNC, align 4
  %30 = and i32 %28, %29
  %31 = load i32, i32* @TXRQST_SET, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %37

33:                                               ; preds = %18
  %34 = load %struct.net_device*, %struct.net_device** %5, align 8
  %35 = call i32 @netdev_err(%struct.net_device* %34, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %36 = load i32, i32* @NETDEV_TX_BUSY, align 4
  store i32 %36, i32* %3, align 4
  br label %45

37:                                               ; preds = %18
  %38 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %39 = load %struct.cc770_priv*, %struct.cc770_priv** %6, align 8
  %40 = getelementptr inbounds %struct.cc770_priv, %struct.cc770_priv* %39, i32 0, i32 0
  store %struct.sk_buff* %38, %struct.sk_buff** %40, align 8
  %41 = load %struct.net_device*, %struct.net_device** %5, align 8
  %42 = load i32, i32* %7, align 4
  %43 = call i32 @cc770_tx(%struct.net_device* %41, i32 %42)
  %44 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %44, i32* %3, align 4
  br label %45

45:                                               ; preds = %37, %33, %16
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local %struct.cc770_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @obj2msgobj(i32) #1

declare dso_local i64 @can_dropped_invalid_skb(%struct.net_device*, %struct.sk_buff*) #1

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

declare dso_local i32 @cc770_read_reg(%struct.cc770_priv*, i32) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*) #1

declare dso_local i32 @cc770_tx(%struct.net_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
