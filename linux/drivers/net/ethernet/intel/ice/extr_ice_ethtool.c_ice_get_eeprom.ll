; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_ethtool.c_ice_get_eeprom.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_ethtool.c_ice_get_eeprom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_eeprom = type { i32, i32, i32 }
%struct.ice_netdev_priv = type { %struct.ice_vsi* }
%struct.ice_vsi = type { %struct.ice_pf* }
%struct.ice_pf = type { %struct.TYPE_3__*, %struct.ice_hw }
%struct.TYPE_3__ = type { %struct.device }
%struct.device = type { i32 }
%struct.ice_hw = type { i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"ice_read_sr_buf failed, err %d aq_err %d\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_eeprom*, i32*)* @ice_get_eeprom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ice_get_eeprom(%struct.net_device* %0, %struct.ethtool_eeprom* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.ethtool_eeprom*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.ice_netdev_priv*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.ice_vsi*, align 8
  %13 = alloca %struct.ice_pf*, align 8
  %14 = alloca %struct.ice_hw*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.device*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store %struct.ethtool_eeprom* %1, %struct.ethtool_eeprom** %6, align 8
  store i32* %2, i32** %7, align 8
  %19 = load %struct.net_device*, %struct.net_device** %5, align 8
  %20 = call %struct.ice_netdev_priv* @netdev_priv(%struct.net_device* %19)
  store %struct.ice_netdev_priv* %20, %struct.ice_netdev_priv** %8, align 8
  %21 = load %struct.ice_netdev_priv*, %struct.ice_netdev_priv** %8, align 8
  %22 = getelementptr inbounds %struct.ice_netdev_priv, %struct.ice_netdev_priv* %21, i32 0, i32 0
  %23 = load %struct.ice_vsi*, %struct.ice_vsi** %22, align 8
  store %struct.ice_vsi* %23, %struct.ice_vsi** %12, align 8
  %24 = load %struct.ice_vsi*, %struct.ice_vsi** %12, align 8
  %25 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %24, i32 0, i32 0
  %26 = load %struct.ice_pf*, %struct.ice_pf** %25, align 8
  store %struct.ice_pf* %26, %struct.ice_pf** %13, align 8
  %27 = load %struct.ice_pf*, %struct.ice_pf** %13, align 8
  %28 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %27, i32 0, i32 1
  store %struct.ice_hw* %28, %struct.ice_hw** %14, align 8
  store i32 0, i32* %17, align 4
  %29 = load %struct.ice_pf*, %struct.ice_pf** %13, align 8
  %30 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %29, i32 0, i32 0
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  store %struct.device* %32, %struct.device** %16, align 8
  %33 = load %struct.ice_hw*, %struct.ice_hw** %14, align 8
  %34 = getelementptr inbounds %struct.ice_hw, %struct.ice_hw* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.ice_hw*, %struct.ice_hw** %14, align 8
  %37 = getelementptr inbounds %struct.ice_hw, %struct.ice_hw* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = shl i32 %38, 16
  %40 = or i32 %35, %39
  %41 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %42 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 4
  %43 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %44 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = ashr i32 %45, 1
  store i32 %46, i32* %9, align 4
  %47 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %48 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %51 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = add nsw i32 %49, %52
  %54 = sub nsw i32 %53, 1
  %55 = ashr i32 %54, 1
  store i32 %55, i32* %10, align 4
  %56 = load i32, i32* %10, align 4
  %57 = load i32, i32* %9, align 4
  %58 = sub nsw i32 %56, %57
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %11, align 4
  %60 = load %struct.device*, %struct.device** %16, align 8
  %61 = load i32, i32* %11, align 4
  %62 = load i32, i32* @GFP_KERNEL, align 4
  %63 = call i32* @devm_kcalloc(%struct.device* %60, i32 %61, i32 4, i32 %62)
  store i32* %63, i32** %18, align 8
  %64 = load i32*, i32** %18, align 8
  %65 = icmp ne i32* %64, null
  br i1 %65, label %69, label %66

66:                                               ; preds = %3
  %67 = load i32, i32* @ENOMEM, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %4, align 4
  br label %110

69:                                               ; preds = %3
  %70 = load %struct.ice_hw*, %struct.ice_hw** %14, align 8
  %71 = load i32, i32* %9, align 4
  %72 = load i32*, i32** %18, align 8
  %73 = call i32 @ice_read_sr_buf(%struct.ice_hw* %70, i32 %71, i32* %11, i32* %72)
  store i32 %73, i32* %15, align 4
  %74 = load i32, i32* %15, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %92

76:                                               ; preds = %69
  %77 = load %struct.device*, %struct.device** %16, align 8
  %78 = load i32, i32* %15, align 4
  %79 = load %struct.ice_hw*, %struct.ice_hw** %14, align 8
  %80 = getelementptr inbounds %struct.ice_hw, %struct.ice_hw* %79, i32 0, i32 2
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @dev_err(%struct.device* %77, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %78, i32 %82)
  %84 = load i32, i32* %11, align 4
  %85 = sext i32 %84 to i64
  %86 = mul i64 4, %85
  %87 = trunc i64 %86 to i32
  %88 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %89 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %88, i32 0, i32 2
  store i32 %87, i32* %89, align 4
  %90 = load i32, i32* @EIO, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %17, align 4
  br label %105

92:                                               ; preds = %69
  %93 = load i32*, i32** %7, align 8
  %94 = load i32*, i32** %18, align 8
  %95 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %96 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = and i32 %97, 1
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i32, i32* %94, i64 %99
  %101 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %102 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @memcpy(i32* %93, i32* %100, i32 %103)
  br label %105

105:                                              ; preds = %92, %76
  %106 = load %struct.device*, %struct.device** %16, align 8
  %107 = load i32*, i32** %18, align 8
  %108 = call i32 @devm_kfree(%struct.device* %106, i32* %107)
  %109 = load i32, i32* %17, align 4
  store i32 %109, i32* %4, align 4
  br label %110

110:                                              ; preds = %105, %66
  %111 = load i32, i32* %4, align 4
  ret i32 %111
}

declare dso_local %struct.ice_netdev_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32* @devm_kcalloc(%struct.device*, i32, i32, i32) #1

declare dso_local i32 @ice_read_sr_buf(%struct.ice_hw*, i32, i32*, i32*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @devm_kfree(%struct.device*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
