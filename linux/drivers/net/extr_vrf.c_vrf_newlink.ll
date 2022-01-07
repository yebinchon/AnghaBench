; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_vrf.c_vrf_newlink.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_vrf.c_vrf_newlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.net_device = type { i32 }
%struct.nlattr = type { i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.net_vrf = type { i64 }

@IFLA_VRF_TABLE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [24 x i8] c"VRF table id is missing\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@RT_TABLE_UNSPEC = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [21 x i8] c"Invalid VRF table id\00", align 1
@IFF_L3MDEV_MASTER = common dso_local global i32 0, align 4
@vrf_net_id = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net*, %struct.net_device*, %struct.nlattr**, %struct.nlattr**, %struct.netlink_ext_ack*)* @vrf_newlink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vrf_newlink(%struct.net* %0, %struct.net_device* %1, %struct.nlattr** %2, %struct.nlattr** %3, %struct.netlink_ext_ack* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.net*, align 8
  %8 = alloca %struct.net_device*, align 8
  %9 = alloca %struct.nlattr**, align 8
  %10 = alloca %struct.nlattr**, align 8
  %11 = alloca %struct.netlink_ext_ack*, align 8
  %12 = alloca %struct.net_vrf*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.net*, align 8
  %15 = alloca i32, align 4
  store %struct.net* %0, %struct.net** %7, align 8
  store %struct.net_device* %1, %struct.net_device** %8, align 8
  store %struct.nlattr** %2, %struct.nlattr*** %9, align 8
  store %struct.nlattr** %3, %struct.nlattr*** %10, align 8
  store %struct.netlink_ext_ack* %4, %struct.netlink_ext_ack** %11, align 8
  %16 = load %struct.net_device*, %struct.net_device** %8, align 8
  %17 = call %struct.net_vrf* @netdev_priv(%struct.net_device* %16)
  store %struct.net_vrf* %17, %struct.net_vrf** %12, align 8
  %18 = load %struct.nlattr**, %struct.nlattr*** %10, align 8
  %19 = icmp ne %struct.nlattr** %18, null
  br i1 %19, label %20, label %26

20:                                               ; preds = %5
  %21 = load %struct.nlattr**, %struct.nlattr*** %10, align 8
  %22 = load i64, i64* @IFLA_VRF_TABLE, align 8
  %23 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %21, i64 %22
  %24 = load %struct.nlattr*, %struct.nlattr** %23, align 8
  %25 = icmp ne %struct.nlattr* %24, null
  br i1 %25, label %31, label %26

26:                                               ; preds = %20, %5
  %27 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %11, align 8
  %28 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %27, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %6, align 4
  br label %86

31:                                               ; preds = %20
  %32 = load %struct.nlattr**, %struct.nlattr*** %10, align 8
  %33 = load i64, i64* @IFLA_VRF_TABLE, align 8
  %34 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %32, i64 %33
  %35 = load %struct.nlattr*, %struct.nlattr** %34, align 8
  %36 = call i64 @nla_get_u32(%struct.nlattr* %35)
  %37 = load %struct.net_vrf*, %struct.net_vrf** %12, align 8
  %38 = getelementptr inbounds %struct.net_vrf, %struct.net_vrf* %37, i32 0, i32 0
  store i64 %36, i64* %38, align 8
  %39 = load %struct.net_vrf*, %struct.net_vrf** %12, align 8
  %40 = getelementptr inbounds %struct.net_vrf, %struct.net_vrf* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @RT_TABLE_UNSPEC, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %53

44:                                               ; preds = %31
  %45 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %11, align 8
  %46 = load %struct.nlattr**, %struct.nlattr*** %10, align 8
  %47 = load i64, i64* @IFLA_VRF_TABLE, align 8
  %48 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %46, i64 %47
  %49 = load %struct.nlattr*, %struct.nlattr** %48, align 8
  %50 = call i32 @NL_SET_ERR_MSG_ATTR(%struct.netlink_ext_ack* %45, %struct.nlattr* %49, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %51 = load i32, i32* @EINVAL, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %6, align 4
  br label %86

53:                                               ; preds = %31
  %54 = load i32, i32* @IFF_L3MDEV_MASTER, align 4
  %55 = load %struct.net_device*, %struct.net_device** %8, align 8
  %56 = getelementptr inbounds %struct.net_device, %struct.net_device* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = or i32 %57, %54
  store i32 %58, i32* %56, align 4
  %59 = load %struct.net_device*, %struct.net_device** %8, align 8
  %60 = call i32 @register_netdevice(%struct.net_device* %59)
  store i32 %60, i32* %15, align 4
  %61 = load i32, i32* %15, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %53
  br label %84

64:                                               ; preds = %53
  %65 = load %struct.net_device*, %struct.net_device** %8, align 8
  %66 = call %struct.net* @dev_net(%struct.net_device* %65)
  store %struct.net* %66, %struct.net** %14, align 8
  %67 = load %struct.net*, %struct.net** %14, align 8
  %68 = load i32, i32* @vrf_net_id, align 4
  %69 = call i32* @net_generic(%struct.net* %67, i32 %68)
  store i32* %69, i32** %13, align 8
  %70 = load i32*, i32** %13, align 8
  %71 = load i32, i32* %70, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %83

73:                                               ; preds = %64
  %74 = load %struct.net_device*, %struct.net_device** %8, align 8
  %75 = call i32 @vrf_add_fib_rules(%struct.net_device* %74)
  store i32 %75, i32* %15, align 4
  %76 = load i32, i32* %15, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %73
  %79 = load %struct.net_device*, %struct.net_device** %8, align 8
  %80 = call i32 @unregister_netdevice(%struct.net_device* %79)
  br label %84

81:                                               ; preds = %73
  %82 = load i32*, i32** %13, align 8
  store i32 0, i32* %82, align 4
  br label %83

83:                                               ; preds = %81, %64
  br label %84

84:                                               ; preds = %83, %78, %63
  %85 = load i32, i32* %15, align 4
  store i32 %85, i32* %6, align 4
  br label %86

86:                                               ; preds = %84, %44, %26
  %87 = load i32, i32* %6, align 4
  ret i32 %87
}

declare dso_local %struct.net_vrf* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack*, i8*) #1

declare dso_local i64 @nla_get_u32(%struct.nlattr*) #1

declare dso_local i32 @NL_SET_ERR_MSG_ATTR(%struct.netlink_ext_ack*, %struct.nlattr*, i8*) #1

declare dso_local i32 @register_netdevice(%struct.net_device*) #1

declare dso_local %struct.net* @dev_net(%struct.net_device*) #1

declare dso_local i32* @net_generic(%struct.net*, i32) #1

declare dso_local i32 @vrf_add_fib_rules(%struct.net_device*) #1

declare dso_local i32 @unregister_netdevice(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
