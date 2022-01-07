; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/maps/extr_physmap-versatile.c_of_flash_probe_versatile.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/maps/extr_physmap-versatile.c_of_flash_probe_versatile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regmap = type { i32 }
%struct.platform_device = type { i32 }
%struct.device_node = type { i32 }
%struct.map_info = type { i32 }
%struct.of_device_id = type { i64 }

@of_flash_probe_versatile.versatile_flashprot = internal global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"arm,versatile-flash\00", align 1
@syscon_regmap = common dso_local global %struct.regmap* null, align 8
@syscon_match = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@ap_flash_set_vpp = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"Integrator/AP flash protection\0A\00", align 1
@cp_flash_set_vpp = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"Integrator/CP flash protection\0A\00", align 1
@versatile_flash_set_vpp = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [37 x i8] c"versatile/realview flash protection\0A\00", align 1
@.str.4 = private unnamed_addr constant [69 x i8] c"device marked as Versatile flash but no system controller was found\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @of_flash_probe_versatile(%struct.platform_device* %0, %struct.device_node* %1, %struct.map_info* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.platform_device*, align 8
  %6 = alloca %struct.device_node*, align 8
  %7 = alloca %struct.map_info*, align 8
  %8 = alloca %struct.device_node*, align 8
  %9 = alloca %struct.of_device_id*, align 8
  %10 = alloca %struct.regmap*, align 8
  %11 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %5, align 8
  store %struct.device_node* %1, %struct.device_node** %6, align 8
  store %struct.map_info* %2, %struct.map_info** %7, align 8
  %12 = load %struct.device_node*, %struct.device_node** %6, align 8
  %13 = call i32 @of_device_is_compatible(%struct.device_node* %12, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %77

16:                                               ; preds = %3
  %17 = load %struct.regmap*, %struct.regmap** @syscon_regmap, align 8
  %18 = icmp ne %struct.regmap* %17, null
  br i1 %18, label %42, label %19

19:                                               ; preds = %16
  %20 = load i32, i32* @syscon_match, align 4
  %21 = call %struct.device_node* @of_find_matching_node_and_match(i32* null, i32 %20, %struct.of_device_id** %9)
  store %struct.device_node* %21, %struct.device_node** %8, align 8
  %22 = load %struct.device_node*, %struct.device_node** %8, align 8
  %23 = icmp ne %struct.device_node* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %19
  %25 = load i32, i32* @ENODEV, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %77

27:                                               ; preds = %19
  %28 = load %struct.of_device_id*, %struct.of_device_id** %9, align 8
  %29 = getelementptr inbounds %struct.of_device_id, %struct.of_device_id* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = trunc i64 %30 to i32
  store i32 %31, i32* @of_flash_probe_versatile.versatile_flashprot, align 4
  %32 = load %struct.device_node*, %struct.device_node** %8, align 8
  %33 = call %struct.regmap* @syscon_node_to_regmap(%struct.device_node* %32)
  store %struct.regmap* %33, %struct.regmap** %10, align 8
  %34 = load %struct.regmap*, %struct.regmap** %10, align 8
  %35 = call i64 @IS_ERR(%struct.regmap* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %27
  %38 = load %struct.regmap*, %struct.regmap** %10, align 8
  %39 = call i32 @PTR_ERR(%struct.regmap* %38)
  store i32 %39, i32* %4, align 4
  br label %77

40:                                               ; preds = %27
  %41 = load %struct.regmap*, %struct.regmap** %10, align 8
  store %struct.regmap* %41, %struct.regmap** @syscon_regmap, align 8
  br label %42

42:                                               ; preds = %40, %16
  %43 = load i32, i32* @of_flash_probe_versatile.versatile_flashprot, align 4
  switch i32 %43, label %72 [
    i32 131, label %44
    i32 130, label %58
    i32 128, label %65
    i32 129, label %65
  ]

44:                                               ; preds = %42
  %45 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %46 = call i32 @ap_flash_init(%struct.platform_device* %45)
  store i32 %46, i32* %11, align 4
  %47 = load i32, i32* %11, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %44
  %50 = load i32, i32* %11, align 4
  store i32 %50, i32* %4, align 4
  br label %77

51:                                               ; preds = %44
  %52 = load i32, i32* @ap_flash_set_vpp, align 4
  %53 = load %struct.map_info*, %struct.map_info** %7, align 8
  %54 = getelementptr inbounds %struct.map_info, %struct.map_info* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 4
  %55 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %56 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %55, i32 0, i32 0
  %57 = call i32 @dev_info(i32* %56, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  br label %76

58:                                               ; preds = %42
  %59 = load i32, i32* @cp_flash_set_vpp, align 4
  %60 = load %struct.map_info*, %struct.map_info** %7, align 8
  %61 = getelementptr inbounds %struct.map_info, %struct.map_info* %60, i32 0, i32 0
  store i32 %59, i32* %61, align 4
  %62 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %63 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %62, i32 0, i32 0
  %64 = call i32 @dev_info(i32* %63, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  br label %76

65:                                               ; preds = %42, %42
  %66 = load i32, i32* @versatile_flash_set_vpp, align 4
  %67 = load %struct.map_info*, %struct.map_info** %7, align 8
  %68 = getelementptr inbounds %struct.map_info, %struct.map_info* %67, i32 0, i32 0
  store i32 %66, i32* %68, align 4
  %69 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %70 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %69, i32 0, i32 0
  %71 = call i32 @dev_info(i32* %70, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0))
  br label %76

72:                                               ; preds = %42
  %73 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %74 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %73, i32 0, i32 0
  %75 = call i32 @dev_info(i32* %74, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.4, i64 0, i64 0))
  br label %76

76:                                               ; preds = %72, %65, %58, %51
  store i32 0, i32* %4, align 4
  br label %77

77:                                               ; preds = %76, %49, %37, %24, %15
  %78 = load i32, i32* %4, align 4
  ret i32 %78
}

declare dso_local i32 @of_device_is_compatible(%struct.device_node*, i8*) #1

declare dso_local %struct.device_node* @of_find_matching_node_and_match(i32*, i32, %struct.of_device_id**) #1

declare dso_local %struct.regmap* @syscon_node_to_regmap(%struct.device_node*) #1

declare dso_local i64 @IS_ERR(%struct.regmap*) #1

declare dso_local i32 @PTR_ERR(%struct.regmap*) #1

declare dso_local i32 @ap_flash_init(%struct.platform_device*) #1

declare dso_local i32 @dev_info(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
