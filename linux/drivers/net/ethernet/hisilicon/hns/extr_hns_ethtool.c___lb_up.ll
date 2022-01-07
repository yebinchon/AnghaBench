; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_ethtool.c___lb_up.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_ethtool.c___lb_up.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.hns_nic_priv = type { %struct.hnae_handle* }
%struct.hnae_handle = type { i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.hnae_handle*)*, i32 (%struct.hnae_handle*, i32, i32)* }

@PHY_INTERFACE_MODE_XGMII = common dso_local global i64 0, align 8
@NIC_LB_TEST_WAIT_PHY_LINK_TIME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32)* @__lb_up to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__lb_up(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.hns_nic_priv*, align 8
  %7 = alloca %struct.hnae_handle*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.net_device*, %struct.net_device** %4, align 8
  %12 = call %struct.hns_nic_priv* @netdev_priv(%struct.net_device* %11)
  store %struct.hns_nic_priv* %12, %struct.hns_nic_priv** %6, align 8
  %13 = load %struct.hns_nic_priv*, %struct.hns_nic_priv** %6, align 8
  %14 = getelementptr inbounds %struct.hns_nic_priv, %struct.hns_nic_priv* %13, i32 0, i32 0
  %15 = load %struct.hnae_handle*, %struct.hnae_handle** %14, align 8
  store %struct.hnae_handle* %15, %struct.hnae_handle** %7, align 8
  %16 = load %struct.net_device*, %struct.net_device** %4, align 8
  %17 = call i32 @hns_nic_net_reset(%struct.net_device* %16)
  %18 = load %struct.net_device*, %struct.net_device** %4, align 8
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @__lb_setup(%struct.net_device* %18, i32 %19)
  store i32 %20, i32* %10, align 4
  %21 = load i32, i32* %10, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %2
  %24 = load i32, i32* %10, align 4
  store i32 %24, i32* %3, align 4
  br label %75

25:                                               ; preds = %2
  %26 = call i32 @msleep(i32 200)
  %27 = load %struct.hnae_handle*, %struct.hnae_handle** %7, align 8
  %28 = getelementptr inbounds %struct.hnae_handle, %struct.hnae_handle* %27, i32 0, i32 1
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i32 (%struct.hnae_handle*)*, i32 (%struct.hnae_handle*)** %32, align 8
  %34 = icmp ne i32 (%struct.hnae_handle*)* %33, null
  br i1 %34, label %35, label %45

35:                                               ; preds = %25
  %36 = load %struct.hnae_handle*, %struct.hnae_handle** %7, align 8
  %37 = getelementptr inbounds %struct.hnae_handle, %struct.hnae_handle* %36, i32 0, i32 1
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i32 (%struct.hnae_handle*)*, i32 (%struct.hnae_handle*)** %41, align 8
  %43 = load %struct.hnae_handle*, %struct.hnae_handle** %7, align 8
  %44 = call i32 %42(%struct.hnae_handle* %43)
  br label %46

45:                                               ; preds = %25
  br label %46

46:                                               ; preds = %45, %35
  %47 = phi i32 [ %44, %35 ], [ 0, %45 ]
  store i32 %47, i32* %10, align 4
  %48 = load i32, i32* %10, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %46
  %51 = load i32, i32* %10, align 4
  store i32 %51, i32* %3, align 4
  br label %75

52:                                               ; preds = %46
  %53 = load %struct.hns_nic_priv*, %struct.hns_nic_priv** %6, align 8
  %54 = getelementptr inbounds %struct.hns_nic_priv, %struct.hns_nic_priv* %53, i32 0, i32 0
  %55 = load %struct.hnae_handle*, %struct.hnae_handle** %54, align 8
  %56 = getelementptr inbounds %struct.hnae_handle, %struct.hnae_handle* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @PHY_INTERFACE_MODE_XGMII, align 8
  %59 = icmp ne i64 %57, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %52
  store i32 1000, i32* %8, align 4
  br label %62

61:                                               ; preds = %52
  store i32 10000, i32* %8, align 4
  br label %62

62:                                               ; preds = %61, %60
  store i32 1, i32* %9, align 4
  %63 = load %struct.hnae_handle*, %struct.hnae_handle** %7, align 8
  %64 = getelementptr inbounds %struct.hnae_handle, %struct.hnae_handle* %63, i32 0, i32 1
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 1
  %69 = load i32 (%struct.hnae_handle*, i32, i32)*, i32 (%struct.hnae_handle*, i32, i32)** %68, align 8
  %70 = load %struct.hnae_handle*, %struct.hnae_handle** %7, align 8
  %71 = load i32, i32* %8, align 4
  %72 = load i32, i32* %9, align 4
  %73 = call i32 %69(%struct.hnae_handle* %70, i32 %71, i32 %72)
  %74 = call i32 @msleep(i32 300)
  store i32 0, i32* %3, align 4
  br label %75

75:                                               ; preds = %62, %50, %23
  %76 = load i32, i32* %3, align 4
  ret i32 %76
}

declare dso_local %struct.hns_nic_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @hns_nic_net_reset(%struct.net_device*) #1

declare dso_local i32 @__lb_setup(%struct.net_device*, i32) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
