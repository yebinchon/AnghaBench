; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cxgb4_ethtool.c_cxgb4_get_module_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cxgb4_ethtool.c_cxgb4_get_module_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_modinfo = type { i32, i32 }
%struct.port_info = type { i32, i32, i32, %struct.adapter* }
%struct.adapter = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@I2C_DEV_ADDR_A0 = common dso_local global i32 0, align 4
@SFF_8472_COMP_ADDR = common dso_local global i32 0, align 4
@SFF_8472_COMP_LEN = common dso_local global i32 0, align 4
@SFP_DIAG_TYPE_ADDR = common dso_local global i32 0, align 4
@SFP_DIAG_TYPE_LEN = common dso_local global i32 0, align 4
@ETH_MODULE_SFF_8079 = common dso_local global i32 0, align 4
@ETH_MODULE_SFF_8079_LEN = common dso_local global i32 0, align 4
@ETH_MODULE_SFF_8472 = common dso_local global i32 0, align 4
@ETH_MODULE_SFF_8472_LEN = common dso_local global i32 0, align 4
@SFF_REV_ADDR = common dso_local global i32 0, align 4
@SFF_REV_LEN = common dso_local global i32 0, align 4
@ETH_MODULE_SFF_8636 = common dso_local global i32 0, align 4
@ETH_MODULE_SFF_8636_LEN = common dso_local global i32 0, align 4
@ETH_MODULE_SFF_8436 = common dso_local global i32 0, align 4
@ETH_MODULE_SFF_8436_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_modinfo*)* @cxgb4_get_module_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cxgb4_get_module_info(%struct.net_device* %0, %struct.ethtool_modinfo* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_modinfo*, align 8
  %6 = alloca %struct.port_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.adapter*, align 8
  %11 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_modinfo* %1, %struct.ethtool_modinfo** %5, align 8
  %12 = load %struct.net_device*, %struct.net_device** %4, align 8
  %13 = call %struct.port_info* @netdev_priv(%struct.net_device* %12)
  store %struct.port_info* %13, %struct.port_info** %6, align 8
  %14 = load %struct.port_info*, %struct.port_info** %6, align 8
  %15 = getelementptr inbounds %struct.port_info, %struct.port_info* %14, i32 0, i32 3
  %16 = load %struct.adapter*, %struct.adapter** %15, align 8
  store %struct.adapter* %16, %struct.adapter** %10, align 8
  %17 = load %struct.port_info*, %struct.port_info** %6, align 8
  %18 = getelementptr inbounds %struct.port_info, %struct.port_info* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @t4_is_inserted_mod_type(i32 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %2
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %121

25:                                               ; preds = %2
  %26 = load %struct.port_info*, %struct.port_info** %6, align 8
  %27 = getelementptr inbounds %struct.port_info, %struct.port_info* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  switch i32 %28, label %117 [
    i32 129, label %29
    i32 132, label %29
    i32 128, label %29
    i32 131, label %83
    i32 130, label %83
    i32 133, label %83
    i32 135, label %83
    i32 134, label %83
  ]

29:                                               ; preds = %25, %25, %25
  %30 = load %struct.adapter*, %struct.adapter** %10, align 8
  %31 = load %struct.adapter*, %struct.adapter** %10, align 8
  %32 = getelementptr inbounds %struct.adapter, %struct.adapter* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.port_info*, %struct.port_info** %6, align 8
  %35 = getelementptr inbounds %struct.port_info, %struct.port_info* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @I2C_DEV_ADDR_A0, align 4
  %38 = load i32, i32* @SFF_8472_COMP_ADDR, align 4
  %39 = load i32, i32* @SFF_8472_COMP_LEN, align 4
  %40 = call i32 @t4_i2c_rd(%struct.adapter* %30, i32 %33, i32 %36, i32 %37, i32 %38, i32 %39, i32* %7)
  store i32 %40, i32* %11, align 4
  %41 = load i32, i32* %11, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %29
  %44 = load i32, i32* %11, align 4
  store i32 %44, i32* %3, align 4
  br label %121

45:                                               ; preds = %29
  %46 = load %struct.adapter*, %struct.adapter** %10, align 8
  %47 = load %struct.adapter*, %struct.adapter** %10, align 8
  %48 = getelementptr inbounds %struct.adapter, %struct.adapter* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.port_info*, %struct.port_info** %6, align 8
  %51 = getelementptr inbounds %struct.port_info, %struct.port_info* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @I2C_DEV_ADDR_A0, align 4
  %54 = load i32, i32* @SFP_DIAG_TYPE_ADDR, align 4
  %55 = load i32, i32* @SFP_DIAG_TYPE_LEN, align 4
  %56 = call i32 @t4_i2c_rd(%struct.adapter* %46, i32 %49, i32 %52, i32 %53, i32 %54, i32 %55, i32* %8)
  store i32 %56, i32* %11, align 4
  %57 = load i32, i32* %11, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %45
  %60 = load i32, i32* %11, align 4
  store i32 %60, i32* %3, align 4
  br label %121

61:                                               ; preds = %45
  %62 = load i32, i32* %7, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %61
  %65 = load i32, i32* %8, align 4
  %66 = and i32 %65, 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %75

68:                                               ; preds = %64, %61
  %69 = load i32, i32* @ETH_MODULE_SFF_8079, align 4
  %70 = load %struct.ethtool_modinfo*, %struct.ethtool_modinfo** %5, align 8
  %71 = getelementptr inbounds %struct.ethtool_modinfo, %struct.ethtool_modinfo* %70, i32 0, i32 1
  store i32 %69, i32* %71, align 4
  %72 = load i32, i32* @ETH_MODULE_SFF_8079_LEN, align 4
  %73 = load %struct.ethtool_modinfo*, %struct.ethtool_modinfo** %5, align 8
  %74 = getelementptr inbounds %struct.ethtool_modinfo, %struct.ethtool_modinfo* %73, i32 0, i32 0
  store i32 %72, i32* %74, align 4
  br label %82

75:                                               ; preds = %64
  %76 = load i32, i32* @ETH_MODULE_SFF_8472, align 4
  %77 = load %struct.ethtool_modinfo*, %struct.ethtool_modinfo** %5, align 8
  %78 = getelementptr inbounds %struct.ethtool_modinfo, %struct.ethtool_modinfo* %77, i32 0, i32 1
  store i32 %76, i32* %78, align 4
  %79 = load i32, i32* @ETH_MODULE_SFF_8472_LEN, align 4
  %80 = load %struct.ethtool_modinfo*, %struct.ethtool_modinfo** %5, align 8
  %81 = getelementptr inbounds %struct.ethtool_modinfo, %struct.ethtool_modinfo* %80, i32 0, i32 0
  store i32 %79, i32* %81, align 4
  br label %82

82:                                               ; preds = %75, %68
  br label %120

83:                                               ; preds = %25, %25, %25, %25, %25
  %84 = load %struct.adapter*, %struct.adapter** %10, align 8
  %85 = load %struct.adapter*, %struct.adapter** %10, align 8
  %86 = getelementptr inbounds %struct.adapter, %struct.adapter* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.port_info*, %struct.port_info** %6, align 8
  %89 = getelementptr inbounds %struct.port_info, %struct.port_info* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* @I2C_DEV_ADDR_A0, align 4
  %92 = load i32, i32* @SFF_REV_ADDR, align 4
  %93 = load i32, i32* @SFF_REV_LEN, align 4
  %94 = call i32 @t4_i2c_rd(%struct.adapter* %84, i32 %87, i32 %90, i32 %91, i32 %92, i32 %93, i32* %9)
  store i32 %94, i32* %11, align 4
  %95 = load i32, i32* %11, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %83
  %98 = load i32, i32* %11, align 4
  store i32 %98, i32* %3, align 4
  br label %121

99:                                               ; preds = %83
  %100 = load i32, i32* %9, align 4
  %101 = icmp sge i32 %100, 3
  br i1 %101, label %102, label %109

102:                                              ; preds = %99
  %103 = load i32, i32* @ETH_MODULE_SFF_8636, align 4
  %104 = load %struct.ethtool_modinfo*, %struct.ethtool_modinfo** %5, align 8
  %105 = getelementptr inbounds %struct.ethtool_modinfo, %struct.ethtool_modinfo* %104, i32 0, i32 1
  store i32 %103, i32* %105, align 4
  %106 = load i32, i32* @ETH_MODULE_SFF_8636_LEN, align 4
  %107 = load %struct.ethtool_modinfo*, %struct.ethtool_modinfo** %5, align 8
  %108 = getelementptr inbounds %struct.ethtool_modinfo, %struct.ethtool_modinfo* %107, i32 0, i32 0
  store i32 %106, i32* %108, align 4
  br label %116

109:                                              ; preds = %99
  %110 = load i32, i32* @ETH_MODULE_SFF_8436, align 4
  %111 = load %struct.ethtool_modinfo*, %struct.ethtool_modinfo** %5, align 8
  %112 = getelementptr inbounds %struct.ethtool_modinfo, %struct.ethtool_modinfo* %111, i32 0, i32 1
  store i32 %110, i32* %112, align 4
  %113 = load i32, i32* @ETH_MODULE_SFF_8436_LEN, align 4
  %114 = load %struct.ethtool_modinfo*, %struct.ethtool_modinfo** %5, align 8
  %115 = getelementptr inbounds %struct.ethtool_modinfo, %struct.ethtool_modinfo* %114, i32 0, i32 0
  store i32 %113, i32* %115, align 4
  br label %116

116:                                              ; preds = %109, %102
  br label %120

117:                                              ; preds = %25
  %118 = load i32, i32* @EINVAL, align 4
  %119 = sub nsw i32 0, %118
  store i32 %119, i32* %3, align 4
  br label %121

120:                                              ; preds = %116, %82
  store i32 0, i32* %3, align 4
  br label %121

121:                                              ; preds = %120, %117, %97, %59, %43, %22
  %122 = load i32, i32* %3, align 4
  ret i32 %122
}

declare dso_local %struct.port_info* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @t4_is_inserted_mod_type(i32) #1

declare dso_local i32 @t4_i2c_rd(%struct.adapter*, i32, i32, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
