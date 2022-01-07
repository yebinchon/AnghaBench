; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ti/extr_cpsw-phy-sel.c_cpsw_phy_sel_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ti/extr_cpsw-phy-sel.c_cpsw_phy_sel_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.resource = type { i32 }
%struct.of_device_id = type { i32 }
%struct.cpsw_phy_sel_priv = type { i32, i32, i32, %struct.TYPE_5__* }

@cpsw_phy_sel_id_table = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"unable to alloc memory for cpsw phy sel\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"gmii-sel\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"rmii-clock-ext\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @cpsw_phy_sel_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cpsw_phy_sel_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.resource*, align 8
  %5 = alloca %struct.of_device_id*, align 8
  %6 = alloca %struct.cpsw_phy_sel_priv*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %7 = load i32, i32* @cpsw_phy_sel_id_table, align 4
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.of_device_id* @of_match_node(i32 %7, i32 %11)
  store %struct.of_device_id* %12, %struct.of_device_id** %5, align 8
  %13 = load %struct.of_device_id*, %struct.of_device_id** %5, align 8
  %14 = icmp ne %struct.of_device_id* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %75

18:                                               ; preds = %1
  %19 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %20 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %19, i32 0, i32 0
  %21 = load i32, i32* @GFP_KERNEL, align 4
  %22 = call %struct.cpsw_phy_sel_priv* @devm_kzalloc(%struct.TYPE_5__* %20, i32 24, i32 %21)
  store %struct.cpsw_phy_sel_priv* %22, %struct.cpsw_phy_sel_priv** %6, align 8
  %23 = load %struct.cpsw_phy_sel_priv*, %struct.cpsw_phy_sel_priv** %6, align 8
  %24 = icmp ne %struct.cpsw_phy_sel_priv* %23, null
  br i1 %24, label %31, label %25

25:                                               ; preds = %18
  %26 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %27 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %26, i32 0, i32 0
  %28 = call i32 @dev_err(%struct.TYPE_5__* %27, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %2, align 4
  br label %75

31:                                               ; preds = %18
  %32 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %33 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %32, i32 0, i32 0
  %34 = load %struct.cpsw_phy_sel_priv*, %struct.cpsw_phy_sel_priv** %6, align 8
  %35 = getelementptr inbounds %struct.cpsw_phy_sel_priv, %struct.cpsw_phy_sel_priv* %34, i32 0, i32 3
  store %struct.TYPE_5__* %33, %struct.TYPE_5__** %35, align 8
  %36 = load %struct.of_device_id*, %struct.of_device_id** %5, align 8
  %37 = getelementptr inbounds %struct.of_device_id, %struct.of_device_id* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.cpsw_phy_sel_priv*, %struct.cpsw_phy_sel_priv** %6, align 8
  %40 = getelementptr inbounds %struct.cpsw_phy_sel_priv, %struct.cpsw_phy_sel_priv* %39, i32 0, i32 2
  store i32 %38, i32* %40, align 8
  %41 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %42 = load i32, i32* @IORESOURCE_MEM, align 4
  %43 = call %struct.resource* @platform_get_resource_byname(%struct.platform_device* %41, i32 %42, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  store %struct.resource* %43, %struct.resource** %4, align 8
  %44 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %45 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %44, i32 0, i32 0
  %46 = load %struct.resource*, %struct.resource** %4, align 8
  %47 = call i32 @devm_ioremap_resource(%struct.TYPE_5__* %45, %struct.resource* %46)
  %48 = load %struct.cpsw_phy_sel_priv*, %struct.cpsw_phy_sel_priv** %6, align 8
  %49 = getelementptr inbounds %struct.cpsw_phy_sel_priv, %struct.cpsw_phy_sel_priv* %48, i32 0, i32 1
  store i32 %47, i32* %49, align 4
  %50 = load %struct.cpsw_phy_sel_priv*, %struct.cpsw_phy_sel_priv** %6, align 8
  %51 = getelementptr inbounds %struct.cpsw_phy_sel_priv, %struct.cpsw_phy_sel_priv* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call i64 @IS_ERR(i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %31
  %56 = load %struct.cpsw_phy_sel_priv*, %struct.cpsw_phy_sel_priv** %6, align 8
  %57 = getelementptr inbounds %struct.cpsw_phy_sel_priv, %struct.cpsw_phy_sel_priv* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @PTR_ERR(i32 %58)
  store i32 %59, i32* %2, align 4
  br label %75

60:                                               ; preds = %31
  %61 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %62 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i64 @of_find_property(i32 %64, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32* null)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %60
  %68 = load %struct.cpsw_phy_sel_priv*, %struct.cpsw_phy_sel_priv** %6, align 8
  %69 = getelementptr inbounds %struct.cpsw_phy_sel_priv, %struct.cpsw_phy_sel_priv* %68, i32 0, i32 0
  store i32 1, i32* %69, align 8
  br label %70

70:                                               ; preds = %67, %60
  %71 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %72 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %71, i32 0, i32 0
  %73 = load %struct.cpsw_phy_sel_priv*, %struct.cpsw_phy_sel_priv** %6, align 8
  %74 = call i32 @dev_set_drvdata(%struct.TYPE_5__* %72, %struct.cpsw_phy_sel_priv* %73)
  store i32 0, i32* %2, align 4
  br label %75

75:                                               ; preds = %70, %55, %25, %15
  %76 = load i32, i32* %2, align 4
  ret i32 %76
}

declare dso_local %struct.of_device_id* @of_match_node(i32, i32) #1

declare dso_local %struct.cpsw_phy_sel_priv* @devm_kzalloc(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_5__*, i8*) #1

declare dso_local %struct.resource* @platform_get_resource_byname(%struct.platform_device*, i32, i8*) #1

declare dso_local i32 @devm_ioremap_resource(%struct.TYPE_5__*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i64 @of_find_property(i32, i8*, i32*) #1

declare dso_local i32 @dev_set_drvdata(%struct.TYPE_5__*, %struct.cpsw_phy_sel_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
