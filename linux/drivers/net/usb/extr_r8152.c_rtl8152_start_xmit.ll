; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_r8152.c_rtl8152_start_xmit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_r8152.c_rtl8152_start_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.net_device = type { i32 }
%struct.r8152 = type { i64, i32, i32, i32, i32, i32, i32 }

@SELECTIVE_SUSPEND = common dso_local global i32 0, align 4
@SCHEDULE_TASKLET = common dso_local global i32 0, align 4
@NETDEV_TX_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*)* @rtl8152_start_xmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtl8152_start_xmit(%struct.sk_buff* %0, %struct.net_device* %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.r8152*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  store %struct.net_device* %1, %struct.net_device** %4, align 8
  %6 = load %struct.net_device*, %struct.net_device** %4, align 8
  %7 = call %struct.r8152* @netdev_priv(%struct.net_device* %6)
  store %struct.r8152* %7, %struct.r8152** %5, align 8
  %8 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %9 = call i32 @skb_tx_timestamp(%struct.sk_buff* %8)
  %10 = load %struct.r8152*, %struct.r8152** %5, align 8
  %11 = getelementptr inbounds %struct.r8152, %struct.r8152* %10, i32 0, i32 1
  %12 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %13 = call i32 @skb_queue_tail(i32* %11, %struct.sk_buff* %12)
  %14 = load %struct.r8152*, %struct.r8152** %5, align 8
  %15 = getelementptr inbounds %struct.r8152, %struct.r8152* %14, i32 0, i32 6
  %16 = call i32 @list_empty(i32* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %41, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* @SELECTIVE_SUSPEND, align 4
  %20 = load %struct.r8152*, %struct.r8152** %5, align 8
  %21 = getelementptr inbounds %struct.r8152, %struct.r8152* %20, i32 0, i32 5
  %22 = call i64 @test_bit(i32 %19, i32* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %32

24:                                               ; preds = %18
  %25 = load i32, i32* @SCHEDULE_TASKLET, align 4
  %26 = load %struct.r8152*, %struct.r8152** %5, align 8
  %27 = getelementptr inbounds %struct.r8152, %struct.r8152* %26, i32 0, i32 5
  %28 = call i32 @set_bit(i32 %25, i32* %27)
  %29 = load %struct.r8152*, %struct.r8152** %5, align 8
  %30 = getelementptr inbounds %struct.r8152, %struct.r8152* %29, i32 0, i32 4
  %31 = call i32 @schedule_delayed_work(i32* %30, i32 0)
  br label %40

32:                                               ; preds = %18
  %33 = load %struct.r8152*, %struct.r8152** %5, align 8
  %34 = getelementptr inbounds %struct.r8152, %struct.r8152* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @usb_mark_last_busy(i32 %35)
  %37 = load %struct.r8152*, %struct.r8152** %5, align 8
  %38 = getelementptr inbounds %struct.r8152, %struct.r8152* %37, i32 0, i32 2
  %39 = call i32 @tasklet_schedule(i32* %38)
  br label %40

40:                                               ; preds = %32, %24
  br label %53

41:                                               ; preds = %2
  %42 = load %struct.r8152*, %struct.r8152** %5, align 8
  %43 = getelementptr inbounds %struct.r8152, %struct.r8152* %42, i32 0, i32 1
  %44 = call i64 @skb_queue_len(i32* %43)
  %45 = load %struct.r8152*, %struct.r8152** %5, align 8
  %46 = getelementptr inbounds %struct.r8152, %struct.r8152* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp sgt i64 %44, %47
  br i1 %48, label %49, label %52

49:                                               ; preds = %41
  %50 = load %struct.net_device*, %struct.net_device** %4, align 8
  %51 = call i32 @netif_stop_queue(%struct.net_device* %50)
  br label %52

52:                                               ; preds = %49, %41
  br label %53

53:                                               ; preds = %52, %40
  %54 = load i32, i32* @NETDEV_TX_OK, align 4
  ret i32 %54
}

declare dso_local %struct.r8152* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @skb_tx_timestamp(%struct.sk_buff*) #1

declare dso_local i32 @skb_queue_tail(i32*, %struct.sk_buff*) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @schedule_delayed_work(i32*, i32) #1

declare dso_local i32 @usb_mark_last_busy(i32) #1

declare dso_local i32 @tasklet_schedule(i32*) #1

declare dso_local i64 @skb_queue_len(i32*) #1

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
