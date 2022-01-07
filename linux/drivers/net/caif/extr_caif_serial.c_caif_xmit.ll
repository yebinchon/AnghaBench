; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/caif/extr_caif_serial.c_caif_xmit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/caif/extr_caif_serial.c_caif_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.net_device = type { i32 }
%struct.ser_device = type { %struct.TYPE_4__, i32, %struct.TYPE_3__, i32 }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i32 (i32, i32)* }

@SEND_QUEUE_HIGH = common dso_local global i64 0, align 8
@CAIF_FLOW_OFF_SENT = common dso_local global i32 0, align 4
@OFF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*)* @caif_xmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @caif_xmit(%struct.sk_buff* %0, %struct.net_device* %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ser_device*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  store %struct.net_device* %1, %struct.net_device** %4, align 8
  %6 = load %struct.net_device*, %struct.net_device** %4, align 8
  %7 = icmp eq %struct.net_device* %6, null
  %8 = zext i1 %7 to i32
  %9 = call i32 @BUG_ON(i32 %8)
  %10 = load %struct.net_device*, %struct.net_device** %4, align 8
  %11 = call %struct.ser_device* @netdev_priv(%struct.net_device* %10)
  store %struct.ser_device* %11, %struct.ser_device** %5, align 8
  %12 = load %struct.ser_device*, %struct.ser_device** %5, align 8
  %13 = getelementptr inbounds %struct.ser_device, %struct.ser_device* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @SEND_QUEUE_HIGH, align 8
  %17 = icmp sgt i64 %15, %16
  br i1 %17, label %18, label %40

18:                                               ; preds = %2
  %19 = load i32, i32* @CAIF_FLOW_OFF_SENT, align 4
  %20 = load %struct.ser_device*, %struct.ser_device** %5, align 8
  %21 = getelementptr inbounds %struct.ser_device, %struct.ser_device* %20, i32 0, i32 3
  %22 = call i32 @test_and_set_bit(i32 %19, i32* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %40, label %24

24:                                               ; preds = %18
  %25 = load %struct.ser_device*, %struct.ser_device** %5, align 8
  %26 = getelementptr inbounds %struct.ser_device, %struct.ser_device* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32 (i32, i32)*, i32 (i32, i32)** %27, align 8
  %29 = icmp ne i32 (i32, i32)* %28, null
  br i1 %29, label %30, label %40

30:                                               ; preds = %24
  %31 = load %struct.ser_device*, %struct.ser_device** %5, align 8
  %32 = getelementptr inbounds %struct.ser_device, %struct.ser_device* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i32 (i32, i32)*, i32 (i32, i32)** %33, align 8
  %35 = load %struct.ser_device*, %struct.ser_device** %5, align 8
  %36 = getelementptr inbounds %struct.ser_device, %struct.ser_device* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @OFF, align 4
  %39 = call i32 %34(i32 %37, i32 %38)
  br label %40

40:                                               ; preds = %30, %24, %18, %2
  %41 = load %struct.ser_device*, %struct.ser_device** %5, align 8
  %42 = getelementptr inbounds %struct.ser_device, %struct.ser_device* %41, i32 0, i32 0
  %43 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %44 = call i32 @skb_queue_tail(%struct.TYPE_4__* %42, %struct.sk_buff* %43)
  %45 = load %struct.ser_device*, %struct.ser_device** %5, align 8
  %46 = call i32 @handle_tx(%struct.ser_device* %45)
  ret i32 %46
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local %struct.ser_device* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @skb_queue_tail(%struct.TYPE_4__*, %struct.sk_buff*) #1

declare dso_local i32 @handle_tx(%struct.ser_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
