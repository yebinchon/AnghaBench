; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_main.c_qlcnic_fdb_dump.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_main.c_qlcnic_fdb_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.netlink_callback = type { i32 }
%struct.net_device = type { i32 }
%struct.qlcnic_adapter = type { i32, i32 }

@QLCNIC_ESWITCH_ENABLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.netlink_callback*, %struct.net_device*, %struct.net_device*, i32*)* @qlcnic_fdb_dump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qlcnic_fdb_dump(%struct.sk_buff* %0, %struct.netlink_callback* %1, %struct.net_device* %2, %struct.net_device* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.netlink_callback*, align 8
  %9 = alloca %struct.net_device*, align 8
  %10 = alloca %struct.net_device*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.qlcnic_adapter*, align 8
  %13 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %7, align 8
  store %struct.netlink_callback* %1, %struct.netlink_callback** %8, align 8
  store %struct.net_device* %2, %struct.net_device** %9, align 8
  store %struct.net_device* %3, %struct.net_device** %10, align 8
  store i32* %4, i32** %11, align 8
  %14 = load %struct.net_device*, %struct.net_device** %9, align 8
  %15 = call %struct.qlcnic_adapter* @netdev_priv(%struct.net_device* %14)
  store %struct.qlcnic_adapter* %15, %struct.qlcnic_adapter** %12, align 8
  store i32 0, i32* %13, align 4
  %16 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %12, align 8
  %17 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %27, label %20

20:                                               ; preds = %5
  %21 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %22 = load %struct.netlink_callback*, %struct.netlink_callback** %8, align 8
  %23 = load %struct.net_device*, %struct.net_device** %9, align 8
  %24 = load %struct.net_device*, %struct.net_device** %10, align 8
  %25 = load i32*, i32** %11, align 8
  %26 = call i32 @ndo_dflt_fdb_dump(%struct.sk_buff* %21, %struct.netlink_callback* %22, %struct.net_device* %23, %struct.net_device* %24, i32* %25)
  store i32 %26, i32* %6, align 4
  br label %47

27:                                               ; preds = %5
  %28 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %12, align 8
  %29 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @QLCNIC_ESWITCH_ENABLED, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %38, label %34

34:                                               ; preds = %27
  %35 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %12, align 8
  %36 = call i64 @qlcnic_sriov_check(%struct.qlcnic_adapter* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %45

38:                                               ; preds = %34, %27
  %39 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %40 = load %struct.netlink_callback*, %struct.netlink_callback** %8, align 8
  %41 = load %struct.net_device*, %struct.net_device** %9, align 8
  %42 = load %struct.net_device*, %struct.net_device** %10, align 8
  %43 = load i32*, i32** %11, align 8
  %44 = call i32 @ndo_dflt_fdb_dump(%struct.sk_buff* %39, %struct.netlink_callback* %40, %struct.net_device* %41, %struct.net_device* %42, i32* %43)
  store i32 %44, i32* %13, align 4
  br label %45

45:                                               ; preds = %38, %34
  %46 = load i32, i32* %13, align 4
  store i32 %46, i32* %6, align 4
  br label %47

47:                                               ; preds = %45, %20
  %48 = load i32, i32* %6, align 4
  ret i32 %48
}

declare dso_local %struct.qlcnic_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @ndo_dflt_fdb_dump(%struct.sk_buff*, %struct.netlink_callback*, %struct.net_device*, %struct.net_device*, i32*) #1

declare dso_local i64 @qlcnic_sriov_check(%struct.qlcnic_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
