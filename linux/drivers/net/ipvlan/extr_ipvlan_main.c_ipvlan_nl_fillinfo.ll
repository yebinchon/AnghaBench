; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ipvlan/extr_ipvlan_main.c_ipvlan_nl_fillinfo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ipvlan/extr_ipvlan_main.c_ipvlan_nl_fillinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.net_device = type { i32 }
%struct.ipvl_dev = type { i32 }
%struct.ipvl_port = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@IFLA_IPVLAN_MODE = common dso_local global i32 0, align 4
@IFLA_IPVLAN_FLAGS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*)* @ipvlan_nl_fillinfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipvlan_nl_fillinfo(%struct.sk_buff* %0, %struct.net_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.ipvl_dev*, align 8
  %7 = alloca %struct.ipvl_port*, align 8
  %8 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  %9 = load %struct.net_device*, %struct.net_device** %5, align 8
  %10 = call %struct.ipvl_dev* @netdev_priv(%struct.net_device* %9)
  store %struct.ipvl_dev* %10, %struct.ipvl_dev** %6, align 8
  %11 = load %struct.ipvl_dev*, %struct.ipvl_dev** %6, align 8
  %12 = getelementptr inbounds %struct.ipvl_dev, %struct.ipvl_dev* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.ipvl_port* @ipvlan_port_get_rtnl(i32 %13)
  store %struct.ipvl_port* %14, %struct.ipvl_port** %7, align 8
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %8, align 4
  %17 = load %struct.ipvl_port*, %struct.ipvl_port** %7, align 8
  %18 = icmp ne %struct.ipvl_port* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %2
  br label %41

20:                                               ; preds = %2
  %21 = load i32, i32* @EMSGSIZE, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %8, align 4
  %23 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %24 = load i32, i32* @IFLA_IPVLAN_MODE, align 4
  %25 = load %struct.ipvl_port*, %struct.ipvl_port** %7, align 8
  %26 = getelementptr inbounds %struct.ipvl_port, %struct.ipvl_port* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i64 @nla_put_u16(%struct.sk_buff* %23, i32 %24, i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %20
  br label %41

31:                                               ; preds = %20
  %32 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %33 = load i32, i32* @IFLA_IPVLAN_FLAGS, align 4
  %34 = load %struct.ipvl_port*, %struct.ipvl_port** %7, align 8
  %35 = getelementptr inbounds %struct.ipvl_port, %struct.ipvl_port* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i64 @nla_put_u16(%struct.sk_buff* %32, i32 %33, i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %31
  br label %41

40:                                               ; preds = %31
  store i32 0, i32* %3, align 4
  br label %43

41:                                               ; preds = %39, %30, %19
  %42 = load i32, i32* %8, align 4
  store i32 %42, i32* %3, align 4
  br label %43

43:                                               ; preds = %41, %40
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

declare dso_local %struct.ipvl_dev* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.ipvl_port* @ipvlan_port_get_rtnl(i32) #1

declare dso_local i64 @nla_put_u16(%struct.sk_buff*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
