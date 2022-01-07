; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wan/extr_hdlc_x25.c_x25_xmit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wan/extr_hdlc_x25.c_x25_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32* }
%struct.net_device = type { i32 }

@LAPB_OK = common dso_local global i32 0, align 4
@NETDEV_TX_OK = common dso_local global i32 0, align 4
@LAPB_CONNECTED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"LAPB connect request failed, error code = %i\0A\00", align 1
@LAPB_NOTCONNECTED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [49 x i8] c"LAPB disconnect request failed, error code = %i\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*)* @x25_xmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @x25_xmit(%struct.sk_buff* %0, %struct.net_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  %7 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %8 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %7, i32 0, i32 0
  %9 = load i32*, i32** %8, align 8
  %10 = getelementptr inbounds i32, i32* %9, i64 0
  %11 = load i32, i32* %10, align 4
  switch i32 %11, label %61 [
    i32 129, label %12
    i32 130, label %25
    i32 128, label %43
  ]

12:                                               ; preds = %2
  %13 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %14 = call i32 @skb_pull(%struct.sk_buff* %13, i32 1)
  %15 = load %struct.net_device*, %struct.net_device** %5, align 8
  %16 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %17 = call i32 @lapb_data_request(%struct.net_device* %15, %struct.sk_buff* %16)
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* @LAPB_OK, align 4
  %19 = icmp ne i32 %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %12
  %21 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %22 = call i32 @dev_kfree_skb(%struct.sk_buff* %21)
  br label %23

23:                                               ; preds = %20, %12
  %24 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %24, i32* %3, align 4
  br label %66

25:                                               ; preds = %2
  %26 = load %struct.net_device*, %struct.net_device** %5, align 8
  %27 = call i32 @lapb_connect_request(%struct.net_device* %26)
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* @LAPB_OK, align 4
  %29 = icmp ne i32 %27, %28
  br i1 %29, label %30, label %42

30:                                               ; preds = %25
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* @LAPB_CONNECTED, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %30
  %35 = load %struct.net_device*, %struct.net_device** %5, align 8
  %36 = call i32 @x25_connected(%struct.net_device* %35, i32 0)
  br label %41

37:                                               ; preds = %30
  %38 = load %struct.net_device*, %struct.net_device** %5, align 8
  %39 = load i32, i32* %6, align 4
  %40 = call i32 @netdev_err(%struct.net_device* %38, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %39)
  br label %41

41:                                               ; preds = %37, %34
  br label %42

42:                                               ; preds = %41, %25
  br label %62

43:                                               ; preds = %2
  %44 = load %struct.net_device*, %struct.net_device** %5, align 8
  %45 = call i32 @lapb_disconnect_request(%struct.net_device* %44)
  store i32 %45, i32* %6, align 4
  %46 = load i32, i32* @LAPB_OK, align 4
  %47 = icmp ne i32 %45, %46
  br i1 %47, label %48, label %60

48:                                               ; preds = %43
  %49 = load i32, i32* %6, align 4
  %50 = load i32, i32* @LAPB_NOTCONNECTED, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %55

52:                                               ; preds = %48
  %53 = load %struct.net_device*, %struct.net_device** %5, align 8
  %54 = call i32 @x25_disconnected(%struct.net_device* %53, i32 0)
  br label %59

55:                                               ; preds = %48
  %56 = load %struct.net_device*, %struct.net_device** %5, align 8
  %57 = load i32, i32* %6, align 4
  %58 = call i32 @netdev_err(%struct.net_device* %56, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i32 %57)
  br label %59

59:                                               ; preds = %55, %52
  br label %60

60:                                               ; preds = %59, %43
  br label %62

61:                                               ; preds = %2
  br label %62

62:                                               ; preds = %61, %60, %42
  %63 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %64 = call i32 @dev_kfree_skb(%struct.sk_buff* %63)
  %65 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %65, i32* %3, align 4
  br label %66

66:                                               ; preds = %62, %23
  %67 = load i32, i32* %3, align 4
  ret i32 %67
}

declare dso_local i32 @skb_pull(%struct.sk_buff*, i32) #1

declare dso_local i32 @lapb_data_request(%struct.net_device*, %struct.sk_buff*) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @lapb_connect_request(%struct.net_device*) #1

declare dso_local i32 @x25_connected(%struct.net_device*, i32) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*, i32) #1

declare dso_local i32 @lapb_disconnect_request(%struct.net_device*) #1

declare dso_local i32 @x25_disconnected(%struct.net_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
