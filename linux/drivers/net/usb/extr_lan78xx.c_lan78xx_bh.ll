; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_lan78xx.c_lan78xx_bh.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_lan78xx.c_lan78xx_bh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lan78xx_net = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.sk_buff = type { i64 }
%struct.skb_data = type { i32, i32 }

@.str = private unnamed_addr constant [14 x i8] c"skb state %d\0A\00", align 1
@jiffies = common dso_local global i64 0, align 8
@STAT_UPDATE_TIMER = common dso_local global i64 0, align 8
@EVENT_RX_HALT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @lan78xx_bh to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lan78xx_bh(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.lan78xx_net*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.skb_data*, align 8
  store i64 %0, i64* %2, align 8
  %6 = load i64, i64* %2, align 8
  %7 = inttoptr i64 %6 to %struct.lan78xx_net*
  store %struct.lan78xx_net* %7, %struct.lan78xx_net** %3, align 8
  br label %8

8:                                                ; preds = %34, %27, %21, %1
  %9 = load %struct.lan78xx_net*, %struct.lan78xx_net** %3, align 8
  %10 = getelementptr inbounds %struct.lan78xx_net, %struct.lan78xx_net* %9, i32 0, i32 6
  %11 = call %struct.sk_buff* @skb_dequeue(i32* %10)
  store %struct.sk_buff* %11, %struct.sk_buff** %4, align 8
  %12 = icmp ne %struct.sk_buff* %11, null
  br i1 %12, label %13, label %49

13:                                               ; preds = %8
  %14 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %15 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to %struct.skb_data*
  store %struct.skb_data* %17, %struct.skb_data** %5, align 8
  %18 = load %struct.skb_data*, %struct.skb_data** %5, align 8
  %19 = getelementptr inbounds %struct.skb_data, %struct.skb_data* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  switch i32 %20, label %41 [
    i32 129, label %21
    i32 128, label %27
    i32 130, label %34
  ]

21:                                               ; preds = %13
  %22 = load %struct.skb_data*, %struct.skb_data** %5, align 8
  %23 = getelementptr inbounds %struct.skb_data, %struct.skb_data* %22, i32 0, i32 0
  store i32 130, i32* %23, align 4
  %24 = load %struct.lan78xx_net*, %struct.lan78xx_net** %3, align 8
  %25 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %26 = call i32 @rx_process(%struct.lan78xx_net* %24, %struct.sk_buff* %25)
  br label %8

27:                                               ; preds = %13
  %28 = load %struct.skb_data*, %struct.skb_data** %5, align 8
  %29 = getelementptr inbounds %struct.skb_data, %struct.skb_data* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @usb_free_urb(i32 %30)
  %32 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %33 = call i32 @dev_kfree_skb(%struct.sk_buff* %32)
  br label %8

34:                                               ; preds = %13
  %35 = load %struct.skb_data*, %struct.skb_data** %5, align 8
  %36 = getelementptr inbounds %struct.skb_data, %struct.skb_data* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @usb_free_urb(i32 %37)
  %39 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %40 = call i32 @dev_kfree_skb(%struct.sk_buff* %39)
  br label %8

41:                                               ; preds = %13
  %42 = load %struct.lan78xx_net*, %struct.lan78xx_net** %3, align 8
  %43 = getelementptr inbounds %struct.lan78xx_net, %struct.lan78xx_net* %42, i32 0, i32 5
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.skb_data*, %struct.skb_data** %5, align 8
  %46 = getelementptr inbounds %struct.skb_data, %struct.skb_data* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @netdev_dbg(i32 %44, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %47)
  br label %103

49:                                               ; preds = %8
  %50 = load %struct.lan78xx_net*, %struct.lan78xx_net** %3, align 8
  %51 = getelementptr inbounds %struct.lan78xx_net, %struct.lan78xx_net* %50, i32 0, i32 5
  %52 = load i32, i32* %51, align 4
  %53 = call i64 @netif_device_present(i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %103

55:                                               ; preds = %49
  %56 = load %struct.lan78xx_net*, %struct.lan78xx_net** %3, align 8
  %57 = getelementptr inbounds %struct.lan78xx_net, %struct.lan78xx_net* %56, i32 0, i32 5
  %58 = load i32, i32* %57, align 4
  %59 = call i64 @netif_running(i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %103

61:                                               ; preds = %55
  %62 = load %struct.lan78xx_net*, %struct.lan78xx_net** %3, align 8
  %63 = getelementptr inbounds %struct.lan78xx_net, %struct.lan78xx_net* %62, i32 0, i32 4
  %64 = call i64 @timer_pending(i32* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %80

66:                                               ; preds = %61
  %67 = load %struct.lan78xx_net*, %struct.lan78xx_net** %3, align 8
  %68 = getelementptr inbounds %struct.lan78xx_net, %struct.lan78xx_net* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = icmp ne i32 %69, 1
  br i1 %70, label %71, label %80

71:                                               ; preds = %66
  %72 = load %struct.lan78xx_net*, %struct.lan78xx_net** %3, align 8
  %73 = getelementptr inbounds %struct.lan78xx_net, %struct.lan78xx_net* %72, i32 0, i32 0
  store i32 1, i32* %73, align 4
  %74 = load %struct.lan78xx_net*, %struct.lan78xx_net** %3, align 8
  %75 = getelementptr inbounds %struct.lan78xx_net, %struct.lan78xx_net* %74, i32 0, i32 4
  %76 = load i64, i64* @jiffies, align 8
  %77 = load i64, i64* @STAT_UPDATE_TIMER, align 8
  %78 = add nsw i64 %76, %77
  %79 = call i32 @mod_timer(i32* %75, i64 %78)
  br label %80

80:                                               ; preds = %71, %66, %61
  %81 = load %struct.lan78xx_net*, %struct.lan78xx_net** %3, align 8
  %82 = getelementptr inbounds %struct.lan78xx_net, %struct.lan78xx_net* %81, i32 0, i32 3
  %83 = call i32 @skb_queue_empty(i32* %82)
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %88, label %85

85:                                               ; preds = %80
  %86 = load %struct.lan78xx_net*, %struct.lan78xx_net** %3, align 8
  %87 = call i32 @lan78xx_tx_bh(%struct.lan78xx_net* %86)
  br label %88

88:                                               ; preds = %85, %80
  %89 = load %struct.lan78xx_net*, %struct.lan78xx_net** %3, align 8
  %90 = getelementptr inbounds %struct.lan78xx_net, %struct.lan78xx_net* %89, i32 0, i32 2
  %91 = call i64 @timer_pending(i32* %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %102, label %93

93:                                               ; preds = %88
  %94 = load i32, i32* @EVENT_RX_HALT, align 4
  %95 = load %struct.lan78xx_net*, %struct.lan78xx_net** %3, align 8
  %96 = getelementptr inbounds %struct.lan78xx_net, %struct.lan78xx_net* %95, i32 0, i32 1
  %97 = call i32 @test_bit(i32 %94, i32* %96)
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %102, label %99

99:                                               ; preds = %93
  %100 = load %struct.lan78xx_net*, %struct.lan78xx_net** %3, align 8
  %101 = call i32 @lan78xx_rx_bh(%struct.lan78xx_net* %100)
  br label %102

102:                                              ; preds = %99, %93, %88
  br label %103

103:                                              ; preds = %41, %102, %55, %49
  ret void
}

declare dso_local %struct.sk_buff* @skb_dequeue(i32*) #1

declare dso_local i32 @rx_process(%struct.lan78xx_net*, %struct.sk_buff*) #1

declare dso_local i32 @usb_free_urb(i32) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @netdev_dbg(i32, i8*, i32) #1

declare dso_local i64 @netif_device_present(i32) #1

declare dso_local i64 @netif_running(i32) #1

declare dso_local i64 @timer_pending(i32*) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i32 @skb_queue_empty(i32*) #1

declare dso_local i32 @lan78xx_tx_bh(%struct.lan78xx_net*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @lan78xx_rx_bh(%struct.lan78xx_net*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
