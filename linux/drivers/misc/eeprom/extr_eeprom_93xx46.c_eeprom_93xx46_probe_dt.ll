; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/eeprom/extr_eeprom_93xx46.c_eeprom_93xx46_probe_dt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/eeprom/extr_eeprom_93xx46.c_eeprom_93xx46_probe_dt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.eeprom_93xx46_platform_data*, %struct.device_node* }
%struct.eeprom_93xx46_platform_data = type { i32, i32, i32, i32, i32 }
%struct.device_node = type { i32 }
%struct.of_device_id = type { %struct.eeprom_93xx46_devtype_data* }
%struct.eeprom_93xx46_devtype_data = type { i32 }

@eeprom_93xx46_of_table = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"data-size\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"data-size property not found\0A\00", align 1
@EE_ADDR8 = common dso_local global i32 0, align 4
@EE_ADDR16 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"invalid data-size (%d)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [10 x i8] c"read-only\00", align 1
@EE_READONLY = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [7 x i8] c"select\00", align 1
@GPIOD_OUT_LOW = common dso_local global i32 0, align 4
@select_assert = common dso_local global i32 0, align 4
@select_deassert = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*)* @eeprom_93xx46_probe_dt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @eeprom_93xx46_probe_dt(%struct.spi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.spi_device*, align 8
  %4 = alloca %struct.of_device_id*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca %struct.eeprom_93xx46_platform_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.eeprom_93xx46_devtype_data*, align 8
  store %struct.spi_device* %0, %struct.spi_device** %3, align 8
  %10 = load i32, i32* @eeprom_93xx46_of_table, align 4
  %11 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %12 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %11, i32 0, i32 0
  %13 = call %struct.of_device_id* @of_match_device(i32 %10, %struct.TYPE_5__* %12)
  store %struct.of_device_id* %13, %struct.of_device_id** %4, align 8
  %14 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %15 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 1
  %17 = load %struct.device_node*, %struct.device_node** %16, align 8
  store %struct.device_node* %17, %struct.device_node** %5, align 8
  %18 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %19 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %18, i32 0, i32 0
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = call %struct.eeprom_93xx46_platform_data* @devm_kzalloc(%struct.TYPE_5__* %19, i32 20, i32 %20)
  store %struct.eeprom_93xx46_platform_data* %21, %struct.eeprom_93xx46_platform_data** %6, align 8
  %22 = load %struct.eeprom_93xx46_platform_data*, %struct.eeprom_93xx46_platform_data** %6, align 8
  %23 = icmp ne %struct.eeprom_93xx46_platform_data* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %1
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %2, align 4
  br label %119

27:                                               ; preds = %1
  %28 = load %struct.device_node*, %struct.device_node** %5, align 8
  %29 = call i32 @of_property_read_u32(%struct.device_node* %28, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32* %7)
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* %8, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %27
  %33 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %34 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %33, i32 0, i32 0
  %35 = call i32 (%struct.TYPE_5__*, i8*, ...) @dev_err(%struct.TYPE_5__* %34, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %36 = load i32, i32* %8, align 4
  store i32 %36, i32* %2, align 4
  br label %119

37:                                               ; preds = %27
  %38 = load i32, i32* %7, align 4
  %39 = icmp eq i32 %38, 8
  br i1 %39, label %40, label %46

40:                                               ; preds = %37
  %41 = load i32, i32* @EE_ADDR8, align 4
  %42 = load %struct.eeprom_93xx46_platform_data*, %struct.eeprom_93xx46_platform_data** %6, align 8
  %43 = getelementptr inbounds %struct.eeprom_93xx46_platform_data, %struct.eeprom_93xx46_platform_data* %42, i32 0, i32 4
  %44 = load i32, i32* %43, align 4
  %45 = or i32 %44, %41
  store i32 %45, i32* %43, align 4
  br label %63

46:                                               ; preds = %37
  %47 = load i32, i32* %7, align 4
  %48 = icmp eq i32 %47, 16
  br i1 %48, label %49, label %55

49:                                               ; preds = %46
  %50 = load i32, i32* @EE_ADDR16, align 4
  %51 = load %struct.eeprom_93xx46_platform_data*, %struct.eeprom_93xx46_platform_data** %6, align 8
  %52 = getelementptr inbounds %struct.eeprom_93xx46_platform_data, %struct.eeprom_93xx46_platform_data* %51, i32 0, i32 4
  %53 = load i32, i32* %52, align 4
  %54 = or i32 %53, %50
  store i32 %54, i32* %52, align 4
  br label %62

55:                                               ; preds = %46
  %56 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %57 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %56, i32 0, i32 0
  %58 = load i32, i32* %7, align 4
  %59 = call i32 (%struct.TYPE_5__*, i8*, ...) @dev_err(%struct.TYPE_5__* %57, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %58)
  %60 = load i32, i32* @EINVAL, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %2, align 4
  br label %119

62:                                               ; preds = %49
  br label %63

63:                                               ; preds = %62, %40
  %64 = load %struct.device_node*, %struct.device_node** %5, align 8
  %65 = call i64 @of_property_read_bool(%struct.device_node* %64, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %73

67:                                               ; preds = %63
  %68 = load i32, i32* @EE_READONLY, align 4
  %69 = load %struct.eeprom_93xx46_platform_data*, %struct.eeprom_93xx46_platform_data** %6, align 8
  %70 = getelementptr inbounds %struct.eeprom_93xx46_platform_data, %struct.eeprom_93xx46_platform_data* %69, i32 0, i32 4
  %71 = load i32, i32* %70, align 4
  %72 = or i32 %71, %68
  store i32 %72, i32* %70, align 4
  br label %73

73:                                               ; preds = %67, %63
  %74 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %75 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %74, i32 0, i32 0
  %76 = load i32, i32* @GPIOD_OUT_LOW, align 4
  %77 = call i32 @devm_gpiod_get_optional(%struct.TYPE_5__* %75, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i32 %76)
  %78 = load %struct.eeprom_93xx46_platform_data*, %struct.eeprom_93xx46_platform_data** %6, align 8
  %79 = getelementptr inbounds %struct.eeprom_93xx46_platform_data, %struct.eeprom_93xx46_platform_data* %78, i32 0, i32 1
  store i32 %77, i32* %79, align 4
  %80 = load %struct.eeprom_93xx46_platform_data*, %struct.eeprom_93xx46_platform_data** %6, align 8
  %81 = getelementptr inbounds %struct.eeprom_93xx46_platform_data, %struct.eeprom_93xx46_platform_data* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = call i64 @IS_ERR(i32 %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %90

85:                                               ; preds = %73
  %86 = load %struct.eeprom_93xx46_platform_data*, %struct.eeprom_93xx46_platform_data** %6, align 8
  %87 = getelementptr inbounds %struct.eeprom_93xx46_platform_data, %struct.eeprom_93xx46_platform_data* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @PTR_ERR(i32 %88)
  store i32 %89, i32* %2, align 4
  br label %119

90:                                               ; preds = %73
  %91 = load i32, i32* @select_assert, align 4
  %92 = load %struct.eeprom_93xx46_platform_data*, %struct.eeprom_93xx46_platform_data** %6, align 8
  %93 = getelementptr inbounds %struct.eeprom_93xx46_platform_data, %struct.eeprom_93xx46_platform_data* %92, i32 0, i32 3
  store i32 %91, i32* %93, align 4
  %94 = load i32, i32* @select_deassert, align 4
  %95 = load %struct.eeprom_93xx46_platform_data*, %struct.eeprom_93xx46_platform_data** %6, align 8
  %96 = getelementptr inbounds %struct.eeprom_93xx46_platform_data, %struct.eeprom_93xx46_platform_data* %95, i32 0, i32 2
  store i32 %94, i32* %96, align 4
  %97 = load %struct.eeprom_93xx46_platform_data*, %struct.eeprom_93xx46_platform_data** %6, align 8
  %98 = getelementptr inbounds %struct.eeprom_93xx46_platform_data, %struct.eeprom_93xx46_platform_data* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @gpiod_direction_output(i32 %99, i32 0)
  %101 = load %struct.of_device_id*, %struct.of_device_id** %4, align 8
  %102 = getelementptr inbounds %struct.of_device_id, %struct.of_device_id* %101, i32 0, i32 0
  %103 = load %struct.eeprom_93xx46_devtype_data*, %struct.eeprom_93xx46_devtype_data** %102, align 8
  %104 = icmp ne %struct.eeprom_93xx46_devtype_data* %103, null
  br i1 %104, label %105, label %114

105:                                              ; preds = %90
  %106 = load %struct.of_device_id*, %struct.of_device_id** %4, align 8
  %107 = getelementptr inbounds %struct.of_device_id, %struct.of_device_id* %106, i32 0, i32 0
  %108 = load %struct.eeprom_93xx46_devtype_data*, %struct.eeprom_93xx46_devtype_data** %107, align 8
  store %struct.eeprom_93xx46_devtype_data* %108, %struct.eeprom_93xx46_devtype_data** %9, align 8
  %109 = load %struct.eeprom_93xx46_devtype_data*, %struct.eeprom_93xx46_devtype_data** %9, align 8
  %110 = getelementptr inbounds %struct.eeprom_93xx46_devtype_data, %struct.eeprom_93xx46_devtype_data* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.eeprom_93xx46_platform_data*, %struct.eeprom_93xx46_platform_data** %6, align 8
  %113 = getelementptr inbounds %struct.eeprom_93xx46_platform_data, %struct.eeprom_93xx46_platform_data* %112, i32 0, i32 0
  store i32 %111, i32* %113, align 4
  br label %114

114:                                              ; preds = %105, %90
  %115 = load %struct.eeprom_93xx46_platform_data*, %struct.eeprom_93xx46_platform_data** %6, align 8
  %116 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %117 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %117, i32 0, i32 0
  store %struct.eeprom_93xx46_platform_data* %115, %struct.eeprom_93xx46_platform_data** %118, align 8
  store i32 0, i32* %2, align 4
  br label %119

119:                                              ; preds = %114, %85, %55, %32, %24
  %120 = load i32, i32* %2, align 4
  ret i32 %120
}

declare dso_local %struct.of_device_id* @of_match_device(i32, %struct.TYPE_5__*) #1

declare dso_local %struct.eeprom_93xx46_platform_data* @devm_kzalloc(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @of_property_read_u32(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @dev_err(%struct.TYPE_5__*, i8*, ...) #1

declare dso_local i64 @of_property_read_bool(%struct.device_node*, i8*) #1

declare dso_local i32 @devm_gpiod_get_optional(%struct.TYPE_5__*, i8*, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @gpiod_direction_output(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
