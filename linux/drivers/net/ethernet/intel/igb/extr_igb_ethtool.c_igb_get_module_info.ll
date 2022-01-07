; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igb/extr_igb_ethtool.c_igb_get_module_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igb/extr_igb_ethtool.c_igb_get_module_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_modinfo = type { i32, i32 }
%struct.igb_adapter = type { %struct.e1000_hw }
%struct.e1000_hw = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@e1000_media_type_copper = common dso_local global i64 0, align 8
@e1000_media_type_unknown = common dso_local global i64 0, align 8
@EOPNOTSUPP = common dso_local global i32 0, align 4
@IGB_SFF_8472_COMP = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@IGB_SFF_8472_SWAP = common dso_local global i32 0, align 4
@IGB_SFF_ADDRESSING_MODE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [122 x i8] c"Address change required to access page 0xA2, but not supported. Please report the module type to the driver maintainers.\0A\00", align 1
@IGB_SFF_8472_UNSUP = common dso_local global i32 0, align 4
@ETH_MODULE_SFF_8079 = common dso_local global i32 0, align 4
@ETH_MODULE_SFF_8079_LEN = common dso_local global i32 0, align 4
@ETH_MODULE_SFF_8472 = common dso_local global i32 0, align 4
@ETH_MODULE_SFF_8472_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_modinfo*)* @igb_get_module_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @igb_get_module_info(%struct.net_device* %0, %struct.ethtool_modinfo* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_modinfo*, align 8
  %6 = alloca %struct.igb_adapter*, align 8
  %7 = alloca %struct.e1000_hw*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_modinfo* %1, %struct.ethtool_modinfo** %5, align 8
  %12 = load %struct.net_device*, %struct.net_device** %4, align 8
  %13 = call %struct.igb_adapter* @netdev_priv(%struct.net_device* %12)
  store %struct.igb_adapter* %13, %struct.igb_adapter** %6, align 8
  %14 = load %struct.igb_adapter*, %struct.igb_adapter** %6, align 8
  %15 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %14, i32 0, i32 0
  store %struct.e1000_hw* %15, %struct.e1000_hw** %7, align 8
  store i64 0, i64* %8, align 8
  store i32 0, i32* %11, align 4
  %16 = load %struct.e1000_hw*, %struct.e1000_hw** %7, align 8
  %17 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @e1000_media_type_copper, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %29, label %22

22:                                               ; preds = %2
  %23 = load %struct.e1000_hw*, %struct.e1000_hw** %7, align 8
  %24 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @e1000_media_type_unknown, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %22, %2
  %30 = load i32, i32* @EOPNOTSUPP, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %81

32:                                               ; preds = %22
  %33 = load %struct.e1000_hw*, %struct.e1000_hw** %7, align 8
  %34 = load i32, i32* @IGB_SFF_8472_COMP, align 4
  %35 = call i64 @igb_read_phy_reg_i2c(%struct.e1000_hw* %33, i32 %34, i32* %9)
  store i64 %35, i64* %8, align 8
  %36 = load i64, i64* %8, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %32
  %39 = load i32, i32* @EIO, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %3, align 4
  br label %81

41:                                               ; preds = %32
  %42 = load %struct.e1000_hw*, %struct.e1000_hw** %7, align 8
  %43 = load i32, i32* @IGB_SFF_8472_SWAP, align 4
  %44 = call i64 @igb_read_phy_reg_i2c(%struct.e1000_hw* %42, i32 %43, i32* %10)
  store i64 %44, i64* %8, align 8
  %45 = load i64, i64* %8, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %41
  %48 = load i32, i32* @EIO, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %3, align 4
  br label %81

50:                                               ; preds = %41
  %51 = load i32, i32* %10, align 4
  %52 = and i32 %51, 255
  %53 = load i32, i32* @IGB_SFF_ADDRESSING_MODE, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %50
  %57 = call i32 @hw_dbg(i8* getelementptr inbounds ([122 x i8], [122 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %11, align 4
  br label %58

58:                                               ; preds = %56, %50
  %59 = load i32, i32* %9, align 4
  %60 = and i32 %59, 255
  %61 = load i32, i32* @IGB_SFF_8472_UNSUP, align 4
  %62 = icmp eq i32 %60, %61
  br i1 %62, label %66, label %63

63:                                               ; preds = %58
  %64 = load i32, i32* %11, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %73

66:                                               ; preds = %63, %58
  %67 = load i32, i32* @ETH_MODULE_SFF_8079, align 4
  %68 = load %struct.ethtool_modinfo*, %struct.ethtool_modinfo** %5, align 8
  %69 = getelementptr inbounds %struct.ethtool_modinfo, %struct.ethtool_modinfo* %68, i32 0, i32 1
  store i32 %67, i32* %69, align 4
  %70 = load i32, i32* @ETH_MODULE_SFF_8079_LEN, align 4
  %71 = load %struct.ethtool_modinfo*, %struct.ethtool_modinfo** %5, align 8
  %72 = getelementptr inbounds %struct.ethtool_modinfo, %struct.ethtool_modinfo* %71, i32 0, i32 0
  store i32 %70, i32* %72, align 4
  br label %80

73:                                               ; preds = %63
  %74 = load i32, i32* @ETH_MODULE_SFF_8472, align 4
  %75 = load %struct.ethtool_modinfo*, %struct.ethtool_modinfo** %5, align 8
  %76 = getelementptr inbounds %struct.ethtool_modinfo, %struct.ethtool_modinfo* %75, i32 0, i32 1
  store i32 %74, i32* %76, align 4
  %77 = load i32, i32* @ETH_MODULE_SFF_8472_LEN, align 4
  %78 = load %struct.ethtool_modinfo*, %struct.ethtool_modinfo** %5, align 8
  %79 = getelementptr inbounds %struct.ethtool_modinfo, %struct.ethtool_modinfo* %78, i32 0, i32 0
  store i32 %77, i32* %79, align 4
  br label %80

80:                                               ; preds = %73, %66
  store i32 0, i32* %3, align 4
  br label %81

81:                                               ; preds = %80, %47, %38, %29
  %82 = load i32, i32* %3, align 4
  ret i32 %82
}

declare dso_local %struct.igb_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @igb_read_phy_reg_i2c(%struct.e1000_hw*, i32, i32*) #1

declare dso_local i32 @hw_dbg(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
