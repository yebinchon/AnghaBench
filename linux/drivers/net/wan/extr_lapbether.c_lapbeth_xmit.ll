; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wan/extr_lapbether.c_lapbeth_xmit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wan/extr_lapbether.c_lapbeth_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32* }
%struct.net_device = type { i32 }

@LAPB_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"lapb_connect_request error: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"lapb_disconnect_request err: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"lapb_data_request error - %d\0A\00", align 1
@NETDEV_TX_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*)* @lapbeth_xmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lapbeth_xmit(%struct.sk_buff* %0, %struct.net_device* %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  store %struct.net_device* %1, %struct.net_device** %4, align 8
  %6 = load %struct.net_device*, %struct.net_device** %4, align 8
  %7 = call i32 @netif_running(%struct.net_device* %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  br label %50

10:                                               ; preds = %2
  %11 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %12 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 0
  %15 = load i32, i32* %14, align 4
  switch i32 %15, label %35 [
    i32 129, label %16
    i32 130, label %17
    i32 128, label %26
  ]

16:                                               ; preds = %10
  br label %36

17:                                               ; preds = %10
  %18 = load %struct.net_device*, %struct.net_device** %4, align 8
  %19 = call i32 @lapb_connect_request(%struct.net_device* %18)
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* @LAPB_OK, align 4
  %21 = icmp ne i32 %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %17
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @pr_err(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %23)
  br label %25

25:                                               ; preds = %22, %17
  br label %50

26:                                               ; preds = %10
  %27 = load %struct.net_device*, %struct.net_device** %4, align 8
  %28 = call i32 @lapb_disconnect_request(%struct.net_device* %27)
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* @LAPB_OK, align 4
  %30 = icmp ne i32 %28, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %26
  %32 = load i32, i32* %5, align 4
  %33 = call i32 @pr_err(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %32)
  br label %34

34:                                               ; preds = %31, %26
  br label %35

35:                                               ; preds = %10, %34
  br label %50

36:                                               ; preds = %16
  %37 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %38 = call i32 @skb_pull(%struct.sk_buff* %37, i32 1)
  %39 = load %struct.net_device*, %struct.net_device** %4, align 8
  %40 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %41 = call i32 @lapb_data_request(%struct.net_device* %39, %struct.sk_buff* %40)
  store i32 %41, i32* %5, align 4
  %42 = load i32, i32* @LAPB_OK, align 4
  %43 = icmp ne i32 %41, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %36
  %45 = load i32, i32* %5, align 4
  %46 = call i32 @pr_err(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %45)
  br label %50

47:                                               ; preds = %36
  br label %48

48:                                               ; preds = %50, %47
  %49 = load i32, i32* @NETDEV_TX_OK, align 4
  ret i32 %49

50:                                               ; preds = %44, %35, %25, %9
  %51 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %52 = call i32 @kfree_skb(%struct.sk_buff* %51)
  br label %48
}

declare dso_local i32 @netif_running(%struct.net_device*) #1

declare dso_local i32 @lapb_connect_request(%struct.net_device*) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @lapb_disconnect_request(%struct.net_device*) #1

declare dso_local i32 @skb_pull(%struct.sk_buff*, i32) #1

declare dso_local i32 @lapb_data_request(%struct.net_device*, %struct.sk_buff*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
