; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wan/extr_x25_asy.c_x25_asy_xmit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wan/extr_x25_asy.c_x25_asy_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32* }
%struct.net_device = type { i32 }
%struct.x25_asy = type { i32 }

@.str = private unnamed_addr constant [30 x i8] c"xmit call when iface is down\0A\00", align 1
@NETDEV_TX_OK = common dso_local global i32 0, align 4
@LAPB_OK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"lapb_connect_request error: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"lapb_disconnect_request error: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"lapb_data_request error: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*)* @x25_asy_xmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @x25_asy_xmit(%struct.sk_buff* %0, %struct.net_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.x25_asy*, align 8
  %7 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  %8 = load %struct.net_device*, %struct.net_device** %5, align 8
  %9 = call %struct.x25_asy* @netdev_priv(%struct.net_device* %8)
  store %struct.x25_asy* %9, %struct.x25_asy** %6, align 8
  %10 = load %struct.x25_asy*, %struct.x25_asy** %6, align 8
  %11 = getelementptr inbounds %struct.x25_asy, %struct.x25_asy* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @netif_running(i32 %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %21, label %15

15:                                               ; preds = %2
  %16 = load %struct.net_device*, %struct.net_device** %5, align 8
  %17 = call i32 (%struct.net_device*, i8*, ...) @netdev_err(%struct.net_device* %16, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %18 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %19 = call i32 @kfree_skb(%struct.sk_buff* %18)
  %20 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %20, i32* %3, align 4
  br label %75

21:                                               ; preds = %2
  %22 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %23 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 0
  %26 = load i32, i32* %25, align 4
  switch i32 %26, label %53 [
    i32 129, label %27
    i32 130, label %28
    i32 128, label %42
  ]

27:                                               ; preds = %21
  br label %57

28:                                               ; preds = %21
  %29 = load %struct.net_device*, %struct.net_device** %5, align 8
  %30 = call i32 @lapb_connect_request(%struct.net_device* %29)
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* @LAPB_OK, align 4
  %33 = icmp ne i32 %31, %32
  br i1 %33, label %34, label %38

34:                                               ; preds = %28
  %35 = load %struct.net_device*, %struct.net_device** %5, align 8
  %36 = load i32, i32* %7, align 4
  %37 = call i32 (%struct.net_device*, i8*, ...) @netdev_err(%struct.net_device* %35, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %36)
  br label %38

38:                                               ; preds = %34, %28
  %39 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %40 = call i32 @kfree_skb(%struct.sk_buff* %39)
  %41 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %41, i32* %3, align 4
  br label %75

42:                                               ; preds = %21
  %43 = load %struct.net_device*, %struct.net_device** %5, align 8
  %44 = call i32 @lapb_disconnect_request(%struct.net_device* %43)
  store i32 %44, i32* %7, align 4
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* @LAPB_OK, align 4
  %47 = icmp ne i32 %45, %46
  br i1 %47, label %48, label %52

48:                                               ; preds = %42
  %49 = load %struct.net_device*, %struct.net_device** %5, align 8
  %50 = load i32, i32* %7, align 4
  %51 = call i32 (%struct.net_device*, i8*, ...) @netdev_err(%struct.net_device* %49, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 %50)
  br label %52

52:                                               ; preds = %48, %42
  br label %53

53:                                               ; preds = %21, %52
  %54 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %55 = call i32 @kfree_skb(%struct.sk_buff* %54)
  %56 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %56, i32* %3, align 4
  br label %75

57:                                               ; preds = %27
  %58 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %59 = call i32 @skb_pull(%struct.sk_buff* %58, i32 1)
  %60 = load %struct.net_device*, %struct.net_device** %5, align 8
  %61 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %62 = call i32 @lapb_data_request(%struct.net_device* %60, %struct.sk_buff* %61)
  store i32 %62, i32* %7, align 4
  %63 = load i32, i32* %7, align 4
  %64 = load i32, i32* @LAPB_OK, align 4
  %65 = icmp ne i32 %63, %64
  br i1 %65, label %66, label %73

66:                                               ; preds = %57
  %67 = load %struct.net_device*, %struct.net_device** %5, align 8
  %68 = load i32, i32* %7, align 4
  %69 = call i32 (%struct.net_device*, i8*, ...) @netdev_err(%struct.net_device* %67, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i32 %68)
  %70 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %71 = call i32 @kfree_skb(%struct.sk_buff* %70)
  %72 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %72, i32* %3, align 4
  br label %75

73:                                               ; preds = %57
  %74 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %74, i32* %3, align 4
  br label %75

75:                                               ; preds = %73, %66, %53, %38, %15
  %76 = load i32, i32* %3, align 4
  ret i32 %76
}

declare dso_local %struct.x25_asy* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netif_running(i32) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*, ...) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @lapb_connect_request(%struct.net_device*) #1

declare dso_local i32 @lapb_disconnect_request(%struct.net_device*) #1

declare dso_local i32 @skb_pull(%struct.sk_buff*, i32) #1

declare dso_local i32 @lapb_data_request(%struct.net_device*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
