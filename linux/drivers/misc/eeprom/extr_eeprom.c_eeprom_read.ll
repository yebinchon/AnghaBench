; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/eeprom/extr_eeprom.c_eeprom_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/eeprom/extr_eeprom.c_eeprom_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.kobject = type { i32 }
%struct.bin_attribute = type { i32 }
%struct.i2c_client = type { i32 }
%struct.eeprom_data = type { i64, i8* }

@VAIO = common dso_local global i64 0, align 8
@CAP_SYS_ADMIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i32, i64)* @eeprom_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @eeprom_read(%struct.file* %0, %struct.kobject* %1, %struct.bin_attribute* %2, i8* %3, i32 %4, i64 %5) #0 {
  %7 = alloca %struct.file*, align 8
  %8 = alloca %struct.kobject*, align 8
  %9 = alloca %struct.bin_attribute*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca %struct.i2c_client*, align 8
  %14 = alloca %struct.eeprom_data*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %7, align 8
  store %struct.kobject* %1, %struct.kobject** %8, align 8
  store %struct.bin_attribute* %2, %struct.bin_attribute** %9, align 8
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  store i64 %5, i64* %12, align 8
  %17 = load %struct.kobject*, %struct.kobject** %8, align 8
  %18 = call i32 @kobj_to_dev(%struct.kobject* %17)
  %19 = call %struct.i2c_client* @to_i2c_client(i32 %18)
  store %struct.i2c_client* %19, %struct.i2c_client** %13, align 8
  %20 = load %struct.i2c_client*, %struct.i2c_client** %13, align 8
  %21 = call %struct.eeprom_data* @i2c_get_clientdata(%struct.i2c_client* %20)
  store %struct.eeprom_data* %21, %struct.eeprom_data** %14, align 8
  %22 = load i32, i32* %11, align 4
  %23 = ashr i32 %22, 5
  store i32 %23, i32* %15, align 4
  br label %24

24:                                               ; preds = %38, %6
  %25 = load i32, i32* %15, align 4
  %26 = sext i32 %25 to i64
  %27 = load i32, i32* %11, align 4
  %28 = sext i32 %27 to i64
  %29 = load i64, i64* %12, align 8
  %30 = add i64 %28, %29
  %31 = sub i64 %30, 1
  %32 = lshr i64 %31, 5
  %33 = icmp ule i64 %26, %32
  br i1 %33, label %34, label %41

34:                                               ; preds = %24
  %35 = load %struct.i2c_client*, %struct.i2c_client** %13, align 8
  %36 = load i32, i32* %15, align 4
  %37 = call i32 @eeprom_update_client(%struct.i2c_client* %35, i32 %36)
  br label %38

38:                                               ; preds = %34
  %39 = load i32, i32* %15, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %15, align 4
  br label %24

41:                                               ; preds = %24
  %42 = load %struct.eeprom_data*, %struct.eeprom_data** %14, align 8
  %43 = getelementptr inbounds %struct.eeprom_data, %struct.eeprom_data* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @VAIO, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %96

47:                                               ; preds = %41
  %48 = load i32, i32* @CAP_SYS_ADMIN, align 4
  %49 = call i32 @capable(i32 %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %96, label %51

51:                                               ; preds = %47
  store i32 0, i32* %16, align 4
  br label %52

52:                                               ; preds = %92, %51
  %53 = load i32, i32* %16, align 4
  %54 = sext i32 %53 to i64
  %55 = load i64, i64* %12, align 8
  %56 = icmp ult i64 %54, %55
  br i1 %56, label %57, label %95

57:                                               ; preds = %52
  %58 = load i32, i32* %11, align 4
  %59 = load i32, i32* %16, align 4
  %60 = add nsw i32 %58, %59
  %61 = icmp sle i32 %60, 31
  br i1 %61, label %72, label %62

62:                                               ; preds = %57
  %63 = load i32, i32* %11, align 4
  %64 = load i32, i32* %16, align 4
  %65 = add nsw i32 %63, %64
  %66 = icmp sge i32 %65, 192
  br i1 %66, label %67, label %77

67:                                               ; preds = %62
  %68 = load i32, i32* %11, align 4
  %69 = load i32, i32* %16, align 4
  %70 = add nsw i32 %68, %69
  %71 = icmp sle i32 %70, 223
  br i1 %71, label %72, label %77

72:                                               ; preds = %67, %57
  %73 = load i8*, i8** %10, align 8
  %74 = load i32, i32* %16, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i8, i8* %73, i64 %75
  store i8 0, i8* %76, align 1
  br label %91

77:                                               ; preds = %67, %62
  %78 = load %struct.eeprom_data*, %struct.eeprom_data** %14, align 8
  %79 = getelementptr inbounds %struct.eeprom_data, %struct.eeprom_data* %78, i32 0, i32 1
  %80 = load i8*, i8** %79, align 8
  %81 = load i32, i32* %11, align 4
  %82 = load i32, i32* %16, align 4
  %83 = add nsw i32 %81, %82
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i8, i8* %80, i64 %84
  %86 = load i8, i8* %85, align 1
  %87 = load i8*, i8** %10, align 8
  %88 = load i32, i32* %16, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i8, i8* %87, i64 %89
  store i8 %86, i8* %90, align 1
  br label %91

91:                                               ; preds = %77, %72
  br label %92

92:                                               ; preds = %91
  %93 = load i32, i32* %16, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %16, align 4
  br label %52

95:                                               ; preds = %52
  br label %106

96:                                               ; preds = %47, %41
  %97 = load i8*, i8** %10, align 8
  %98 = load %struct.eeprom_data*, %struct.eeprom_data** %14, align 8
  %99 = getelementptr inbounds %struct.eeprom_data, %struct.eeprom_data* %98, i32 0, i32 1
  %100 = load i8*, i8** %99, align 8
  %101 = load i32, i32* %11, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i8, i8* %100, i64 %102
  %104 = load i64, i64* %12, align 8
  %105 = call i32 @memcpy(i8* %97, i8* %103, i64 %104)
  br label %106

106:                                              ; preds = %96, %95
  %107 = load i64, i64* %12, align 8
  ret i64 %107
}

declare dso_local %struct.i2c_client* @to_i2c_client(i32) #1

declare dso_local i32 @kobj_to_dev(%struct.kobject*) #1

declare dso_local %struct.eeprom_data* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i32 @eeprom_update_client(%struct.i2c_client*, i32) #1

declare dso_local i32 @capable(i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
