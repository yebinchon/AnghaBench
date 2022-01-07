; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/oki-semi/pch_gbe/extr_pch_gbe_ethtool.c_pch_gbe_get_wol.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/oki-semi/pch_gbe/extr_pch_gbe_ethtool.c_pch_gbe_get_wol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_wolinfo = type { i32, i32 }
%struct.pch_gbe_adapter = type { i32 }

@WAKE_UCAST = common dso_local global i32 0, align 4
@WAKE_MCAST = common dso_local global i32 0, align 4
@WAKE_BCAST = common dso_local global i32 0, align 4
@WAKE_MAGIC = common dso_local global i32 0, align 4
@PCH_GBE_WLC_IND = common dso_local global i32 0, align 4
@PCH_GBE_WLC_MLT = common dso_local global i32 0, align 4
@PCH_GBE_WLC_BR = common dso_local global i32 0, align 4
@PCH_GBE_WLC_MP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.ethtool_wolinfo*)* @pch_gbe_get_wol to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pch_gbe_get_wol(%struct.net_device* %0, %struct.ethtool_wolinfo* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ethtool_wolinfo*, align 8
  %5 = alloca %struct.pch_gbe_adapter*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.ethtool_wolinfo* %1, %struct.ethtool_wolinfo** %4, align 8
  %6 = load %struct.net_device*, %struct.net_device** %3, align 8
  %7 = call %struct.pch_gbe_adapter* @netdev_priv(%struct.net_device* %6)
  store %struct.pch_gbe_adapter* %7, %struct.pch_gbe_adapter** %5, align 8
  %8 = load i32, i32* @WAKE_UCAST, align 4
  %9 = load i32, i32* @WAKE_MCAST, align 4
  %10 = or i32 %8, %9
  %11 = load i32, i32* @WAKE_BCAST, align 4
  %12 = or i32 %10, %11
  %13 = load i32, i32* @WAKE_MAGIC, align 4
  %14 = or i32 %12, %13
  %15 = load %struct.ethtool_wolinfo*, %struct.ethtool_wolinfo** %4, align 8
  %16 = getelementptr inbounds %struct.ethtool_wolinfo, %struct.ethtool_wolinfo* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 4
  %17 = load %struct.ethtool_wolinfo*, %struct.ethtool_wolinfo** %4, align 8
  %18 = getelementptr inbounds %struct.ethtool_wolinfo, %struct.ethtool_wolinfo* %17, i32 0, i32 1
  store i32 0, i32* %18, align 4
  %19 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %5, align 8
  %20 = getelementptr inbounds %struct.pch_gbe_adapter, %struct.pch_gbe_adapter* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @PCH_GBE_WLC_IND, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %2
  %26 = load i32, i32* @WAKE_UCAST, align 4
  %27 = load %struct.ethtool_wolinfo*, %struct.ethtool_wolinfo** %4, align 8
  %28 = getelementptr inbounds %struct.ethtool_wolinfo, %struct.ethtool_wolinfo* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = or i32 %29, %26
  store i32 %30, i32* %28, align 4
  br label %31

31:                                               ; preds = %25, %2
  %32 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %5, align 8
  %33 = getelementptr inbounds %struct.pch_gbe_adapter, %struct.pch_gbe_adapter* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @PCH_GBE_WLC_MLT, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %31
  %39 = load i32, i32* @WAKE_MCAST, align 4
  %40 = load %struct.ethtool_wolinfo*, %struct.ethtool_wolinfo** %4, align 8
  %41 = getelementptr inbounds %struct.ethtool_wolinfo, %struct.ethtool_wolinfo* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = or i32 %42, %39
  store i32 %43, i32* %41, align 4
  br label %44

44:                                               ; preds = %38, %31
  %45 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %5, align 8
  %46 = getelementptr inbounds %struct.pch_gbe_adapter, %struct.pch_gbe_adapter* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @PCH_GBE_WLC_BR, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %44
  %52 = load i32, i32* @WAKE_BCAST, align 4
  %53 = load %struct.ethtool_wolinfo*, %struct.ethtool_wolinfo** %4, align 8
  %54 = getelementptr inbounds %struct.ethtool_wolinfo, %struct.ethtool_wolinfo* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = or i32 %55, %52
  store i32 %56, i32* %54, align 4
  br label %57

57:                                               ; preds = %51, %44
  %58 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %5, align 8
  %59 = getelementptr inbounds %struct.pch_gbe_adapter, %struct.pch_gbe_adapter* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @PCH_GBE_WLC_MP, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %70

64:                                               ; preds = %57
  %65 = load i32, i32* @WAKE_MAGIC, align 4
  %66 = load %struct.ethtool_wolinfo*, %struct.ethtool_wolinfo** %4, align 8
  %67 = getelementptr inbounds %struct.ethtool_wolinfo, %struct.ethtool_wolinfo* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = or i32 %68, %65
  store i32 %69, i32* %67, align 4
  br label %70

70:                                               ; preds = %64, %57
  ret void
}

declare dso_local %struct.pch_gbe_adapter* @netdev_priv(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
