; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wil6210/extr_netdev.c_wil_vif_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wil6210/extr_netdev.c_wil_vif_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wil6210_vif = type { %struct.wireless_dev, i64, %struct.wil6210_priv*, %struct.net_device* }
%struct.wireless_dev = type { i32, %struct.net_device*, i32 }
%struct.net_device = type { i32, i32, i32, %struct.wireless_dev*, i32*, i32 }
%struct.wil6210_priv = type { i32, %struct.net_device* }

@U8_MAX = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [32 x i8] c"no available virtual interface\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@wil_dev_setup = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"alloc_netdev failed\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@wil_ndev_destructor = common dso_local global i32 0, align 4
@wil_netdev_ops = common dso_local global i32 0, align 4
@NETIF_F_HW_CSUM = common dso_local global i32 0, align 4
@NETIF_F_RXCSUM = common dso_local global i32 0, align 4
@NETIF_F_SG = common dso_local global i32 0, align 4
@NETIF_F_GRO = common dso_local global i32 0, align 4
@NETIF_F_TSO = common dso_local global i32 0, align 4
@NETIF_F_TSO6 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.wil6210_vif* @wil_vif_alloc(%struct.wil6210_priv* %0, i8* %1, i8 zeroext %2, i32 %3) #0 {
  %5 = alloca %struct.wil6210_vif*, align 8
  %6 = alloca %struct.wil6210_priv*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8, align 1
  %9 = alloca i32, align 4
  %10 = alloca %struct.net_device*, align 8
  %11 = alloca %struct.wireless_dev*, align 8
  %12 = alloca %struct.wil6210_vif*, align 8
  %13 = alloca i64, align 8
  store %struct.wil6210_priv* %0, %struct.wil6210_priv** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8 %2, i8* %8, align 1
  store i32 %3, i32* %9, align 4
  %14 = load %struct.wil6210_priv*, %struct.wil6210_priv** %6, align 8
  %15 = call i64 @wil_vif_find_free_mid(%struct.wil6210_priv* %14)
  store i64 %15, i64* %13, align 8
  %16 = load i64, i64* %13, align 8
  %17 = load i64, i64* @U8_MAX, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %25

19:                                               ; preds = %4
  %20 = load %struct.wil6210_priv*, %struct.wil6210_priv** %6, align 8
  %21 = call i32 @wil_err(%struct.wil6210_priv* %20, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  %24 = call %struct.wil6210_vif* @ERR_PTR(i32 %23)
  store %struct.wil6210_vif* %24, %struct.wil6210_vif** %5, align 8
  br label %113

25:                                               ; preds = %4
  %26 = load i8*, i8** %7, align 8
  %27 = load i8, i8* %8, align 1
  %28 = load i32, i32* @wil_dev_setup, align 4
  %29 = call %struct.net_device* @alloc_netdev(i32 48, i8* %26, i8 zeroext %27, i32 %28)
  store %struct.net_device* %29, %struct.net_device** %10, align 8
  %30 = load %struct.net_device*, %struct.net_device** %10, align 8
  %31 = icmp ne %struct.net_device* %30, null
  br i1 %31, label %39, label %32

32:                                               ; preds = %25
  %33 = load %struct.wil6210_priv*, %struct.wil6210_priv** %6, align 8
  %34 = call i32 @wil_to_dev(%struct.wil6210_priv* %33)
  %35 = call i32 @dev_err(i32 %34, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %36 = load i32, i32* @ENOMEM, align 4
  %37 = sub nsw i32 0, %36
  %38 = call %struct.wil6210_vif* @ERR_PTR(i32 %37)
  store %struct.wil6210_vif* %38, %struct.wil6210_vif** %5, align 8
  br label %113

39:                                               ; preds = %25
  %40 = load i64, i64* %13, align 8
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %39
  %43 = load %struct.net_device*, %struct.net_device** %10, align 8
  %44 = load %struct.wil6210_priv*, %struct.wil6210_priv** %6, align 8
  %45 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %44, i32 0, i32 1
  store %struct.net_device* %43, %struct.net_device** %45, align 8
  br label %52

46:                                               ; preds = %39
  %47 = load i32, i32* @wil_ndev_destructor, align 4
  %48 = load %struct.net_device*, %struct.net_device** %10, align 8
  %49 = getelementptr inbounds %struct.net_device, %struct.net_device* %48, i32 0, i32 5
  store i32 %47, i32* %49, align 8
  %50 = load %struct.net_device*, %struct.net_device** %10, align 8
  %51 = getelementptr inbounds %struct.net_device, %struct.net_device* %50, i32 0, i32 0
  store i32 1, i32* %51, align 8
  br label %52

52:                                               ; preds = %46, %42
  %53 = load %struct.net_device*, %struct.net_device** %10, align 8
  %54 = call %struct.wil6210_vif* @ndev_to_vif(%struct.net_device* %53)
  store %struct.wil6210_vif* %54, %struct.wil6210_vif** %12, align 8
  %55 = load %struct.net_device*, %struct.net_device** %10, align 8
  %56 = load %struct.wil6210_vif*, %struct.wil6210_vif** %12, align 8
  %57 = getelementptr inbounds %struct.wil6210_vif, %struct.wil6210_vif* %56, i32 0, i32 3
  store %struct.net_device* %55, %struct.net_device** %57, align 8
  %58 = load %struct.wil6210_priv*, %struct.wil6210_priv** %6, align 8
  %59 = load %struct.wil6210_vif*, %struct.wil6210_vif** %12, align 8
  %60 = getelementptr inbounds %struct.wil6210_vif, %struct.wil6210_vif* %59, i32 0, i32 2
  store %struct.wil6210_priv* %58, %struct.wil6210_priv** %60, align 8
  %61 = load i64, i64* %13, align 8
  %62 = load %struct.wil6210_vif*, %struct.wil6210_vif** %12, align 8
  %63 = getelementptr inbounds %struct.wil6210_vif, %struct.wil6210_vif* %62, i32 0, i32 1
  store i64 %61, i64* %63, align 8
  %64 = load %struct.wil6210_vif*, %struct.wil6210_vif** %12, align 8
  %65 = call i32 @wil_vif_init(%struct.wil6210_vif* %64)
  %66 = load %struct.wil6210_vif*, %struct.wil6210_vif** %12, align 8
  %67 = getelementptr inbounds %struct.wil6210_vif, %struct.wil6210_vif* %66, i32 0, i32 0
  store %struct.wireless_dev* %67, %struct.wireless_dev** %11, align 8
  %68 = load %struct.wil6210_priv*, %struct.wil6210_priv** %6, align 8
  %69 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.wireless_dev*, %struct.wireless_dev** %11, align 8
  %72 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %71, i32 0, i32 2
  store i32 %70, i32* %72, align 8
  %73 = load i32, i32* %9, align 4
  %74 = load %struct.wireless_dev*, %struct.wireless_dev** %11, align 8
  %75 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %74, i32 0, i32 0
  store i32 %73, i32* %75, align 8
  %76 = load %struct.net_device*, %struct.net_device** %10, align 8
  %77 = getelementptr inbounds %struct.net_device, %struct.net_device* %76, i32 0, i32 4
  store i32* @wil_netdev_ops, i32** %77, align 8
  %78 = load %struct.net_device*, %struct.net_device** %10, align 8
  %79 = call i32 @wil_set_ethtoolops(%struct.net_device* %78)
  %80 = load %struct.wireless_dev*, %struct.wireless_dev** %11, align 8
  %81 = load %struct.net_device*, %struct.net_device** %10, align 8
  %82 = getelementptr inbounds %struct.net_device, %struct.net_device* %81, i32 0, i32 3
  store %struct.wireless_dev* %80, %struct.wireless_dev** %82, align 8
  %83 = load i32, i32* @NETIF_F_HW_CSUM, align 4
  %84 = load i32, i32* @NETIF_F_RXCSUM, align 4
  %85 = or i32 %83, %84
  %86 = load i32, i32* @NETIF_F_SG, align 4
  %87 = or i32 %85, %86
  %88 = load i32, i32* @NETIF_F_GRO, align 4
  %89 = or i32 %87, %88
  %90 = load i32, i32* @NETIF_F_TSO, align 4
  %91 = or i32 %89, %90
  %92 = load i32, i32* @NETIF_F_TSO6, align 4
  %93 = or i32 %91, %92
  %94 = load %struct.net_device*, %struct.net_device** %10, align 8
  %95 = getelementptr inbounds %struct.net_device, %struct.net_device* %94, i32 0, i32 1
  store i32 %93, i32* %95, align 4
  %96 = load %struct.net_device*, %struct.net_device** %10, align 8
  %97 = getelementptr inbounds %struct.net_device, %struct.net_device* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.net_device*, %struct.net_device** %10, align 8
  %100 = getelementptr inbounds %struct.net_device, %struct.net_device* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 8
  %102 = or i32 %101, %98
  store i32 %102, i32* %100, align 8
  %103 = load %struct.net_device*, %struct.net_device** %10, align 8
  %104 = load %struct.wireless_dev*, %struct.wireless_dev** %11, align 8
  %105 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 8
  %107 = call i32 @wiphy_dev(i32 %106)
  %108 = call i32 @SET_NETDEV_DEV(%struct.net_device* %103, i32 %107)
  %109 = load %struct.net_device*, %struct.net_device** %10, align 8
  %110 = load %struct.wireless_dev*, %struct.wireless_dev** %11, align 8
  %111 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %110, i32 0, i32 1
  store %struct.net_device* %109, %struct.net_device** %111, align 8
  %112 = load %struct.wil6210_vif*, %struct.wil6210_vif** %12, align 8
  store %struct.wil6210_vif* %112, %struct.wil6210_vif** %5, align 8
  br label %113

113:                                              ; preds = %52, %32, %19
  %114 = load %struct.wil6210_vif*, %struct.wil6210_vif** %5, align 8
  ret %struct.wil6210_vif* %114
}

declare dso_local i64 @wil_vif_find_free_mid(%struct.wil6210_priv*) #1

declare dso_local i32 @wil_err(%struct.wil6210_priv*, i8*) #1

declare dso_local %struct.wil6210_vif* @ERR_PTR(i32) #1

declare dso_local %struct.net_device* @alloc_netdev(i32, i8*, i8 zeroext, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @wil_to_dev(%struct.wil6210_priv*) #1

declare dso_local %struct.wil6210_vif* @ndev_to_vif(%struct.net_device*) #1

declare dso_local i32 @wil_vif_init(%struct.wil6210_vif*) #1

declare dso_local i32 @wil_set_ethtoolops(%struct.net_device*) #1

declare dso_local i32 @SET_NETDEV_DEV(%struct.net_device*, i32) #1

declare dso_local i32 @wiphy_dev(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
