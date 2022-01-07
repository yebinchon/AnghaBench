; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000e/extr_ethtool.c_e1000_set_phys_id.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000e/extr_ethtool.c_e1000_set_phys_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.e1000_adapter = type { %struct.e1000_hw }
%struct.e1000_hw = type { %struct.TYPE_8__, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 (%struct.e1000_hw.0*)*, i32 (%struct.e1000_hw.1*)*, i32 (%struct.e1000_hw.2*)*, i32 (%struct.e1000_hw.3*)* }
%struct.e1000_hw.0 = type opaque
%struct.e1000_hw.1 = type opaque
%struct.e1000_hw.2 = type opaque
%struct.e1000_hw.3 = type opaque
%struct.TYPE_5__ = type { i32 }

@e1000_phy_ife = common dso_local global i32 0, align 4
@IFE_PHY_SPECIAL_CONTROL_LED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32)* @e1000_set_phys_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @e1000_set_phys_id(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.e1000_adapter*, align 8
  %7 = alloca %struct.e1000_hw*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.net_device*, %struct.net_device** %4, align 8
  %9 = call %struct.e1000_adapter* @netdev_priv(%struct.net_device* %8)
  store %struct.e1000_adapter* %9, %struct.e1000_adapter** %6, align 8
  %10 = load %struct.e1000_adapter*, %struct.e1000_adapter** %6, align 8
  %11 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %10, i32 0, i32 0
  store %struct.e1000_hw* %11, %struct.e1000_hw** %7, align 8
  %12 = load i32, i32* %5, align 4
  switch i32 %12, label %86 [
    i32 131, label %13
    i32 130, label %35
    i32 128, label %68
    i32 129, label %77
  ]

13:                                               ; preds = %2
  %14 = load %struct.net_device*, %struct.net_device** %4, align 8
  %15 = getelementptr inbounds %struct.net_device, %struct.net_device* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @pm_runtime_get_sync(i32 %17)
  %19 = load %struct.e1000_hw*, %struct.e1000_hw** %7, align 8
  %20 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 3
  %23 = load i32 (%struct.e1000_hw.3*)*, i32 (%struct.e1000_hw.3*)** %22, align 8
  %24 = icmp ne i32 (%struct.e1000_hw.3*)* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %13
  store i32 2, i32* %3, align 4
  br label %87

26:                                               ; preds = %13
  %27 = load %struct.e1000_hw*, %struct.e1000_hw** %7, align 8
  %28 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 3
  %31 = load i32 (%struct.e1000_hw.3*)*, i32 (%struct.e1000_hw.3*)** %30, align 8
  %32 = load %struct.e1000_hw*, %struct.e1000_hw** %7, align 8
  %33 = bitcast %struct.e1000_hw* %32 to %struct.e1000_hw.3*
  %34 = call i32 %31(%struct.e1000_hw.3* %33)
  br label %86

35:                                               ; preds = %2
  %36 = load %struct.e1000_hw*, %struct.e1000_hw** %7, align 8
  %37 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @e1000_phy_ife, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %46

42:                                               ; preds = %35
  %43 = load %struct.e1000_hw*, %struct.e1000_hw** %7, align 8
  %44 = load i32, i32* @IFE_PHY_SPECIAL_CONTROL_LED, align 4
  %45 = call i32 @e1e_wphy(%struct.e1000_hw* %43, i32 %44, i32 0)
  br label %46

46:                                               ; preds = %42, %35
  %47 = load %struct.e1000_hw*, %struct.e1000_hw** %7, align 8
  %48 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 0
  %51 = load i32 (%struct.e1000_hw.0*)*, i32 (%struct.e1000_hw.0*)** %50, align 8
  %52 = load %struct.e1000_hw*, %struct.e1000_hw** %7, align 8
  %53 = bitcast %struct.e1000_hw* %52 to %struct.e1000_hw.0*
  %54 = call i32 %51(%struct.e1000_hw.0* %53)
  %55 = load %struct.e1000_hw*, %struct.e1000_hw** %7, align 8
  %56 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 2
  %59 = load i32 (%struct.e1000_hw.2*)*, i32 (%struct.e1000_hw.2*)** %58, align 8
  %60 = load %struct.e1000_hw*, %struct.e1000_hw** %7, align 8
  %61 = bitcast %struct.e1000_hw* %60 to %struct.e1000_hw.2*
  %62 = call i32 %59(%struct.e1000_hw.2* %61)
  %63 = load %struct.net_device*, %struct.net_device** %4, align 8
  %64 = getelementptr inbounds %struct.net_device, %struct.net_device* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @pm_runtime_put_sync(i32 %66)
  br label %86

68:                                               ; preds = %2
  %69 = load %struct.e1000_hw*, %struct.e1000_hw** %7, align 8
  %70 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 1
  %73 = load i32 (%struct.e1000_hw.1*)*, i32 (%struct.e1000_hw.1*)** %72, align 8
  %74 = load %struct.e1000_hw*, %struct.e1000_hw** %7, align 8
  %75 = bitcast %struct.e1000_hw* %74 to %struct.e1000_hw.1*
  %76 = call i32 %73(%struct.e1000_hw.1* %75)
  br label %86

77:                                               ; preds = %2
  %78 = load %struct.e1000_hw*, %struct.e1000_hw** %7, align 8
  %79 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 0
  %82 = load i32 (%struct.e1000_hw.0*)*, i32 (%struct.e1000_hw.0*)** %81, align 8
  %83 = load %struct.e1000_hw*, %struct.e1000_hw** %7, align 8
  %84 = bitcast %struct.e1000_hw* %83 to %struct.e1000_hw.0*
  %85 = call i32 %82(%struct.e1000_hw.0* %84)
  br label %86

86:                                               ; preds = %2, %77, %68, %46, %26
  store i32 0, i32* %3, align 4
  br label %87

87:                                               ; preds = %86, %25
  %88 = load i32, i32* %3, align 4
  ret i32 %88
}

declare dso_local %struct.e1000_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @pm_runtime_get_sync(i32) #1

declare dso_local i32 @e1e_wphy(%struct.e1000_hw*, i32, i32) #1

declare dso_local i32 @pm_runtime_put_sync(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
