; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/atlx/extr_atl2.c_atl2_get_wol.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/atlx/extr_atl2.c_atl2_get_wol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_wolinfo = type { i32, i32 }
%struct.atl2_adapter = type { i32 }

@WAKE_MAGIC = common dso_local global i32 0, align 4
@ATLX_WUFC_EX = common dso_local global i32 0, align 4
@WAKE_UCAST = common dso_local global i32 0, align 4
@ATLX_WUFC_MC = common dso_local global i32 0, align 4
@WAKE_MCAST = common dso_local global i32 0, align 4
@ATLX_WUFC_BC = common dso_local global i32 0, align 4
@WAKE_BCAST = common dso_local global i32 0, align 4
@ATLX_WUFC_MAG = common dso_local global i32 0, align 4
@ATLX_WUFC_LNKC = common dso_local global i32 0, align 4
@WAKE_PHY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.ethtool_wolinfo*)* @atl2_get_wol to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @atl2_get_wol(%struct.net_device* %0, %struct.ethtool_wolinfo* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ethtool_wolinfo*, align 8
  %5 = alloca %struct.atl2_adapter*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.ethtool_wolinfo* %1, %struct.ethtool_wolinfo** %4, align 8
  %6 = load %struct.net_device*, %struct.net_device** %3, align 8
  %7 = call %struct.atl2_adapter* @netdev_priv(%struct.net_device* %6)
  store %struct.atl2_adapter* %7, %struct.atl2_adapter** %5, align 8
  %8 = load i32, i32* @WAKE_MAGIC, align 4
  %9 = load %struct.ethtool_wolinfo*, %struct.ethtool_wolinfo** %4, align 8
  %10 = getelementptr inbounds %struct.ethtool_wolinfo, %struct.ethtool_wolinfo* %9, i32 0, i32 1
  store i32 %8, i32* %10, align 4
  %11 = load %struct.ethtool_wolinfo*, %struct.ethtool_wolinfo** %4, align 8
  %12 = getelementptr inbounds %struct.ethtool_wolinfo, %struct.ethtool_wolinfo* %11, i32 0, i32 0
  store i32 0, i32* %12, align 4
  %13 = load %struct.atl2_adapter*, %struct.atl2_adapter** %5, align 8
  %14 = getelementptr inbounds %struct.atl2_adapter, %struct.atl2_adapter* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @ATLX_WUFC_EX, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %2
  %20 = load i32, i32* @WAKE_UCAST, align 4
  %21 = load %struct.ethtool_wolinfo*, %struct.ethtool_wolinfo** %4, align 8
  %22 = getelementptr inbounds %struct.ethtool_wolinfo, %struct.ethtool_wolinfo* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = or i32 %23, %20
  store i32 %24, i32* %22, align 4
  br label %25

25:                                               ; preds = %19, %2
  %26 = load %struct.atl2_adapter*, %struct.atl2_adapter** %5, align 8
  %27 = getelementptr inbounds %struct.atl2_adapter, %struct.atl2_adapter* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @ATLX_WUFC_MC, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %25
  %33 = load i32, i32* @WAKE_MCAST, align 4
  %34 = load %struct.ethtool_wolinfo*, %struct.ethtool_wolinfo** %4, align 8
  %35 = getelementptr inbounds %struct.ethtool_wolinfo, %struct.ethtool_wolinfo* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = or i32 %36, %33
  store i32 %37, i32* %35, align 4
  br label %38

38:                                               ; preds = %32, %25
  %39 = load %struct.atl2_adapter*, %struct.atl2_adapter** %5, align 8
  %40 = getelementptr inbounds %struct.atl2_adapter, %struct.atl2_adapter* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @ATLX_WUFC_BC, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %38
  %46 = load i32, i32* @WAKE_BCAST, align 4
  %47 = load %struct.ethtool_wolinfo*, %struct.ethtool_wolinfo** %4, align 8
  %48 = getelementptr inbounds %struct.ethtool_wolinfo, %struct.ethtool_wolinfo* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = or i32 %49, %46
  store i32 %50, i32* %48, align 4
  br label %51

51:                                               ; preds = %45, %38
  %52 = load %struct.atl2_adapter*, %struct.atl2_adapter** %5, align 8
  %53 = getelementptr inbounds %struct.atl2_adapter, %struct.atl2_adapter* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @ATLX_WUFC_MAG, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %64

58:                                               ; preds = %51
  %59 = load i32, i32* @WAKE_MAGIC, align 4
  %60 = load %struct.ethtool_wolinfo*, %struct.ethtool_wolinfo** %4, align 8
  %61 = getelementptr inbounds %struct.ethtool_wolinfo, %struct.ethtool_wolinfo* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = or i32 %62, %59
  store i32 %63, i32* %61, align 4
  br label %64

64:                                               ; preds = %58, %51
  %65 = load %struct.atl2_adapter*, %struct.atl2_adapter** %5, align 8
  %66 = getelementptr inbounds %struct.atl2_adapter, %struct.atl2_adapter* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @ATLX_WUFC_LNKC, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %77

71:                                               ; preds = %64
  %72 = load i32, i32* @WAKE_PHY, align 4
  %73 = load %struct.ethtool_wolinfo*, %struct.ethtool_wolinfo** %4, align 8
  %74 = getelementptr inbounds %struct.ethtool_wolinfo, %struct.ethtool_wolinfo* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = or i32 %75, %72
  store i32 %76, i32* %74, align 4
  br label %77

77:                                               ; preds = %71, %64
  ret void
}

declare dso_local %struct.atl2_adapter* @netdev_priv(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
