; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/eeprom/extr_at24.c_at24_get_chip_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/eeprom/extr_at24.c_at24_get_chip_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.at24_chip_data = type { i32 }
%struct.device = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.i2c_device_id = type { i64 }

@at24_ids = common dso_local global i32 0, align 4
@at24_of_match = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.at24_chip_data* (%struct.device*)* @at24_get_chip_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.at24_chip_data* @at24_get_chip_data(%struct.device* %0) #0 {
  %2 = alloca %struct.at24_chip_data*, align 8
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca %struct.at24_chip_data*, align 8
  %6 = alloca %struct.i2c_device_id*, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  %7 = load %struct.device*, %struct.device** %3, align 8
  %8 = getelementptr inbounds %struct.device, %struct.device* %7, i32 0, i32 0
  %9 = load %struct.device_node*, %struct.device_node** %8, align 8
  store %struct.device_node* %9, %struct.device_node** %4, align 8
  %10 = load i32, i32* @at24_ids, align 4
  %11 = load %struct.device*, %struct.device** %3, align 8
  %12 = call i32 @to_i2c_client(%struct.device* %11)
  %13 = call %struct.i2c_device_id* @i2c_match_id(i32 %10, i32 %12)
  store %struct.i2c_device_id* %13, %struct.i2c_device_id** %6, align 8
  %14 = load %struct.device_node*, %struct.device_node** %4, align 8
  %15 = icmp ne %struct.device_node* %14, null
  br i1 %15, label %16, label %24

16:                                               ; preds = %1
  %17 = load i32, i32* @at24_of_match, align 4
  %18 = load %struct.device*, %struct.device** %3, align 8
  %19 = call i64 @of_match_device(i32 %17, %struct.device* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %16
  %22 = load %struct.device*, %struct.device** %3, align 8
  %23 = call %struct.at24_chip_data* @of_device_get_match_data(%struct.device* %22)
  store %struct.at24_chip_data* %23, %struct.at24_chip_data** %5, align 8
  br label %37

24:                                               ; preds = %16, %1
  %25 = load %struct.i2c_device_id*, %struct.i2c_device_id** %6, align 8
  %26 = icmp ne %struct.i2c_device_id* %25, null
  br i1 %26, label %27, label %33

27:                                               ; preds = %24
  %28 = load %struct.i2c_device_id*, %struct.i2c_device_id** %6, align 8
  %29 = getelementptr inbounds %struct.i2c_device_id, %struct.i2c_device_id* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = inttoptr i64 %30 to i8*
  %32 = bitcast i8* %31 to %struct.at24_chip_data*
  store %struct.at24_chip_data* %32, %struct.at24_chip_data** %5, align 8
  br label %36

33:                                               ; preds = %24
  %34 = load %struct.device*, %struct.device** %3, align 8
  %35 = call %struct.at24_chip_data* @acpi_device_get_match_data(%struct.device* %34)
  store %struct.at24_chip_data* %35, %struct.at24_chip_data** %5, align 8
  br label %36

36:                                               ; preds = %33, %27
  br label %37

37:                                               ; preds = %36, %21
  %38 = load %struct.at24_chip_data*, %struct.at24_chip_data** %5, align 8
  %39 = icmp ne %struct.at24_chip_data* %38, null
  br i1 %39, label %44, label %40

40:                                               ; preds = %37
  %41 = load i32, i32* @ENODEV, align 4
  %42 = sub nsw i32 0, %41
  %43 = call %struct.at24_chip_data* @ERR_PTR(i32 %42)
  store %struct.at24_chip_data* %43, %struct.at24_chip_data** %2, align 8
  br label %46

44:                                               ; preds = %37
  %45 = load %struct.at24_chip_data*, %struct.at24_chip_data** %5, align 8
  store %struct.at24_chip_data* %45, %struct.at24_chip_data** %2, align 8
  br label %46

46:                                               ; preds = %44, %40
  %47 = load %struct.at24_chip_data*, %struct.at24_chip_data** %2, align 8
  ret %struct.at24_chip_data* %47
}

declare dso_local %struct.i2c_device_id* @i2c_match_id(i32, i32) #1

declare dso_local i32 @to_i2c_client(%struct.device*) #1

declare dso_local i64 @of_match_device(i32, %struct.device*) #1

declare dso_local %struct.at24_chip_data* @of_device_get_match_data(%struct.device*) #1

declare dso_local %struct.at24_chip_data* @acpi_device_get_match_data(%struct.device*) #1

declare dso_local %struct.at24_chip_data* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
