; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_enet.c_hns_nic_try_get_ae.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_enet.c_hns_nic_try_get_ae.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.hns_nic_priv = type { %struct.hnae_handle*, i32*, i32, i32, i32, %struct.TYPE_2__* }
%struct.hnae_handle = type { i32 }
%struct.TYPE_2__ = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"has not handle, register notifier!\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"probe phy device fail!\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"probe register netdev fail!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @hns_nic_try_get_ae to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hns_nic_try_get_ae(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.hns_nic_priv*, align 8
  %5 = alloca %struct.hnae_handle*, align 8
  %6 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = call %struct.hns_nic_priv* @netdev_priv(%struct.net_device* %7)
  store %struct.hns_nic_priv* %8, %struct.hns_nic_priv** %4, align 8
  %9 = load %struct.hns_nic_priv*, %struct.hns_nic_priv** %4, align 8
  %10 = getelementptr inbounds %struct.hns_nic_priv, %struct.hns_nic_priv* %9, i32 0, i32 5
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load %struct.hns_nic_priv*, %struct.hns_nic_priv** %4, align 8
  %14 = getelementptr inbounds %struct.hns_nic_priv, %struct.hns_nic_priv* %13, i32 0, i32 4
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.hns_nic_priv*, %struct.hns_nic_priv** %4, align 8
  %17 = getelementptr inbounds %struct.hns_nic_priv, %struct.hns_nic_priv* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.hnae_handle* @hnae_get_handle(i32* %12, i32 %15, i32 %18, i32* null)
  store %struct.hnae_handle* %19, %struct.hnae_handle** %5, align 8
  %20 = load %struct.hnae_handle*, %struct.hnae_handle** %5, align 8
  %21 = call i64 @IS_ERR_OR_NULL(%struct.hnae_handle* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %1
  %24 = load i32, i32* @ENODEV, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %6, align 4
  %26 = load %struct.hns_nic_priv*, %struct.hns_nic_priv** %4, align 8
  %27 = getelementptr inbounds %struct.hns_nic_priv, %struct.hns_nic_priv* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @dev_dbg(i32 %28, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  br label %78

30:                                               ; preds = %1
  %31 = load %struct.hnae_handle*, %struct.hnae_handle** %5, align 8
  %32 = load %struct.hns_nic_priv*, %struct.hns_nic_priv** %4, align 8
  %33 = getelementptr inbounds %struct.hns_nic_priv, %struct.hns_nic_priv* %32, i32 0, i32 0
  store %struct.hnae_handle* %31, %struct.hnae_handle** %33, align 8
  %34 = load %struct.net_device*, %struct.net_device** %3, align 8
  %35 = load %struct.hnae_handle*, %struct.hnae_handle** %5, align 8
  %36 = call i32 @hns_nic_init_phy(%struct.net_device* %34, %struct.hnae_handle* %35)
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* %6, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %30
  %40 = load %struct.hns_nic_priv*, %struct.hns_nic_priv** %4, align 8
  %41 = getelementptr inbounds %struct.hns_nic_priv, %struct.hns_nic_priv* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @dev_err(i32 %42, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  br label %70

44:                                               ; preds = %30
  %45 = load %struct.hns_nic_priv*, %struct.hns_nic_priv** %4, align 8
  %46 = call i32 @hns_nic_init_ring_data(%struct.hns_nic_priv* %45)
  store i32 %46, i32* %6, align 4
  %47 = load i32, i32* %6, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %44
  %50 = load i32, i32* @ENOMEM, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %6, align 4
  br label %71

52:                                               ; preds = %44
  %53 = load %struct.net_device*, %struct.net_device** %3, align 8
  %54 = call i32 @hns_nic_set_priv_ops(%struct.net_device* %53)
  %55 = load %struct.net_device*, %struct.net_device** %3, align 8
  %56 = call i32 @register_netdev(%struct.net_device* %55)
  store i32 %56, i32* %6, align 4
  %57 = load i32, i32* %6, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %52
  %60 = load %struct.hns_nic_priv*, %struct.hns_nic_priv** %4, align 8
  %61 = getelementptr inbounds %struct.hns_nic_priv, %struct.hns_nic_priv* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @dev_err(i32 %62, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  br label %65

64:                                               ; preds = %52
  store i32 0, i32* %2, align 4
  br label %80

65:                                               ; preds = %59
  %66 = load %struct.hns_nic_priv*, %struct.hns_nic_priv** %4, align 8
  %67 = call i32 @hns_nic_uninit_ring_data(%struct.hns_nic_priv* %66)
  %68 = load %struct.hns_nic_priv*, %struct.hns_nic_priv** %4, align 8
  %69 = getelementptr inbounds %struct.hns_nic_priv, %struct.hns_nic_priv* %68, i32 0, i32 1
  store i32* null, i32** %69, align 8
  br label %70

70:                                               ; preds = %65, %39
  br label %71

71:                                               ; preds = %70, %49
  %72 = load %struct.hns_nic_priv*, %struct.hns_nic_priv** %4, align 8
  %73 = getelementptr inbounds %struct.hns_nic_priv, %struct.hns_nic_priv* %72, i32 0, i32 0
  %74 = load %struct.hnae_handle*, %struct.hnae_handle** %73, align 8
  %75 = call i32 @hnae_put_handle(%struct.hnae_handle* %74)
  %76 = load %struct.hns_nic_priv*, %struct.hns_nic_priv** %4, align 8
  %77 = getelementptr inbounds %struct.hns_nic_priv, %struct.hns_nic_priv* %76, i32 0, i32 0
  store %struct.hnae_handle* null, %struct.hnae_handle** %77, align 8
  br label %78

78:                                               ; preds = %71, %23
  %79 = load i32, i32* %6, align 4
  store i32 %79, i32* %2, align 4
  br label %80

80:                                               ; preds = %78, %64
  %81 = load i32, i32* %2, align 4
  ret i32 %81
}

declare dso_local %struct.hns_nic_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.hnae_handle* @hnae_get_handle(i32*, i32, i32, i32*) #1

declare dso_local i64 @IS_ERR_OR_NULL(%struct.hnae_handle*) #1

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i32 @hns_nic_init_phy(%struct.net_device*, %struct.hnae_handle*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @hns_nic_init_ring_data(%struct.hns_nic_priv*) #1

declare dso_local i32 @hns_nic_set_priv_ops(%struct.net_device*) #1

declare dso_local i32 @register_netdev(%struct.net_device*) #1

declare dso_local i32 @hns_nic_uninit_ring_data(%struct.hns_nic_priv*) #1

declare dso_local i32 @hnae_put_handle(%struct.hnae_handle*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
