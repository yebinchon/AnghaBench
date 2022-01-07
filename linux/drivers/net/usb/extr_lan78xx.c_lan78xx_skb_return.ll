; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_lan78xx.c_lan78xx_skb_return.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_lan78xx.c_lan78xx_skb_return.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lan78xx_net = type { %struct.TYPE_5__*, i32, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.sk_buff = type { i32, i32, i64 }

@EVENT_RX_PAUSED = common dso_local global i32 0, align 4
@rx_status = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"< rx, len %zu, type 0x%x\0A\00", align 1
@NET_RX_SUCCESS = common dso_local global i32 0, align 4
@rx_err = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"netif_rx status %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lan78xx_net*, %struct.sk_buff*)* @lan78xx_skb_return to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lan78xx_skb_return(%struct.lan78xx_net* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.lan78xx_net*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca i32, align 4
  store %struct.lan78xx_net* %0, %struct.lan78xx_net** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %6 = load i32, i32* @EVENT_RX_PAUSED, align 4
  %7 = load %struct.lan78xx_net*, %struct.lan78xx_net** %3, align 8
  %8 = getelementptr inbounds %struct.lan78xx_net, %struct.lan78xx_net* %7, i32 0, i32 2
  %9 = call i64 @test_bit(i32 %6, i32* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %2
  %12 = load %struct.lan78xx_net*, %struct.lan78xx_net** %3, align 8
  %13 = getelementptr inbounds %struct.lan78xx_net, %struct.lan78xx_net* %12, i32 0, i32 1
  %14 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %15 = call i32 @skb_queue_tail(i32* %13, %struct.sk_buff* %14)
  br label %79

16:                                               ; preds = %2
  %17 = load %struct.lan78xx_net*, %struct.lan78xx_net** %3, align 8
  %18 = getelementptr inbounds %struct.lan78xx_net, %struct.lan78xx_net* %17, i32 0, i32 0
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %21, align 4
  %24 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %25 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.lan78xx_net*, %struct.lan78xx_net** %3, align 8
  %28 = getelementptr inbounds %struct.lan78xx_net, %struct.lan78xx_net* %27, i32 0, i32 0
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = sext i32 %32 to i64
  %34 = add nsw i64 %33, %26
  %35 = trunc i64 %34 to i32
  store i32 %35, i32* %31, align 4
  %36 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %37 = load %struct.lan78xx_net*, %struct.lan78xx_net** %3, align 8
  %38 = getelementptr inbounds %struct.lan78xx_net, %struct.lan78xx_net* %37, i32 0, i32 0
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %38, align 8
  %40 = call i32 @eth_type_trans(%struct.sk_buff* %36, %struct.TYPE_5__* %39)
  %41 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %42 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %41, i32 0, i32 1
  store i32 %40, i32* %42, align 4
  %43 = load %struct.lan78xx_net*, %struct.lan78xx_net** %3, align 8
  %44 = load i32, i32* @rx_status, align 4
  %45 = load %struct.lan78xx_net*, %struct.lan78xx_net** %3, align 8
  %46 = getelementptr inbounds %struct.lan78xx_net, %struct.lan78xx_net* %45, i32 0, i32 0
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %46, align 8
  %48 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %49 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %48, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  %51 = add i64 %50, 4
  %52 = trunc i64 %51 to i32
  %53 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %54 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = call i32 (%struct.lan78xx_net*, i32, %struct.TYPE_5__*, i8*, i32, ...) @netif_dbg(%struct.lan78xx_net* %43, i32 %44, %struct.TYPE_5__* %47, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %52, i32 %55)
  %57 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %58 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @memset(i32 %59, i32 0, i32 4)
  %61 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %62 = call i64 @skb_defer_rx_timestamp(%struct.sk_buff* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %16
  br label %79

65:                                               ; preds = %16
  %66 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %67 = call i32 @netif_rx(%struct.sk_buff* %66)
  store i32 %67, i32* %5, align 4
  %68 = load i32, i32* %5, align 4
  %69 = load i32, i32* @NET_RX_SUCCESS, align 4
  %70 = icmp ne i32 %68, %69
  br i1 %70, label %71, label %79

71:                                               ; preds = %65
  %72 = load %struct.lan78xx_net*, %struct.lan78xx_net** %3, align 8
  %73 = load i32, i32* @rx_err, align 4
  %74 = load %struct.lan78xx_net*, %struct.lan78xx_net** %3, align 8
  %75 = getelementptr inbounds %struct.lan78xx_net, %struct.lan78xx_net* %74, i32 0, i32 0
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %75, align 8
  %77 = load i32, i32* %5, align 4
  %78 = call i32 (%struct.lan78xx_net*, i32, %struct.TYPE_5__*, i8*, i32, ...) @netif_dbg(%struct.lan78xx_net* %72, i32 %73, %struct.TYPE_5__* %76, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %77)
  br label %79

79:                                               ; preds = %11, %64, %71, %65
  ret void
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @skb_queue_tail(i32*, %struct.sk_buff*) #1

declare dso_local i32 @eth_type_trans(%struct.sk_buff*, %struct.TYPE_5__*) #1

declare dso_local i32 @netif_dbg(%struct.lan78xx_net*, i32, %struct.TYPE_5__*, i8*, i32, ...) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i64 @skb_defer_rx_timestamp(%struct.sk_buff*) #1

declare dso_local i32 @netif_rx(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
