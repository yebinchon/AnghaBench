; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/devices/extr_st_spi_fsm.c_stfsm_fetch_platform_configs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/devices/extr_st_spi_fsm.c_stfsm_fetch_platform_configs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.stfsm = type { i32, i8*, i8* }
%struct.regmap = type { i32 }

@.str = private unnamed_addr constant [10 x i8] c"st,syscfg\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"st,reset-signal\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"st,reset-por\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"st,boot-device-reg\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"st,boot-device-spi\00", align 1
@.str.5 = private unnamed_addr constant [53 x i8] c"failed to fetch boot device, assuming boot from SPI\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.platform_device*)* @stfsm_fetch_platform_configs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stfsm_fetch_platform_configs(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.stfsm*, align 8
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca %struct.regmap*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %11 = call %struct.stfsm* @platform_get_drvdata(%struct.platform_device* %10)
  store %struct.stfsm* %11, %struct.stfsm** %3, align 8
  %12 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %13 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load %struct.device_node*, %struct.device_node** %14, align 8
  store %struct.device_node* %15, %struct.device_node** %4, align 8
  %16 = load %struct.stfsm*, %struct.stfsm** %3, align 8
  %17 = getelementptr inbounds %struct.stfsm, %struct.stfsm* %16, i32 0, i32 0
  store i32 1, i32* %17, align 8
  %18 = load %struct.device_node*, %struct.device_node** %4, align 8
  %19 = call %struct.regmap* @syscon_regmap_lookup_by_phandle(%struct.device_node* %18, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  store %struct.regmap* %19, %struct.regmap** %5, align 8
  %20 = load %struct.regmap*, %struct.regmap** %5, align 8
  %21 = call i64 @IS_ERR(%struct.regmap* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %1
  br label %59

24:                                               ; preds = %1
  %25 = load %struct.device_node*, %struct.device_node** %4, align 8
  %26 = call i8* @of_property_read_bool(%struct.device_node* %25, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %27 = load %struct.stfsm*, %struct.stfsm** %3, align 8
  %28 = getelementptr inbounds %struct.stfsm, %struct.stfsm* %27, i32 0, i32 2
  store i8* %26, i8** %28, align 8
  %29 = load %struct.device_node*, %struct.device_node** %4, align 8
  %30 = call i8* @of_property_read_bool(%struct.device_node* %29, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  %31 = load %struct.stfsm*, %struct.stfsm** %3, align 8
  %32 = getelementptr inbounds %struct.stfsm, %struct.stfsm* %31, i32 0, i32 1
  store i8* %30, i8** %32, align 8
  %33 = load %struct.device_node*, %struct.device_node** %4, align 8
  %34 = call i32 @of_property_read_u32(%struct.device_node* %33, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i64* %6)
  store i32 %34, i32* %9, align 4
  %35 = load i32, i32* %9, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %24
  br label %59

38:                                               ; preds = %24
  %39 = load %struct.device_node*, %struct.device_node** %4, align 8
  %40 = call i32 @of_property_read_u32(%struct.device_node* %39, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i64* %7)
  store i32 %40, i32* %9, align 4
  %41 = load i32, i32* %9, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %38
  br label %59

44:                                               ; preds = %38
  %45 = load %struct.regmap*, %struct.regmap** %5, align 8
  %46 = load i64, i64* %6, align 8
  %47 = call i32 @regmap_read(%struct.regmap* %45, i64 %46, i64* %8)
  store i32 %47, i32* %9, align 4
  %48 = load i32, i32* %9, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %44
  br label %59

51:                                               ; preds = %44
  %52 = load i64, i64* %8, align 8
  %53 = load i64, i64* %7, align 8
  %54 = icmp ne i64 %52, %53
  br i1 %54, label %55, label %58

55:                                               ; preds = %51
  %56 = load %struct.stfsm*, %struct.stfsm** %3, align 8
  %57 = getelementptr inbounds %struct.stfsm, %struct.stfsm* %56, i32 0, i32 0
  store i32 0, i32* %57, align 8
  br label %58

58:                                               ; preds = %55, %51
  br label %63

59:                                               ; preds = %50, %43, %37, %23
  %60 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %61 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %60, i32 0, i32 0
  %62 = call i32 @dev_warn(%struct.TYPE_2__* %61, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.5, i64 0, i64 0))
  br label %63

63:                                               ; preds = %59, %58
  ret void
}

declare dso_local %struct.stfsm* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local %struct.regmap* @syscon_regmap_lookup_by_phandle(%struct.device_node*, i8*) #1

declare dso_local i64 @IS_ERR(%struct.regmap*) #1

declare dso_local i8* @of_property_read_bool(%struct.device_node*, i8*) #1

declare dso_local i32 @of_property_read_u32(%struct.device_node*, i8*, i64*) #1

declare dso_local i32 @regmap_read(%struct.regmap*, i64, i64*) #1

declare dso_local i32 @dev_warn(%struct.TYPE_2__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
