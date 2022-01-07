; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ipvlan/extr_ipvlan_core.c_ipvlan_xmit_mode_l3.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ipvlan/extr_ipvlan_core.c_ipvlan_xmit_mode_l3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.net_device = type { i32 }
%struct.ipvl_dev = type { i32, i32 }
%struct.ipvl_addr = type { i32 }

@NET_XMIT_DROP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*)* @ipvlan_xmit_mode_l3 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipvlan_xmit_mode_l3(%struct.sk_buff* %0, %struct.net_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.ipvl_dev*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.ipvl_addr*, align 8
  %9 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  %10 = load %struct.net_device*, %struct.net_device** %5, align 8
  %11 = call %struct.ipvl_dev* @netdev_priv(%struct.net_device* %10)
  store %struct.ipvl_dev* %11, %struct.ipvl_dev** %6, align 8
  %12 = load %struct.ipvl_dev*, %struct.ipvl_dev** %6, align 8
  %13 = getelementptr inbounds %struct.ipvl_dev, %struct.ipvl_dev* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %16 = call i8* @ipvlan_get_L3_hdr(i32 %14, %struct.sk_buff* %15, i32* %9)
  store i8* %16, i8** %7, align 8
  %17 = load i8*, i8** %7, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %2
  br label %50

20:                                               ; preds = %2
  %21 = load %struct.ipvl_dev*, %struct.ipvl_dev** %6, align 8
  %22 = getelementptr inbounds %struct.ipvl_dev, %struct.ipvl_dev* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @ipvlan_is_vepa(i32 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %49, label %26

26:                                               ; preds = %20
  %27 = load %struct.ipvl_dev*, %struct.ipvl_dev** %6, align 8
  %28 = getelementptr inbounds %struct.ipvl_dev, %struct.ipvl_dev* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load i8*, i8** %7, align 8
  %31 = load i32, i32* %9, align 4
  %32 = call %struct.ipvl_addr* @ipvlan_addr_lookup(i32 %29, i8* %30, i32 %31, i32 1)
  store %struct.ipvl_addr* %32, %struct.ipvl_addr** %8, align 8
  %33 = load %struct.ipvl_addr*, %struct.ipvl_addr** %8, align 8
  %34 = icmp ne %struct.ipvl_addr* %33, null
  br i1 %34, label %35, label %48

35:                                               ; preds = %26
  %36 = load %struct.ipvl_dev*, %struct.ipvl_dev** %6, align 8
  %37 = getelementptr inbounds %struct.ipvl_dev, %struct.ipvl_dev* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i64 @ipvlan_is_private(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %35
  %42 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %43 = call i32 @consume_skb(%struct.sk_buff* %42)
  %44 = load i32, i32* @NET_XMIT_DROP, align 4
  store i32 %44, i32* %3, align 4
  br label %58

45:                                               ; preds = %35
  %46 = load %struct.ipvl_addr*, %struct.ipvl_addr** %8, align 8
  %47 = call i32 @ipvlan_rcv_frame(%struct.ipvl_addr* %46, %struct.sk_buff** %4, i32 1)
  store i32 %47, i32* %3, align 4
  br label %58

48:                                               ; preds = %26
  br label %49

49:                                               ; preds = %48, %20
  br label %50

50:                                               ; preds = %49, %19
  %51 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %52 = load %struct.ipvl_dev*, %struct.ipvl_dev** %6, align 8
  %53 = getelementptr inbounds %struct.ipvl_dev, %struct.ipvl_dev* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @ipvlan_skb_crossing_ns(%struct.sk_buff* %51, i32 %54)
  %56 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %57 = call i32 @ipvlan_process_outbound(%struct.sk_buff* %56)
  store i32 %57, i32* %3, align 4
  br label %58

58:                                               ; preds = %50, %45, %41
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local %struct.ipvl_dev* @netdev_priv(%struct.net_device*) #1

declare dso_local i8* @ipvlan_get_L3_hdr(i32, %struct.sk_buff*, i32*) #1

declare dso_local i32 @ipvlan_is_vepa(i32) #1

declare dso_local %struct.ipvl_addr* @ipvlan_addr_lookup(i32, i8*, i32, i32) #1

declare dso_local i64 @ipvlan_is_private(i32) #1

declare dso_local i32 @consume_skb(%struct.sk_buff*) #1

declare dso_local i32 @ipvlan_rcv_frame(%struct.ipvl_addr*, %struct.sk_buff**, i32) #1

declare dso_local i32 @ipvlan_skb_crossing_ns(%struct.sk_buff*, i32) #1

declare dso_local i32 @ipvlan_process_outbound(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
