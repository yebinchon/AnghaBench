; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_r8152.c_rtl8152_set_coalesce.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_r8152.c_rtl8152_set_coalesce.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_coalesce = type { i64 }
%struct.r8152 = type { i32, i64, i32, i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 (%struct.r8152.0*)*, i32 (%struct.r8152.1*)* }
%struct.r8152.0 = type opaque
%struct.r8152.1 = type opaque

@EOPNOTSUPP = common dso_local global i32 0, align 4
@COALESCE_SLOW = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@RTL8152_SET_RX_MODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_coalesce*)* @rtl8152_set_coalesce to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtl8152_set_coalesce(%struct.net_device* %0, %struct.ethtool_coalesce* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_coalesce*, align 8
  %6 = alloca %struct.r8152*, align 8
  %7 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_coalesce* %1, %struct.ethtool_coalesce** %5, align 8
  %8 = load %struct.net_device*, %struct.net_device** %4, align 8
  %9 = call %struct.r8152* @netdev_priv(%struct.net_device* %8)
  store %struct.r8152* %9, %struct.r8152** %6, align 8
  %10 = load %struct.r8152*, %struct.r8152** %6, align 8
  %11 = getelementptr inbounds %struct.r8152, %struct.r8152* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  switch i32 %12, label %16 [
    i32 130, label %13
    i32 129, label %13
    i32 128, label %13
  ]

13:                                               ; preds = %2, %2, %2
  %14 = load i32, i32* @EOPNOTSUPP, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %102

16:                                               ; preds = %2
  br label %17

17:                                               ; preds = %16
  %18 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %19 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @COALESCE_SLOW, align 8
  %22 = icmp sgt i64 %20, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %17
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %102

26:                                               ; preds = %17
  %27 = load %struct.r8152*, %struct.r8152** %6, align 8
  %28 = getelementptr inbounds %struct.r8152, %struct.r8152* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @usb_autopm_get_interface(i32 %29)
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* %7, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %26
  %34 = load i32, i32* %7, align 4
  store i32 %34, i32* %3, align 4
  br label %102

35:                                               ; preds = %26
  %36 = load %struct.r8152*, %struct.r8152** %6, align 8
  %37 = getelementptr inbounds %struct.r8152, %struct.r8152* %36, i32 0, i32 3
  %38 = call i32 @mutex_lock(i32* %37)
  %39 = load %struct.r8152*, %struct.r8152** %6, align 8
  %40 = getelementptr inbounds %struct.r8152, %struct.r8152* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %43 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %41, %44
  br i1 %45, label %46, label %93

46:                                               ; preds = %35
  %47 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %48 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.r8152*, %struct.r8152** %6, align 8
  %51 = getelementptr inbounds %struct.r8152, %struct.r8152* %50, i32 0, i32 1
  store i64 %49, i64* %51, align 8
  %52 = load %struct.net_device*, %struct.net_device** %4, align 8
  %53 = call i64 @netif_running(%struct.net_device* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %92

55:                                               ; preds = %46
  %56 = load %struct.net_device*, %struct.net_device** %4, align 8
  %57 = call i64 @netif_carrier_ok(%struct.net_device* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %92

59:                                               ; preds = %55
  %60 = load %struct.net_device*, %struct.net_device** %4, align 8
  %61 = call i32 @netif_stop_queue(%struct.net_device* %60)
  %62 = load %struct.r8152*, %struct.r8152** %6, align 8
  %63 = getelementptr inbounds %struct.r8152, %struct.r8152* %62, i32 0, i32 4
  %64 = call i32 @napi_disable(i32* %63)
  %65 = load %struct.r8152*, %struct.r8152** %6, align 8
  %66 = getelementptr inbounds %struct.r8152, %struct.r8152* %65, i32 0, i32 6
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 1
  %68 = load i32 (%struct.r8152.1*)*, i32 (%struct.r8152.1*)** %67, align 8
  %69 = load %struct.r8152*, %struct.r8152** %6, align 8
  %70 = bitcast %struct.r8152* %69 to %struct.r8152.1*
  %71 = call i32 %68(%struct.r8152.1* %70)
  %72 = load %struct.r8152*, %struct.r8152** %6, align 8
  %73 = getelementptr inbounds %struct.r8152, %struct.r8152* %72, i32 0, i32 6
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  %75 = load i32 (%struct.r8152.0*)*, i32 (%struct.r8152.0*)** %74, align 8
  %76 = load %struct.r8152*, %struct.r8152** %6, align 8
  %77 = bitcast %struct.r8152* %76 to %struct.r8152.0*
  %78 = call i32 %75(%struct.r8152.0* %77)
  %79 = load %struct.r8152*, %struct.r8152** %6, align 8
  %80 = call i32 @rtl_start_rx(%struct.r8152* %79)
  %81 = load i32, i32* @RTL8152_SET_RX_MODE, align 4
  %82 = load %struct.r8152*, %struct.r8152** %6, align 8
  %83 = getelementptr inbounds %struct.r8152, %struct.r8152* %82, i32 0, i32 5
  %84 = call i32 @clear_bit(i32 %81, i32* %83)
  %85 = load %struct.net_device*, %struct.net_device** %4, align 8
  %86 = call i32 @_rtl8152_set_rx_mode(%struct.net_device* %85)
  %87 = load %struct.r8152*, %struct.r8152** %6, align 8
  %88 = getelementptr inbounds %struct.r8152, %struct.r8152* %87, i32 0, i32 4
  %89 = call i32 @napi_enable(i32* %88)
  %90 = load %struct.net_device*, %struct.net_device** %4, align 8
  %91 = call i32 @netif_wake_queue(%struct.net_device* %90)
  br label %92

92:                                               ; preds = %59, %55, %46
  br label %93

93:                                               ; preds = %92, %35
  %94 = load %struct.r8152*, %struct.r8152** %6, align 8
  %95 = getelementptr inbounds %struct.r8152, %struct.r8152* %94, i32 0, i32 3
  %96 = call i32 @mutex_unlock(i32* %95)
  %97 = load %struct.r8152*, %struct.r8152** %6, align 8
  %98 = getelementptr inbounds %struct.r8152, %struct.r8152* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 8
  %100 = call i32 @usb_autopm_put_interface(i32 %99)
  %101 = load i32, i32* %7, align 4
  store i32 %101, i32* %3, align 4
  br label %102

102:                                              ; preds = %93, %33, %23, %13
  %103 = load i32, i32* %3, align 4
  ret i32 %103
}

declare dso_local %struct.r8152* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @usb_autopm_get_interface(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @netif_running(%struct.net_device*) #1

declare dso_local i64 @netif_carrier_ok(%struct.net_device*) #1

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

declare dso_local i32 @napi_disable(i32*) #1

declare dso_local i32 @rtl_start_rx(%struct.r8152*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @_rtl8152_set_rx_mode(%struct.net_device*) #1

declare dso_local i32 @napi_enable(i32*) #1

declare dso_local i32 @netif_wake_queue(%struct.net_device*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @usb_autopm_put_interface(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
