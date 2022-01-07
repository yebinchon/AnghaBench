; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_vrf.c_do_vrf_add_slave.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_vrf.c_do_vrf_add_slave.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.TYPE_2__ = type { %struct.net_device* }

@.str = private unnamed_addr constant [41 x i8] c"Can not enslave loopback device to a VRF\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@IFF_L3MDEV_SLAVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.net_device*, %struct.netlink_ext_ack*)* @do_vrf_add_slave to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_vrf_add_slave(%struct.net_device* %0, %struct.net_device* %1, %struct.netlink_ext_ack* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.netlink_ext_ack*, align 8
  %8 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store %struct.net_device* %1, %struct.net_device** %6, align 8
  store %struct.netlink_ext_ack* %2, %struct.netlink_ext_ack** %7, align 8
  %9 = load %struct.net_device*, %struct.net_device** %6, align 8
  %10 = load %struct.net_device*, %struct.net_device** %5, align 8
  %11 = call %struct.TYPE_2__* @dev_net(%struct.net_device* %10)
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load %struct.net_device*, %struct.net_device** %12, align 8
  %14 = icmp eq %struct.net_device* %9, %13
  br i1 %14, label %15, label %20

15:                                               ; preds = %3
  %16 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %17 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %16, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %18 = load i32, i32* @EOPNOTSUPP, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %4, align 4
  br label %45

20:                                               ; preds = %3
  %21 = load i32, i32* @IFF_L3MDEV_SLAVE, align 4
  %22 = load %struct.net_device*, %struct.net_device** %6, align 8
  %23 = getelementptr inbounds %struct.net_device, %struct.net_device* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = or i32 %24, %21
  store i32 %25, i32* %23, align 4
  %26 = load %struct.net_device*, %struct.net_device** %6, align 8
  %27 = load %struct.net_device*, %struct.net_device** %5, align 8
  %28 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %29 = call i32 @netdev_master_upper_dev_link(%struct.net_device* %26, %struct.net_device* %27, i32* null, i32* null, %struct.netlink_ext_ack* %28)
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* %8, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %20
  br label %37

33:                                               ; preds = %20
  %34 = load %struct.net_device*, %struct.net_device** %6, align 8
  %35 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %36 = call i32 @cycle_netdev(%struct.net_device* %34, %struct.netlink_ext_ack* %35)
  store i32 0, i32* %4, align 4
  br label %45

37:                                               ; preds = %32
  %38 = load i32, i32* @IFF_L3MDEV_SLAVE, align 4
  %39 = xor i32 %38, -1
  %40 = load %struct.net_device*, %struct.net_device** %6, align 8
  %41 = getelementptr inbounds %struct.net_device, %struct.net_device* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = and i32 %42, %39
  store i32 %43, i32* %41, align 4
  %44 = load i32, i32* %8, align 4
  store i32 %44, i32* %4, align 4
  br label %45

45:                                               ; preds = %37, %33, %15
  %46 = load i32, i32* %4, align 4
  ret i32 %46
}

declare dso_local %struct.TYPE_2__* @dev_net(%struct.net_device*) #1

declare dso_local i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack*, i8*) #1

declare dso_local i32 @netdev_master_upper_dev_link(%struct.net_device*, %struct.net_device*, i32*, i32*, %struct.netlink_ext_ack*) #1

declare dso_local i32 @cycle_netdev(%struct.net_device*, %struct.netlink_ext_ack*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
