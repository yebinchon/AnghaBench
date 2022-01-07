; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ipvlan/extr_ipvlan_main.c_ipvlan_nl_changelink.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ipvlan/extr_ipvlan_main.c_ipvlan_nl_changelink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.nlattr = type { i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.ipvl_dev = type { i32 }
%struct.ipvl_port = type { i32 }
%struct.TYPE_2__ = type { i32 }

@CAP_NET_ADMIN = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@IFLA_IPVLAN_MODE = common dso_local global i64 0, align 8
@IFLA_IPVLAN_FLAGS = common dso_local global i64 0, align 8
@IPVLAN_F_PRIVATE = common dso_local global i32 0, align 4
@IPVLAN_F_VEPA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.nlattr**, %struct.nlattr**, %struct.netlink_ext_ack*)* @ipvlan_nl_changelink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipvlan_nl_changelink(%struct.net_device* %0, %struct.nlattr** %1, %struct.nlattr** %2, %struct.netlink_ext_ack* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.nlattr**, align 8
  %8 = alloca %struct.nlattr**, align 8
  %9 = alloca %struct.netlink_ext_ack*, align 8
  %10 = alloca %struct.ipvl_dev*, align 8
  %11 = alloca %struct.ipvl_port*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %6, align 8
  store %struct.nlattr** %1, %struct.nlattr*** %7, align 8
  store %struct.nlattr** %2, %struct.nlattr*** %8, align 8
  store %struct.netlink_ext_ack* %3, %struct.netlink_ext_ack** %9, align 8
  %15 = load %struct.net_device*, %struct.net_device** %6, align 8
  %16 = call %struct.ipvl_dev* @netdev_priv(%struct.net_device* %15)
  store %struct.ipvl_dev* %16, %struct.ipvl_dev** %10, align 8
  %17 = load %struct.ipvl_dev*, %struct.ipvl_dev** %10, align 8
  %18 = getelementptr inbounds %struct.ipvl_dev, %struct.ipvl_dev* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call %struct.ipvl_port* @ipvlan_port_get_rtnl(i32 %19)
  store %struct.ipvl_port* %20, %struct.ipvl_port** %11, align 8
  store i32 0, i32* %12, align 4
  %21 = load %struct.nlattr**, %struct.nlattr*** %8, align 8
  %22 = icmp ne %struct.nlattr** %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %92

24:                                               ; preds = %4
  %25 = load %struct.ipvl_dev*, %struct.ipvl_dev** %10, align 8
  %26 = getelementptr inbounds %struct.ipvl_dev, %struct.ipvl_dev* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call %struct.TYPE_2__* @dev_net(i32 %27)
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @CAP_NET_ADMIN, align 4
  %32 = call i32 @ns_capable(i32 %30, i32 %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %24
  %35 = load i32, i32* @EPERM, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %5, align 4
  br label %92

37:                                               ; preds = %24
  %38 = load %struct.nlattr**, %struct.nlattr*** %8, align 8
  %39 = load i64, i64* @IFLA_IPVLAN_MODE, align 8
  %40 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %38, i64 %39
  %41 = load %struct.nlattr*, %struct.nlattr** %40, align 8
  %42 = icmp ne %struct.nlattr* %41, null
  br i1 %42, label %43, label %53

43:                                               ; preds = %37
  %44 = load %struct.nlattr**, %struct.nlattr*** %8, align 8
  %45 = load i64, i64* @IFLA_IPVLAN_MODE, align 8
  %46 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %44, i64 %45
  %47 = load %struct.nlattr*, %struct.nlattr** %46, align 8
  %48 = call i32 @nla_get_u16(%struct.nlattr* %47)
  store i32 %48, i32* %13, align 4
  %49 = load %struct.ipvl_port*, %struct.ipvl_port** %11, align 8
  %50 = load i32, i32* %13, align 4
  %51 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %9, align 8
  %52 = call i32 @ipvlan_set_port_mode(%struct.ipvl_port* %49, i32 %50, %struct.netlink_ext_ack* %51)
  store i32 %52, i32* %12, align 4
  br label %53

53:                                               ; preds = %43, %37
  %54 = load i32, i32* %12, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %90, label %56

56:                                               ; preds = %53
  %57 = load %struct.nlattr**, %struct.nlattr*** %8, align 8
  %58 = load i64, i64* @IFLA_IPVLAN_FLAGS, align 8
  %59 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %57, i64 %58
  %60 = load %struct.nlattr*, %struct.nlattr** %59, align 8
  %61 = icmp ne %struct.nlattr* %60, null
  br i1 %61, label %62, label %90

62:                                               ; preds = %56
  %63 = load %struct.nlattr**, %struct.nlattr*** %8, align 8
  %64 = load i64, i64* @IFLA_IPVLAN_FLAGS, align 8
  %65 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %63, i64 %64
  %66 = load %struct.nlattr*, %struct.nlattr** %65, align 8
  %67 = call i32 @nla_get_u16(%struct.nlattr* %66)
  store i32 %67, i32* %14, align 4
  %68 = load i32, i32* %14, align 4
  %69 = load i32, i32* @IPVLAN_F_PRIVATE, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %62
  %73 = load %struct.ipvl_port*, %struct.ipvl_port** %11, align 8
  %74 = call i32 @ipvlan_mark_private(%struct.ipvl_port* %73)
  br label %78

75:                                               ; preds = %62
  %76 = load %struct.ipvl_port*, %struct.ipvl_port** %11, align 8
  %77 = call i32 @ipvlan_clear_private(%struct.ipvl_port* %76)
  br label %78

78:                                               ; preds = %75, %72
  %79 = load i32, i32* %14, align 4
  %80 = load i32, i32* @IPVLAN_F_VEPA, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %78
  %84 = load %struct.ipvl_port*, %struct.ipvl_port** %11, align 8
  %85 = call i32 @ipvlan_mark_vepa(%struct.ipvl_port* %84)
  br label %89

86:                                               ; preds = %78
  %87 = load %struct.ipvl_port*, %struct.ipvl_port** %11, align 8
  %88 = call i32 @ipvlan_clear_vepa(%struct.ipvl_port* %87)
  br label %89

89:                                               ; preds = %86, %83
  br label %90

90:                                               ; preds = %89, %56, %53
  %91 = load i32, i32* %12, align 4
  store i32 %91, i32* %5, align 4
  br label %92

92:                                               ; preds = %90, %34, %23
  %93 = load i32, i32* %5, align 4
  ret i32 %93
}

declare dso_local %struct.ipvl_dev* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.ipvl_port* @ipvlan_port_get_rtnl(i32) #1

declare dso_local i32 @ns_capable(i32, i32) #1

declare dso_local %struct.TYPE_2__* @dev_net(i32) #1

declare dso_local i32 @nla_get_u16(%struct.nlattr*) #1

declare dso_local i32 @ipvlan_set_port_mode(%struct.ipvl_port*, i32, %struct.netlink_ext_ack*) #1

declare dso_local i32 @ipvlan_mark_private(%struct.ipvl_port*) #1

declare dso_local i32 @ipvlan_clear_private(%struct.ipvl_port*) #1

declare dso_local i32 @ipvlan_mark_vepa(%struct.ipvl_port*) #1

declare dso_local i32 @ipvlan_clear_vepa(%struct.ipvl_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
