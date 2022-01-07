; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/eeprom/extr_max6875.c_max6875_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/eeprom/extr_max6875.c_max6875_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.kobject = type { i32 }
%struct.bin_attribute = type { i32 }
%struct.i2c_client = type { i32 }
%struct.max6875_data = type { i32* }

@SLICE_BITS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)* @max6875_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @max6875_read(%struct.file* %0, %struct.kobject* %1, %struct.bin_attribute* %2, i8* %3, i64 %4, i64 %5) #0 {
  %7 = alloca %struct.file*, align 8
  %8 = alloca %struct.kobject*, align 8
  %9 = alloca %struct.bin_attribute*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.i2c_client*, align 8
  %14 = alloca %struct.max6875_data*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %7, align 8
  store %struct.kobject* %1, %struct.kobject** %8, align 8
  store %struct.bin_attribute* %2, %struct.bin_attribute** %9, align 8
  store i8* %3, i8** %10, align 8
  store i64 %4, i64* %11, align 8
  store i64 %5, i64* %12, align 8
  %17 = load %struct.kobject*, %struct.kobject** %8, align 8
  %18 = call %struct.i2c_client* @kobj_to_i2c_client(%struct.kobject* %17)
  store %struct.i2c_client* %18, %struct.i2c_client** %13, align 8
  %19 = load %struct.i2c_client*, %struct.i2c_client** %13, align 8
  %20 = call %struct.max6875_data* @i2c_get_clientdata(%struct.i2c_client* %19)
  store %struct.max6875_data* %20, %struct.max6875_data** %14, align 8
  %21 = load i64, i64* %11, align 8
  %22 = load i64, i64* %12, align 8
  %23 = add i64 %21, %22
  %24 = sub i64 %23, 1
  %25 = load i64, i64* @SLICE_BITS, align 8
  %26 = lshr i64 %24, %25
  %27 = trunc i64 %26 to i32
  store i32 %27, i32* %16, align 4
  %28 = load i64, i64* %11, align 8
  %29 = load i64, i64* @SLICE_BITS, align 8
  %30 = lshr i64 %28, %29
  %31 = trunc i64 %30 to i32
  store i32 %31, i32* %15, align 4
  br label %32

32:                                               ; preds = %40, %6
  %33 = load i32, i32* %15, align 4
  %34 = load i32, i32* %16, align 4
  %35 = icmp sle i32 %33, %34
  br i1 %35, label %36, label %43

36:                                               ; preds = %32
  %37 = load %struct.i2c_client*, %struct.i2c_client** %13, align 8
  %38 = load i32, i32* %15, align 4
  %39 = call i32 @max6875_update_slice(%struct.i2c_client* %37, i32 %38)
  br label %40

40:                                               ; preds = %36
  %41 = load i32, i32* %15, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %15, align 4
  br label %32

43:                                               ; preds = %32
  %44 = load i8*, i8** %10, align 8
  %45 = load %struct.max6875_data*, %struct.max6875_data** %14, align 8
  %46 = getelementptr inbounds %struct.max6875_data, %struct.max6875_data* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = load i64, i64* %11, align 8
  %49 = getelementptr inbounds i32, i32* %47, i64 %48
  %50 = load i64, i64* %12, align 8
  %51 = call i32 @memcpy(i8* %44, i32* %49, i64 %50)
  %52 = load i64, i64* %12, align 8
  ret i64 %52
}

declare dso_local %struct.i2c_client* @kobj_to_i2c_client(%struct.kobject*) #1

declare dso_local %struct.max6875_data* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i32 @max6875_update_slice(%struct.i2c_client*, i32) #1

declare dso_local i32 @memcpy(i8*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
