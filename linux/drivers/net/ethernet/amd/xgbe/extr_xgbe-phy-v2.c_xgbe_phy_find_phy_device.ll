; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/xgbe/extr_xgbe-phy-v2.c_xgbe_phy_find_phy_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/xgbe/extr_xgbe-phy-v2.c_xgbe_phy_find_phy_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xgbe_prv_data = type { i32, %struct.TYPE_5__, i64, %struct.xgbe_phy_data*, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32 (%struct.xgbe_prv_data.0*, i32, i64)* }
%struct.xgbe_prv_data.0 = type opaque
%struct.xgbe_phy_data = type { i64, i64, %struct.phy_device*, i32, i32, i32 }
%struct.phy_device = type { i32, i32, i32 }
%struct.TYPE_4__ = type { %struct.ethtool_link_ksettings }
%struct.ethtool_link_ksettings = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@XGBE_MDIO_MODE_NONE = common dso_local global i64 0, align 8
@XGBE_PORT_MODE_SFP = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [41 x i8] c"mdio port/clause not compatible (%u/%u)\0A\00", align 1
@XGBE_MDIO_MODE_CL45 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [23 x i8] c"get_phy_device failed\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@drv = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"external PHY id is %#010x\0A\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"phy_device_register failed\0A\00", align 1
@PHY_INTERFACE_MODE_SGMII = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [26 x i8] c"phy_attach_direct failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xgbe_prv_data*)* @xgbe_phy_find_phy_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xgbe_phy_find_phy_device(%struct.xgbe_prv_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.xgbe_prv_data*, align 8
  %4 = alloca %struct.ethtool_link_ksettings*, align 8
  %5 = alloca %struct.xgbe_phy_data*, align 8
  %6 = alloca %struct.phy_device*, align 8
  %7 = alloca i32, align 4
  store %struct.xgbe_prv_data* %0, %struct.xgbe_prv_data** %3, align 8
  %8 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %9 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %8, i32 0, i32 4
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  store %struct.ethtool_link_ksettings* %10, %struct.ethtool_link_ksettings** %4, align 8
  %11 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %12 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %11, i32 0, i32 3
  %13 = load %struct.xgbe_phy_data*, %struct.xgbe_phy_data** %12, align 8
  store %struct.xgbe_phy_data* %13, %struct.xgbe_phy_data** %5, align 8
  %14 = load %struct.xgbe_phy_data*, %struct.xgbe_phy_data** %5, align 8
  %15 = getelementptr inbounds %struct.xgbe_phy_data, %struct.xgbe_phy_data* %14, i32 0, i32 2
  %16 = load %struct.phy_device*, %struct.phy_device** %15, align 8
  %17 = icmp ne %struct.phy_device* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %157

19:                                               ; preds = %1
  %20 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %21 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %20, i32 0, i32 2
  store i64 0, i64* %21, align 8
  %22 = load %struct.xgbe_phy_data*, %struct.xgbe_phy_data** %5, align 8
  %23 = getelementptr inbounds %struct.xgbe_phy_data, %struct.xgbe_phy_data* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @XGBE_MDIO_MODE_NONE, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %19
  store i32 0, i32* %2, align 4
  br label %157

28:                                               ; preds = %19
  %29 = load %struct.xgbe_phy_data*, %struct.xgbe_phy_data** %5, align 8
  %30 = getelementptr inbounds %struct.xgbe_phy_data, %struct.xgbe_phy_data* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @XGBE_PORT_MODE_SFP, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %40

34:                                               ; preds = %28
  %35 = load %struct.xgbe_phy_data*, %struct.xgbe_phy_data** %5, align 8
  %36 = getelementptr inbounds %struct.xgbe_phy_data, %struct.xgbe_phy_data* %35, i32 0, i32 5
  %37 = load i32, i32* %36, align 8
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %34
  store i32 0, i32* %2, align 4
  br label %157

40:                                               ; preds = %34, %28
  %41 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %42 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = load i32 (%struct.xgbe_prv_data.0*, i32, i64)*, i32 (%struct.xgbe_prv_data.0*, i32, i64)** %43, align 8
  %45 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %46 = bitcast %struct.xgbe_prv_data* %45 to %struct.xgbe_prv_data.0*
  %47 = load %struct.xgbe_phy_data*, %struct.xgbe_phy_data** %5, align 8
  %48 = getelementptr inbounds %struct.xgbe_phy_data, %struct.xgbe_phy_data* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.xgbe_phy_data*, %struct.xgbe_phy_data** %5, align 8
  %51 = getelementptr inbounds %struct.xgbe_phy_data, %struct.xgbe_phy_data* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = call i32 %44(%struct.xgbe_prv_data.0* %46, i32 %49, i64 %52)
  store i32 %53, i32* %7, align 4
  %54 = load i32, i32* %7, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %68

56:                                               ; preds = %40
  %57 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %58 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.xgbe_phy_data*, %struct.xgbe_phy_data** %5, align 8
  %61 = getelementptr inbounds %struct.xgbe_phy_data, %struct.xgbe_phy_data* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.xgbe_phy_data*, %struct.xgbe_phy_data** %5, align 8
  %64 = getelementptr inbounds %struct.xgbe_phy_data, %struct.xgbe_phy_data* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = call i32 (i32, i8*, ...) @netdev_err(i32 %59, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %62, i64 %65)
  %67 = load i32, i32* %7, align 4
  store i32 %67, i32* %2, align 4
  br label %157

68:                                               ; preds = %40
  %69 = load %struct.xgbe_phy_data*, %struct.xgbe_phy_data** %5, align 8
  %70 = getelementptr inbounds %struct.xgbe_phy_data, %struct.xgbe_phy_data* %69, i32 0, i32 4
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.xgbe_phy_data*, %struct.xgbe_phy_data** %5, align 8
  %73 = getelementptr inbounds %struct.xgbe_phy_data, %struct.xgbe_phy_data* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.xgbe_phy_data*, %struct.xgbe_phy_data** %5, align 8
  %76 = getelementptr inbounds %struct.xgbe_phy_data, %struct.xgbe_phy_data* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @XGBE_MDIO_MODE_CL45, align 8
  %79 = icmp eq i64 %77, %78
  %80 = zext i1 %79 to i32
  %81 = call %struct.phy_device* @get_phy_device(i32 %71, i32 %74, i32 %80)
  store %struct.phy_device* %81, %struct.phy_device** %6, align 8
  %82 = load %struct.phy_device*, %struct.phy_device** %6, align 8
  %83 = call i64 @IS_ERR(%struct.phy_device* %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %92

85:                                               ; preds = %68
  %86 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %87 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = call i32 (i32, i8*, ...) @netdev_err(i32 %88, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %90 = load i32, i32* @ENODEV, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %2, align 4
  br label %157

92:                                               ; preds = %68
  %93 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %94 = load i32, i32* @drv, align 4
  %95 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %96 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = load %struct.phy_device*, %struct.phy_device** %6, align 8
  %99 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @netif_dbg(%struct.xgbe_prv_data* %93, i32 %94, i32 %97, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %100)
  %102 = load %struct.phy_device*, %struct.phy_device** %6, align 8
  %103 = call i32 @phy_device_register(%struct.phy_device* %102)
  store i32 %103, i32* %7, align 4
  %104 = load i32, i32* %7, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %114

106:                                              ; preds = %92
  %107 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %108 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = call i32 (i32, i8*, ...) @netdev_err(i32 %109, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  %111 = load %struct.phy_device*, %struct.phy_device** %6, align 8
  %112 = call i32 @phy_device_free(%struct.phy_device* %111)
  %113 = load i32, i32* %7, align 4
  store i32 %113, i32* %2, align 4
  br label %157

114:                                              ; preds = %92
  %115 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %116 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = load %struct.phy_device*, %struct.phy_device** %6, align 8
  %119 = load %struct.phy_device*, %struct.phy_device** %6, align 8
  %120 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = load i32, i32* @PHY_INTERFACE_MODE_SGMII, align 4
  %123 = call i32 @phy_attach_direct(i32 %117, %struct.phy_device* %118, i32 %121, i32 %122)
  store i32 %123, i32* %7, align 4
  %124 = load i32, i32* %7, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %136

126:                                              ; preds = %114
  %127 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %128 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = call i32 (i32, i8*, ...) @netdev_err(i32 %129, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0))
  %131 = load %struct.phy_device*, %struct.phy_device** %6, align 8
  %132 = call i32 @phy_device_remove(%struct.phy_device* %131)
  %133 = load %struct.phy_device*, %struct.phy_device** %6, align 8
  %134 = call i32 @phy_device_free(%struct.phy_device* %133)
  %135 = load i32, i32* %7, align 4
  store i32 %135, i32* %2, align 4
  br label %157

136:                                              ; preds = %114
  %137 = load %struct.phy_device*, %struct.phy_device** %6, align 8
  %138 = load %struct.xgbe_phy_data*, %struct.xgbe_phy_data** %5, align 8
  %139 = getelementptr inbounds %struct.xgbe_phy_data, %struct.xgbe_phy_data* %138, i32 0, i32 2
  store %struct.phy_device* %137, %struct.phy_device** %139, align 8
  %140 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %141 = call i32 @xgbe_phy_external_phy_quirks(%struct.xgbe_prv_data* %140)
  %142 = load %struct.phy_device*, %struct.phy_device** %6, align 8
  %143 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = load %struct.phy_device*, %struct.phy_device** %6, align 8
  %146 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %4, align 8
  %149 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = call i32 @linkmode_and(i32 %144, i32 %147, i32 %151)
  %153 = load %struct.xgbe_phy_data*, %struct.xgbe_phy_data** %5, align 8
  %154 = getelementptr inbounds %struct.xgbe_phy_data, %struct.xgbe_phy_data* %153, i32 0, i32 2
  %155 = load %struct.phy_device*, %struct.phy_device** %154, align 8
  %156 = call i32 @phy_start_aneg(%struct.phy_device* %155)
  store i32 0, i32* %2, align 4
  br label %157

157:                                              ; preds = %136, %126, %106, %85, %56, %39, %27, %18
  %158 = load i32, i32* %2, align 4
  ret i32 %158
}

declare dso_local i32 @netdev_err(i32, i8*, ...) #1

declare dso_local %struct.phy_device* @get_phy_device(i32, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.phy_device*) #1

declare dso_local i32 @netif_dbg(%struct.xgbe_prv_data*, i32, i32, i8*, i32) #1

declare dso_local i32 @phy_device_register(%struct.phy_device*) #1

declare dso_local i32 @phy_device_free(%struct.phy_device*) #1

declare dso_local i32 @phy_attach_direct(i32, %struct.phy_device*, i32, i32) #1

declare dso_local i32 @phy_device_remove(%struct.phy_device*) #1

declare dso_local i32 @xgbe_phy_external_phy_quirks(%struct.xgbe_prv_data*) #1

declare dso_local i32 @linkmode_and(i32, i32, i32) #1

declare dso_local i32 @phy_start_aneg(%struct.phy_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
