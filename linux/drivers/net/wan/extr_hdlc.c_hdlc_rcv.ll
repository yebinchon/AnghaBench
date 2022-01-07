; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wan/extr_hdlc.c_hdlc_rcv.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wan/extr_hdlc.c_hdlc_rcv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.packet_type = type { i32 }
%struct.net_device = type { i32 }
%struct.hdlc_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.sk_buff*)* }

@init_net = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*, %struct.packet_type*, %struct.net_device*)* @hdlc_rcv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hdlc_rcv(%struct.sk_buff* %0, %struct.net_device* %1, %struct.packet_type* %2, %struct.net_device* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca %struct.packet_type*, align 8
  %9 = alloca %struct.net_device*, align 8
  %10 = alloca %struct.hdlc_device*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %6, align 8
  store %struct.net_device* %1, %struct.net_device** %7, align 8
  store %struct.packet_type* %2, %struct.packet_type** %8, align 8
  store %struct.net_device* %3, %struct.net_device** %9, align 8
  %11 = load %struct.net_device*, %struct.net_device** %7, align 8
  %12 = call %struct.hdlc_device* @dev_to_hdlc(%struct.net_device* %11)
  store %struct.hdlc_device* %12, %struct.hdlc_device** %10, align 8
  %13 = load %struct.net_device*, %struct.net_device** %7, align 8
  %14 = call i32 @dev_net(%struct.net_device* %13)
  %15 = call i32 @net_eq(i32 %14, i32* @init_net)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %4
  %18 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %19 = call i32 @kfree_skb(%struct.sk_buff* %18)
  store i32 0, i32* %5, align 4
  br label %37

20:                                               ; preds = %4
  %21 = load %struct.hdlc_device*, %struct.hdlc_device** %10, align 8
  %22 = getelementptr inbounds %struct.hdlc_device, %struct.hdlc_device* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32 (%struct.sk_buff*)*, i32 (%struct.sk_buff*)** %24, align 8
  %26 = icmp ne i32 (%struct.sk_buff*)* %25, null
  %27 = xor i1 %26, true
  %28 = zext i1 %27 to i32
  %29 = call i32 @BUG_ON(i32 %28)
  %30 = load %struct.hdlc_device*, %struct.hdlc_device** %10, align 8
  %31 = getelementptr inbounds %struct.hdlc_device, %struct.hdlc_device* %30, i32 0, i32 0
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32 (%struct.sk_buff*)*, i32 (%struct.sk_buff*)** %33, align 8
  %35 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %36 = call i32 %34(%struct.sk_buff* %35)
  store i32 %36, i32* %5, align 4
  br label %37

37:                                               ; preds = %20, %17
  %38 = load i32, i32* %5, align 4
  ret i32 %38
}

declare dso_local %struct.hdlc_device* @dev_to_hdlc(%struct.net_device*) #1

declare dso_local i32 @net_eq(i32, i32*) #1

declare dso_local i32 @dev_net(%struct.net_device*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @BUG_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
