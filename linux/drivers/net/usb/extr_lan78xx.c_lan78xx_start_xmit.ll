; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_lan78xx.c_lan78xx_start_xmit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_lan78xx.c_lan78xx_start_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.net_device = type { i32 }
%struct.lan78xx_net = type { i32, %struct.TYPE_6__*, i32, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_4__ = type { i64 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@USB_SPEED_SUPER = common dso_local global i64 0, align 8
@tx_err = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"lan78xx_tx_prep return NULL\0A\00", align 1
@NETDEV_TX_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*)* @lan78xx_start_xmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lan78xx_start_xmit(%struct.sk_buff* %0, %struct.net_device* %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.lan78xx_net*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  store %struct.net_device* %1, %struct.net_device** %4, align 8
  %7 = load %struct.net_device*, %struct.net_device** %4, align 8
  %8 = call %struct.lan78xx_net* @netdev_priv(%struct.net_device* %7)
  store %struct.lan78xx_net* %8, %struct.lan78xx_net** %5, align 8
  store %struct.sk_buff* null, %struct.sk_buff** %6, align 8
  %9 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %10 = icmp ne %struct.sk_buff* %9, null
  br i1 %10, label %11, label %18

11:                                               ; preds = %2
  %12 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %13 = call i32 @skb_tx_timestamp(%struct.sk_buff* %12)
  %14 = load %struct.lan78xx_net*, %struct.lan78xx_net** %5, align 8
  %15 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %16 = load i32, i32* @GFP_ATOMIC, align 4
  %17 = call %struct.sk_buff* @lan78xx_tx_prep(%struct.lan78xx_net* %14, %struct.sk_buff* %15, i32 %16)
  store %struct.sk_buff* %17, %struct.sk_buff** %6, align 8
  br label %18

18:                                               ; preds = %11, %2
  %19 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %20 = icmp ne %struct.sk_buff* %19, null
  br i1 %20, label %21, label %42

21:                                               ; preds = %18
  %22 = load %struct.lan78xx_net*, %struct.lan78xx_net** %5, align 8
  %23 = getelementptr inbounds %struct.lan78xx_net, %struct.lan78xx_net* %22, i32 0, i32 2
  %24 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %25 = call i32 @skb_queue_tail(i32* %23, %struct.sk_buff* %24)
  %26 = load %struct.lan78xx_net*, %struct.lan78xx_net** %5, align 8
  %27 = getelementptr inbounds %struct.lan78xx_net, %struct.lan78xx_net* %26, i32 0, i32 3
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @USB_SPEED_SUPER, align 8
  %32 = icmp slt i64 %30, %31
  br i1 %32, label %33, label %41

33:                                               ; preds = %21
  %34 = load %struct.lan78xx_net*, %struct.lan78xx_net** %5, align 8
  %35 = getelementptr inbounds %struct.lan78xx_net, %struct.lan78xx_net* %34, i32 0, i32 2
  %36 = call i32 @skb_queue_len(i32* %35)
  %37 = icmp sgt i32 %36, 10
  br i1 %37, label %38, label %41

38:                                               ; preds = %33
  %39 = load %struct.net_device*, %struct.net_device** %4, align 8
  %40 = call i32 @netif_stop_queue(%struct.net_device* %39)
  br label %41

41:                                               ; preds = %38, %33, %21
  br label %63

42:                                               ; preds = %18
  %43 = load %struct.lan78xx_net*, %struct.lan78xx_net** %5, align 8
  %44 = load i32, i32* @tx_err, align 4
  %45 = load %struct.lan78xx_net*, %struct.lan78xx_net** %5, align 8
  %46 = getelementptr inbounds %struct.lan78xx_net, %struct.lan78xx_net* %45, i32 0, i32 1
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %46, align 8
  %48 = call i32 @netif_dbg(%struct.lan78xx_net* %43, i32 %44, %struct.TYPE_6__* %47, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %49 = load %struct.lan78xx_net*, %struct.lan78xx_net** %5, align 8
  %50 = getelementptr inbounds %struct.lan78xx_net, %struct.lan78xx_net* %49, i32 0, i32 1
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %53, align 4
  %56 = load %struct.lan78xx_net*, %struct.lan78xx_net** %5, align 8
  %57 = getelementptr inbounds %struct.lan78xx_net, %struct.lan78xx_net* %56, i32 0, i32 1
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %60, align 4
  br label %63

63:                                               ; preds = %42, %41
  %64 = load %struct.lan78xx_net*, %struct.lan78xx_net** %5, align 8
  %65 = getelementptr inbounds %struct.lan78xx_net, %struct.lan78xx_net* %64, i32 0, i32 0
  %66 = call i32 @tasklet_schedule(i32* %65)
  %67 = load i32, i32* @NETDEV_TX_OK, align 4
  ret i32 %67
}

declare dso_local %struct.lan78xx_net* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @skb_tx_timestamp(%struct.sk_buff*) #1

declare dso_local %struct.sk_buff* @lan78xx_tx_prep(%struct.lan78xx_net*, %struct.sk_buff*, i32) #1

declare dso_local i32 @skb_queue_tail(i32*, %struct.sk_buff*) #1

declare dso_local i32 @skb_queue_len(i32*) #1

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

declare dso_local i32 @netif_dbg(%struct.lan78xx_net*, i32, %struct.TYPE_6__*, i8*) #1

declare dso_local i32 @tasklet_schedule(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
