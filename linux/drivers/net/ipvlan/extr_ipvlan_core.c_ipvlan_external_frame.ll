; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ipvlan/extr_ipvlan_core.c_ipvlan_external_frame.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ipvlan/extr_ipvlan_core.c_ipvlan_external_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.ipvl_port = type { i32 }
%struct.ethhdr = type { i32 }
%struct.ipvl_addr = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.ipvl_port*)* @ipvlan_external_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipvlan_external_frame(%struct.sk_buff* %0, %struct.ipvl_port* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.ipvl_port*, align 8
  %6 = alloca %struct.ethhdr*, align 8
  %7 = alloca %struct.ipvl_addr*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.ipvl_port* %1, %struct.ipvl_port** %5, align 8
  %10 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %11 = call %struct.ethhdr* @eth_hdr(%struct.sk_buff* %10)
  store %struct.ethhdr* %11, %struct.ethhdr** %6, align 8
  %12 = load %struct.ethhdr*, %struct.ethhdr** %6, align 8
  %13 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %16 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i64 @ether_addr_equal(i32 %14, i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %38

22:                                               ; preds = %2
  %23 = load %struct.ipvl_port*, %struct.ipvl_port** %5, align 8
  %24 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %25 = call i8* @ipvlan_get_L3_hdr(%struct.ipvl_port* %23, %struct.sk_buff* %24, i32* %9)
  store i8* %25, i8** %8, align 8
  %26 = load i8*, i8** %8, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %22
  store i32 1, i32* %3, align 4
  br label %39

29:                                               ; preds = %22
  %30 = load %struct.ipvl_port*, %struct.ipvl_port** %5, align 8
  %31 = load i8*, i8** %8, align 8
  %32 = load i32, i32* %9, align 4
  %33 = call %struct.ipvl_addr* @ipvlan_addr_lookup(%struct.ipvl_port* %30, i8* %31, i32 %32, i32 0)
  store %struct.ipvl_addr* %33, %struct.ipvl_addr** %7, align 8
  %34 = load %struct.ipvl_addr*, %struct.ipvl_addr** %7, align 8
  %35 = icmp ne %struct.ipvl_addr* %34, null
  br i1 %35, label %36, label %37

36:                                               ; preds = %29
  store i32 0, i32* %3, align 4
  br label %39

37:                                               ; preds = %29
  br label %38

38:                                               ; preds = %37, %2
  store i32 1, i32* %3, align 4
  br label %39

39:                                               ; preds = %38, %36, %28
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local %struct.ethhdr* @eth_hdr(%struct.sk_buff*) #1

declare dso_local i64 @ether_addr_equal(i32, i32) #1

declare dso_local i8* @ipvlan_get_L3_hdr(%struct.ipvl_port*, %struct.sk_buff*, i32*) #1

declare dso_local %struct.ipvl_addr* @ipvlan_addr_lookup(%struct.ipvl_port*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
