; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ti/extr_cpsw-phy-sel.c_cpsw_phy_sel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ti/extr_cpsw-phy-sel.c_cpsw_phy_sel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_node = type { i32 }
%struct.cpsw_phy_sel_priv = type { i32 (%struct.cpsw_phy_sel_priv*, i32, i32)* }

@.str = private unnamed_addr constant [13 x i8] c"cpsw-phy-sel\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"Phy mode driver DT not found\0A\00", align 1
@platform_bus_type = common dso_local global i32 0, align 4
@match = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [41 x i8] c"unable to find platform device for %pOF\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cpsw_phy_sel(%struct.device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.device_node*, align 8
  %8 = alloca %struct.cpsw_phy_sel_priv*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.device*, %struct.device** %4, align 8
  %10 = getelementptr inbounds %struct.device, %struct.device* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.device_node* @of_parse_phandle(i32 %11, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 0)
  store %struct.device_node* %12, %struct.device_node** %7, align 8
  %13 = load %struct.device_node*, %struct.device_node** %7, align 8
  %14 = icmp ne %struct.device_node* %13, null
  br i1 %14, label %26, label %15

15:                                               ; preds = %3
  %16 = load %struct.device*, %struct.device** %4, align 8
  %17 = getelementptr inbounds %struct.device, %struct.device* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.device_node* @of_get_child_by_name(i32 %18, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  store %struct.device_node* %19, %struct.device_node** %7, align 8
  %20 = load %struct.device_node*, %struct.device_node** %7, align 8
  %21 = icmp ne %struct.device_node* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %15
  %23 = load %struct.device*, %struct.device** %4, align 8
  %24 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %23, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  br label %51

25:                                               ; preds = %15
  br label %26

26:                                               ; preds = %25, %3
  %27 = load %struct.device_node*, %struct.device_node** %7, align 8
  %28 = load i32, i32* @match, align 4
  %29 = call %struct.device* @bus_find_device(i32* @platform_bus_type, i32* null, %struct.device_node* %27, i32 %28)
  store %struct.device* %29, %struct.device** %4, align 8
  %30 = load %struct.device*, %struct.device** %4, align 8
  %31 = icmp ne %struct.device* %30, null
  br i1 %31, label %36, label %32

32:                                               ; preds = %26
  %33 = load %struct.device*, %struct.device** %4, align 8
  %34 = load %struct.device_node*, %struct.device_node** %7, align 8
  %35 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %33, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), %struct.device_node* %34)
  br label %48

36:                                               ; preds = %26
  %37 = load %struct.device*, %struct.device** %4, align 8
  %38 = call %struct.cpsw_phy_sel_priv* @dev_get_drvdata(%struct.device* %37)
  store %struct.cpsw_phy_sel_priv* %38, %struct.cpsw_phy_sel_priv** %8, align 8
  %39 = load %struct.cpsw_phy_sel_priv*, %struct.cpsw_phy_sel_priv** %8, align 8
  %40 = getelementptr inbounds %struct.cpsw_phy_sel_priv, %struct.cpsw_phy_sel_priv* %39, i32 0, i32 0
  %41 = load i32 (%struct.cpsw_phy_sel_priv*, i32, i32)*, i32 (%struct.cpsw_phy_sel_priv*, i32, i32)** %40, align 8
  %42 = load %struct.cpsw_phy_sel_priv*, %struct.cpsw_phy_sel_priv** %8, align 8
  %43 = load i32, i32* %5, align 4
  %44 = load i32, i32* %6, align 4
  %45 = call i32 %41(%struct.cpsw_phy_sel_priv* %42, i32 %43, i32 %44)
  %46 = load %struct.device*, %struct.device** %4, align 8
  %47 = call i32 @put_device(%struct.device* %46)
  br label %48

48:                                               ; preds = %36, %32
  %49 = load %struct.device_node*, %struct.device_node** %7, align 8
  %50 = call i32 @of_node_put(%struct.device_node* %49)
  br label %51

51:                                               ; preds = %48, %22
  ret void
}

declare dso_local %struct.device_node* @of_parse_phandle(i32, i8*, i32) #1

declare dso_local %struct.device_node* @of_get_child_by_name(i32, i8*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local %struct.device* @bus_find_device(i32*, i32*, %struct.device_node*, i32) #1

declare dso_local %struct.cpsw_phy_sel_priv* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @put_device(%struct.device*) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
