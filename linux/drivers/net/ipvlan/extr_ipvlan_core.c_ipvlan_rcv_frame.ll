; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ipvlan/extr_ipvlan_core.c_ipvlan_rcv_frame.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ipvlan/extr_ipvlan_core.c_ipvlan_rcv_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipvl_addr = type { %struct.ipvl_dev* }
%struct.ipvl_dev = type { %struct.net_device* }
%struct.net_device = type { i32 }
%struct.sk_buff = type { i32, %struct.net_device*, i32 }

@RX_HANDLER_CONSUMED = common dso_local global i32 0, align 4
@ETH_HLEN = common dso_local global i32 0, align 4
@IFF_UP = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@PACKET_HOST = common dso_local global i32 0, align 4
@NET_RX_SUCCESS = common dso_local global i64 0, align 8
@RX_HANDLER_ANOTHER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ipvl_addr*, %struct.sk_buff**, i32)* @ipvlan_rcv_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipvlan_rcv_frame(%struct.ipvl_addr* %0, %struct.sk_buff** %1, i32 %2) #0 {
  %4 = alloca %struct.ipvl_addr*, align 8
  %5 = alloca %struct.sk_buff**, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ipvl_dev*, align 8
  %8 = alloca %struct.net_device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.sk_buff*, align 8
  store %struct.ipvl_addr* %0, %struct.ipvl_addr** %4, align 8
  store %struct.sk_buff** %1, %struct.sk_buff*** %5, align 8
  store i32 %2, i32* %6, align 4
  %13 = load %struct.ipvl_addr*, %struct.ipvl_addr** %4, align 8
  %14 = getelementptr inbounds %struct.ipvl_addr, %struct.ipvl_addr* %13, i32 0, i32 0
  %15 = load %struct.ipvl_dev*, %struct.ipvl_dev** %14, align 8
  store %struct.ipvl_dev* %15, %struct.ipvl_dev** %7, align 8
  %16 = load %struct.ipvl_dev*, %struct.ipvl_dev** %7, align 8
  %17 = getelementptr inbounds %struct.ipvl_dev, %struct.ipvl_dev* %16, i32 0, i32 0
  %18 = load %struct.net_device*, %struct.net_device** %17, align 8
  store %struct.net_device* %18, %struct.net_device** %8, align 8
  %19 = load i32, i32* @RX_HANDLER_CONSUMED, align 4
  store i32 %19, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %20 = load %struct.sk_buff**, %struct.sk_buff*** %5, align 8
  %21 = load %struct.sk_buff*, %struct.sk_buff** %20, align 8
  store %struct.sk_buff* %21, %struct.sk_buff** %12, align 8
  %22 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %23 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @ETH_HLEN, align 4
  %26 = add i32 %24, %25
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* %6, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %53

29:                                               ; preds = %3
  %30 = load %struct.net_device*, %struct.net_device** %8, align 8
  %31 = getelementptr inbounds %struct.net_device, %struct.net_device* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @IFF_UP, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  %36 = xor i1 %35, true
  %37 = zext i1 %36 to i32
  %38 = call i64 @unlikely(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %29
  %41 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %42 = call i32 @kfree_skb(%struct.sk_buff* %41)
  br label %75

43:                                               ; preds = %29
  %44 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %45 = load i32, i32* @GFP_ATOMIC, align 4
  %46 = call %struct.sk_buff* @skb_share_check(%struct.sk_buff* %44, i32 %45)
  store %struct.sk_buff* %46, %struct.sk_buff** %12, align 8
  %47 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %48 = icmp ne %struct.sk_buff* %47, null
  br i1 %48, label %50, label %49

49:                                               ; preds = %43
  br label %75

50:                                               ; preds = %43
  %51 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %52 = load %struct.sk_buff**, %struct.sk_buff*** %5, align 8
  store %struct.sk_buff* %51, %struct.sk_buff** %52, align 8
  br label %53

53:                                               ; preds = %50, %3
  %54 = load i32, i32* %6, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %69

56:                                               ; preds = %53
  %57 = load i32, i32* @PACKET_HOST, align 4
  %58 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %59 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %58, i32 0, i32 2
  store i32 %57, i32* %59, align 8
  %60 = load %struct.ipvl_dev*, %struct.ipvl_dev** %7, align 8
  %61 = getelementptr inbounds %struct.ipvl_dev, %struct.ipvl_dev* %60, i32 0, i32 0
  %62 = load %struct.net_device*, %struct.net_device** %61, align 8
  %63 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %64 = call i64 @dev_forward_skb(%struct.net_device* %62, %struct.sk_buff* %63)
  %65 = load i64, i64* @NET_RX_SUCCESS, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %68

67:                                               ; preds = %56
  store i32 1, i32* %11, align 4
  br label %68

68:                                               ; preds = %67, %56
  br label %74

69:                                               ; preds = %53
  %70 = load %struct.net_device*, %struct.net_device** %8, align 8
  %71 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %72 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %71, i32 0, i32 1
  store %struct.net_device* %70, %struct.net_device** %72, align 8
  %73 = load i32, i32* @RX_HANDLER_ANOTHER, align 4
  store i32 %73, i32* %10, align 4
  store i32 1, i32* %11, align 4
  br label %74

74:                                               ; preds = %69, %68
  br label %75

75:                                               ; preds = %74, %49, %40
  %76 = load %struct.ipvl_dev*, %struct.ipvl_dev** %7, align 8
  %77 = load i32, i32* %9, align 4
  %78 = load i32, i32* %11, align 4
  %79 = call i32 @ipvlan_count_rx(%struct.ipvl_dev* %76, i32 %77, i32 %78, i32 0)
  %80 = load i32, i32* %10, align 4
  ret i32 %80
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local %struct.sk_buff* @skb_share_check(%struct.sk_buff*, i32) #1

declare dso_local i64 @dev_forward_skb(%struct.net_device*, %struct.sk_buff*) #1

declare dso_local i32 @ipvlan_count_rx(%struct.ipvl_dev*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
