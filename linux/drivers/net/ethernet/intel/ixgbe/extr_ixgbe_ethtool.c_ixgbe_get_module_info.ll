; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_ethtool.c_ixgbe_get_module_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_ethtool.c_ixgbe_get_module_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_modinfo = type { i32, i32 }
%struct.ixgbe_adapter = type { %struct.ixgbe_hw }
%struct.ixgbe_hw = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 (%struct.ixgbe_hw.0*, i32, i32*)* }
%struct.ixgbe_hw.0 = type opaque

@ixgbe_phy_fw = common dso_local global i64 0, align 8
@ENXIO = common dso_local global i32 0, align 4
@IXGBE_SFF_SFF_8472_COMP = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@IXGBE_SFF_SFF_8472_SWAP = common dso_local global i32 0, align 4
@IXGBE_SFF_ADDRESSING_MODE = common dso_local global i32 0, align 4
@drv = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [122 x i8] c"Address change required to access page 0xA2, but not supported. Please report the module type to the driver maintainers.\0A\00", align 1
@IXGBE_SFF_SFF_8472_UNSUP = common dso_local global i32 0, align 4
@IXGBE_SFF_DDM_IMPLEMENTED = common dso_local global i32 0, align 4
@ETH_MODULE_SFF_8079 = common dso_local global i32 0, align 4
@ETH_MODULE_SFF_8079_LEN = common dso_local global i32 0, align 4
@ETH_MODULE_SFF_8472 = common dso_local global i32 0, align 4
@ETH_MODULE_SFF_8472_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_modinfo*)* @ixgbe_get_module_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ixgbe_get_module_info(%struct.net_device* %0, %struct.ethtool_modinfo* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_modinfo*, align 8
  %6 = alloca %struct.ixgbe_adapter*, align 8
  %7 = alloca %struct.ixgbe_hw*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_modinfo* %1, %struct.ethtool_modinfo** %5, align 8
  %12 = load %struct.net_device*, %struct.net_device** %4, align 8
  %13 = call %struct.ixgbe_adapter* @netdev_priv(%struct.net_device* %12)
  store %struct.ixgbe_adapter* %13, %struct.ixgbe_adapter** %6, align 8
  %14 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %6, align 8
  %15 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %14, i32 0, i32 0
  store %struct.ixgbe_hw* %15, %struct.ixgbe_hw** %7, align 8
  store i32 0, i32* %11, align 4
  %16 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %7, align 8
  %17 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @ixgbe_phy_fw, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %2
  %23 = load i32, i32* @ENXIO, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %90

25:                                               ; preds = %2
  %26 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %7, align 8
  %27 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i64 (%struct.ixgbe_hw.0*, i32, i32*)*, i64 (%struct.ixgbe_hw.0*, i32, i32*)** %29, align 8
  %31 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %7, align 8
  %32 = bitcast %struct.ixgbe_hw* %31 to %struct.ixgbe_hw.0*
  %33 = load i32, i32* @IXGBE_SFF_SFF_8472_COMP, align 4
  %34 = call i64 %30(%struct.ixgbe_hw.0* %32, i32 %33, i32* %9)
  store i64 %34, i64* %8, align 8
  %35 = load i64, i64* %8, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %25
  %38 = load i32, i32* @EIO, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %3, align 4
  br label %90

40:                                               ; preds = %25
  %41 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %7, align 8
  %42 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i64 (%struct.ixgbe_hw.0*, i32, i32*)*, i64 (%struct.ixgbe_hw.0*, i32, i32*)** %44, align 8
  %46 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %7, align 8
  %47 = bitcast %struct.ixgbe_hw* %46 to %struct.ixgbe_hw.0*
  %48 = load i32, i32* @IXGBE_SFF_SFF_8472_SWAP, align 4
  %49 = call i64 %45(%struct.ixgbe_hw.0* %47, i32 %48, i32* %10)
  store i64 %49, i64* %8, align 8
  %50 = load i64, i64* %8, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %40
  %53 = load i32, i32* @EIO, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %3, align 4
  br label %90

55:                                               ; preds = %40
  %56 = load i32, i32* %10, align 4
  %57 = load i32, i32* @IXGBE_SFF_ADDRESSING_MODE, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %55
  %61 = load i32, i32* @drv, align 4
  %62 = call i32 @e_err(i32 %61, i8* getelementptr inbounds ([122 x i8], [122 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %11, align 4
  br label %63

63:                                               ; preds = %60, %55
  %64 = load i32, i32* %9, align 4
  %65 = load i32, i32* @IXGBE_SFF_SFF_8472_UNSUP, align 4
  %66 = icmp eq i32 %64, %65
  br i1 %66, label %75, label %67

67:                                               ; preds = %63
  %68 = load i32, i32* %11, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %75, label %70

70:                                               ; preds = %67
  %71 = load i32, i32* %10, align 4
  %72 = load i32, i32* @IXGBE_SFF_DDM_IMPLEMENTED, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %82, label %75

75:                                               ; preds = %70, %67, %63
  %76 = load i32, i32* @ETH_MODULE_SFF_8079, align 4
  %77 = load %struct.ethtool_modinfo*, %struct.ethtool_modinfo** %5, align 8
  %78 = getelementptr inbounds %struct.ethtool_modinfo, %struct.ethtool_modinfo* %77, i32 0, i32 1
  store i32 %76, i32* %78, align 4
  %79 = load i32, i32* @ETH_MODULE_SFF_8079_LEN, align 4
  %80 = load %struct.ethtool_modinfo*, %struct.ethtool_modinfo** %5, align 8
  %81 = getelementptr inbounds %struct.ethtool_modinfo, %struct.ethtool_modinfo* %80, i32 0, i32 0
  store i32 %79, i32* %81, align 4
  br label %89

82:                                               ; preds = %70
  %83 = load i32, i32* @ETH_MODULE_SFF_8472, align 4
  %84 = load %struct.ethtool_modinfo*, %struct.ethtool_modinfo** %5, align 8
  %85 = getelementptr inbounds %struct.ethtool_modinfo, %struct.ethtool_modinfo* %84, i32 0, i32 1
  store i32 %83, i32* %85, align 4
  %86 = load i32, i32* @ETH_MODULE_SFF_8472_LEN, align 4
  %87 = load %struct.ethtool_modinfo*, %struct.ethtool_modinfo** %5, align 8
  %88 = getelementptr inbounds %struct.ethtool_modinfo, %struct.ethtool_modinfo* %87, i32 0, i32 0
  store i32 %86, i32* %88, align 4
  br label %89

89:                                               ; preds = %82, %75
  store i32 0, i32* %3, align 4
  br label %90

90:                                               ; preds = %89, %52, %37, %22
  %91 = load i32, i32* %3, align 4
  ret i32 %91
}

declare dso_local %struct.ixgbe_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @e_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
