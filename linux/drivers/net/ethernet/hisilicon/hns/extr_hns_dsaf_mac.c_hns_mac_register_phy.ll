; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_dsaf_mac.c_hns_mac_register_phy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_dsaf_mac.c_hns_mac_register_phy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hns_mac_cb = type { i32, i32, i32 }
%struct.fwnode_reference_args = type { i32 }
%struct.platform_device = type { i32 }
%struct.mii_bus = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"mdio-node\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"mac%d mdio pdev is NULL\0A\00", align 1
@.str.2 = private unnamed_addr constant [49 x i8] c"mac%d mdio is NULL, dsaf will probe again later\0A\00", align 1
@EPROBE_DEFER = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [28 x i8] c"mac%d register phy addr:%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hns_mac_cb*)* @hns_mac_register_phy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hns_mac_register_phy(%struct.hns_mac_cb* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hns_mac_cb*, align 8
  %4 = alloca %struct.fwnode_reference_args, align 4
  %5 = alloca %struct.platform_device*, align 8
  %6 = alloca %struct.mii_bus*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.hns_mac_cb* %0, %struct.hns_mac_cb** %3, align 8
  %9 = load %struct.hns_mac_cb*, %struct.hns_mac_cb** %3, align 8
  %10 = getelementptr inbounds %struct.hns_mac_cb, %struct.hns_mac_cb* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @to_acpi_device_node(i32 %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @ENODEV, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %95

17:                                               ; preds = %1
  %18 = load %struct.hns_mac_cb*, %struct.hns_mac_cb** %3, align 8
  %19 = getelementptr inbounds %struct.hns_mac_cb, %struct.hns_mac_cb* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @acpi_node_get_property_reference(i32 %20, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 0, %struct.fwnode_reference_args* %4)
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %7, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %17
  %25 = load i32, i32* %7, align 4
  store i32 %25, i32* %2, align 4
  br label %95

26:                                               ; preds = %17
  %27 = getelementptr inbounds %struct.fwnode_reference_args, %struct.fwnode_reference_args* %4, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @is_acpi_device_node(i32 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %26
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %2, align 4
  br label %95

34:                                               ; preds = %26
  %35 = load %struct.hns_mac_cb*, %struct.hns_mac_cb** %3, align 8
  %36 = getelementptr inbounds %struct.hns_mac_cb, %struct.hns_mac_cb* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.hns_mac_cb*, %struct.hns_mac_cb** %3, align 8
  %39 = getelementptr inbounds %struct.hns_mac_cb, %struct.hns_mac_cb* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @hns_mac_phy_parse_addr(i32 %37, i32 %40)
  store i32 %41, i32* %8, align 4
  %42 = load i32, i32* %8, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %34
  %45 = load i32, i32* %8, align 4
  store i32 %45, i32* %2, align 4
  br label %95

46:                                               ; preds = %34
  %47 = getelementptr inbounds %struct.fwnode_reference_args, %struct.fwnode_reference_args* %4, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call %struct.platform_device* @hns_dsaf_find_platform_device(i32 %48)
  store %struct.platform_device* %49, %struct.platform_device** %5, align 8
  %50 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %51 = icmp ne %struct.platform_device* %50, null
  br i1 %51, label %62, label %52

52:                                               ; preds = %46
  %53 = load %struct.hns_mac_cb*, %struct.hns_mac_cb** %3, align 8
  %54 = getelementptr inbounds %struct.hns_mac_cb, %struct.hns_mac_cb* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.hns_mac_cb*, %struct.hns_mac_cb** %3, align 8
  %57 = getelementptr inbounds %struct.hns_mac_cb, %struct.hns_mac_cb* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @dev_err(i32 %55, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %58)
  %60 = load i32, i32* @EINVAL, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %2, align 4
  br label %95

62:                                               ; preds = %46
  %63 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %64 = call %struct.mii_bus* @platform_get_drvdata(%struct.platform_device* %63)
  store %struct.mii_bus* %64, %struct.mii_bus** %6, align 8
  %65 = load %struct.mii_bus*, %struct.mii_bus** %6, align 8
  %66 = icmp ne %struct.mii_bus* %65, null
  br i1 %66, label %77, label %67

67:                                               ; preds = %62
  %68 = load %struct.hns_mac_cb*, %struct.hns_mac_cb** %3, align 8
  %69 = getelementptr inbounds %struct.hns_mac_cb, %struct.hns_mac_cb* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.hns_mac_cb*, %struct.hns_mac_cb** %3, align 8
  %72 = getelementptr inbounds %struct.hns_mac_cb, %struct.hns_mac_cb* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @dev_err(i32 %70, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0), i32 %73)
  %75 = load i32, i32* @EPROBE_DEFER, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %2, align 4
  br label %95

77:                                               ; preds = %62
  %78 = load %struct.mii_bus*, %struct.mii_bus** %6, align 8
  %79 = load %struct.hns_mac_cb*, %struct.hns_mac_cb** %3, align 8
  %80 = load i32, i32* %8, align 4
  %81 = call i32 @hns_mac_register_phydev(%struct.mii_bus* %78, %struct.hns_mac_cb* %79, i32 %80)
  store i32 %81, i32* %7, align 4
  %82 = load i32, i32* %7, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %93, label %84

84:                                               ; preds = %77
  %85 = load %struct.hns_mac_cb*, %struct.hns_mac_cb** %3, align 8
  %86 = getelementptr inbounds %struct.hns_mac_cb, %struct.hns_mac_cb* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.hns_mac_cb*, %struct.hns_mac_cb** %3, align 8
  %89 = getelementptr inbounds %struct.hns_mac_cb, %struct.hns_mac_cb* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* %8, align 4
  %92 = call i32 @dev_dbg(i32 %87, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i32 %90, i32 %91)
  br label %93

93:                                               ; preds = %84, %77
  %94 = load i32, i32* %7, align 4
  store i32 %94, i32* %2, align 4
  br label %95

95:                                               ; preds = %93, %67, %52, %44, %31, %24, %14
  %96 = load i32, i32* %2, align 4
  ret i32 %96
}

declare dso_local i32 @to_acpi_device_node(i32) #1

declare dso_local i32 @acpi_node_get_property_reference(i32, i8*, i32, %struct.fwnode_reference_args*) #1

declare dso_local i32 @is_acpi_device_node(i32) #1

declare dso_local i32 @hns_mac_phy_parse_addr(i32, i32) #1

declare dso_local %struct.platform_device* @hns_dsaf_find_platform_device(i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local %struct.mii_bus* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @hns_mac_register_phydev(%struct.mii_bus*, %struct.hns_mac_cb*, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
