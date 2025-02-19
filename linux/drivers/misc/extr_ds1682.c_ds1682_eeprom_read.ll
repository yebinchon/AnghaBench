; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/extr_ds1682.c_ds1682_eeprom_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/extr_ds1682.c_ds1682_eeprom_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.kobject = type { i32 }
%struct.bin_attribute = type { i32 }
%struct.i2c_client = type { i32 }

@.str = private unnamed_addr constant [43 x i8] c"ds1682_eeprom_read(p=%p, off=%lli, c=%zi)\0A\00", align 1
@DS1682_REG_EEPROM = common dso_local global i64 0, align 8
@EIO = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)* @ds1682_eeprom_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ds1682_eeprom_read(%struct.file* %0, %struct.kobject* %1, %struct.bin_attribute* %2, i8* %3, i64 %4, i64 %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca %struct.file*, align 8
  %9 = alloca %struct.kobject*, align 8
  %10 = alloca %struct.bin_attribute*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.i2c_client*, align 8
  %15 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %8, align 8
  store %struct.kobject* %1, %struct.kobject** %9, align 8
  store %struct.bin_attribute* %2, %struct.bin_attribute** %10, align 8
  store i8* %3, i8** %11, align 8
  store i64 %4, i64* %12, align 8
  store i64 %5, i64* %13, align 8
  %16 = load %struct.kobject*, %struct.kobject** %9, align 8
  %17 = call %struct.i2c_client* @kobj_to_i2c_client(%struct.kobject* %16)
  store %struct.i2c_client* %17, %struct.i2c_client** %14, align 8
  %18 = load %struct.i2c_client*, %struct.i2c_client** %14, align 8
  %19 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %18, i32 0, i32 0
  %20 = load i8*, i8** %11, align 8
  %21 = load i64, i64* %12, align 8
  %22 = load i64, i64* %13, align 8
  %23 = call i32 @dev_dbg(i32* %19, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i8* %20, i64 %21, i64 %22)
  %24 = load %struct.i2c_client*, %struct.i2c_client** %14, align 8
  %25 = load i64, i64* @DS1682_REG_EEPROM, align 8
  %26 = load i64, i64* %12, align 8
  %27 = add nsw i64 %25, %26
  %28 = load i64, i64* %13, align 8
  %29 = load i8*, i8** %11, align 8
  %30 = call i32 @i2c_smbus_read_i2c_block_data(%struct.i2c_client* %24, i64 %27, i64 %28, i8* %29)
  store i32 %30, i32* %15, align 4
  %31 = load i32, i32* %15, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %6
  %34 = load i64, i64* @EIO, align 8
  %35 = sub i64 0, %34
  store i64 %35, i64* %7, align 8
  br label %38

36:                                               ; preds = %6
  %37 = load i64, i64* %13, align 8
  store i64 %37, i64* %7, align 8
  br label %38

38:                                               ; preds = %36, %33
  %39 = load i64, i64* %7, align 8
  ret i64 %39
}

declare dso_local %struct.i2c_client* @kobj_to_i2c_client(%struct.kobject*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i8*, i64, i64) #1

declare dso_local i32 @i2c_smbus_read_i2c_block_data(%struct.i2c_client*, i64, i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
