; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ipvlan/extr_ipvlan_core.c_ipvlan_process_v4_outbound.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ipvlan/extr_ipvlan_core.c_ipvlan_process_v4_outbound.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i32, %struct.net_device* }
%struct.net_device = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.iphdr = type { i32, i32, i32 }
%struct.net = type { i32 }
%struct.rtable = type { i64, i32 }
%struct.flowi4 = type { i32, i32, i32, i32, i32, i32 }

@NET_XMIT_DROP = common dso_local global i32 0, align 4
@FLOWI_FLAG_ANYSRC = common dso_local global i32 0, align 4
@RTN_UNICAST = common dso_local global i64 0, align 8
@RTN_LOCAL = common dso_local global i64 0, align 8
@NET_XMIT_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*)* @ipvlan_process_v4_outbound to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipvlan_process_v4_outbound(%struct.sk_buff* %0) #0 {
  %2 = alloca %struct.sk_buff*, align 8
  %3 = alloca %struct.iphdr*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.net*, align 8
  %6 = alloca %struct.rtable*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.flowi4, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %2, align 8
  %10 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %11 = call %struct.iphdr* @ip_hdr(%struct.sk_buff* %10)
  store %struct.iphdr* %11, %struct.iphdr** %3, align 8
  %12 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %13 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %12, i32 0, i32 2
  %14 = load %struct.net_device*, %struct.net_device** %13, align 8
  store %struct.net_device* %14, %struct.net_device** %4, align 8
  %15 = load %struct.net_device*, %struct.net_device** %4, align 8
  %16 = call %struct.net* @dev_net(%struct.net_device* %15)
  store %struct.net* %16, %struct.net** %5, align 8
  %17 = load i32, i32* @NET_XMIT_DROP, align 4
  store i32 %17, i32* %8, align 4
  %18 = getelementptr inbounds %struct.flowi4, %struct.flowi4* %9, i32 0, i32 0
  %19 = load %struct.iphdr*, %struct.iphdr** %3, align 8
  %20 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %18, align 4
  %22 = getelementptr inbounds %struct.flowi4, %struct.flowi4* %9, i32 0, i32 1
  %23 = load %struct.iphdr*, %struct.iphdr** %3, align 8
  %24 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %22, align 4
  %26 = getelementptr inbounds %struct.flowi4, %struct.flowi4* %9, i32 0, i32 2
  %27 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %28 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %26, align 4
  %30 = getelementptr inbounds %struct.flowi4, %struct.flowi4* %9, i32 0, i32 3
  %31 = load i32, i32* @FLOWI_FLAG_ANYSRC, align 4
  store i32 %31, i32* %30, align 4
  %32 = getelementptr inbounds %struct.flowi4, %struct.flowi4* %9, i32 0, i32 4
  %33 = load %struct.iphdr*, %struct.iphdr** %3, align 8
  %34 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @RT_TOS(i32 %35)
  store i32 %36, i32* %32, align 4
  %37 = getelementptr inbounds %struct.flowi4, %struct.flowi4* %9, i32 0, i32 5
  %38 = load %struct.net_device*, %struct.net_device** %4, align 8
  %39 = getelementptr inbounds %struct.net_device, %struct.net_device* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %37, align 4
  %41 = load %struct.net*, %struct.net** %5, align 8
  %42 = call %struct.rtable* @ip_route_output_flow(%struct.net* %41, %struct.flowi4* %9, i32* null)
  store %struct.rtable* %42, %struct.rtable** %6, align 8
  %43 = load %struct.rtable*, %struct.rtable** %6, align 8
  %44 = call i64 @IS_ERR(%struct.rtable* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %1
  br label %86

47:                                               ; preds = %1
  %48 = load %struct.rtable*, %struct.rtable** %6, align 8
  %49 = getelementptr inbounds %struct.rtable, %struct.rtable* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @RTN_UNICAST, align 8
  %52 = icmp ne i64 %50, %51
  br i1 %52, label %53, label %62

53:                                               ; preds = %47
  %54 = load %struct.rtable*, %struct.rtable** %6, align 8
  %55 = getelementptr inbounds %struct.rtable, %struct.rtable* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @RTN_LOCAL, align 8
  %58 = icmp ne i64 %56, %57
  br i1 %58, label %59, label %62

59:                                               ; preds = %53
  %60 = load %struct.rtable*, %struct.rtable** %6, align 8
  %61 = call i32 @ip_rt_put(%struct.rtable* %60)
  br label %86

62:                                               ; preds = %53, %47
  %63 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %64 = load %struct.rtable*, %struct.rtable** %6, align 8
  %65 = getelementptr inbounds %struct.rtable, %struct.rtable* %64, i32 0, i32 1
  %66 = call i32 @skb_dst_set(%struct.sk_buff* %63, i32* %65)
  %67 = load %struct.net*, %struct.net** %5, align 8
  %68 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %69 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %72 = call i32 @ip_local_out(%struct.net* %67, i32 %70, %struct.sk_buff* %71)
  store i32 %72, i32* %7, align 4
  %73 = load i32, i32* %7, align 4
  %74 = call i32 @net_xmit_eval(i32 %73)
  %75 = call i64 @unlikely(i32 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %83

77:                                               ; preds = %62
  %78 = load %struct.net_device*, %struct.net_device** %4, align 8
  %79 = getelementptr inbounds %struct.net_device, %struct.net_device* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %80, align 4
  br label %85

83:                                               ; preds = %62
  %84 = load i32, i32* @NET_XMIT_SUCCESS, align 4
  store i32 %84, i32* %8, align 4
  br label %85

85:                                               ; preds = %83, %77
  br label %94

86:                                               ; preds = %59, %46
  %87 = load %struct.net_device*, %struct.net_device** %4, align 8
  %88 = getelementptr inbounds %struct.net_device, %struct.net_device* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %89, align 4
  %92 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %93 = call i32 @kfree_skb(%struct.sk_buff* %92)
  br label %94

94:                                               ; preds = %86, %85
  %95 = load i32, i32* %8, align 4
  ret i32 %95
}

declare dso_local %struct.iphdr* @ip_hdr(%struct.sk_buff*) #1

declare dso_local %struct.net* @dev_net(%struct.net_device*) #1

declare dso_local i32 @RT_TOS(i32) #1

declare dso_local %struct.rtable* @ip_route_output_flow(%struct.net*, %struct.flowi4*, i32*) #1

declare dso_local i64 @IS_ERR(%struct.rtable*) #1

declare dso_local i32 @ip_rt_put(%struct.rtable*) #1

declare dso_local i32 @skb_dst_set(%struct.sk_buff*, i32*) #1

declare dso_local i32 @ip_local_out(%struct.net*, i32, %struct.sk_buff*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @net_xmit_eval(i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
