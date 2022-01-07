; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/phy/extr_xilinx_gmii2rgmii.c_xgmiitorgmii_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/phy/extr_xilinx_gmii2rgmii.c_xgmiitorgmii_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mdio_device = type { %struct.device }
%struct.device = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.gmii2rgmii = type { %struct.TYPE_5__, %struct.TYPE_4__*, %struct.TYPE_5__*, %struct.mdio_device* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { %struct.TYPE_5__*, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"phy-handle\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"Couldn't parse phy-handle\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"Couldn't find phydev\0A\00", align 1
@EPROBE_DEFER = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [24 x i8] c"Attached phy not ready\0A\00", align 1
@xgmiitorgmii_read_status = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mdio_device*)* @xgmiitorgmii_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xgmiitorgmii_probe(%struct.mdio_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mdio_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca %struct.device_node*, align 8
  %7 = alloca %struct.gmii2rgmii*, align 8
  store %struct.mdio_device* %0, %struct.mdio_device** %3, align 8
  %8 = load %struct.mdio_device*, %struct.mdio_device** %3, align 8
  %9 = getelementptr inbounds %struct.mdio_device, %struct.mdio_device* %8, i32 0, i32 0
  store %struct.device* %9, %struct.device** %4, align 8
  %10 = load %struct.device*, %struct.device** %4, align 8
  %11 = getelementptr inbounds %struct.device, %struct.device* %10, i32 0, i32 0
  %12 = load %struct.device_node*, %struct.device_node** %11, align 8
  store %struct.device_node* %12, %struct.device_node** %5, align 8
  %13 = load %struct.device*, %struct.device** %4, align 8
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.gmii2rgmii* @devm_kzalloc(%struct.device* %13, i32 32, i32 %14)
  store %struct.gmii2rgmii* %15, %struct.gmii2rgmii** %7, align 8
  %16 = load %struct.gmii2rgmii*, %struct.gmii2rgmii** %7, align 8
  %17 = icmp ne %struct.gmii2rgmii* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %1
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %94

21:                                               ; preds = %1
  %22 = load %struct.device_node*, %struct.device_node** %5, align 8
  %23 = call %struct.device_node* @of_parse_phandle(%struct.device_node* %22, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 0)
  store %struct.device_node* %23, %struct.device_node** %6, align 8
  %24 = load %struct.device_node*, %struct.device_node** %6, align 8
  %25 = icmp ne %struct.device_node* %24, null
  br i1 %25, label %31, label %26

26:                                               ; preds = %21
  %27 = load %struct.device*, %struct.device** %4, align 8
  %28 = call i32 @dev_err(%struct.device* %27, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %29 = load i32, i32* @ENODEV, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %2, align 4
  br label %94

31:                                               ; preds = %21
  %32 = load %struct.device_node*, %struct.device_node** %6, align 8
  %33 = call %struct.TYPE_4__* @of_phy_find_device(%struct.device_node* %32)
  %34 = load %struct.gmii2rgmii*, %struct.gmii2rgmii** %7, align 8
  %35 = getelementptr inbounds %struct.gmii2rgmii, %struct.gmii2rgmii* %34, i32 0, i32 1
  store %struct.TYPE_4__* %33, %struct.TYPE_4__** %35, align 8
  %36 = load %struct.device_node*, %struct.device_node** %6, align 8
  %37 = call i32 @of_node_put(%struct.device_node* %36)
  %38 = load %struct.gmii2rgmii*, %struct.gmii2rgmii** %7, align 8
  %39 = getelementptr inbounds %struct.gmii2rgmii, %struct.gmii2rgmii* %38, i32 0, i32 1
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = icmp ne %struct.TYPE_4__* %40, null
  br i1 %41, label %47, label %42

42:                                               ; preds = %31
  %43 = load %struct.device*, %struct.device** %4, align 8
  %44 = call i32 @dev_info(%struct.device* %43, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %45 = load i32, i32* @EPROBE_DEFER, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %2, align 4
  br label %94

47:                                               ; preds = %31
  %48 = load %struct.gmii2rgmii*, %struct.gmii2rgmii** %7, align 8
  %49 = getelementptr inbounds %struct.gmii2rgmii, %struct.gmii2rgmii* %48, i32 0, i32 1
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %51, align 8
  %53 = icmp ne %struct.TYPE_5__* %52, null
  br i1 %53, label %59, label %54

54:                                               ; preds = %47
  %55 = load %struct.device*, %struct.device** %4, align 8
  %56 = call i32 @dev_info(%struct.device* %55, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  %57 = load i32, i32* @EPROBE_DEFER, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %2, align 4
  br label %94

59:                                               ; preds = %47
  %60 = load %struct.mdio_device*, %struct.mdio_device** %3, align 8
  %61 = load %struct.gmii2rgmii*, %struct.gmii2rgmii** %7, align 8
  %62 = getelementptr inbounds %struct.gmii2rgmii, %struct.gmii2rgmii* %61, i32 0, i32 3
  store %struct.mdio_device* %60, %struct.mdio_device** %62, align 8
  %63 = load %struct.gmii2rgmii*, %struct.gmii2rgmii** %7, align 8
  %64 = getelementptr inbounds %struct.gmii2rgmii, %struct.gmii2rgmii* %63, i32 0, i32 1
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %66, align 8
  %68 = load %struct.gmii2rgmii*, %struct.gmii2rgmii** %7, align 8
  %69 = getelementptr inbounds %struct.gmii2rgmii, %struct.gmii2rgmii* %68, i32 0, i32 2
  store %struct.TYPE_5__* %67, %struct.TYPE_5__** %69, align 8
  %70 = load %struct.gmii2rgmii*, %struct.gmii2rgmii** %7, align 8
  %71 = getelementptr inbounds %struct.gmii2rgmii, %struct.gmii2rgmii* %70, i32 0, i32 0
  %72 = load %struct.gmii2rgmii*, %struct.gmii2rgmii** %7, align 8
  %73 = getelementptr inbounds %struct.gmii2rgmii, %struct.gmii2rgmii* %72, i32 0, i32 1
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %75, align 8
  %77 = call i32 @memcpy(%struct.TYPE_5__* %71, %struct.TYPE_5__* %76, i32 4)
  %78 = load i32, i32* @xgmiitorgmii_read_status, align 4
  %79 = load %struct.gmii2rgmii*, %struct.gmii2rgmii** %7, align 8
  %80 = getelementptr inbounds %struct.gmii2rgmii, %struct.gmii2rgmii* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 0
  store i32 %78, i32* %81, align 8
  %82 = load %struct.gmii2rgmii*, %struct.gmii2rgmii** %7, align 8
  %83 = getelementptr inbounds %struct.gmii2rgmii, %struct.gmii2rgmii* %82, i32 0, i32 1
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 1
  %86 = load %struct.gmii2rgmii*, %struct.gmii2rgmii** %7, align 8
  %87 = call i32 @mdiodev_set_drvdata(i32* %85, %struct.gmii2rgmii* %86)
  %88 = load %struct.gmii2rgmii*, %struct.gmii2rgmii** %7, align 8
  %89 = getelementptr inbounds %struct.gmii2rgmii, %struct.gmii2rgmii* %88, i32 0, i32 0
  %90 = load %struct.gmii2rgmii*, %struct.gmii2rgmii** %7, align 8
  %91 = getelementptr inbounds %struct.gmii2rgmii, %struct.gmii2rgmii* %90, i32 0, i32 1
  %92 = load %struct.TYPE_4__*, %struct.TYPE_4__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 0
  store %struct.TYPE_5__* %89, %struct.TYPE_5__** %93, align 8
  store i32 0, i32* %2, align 4
  br label %94

94:                                               ; preds = %59, %54, %42, %26, %18
  %95 = load i32, i32* %2, align 4
  ret i32 %95
}

declare dso_local %struct.gmii2rgmii* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local %struct.device_node* @of_parse_phandle(%struct.device_node*, i8*, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local %struct.TYPE_4__* @of_phy_find_device(%struct.device_node*) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

declare dso_local i32 @dev_info(%struct.device*, i8*) #1

declare dso_local i32 @memcpy(%struct.TYPE_5__*, %struct.TYPE_5__*, i32) #1

declare dso_local i32 @mdiodev_set_drvdata(i32*, %struct.gmii2rgmii*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
