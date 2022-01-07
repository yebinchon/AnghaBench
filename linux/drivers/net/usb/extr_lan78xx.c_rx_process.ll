; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_lan78xx.c_rx_process.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_lan78xx.c_rx_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lan78xx_net = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.sk_buff = type { i64 }

@rx_err = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"drop\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lan78xx_net*, %struct.sk_buff*)* @rx_process to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rx_process(%struct.lan78xx_net* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.lan78xx_net*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  store %struct.lan78xx_net* %0, %struct.lan78xx_net** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %5 = load %struct.lan78xx_net*, %struct.lan78xx_net** %3, align 8
  %6 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %7 = call i32 @lan78xx_rx(%struct.lan78xx_net* %5, %struct.sk_buff* %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %17, label %9

9:                                                ; preds = %2
  %10 = load %struct.lan78xx_net*, %struct.lan78xx_net** %3, align 8
  %11 = getelementptr inbounds %struct.lan78xx_net, %struct.lan78xx_net* %10, i32 0, i32 1
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* %14, align 4
  br label %40

17:                                               ; preds = %2
  %18 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %19 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %17
  %23 = load %struct.lan78xx_net*, %struct.lan78xx_net** %3, align 8
  %24 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %25 = call i32 @lan78xx_skb_return(%struct.lan78xx_net* %23, %struct.sk_buff* %24)
  br label %45

26:                                               ; preds = %17
  %27 = load %struct.lan78xx_net*, %struct.lan78xx_net** %3, align 8
  %28 = load i32, i32* @rx_err, align 4
  %29 = load %struct.lan78xx_net*, %struct.lan78xx_net** %3, align 8
  %30 = getelementptr inbounds %struct.lan78xx_net, %struct.lan78xx_net* %29, i32 0, i32 1
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = call i32 @netif_dbg(%struct.lan78xx_net* %27, i32 %28, %struct.TYPE_4__* %31, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %33 = load %struct.lan78xx_net*, %struct.lan78xx_net** %3, align 8
  %34 = getelementptr inbounds %struct.lan78xx_net, %struct.lan78xx_net* %33, i32 0, i32 1
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %37, align 4
  br label %40

40:                                               ; preds = %26, %9
  %41 = load %struct.lan78xx_net*, %struct.lan78xx_net** %3, align 8
  %42 = getelementptr inbounds %struct.lan78xx_net, %struct.lan78xx_net* %41, i32 0, i32 0
  %43 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %44 = call i32 @skb_queue_tail(i32* %42, %struct.sk_buff* %43)
  br label %45

45:                                               ; preds = %40, %22
  ret void
}

declare dso_local i32 @lan78xx_rx(%struct.lan78xx_net*, %struct.sk_buff*) #1

declare dso_local i32 @lan78xx_skb_return(%struct.lan78xx_net*, %struct.sk_buff*) #1

declare dso_local i32 @netif_dbg(%struct.lan78xx_net*, i32, %struct.TYPE_4__*, i8*) #1

declare dso_local i32 @skb_queue_tail(i32*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
