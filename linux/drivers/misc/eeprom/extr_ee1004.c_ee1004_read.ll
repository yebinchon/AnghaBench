; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/eeprom/extr_ee1004.c_ee1004_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/eeprom/extr_ee1004.c_ee1004_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.kobject = type { i32 }
%struct.bin_attribute = type { i32 }
%struct.device = type { i32 }
%struct.i2c_client = type { i32 }

@EE1004_PAGE_SHIFT = common dso_local global i32 0, align 4
@ee1004_bus_lock = common dso_local global i32 0, align 4
@ee1004_current_page = common dso_local global i32 0, align 4
@ee1004_set_page = common dso_local global i32* null, align 8
@ENXIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Failed to select page %d (%d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"Selected page %d\0A\00", align 1
@EE1004_PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i32, i64)* @ee1004_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ee1004_read(%struct.file* %0, %struct.kobject* %1, %struct.bin_attribute* %2, i8* %3, i32 %4, i64 %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca %struct.file*, align 8
  %9 = alloca %struct.kobject*, align 8
  %10 = alloca %struct.bin_attribute*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca %struct.device*, align 8
  %15 = alloca %struct.i2c_client*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %8, align 8
  store %struct.kobject* %1, %struct.kobject** %9, align 8
  store %struct.bin_attribute* %2, %struct.bin_attribute** %10, align 8
  store i8* %3, i8** %11, align 8
  store i32 %4, i32* %12, align 4
  store i64 %5, i64* %13, align 8
  %19 = load %struct.kobject*, %struct.kobject** %9, align 8
  %20 = call %struct.device* @kobj_to_dev(%struct.kobject* %19)
  store %struct.device* %20, %struct.device** %14, align 8
  %21 = load %struct.device*, %struct.device** %14, align 8
  %22 = call %struct.i2c_client* @to_i2c_client(%struct.device* %21)
  store %struct.i2c_client* %22, %struct.i2c_client** %15, align 8
  %23 = load i64, i64* %13, align 8
  store i64 %23, i64* %16, align 8
  %24 = load i64, i64* %13, align 8
  %25 = icmp ne i64 %24, 0
  %26 = xor i1 %25, true
  %27 = zext i1 %26 to i32
  %28 = call i64 @unlikely(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %6
  %31 = load i64, i64* %13, align 8
  store i64 %31, i64* %7, align 8
  br label %123

32:                                               ; preds = %6
  %33 = load i32, i32* %12, align 4
  %34 = load i32, i32* @EE1004_PAGE_SHIFT, align 4
  %35 = ashr i32 %33, %34
  store i32 %35, i32* %17, align 4
  %36 = load i32, i32* %17, align 4
  %37 = icmp sgt i32 %36, 1
  %38 = zext i1 %37 to i32
  %39 = call i64 @unlikely(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %32
  store i64 0, i64* %7, align 8
  br label %123

42:                                               ; preds = %32
  %43 = load i32, i32* @EE1004_PAGE_SHIFT, align 4
  %44 = shl i32 1, %43
  %45 = sub nsw i32 %44, 1
  %46 = load i32, i32* %12, align 4
  %47 = and i32 %46, %45
  store i32 %47, i32* %12, align 4
  %48 = call i32 @mutex_lock(i32* @ee1004_bus_lock)
  br label %49

49:                                               ; preds = %119, %42
  %50 = load i64, i64* %13, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %120

52:                                               ; preds = %49
  %53 = load i32, i32* %17, align 4
  %54 = load i32, i32* @ee1004_current_page, align 4
  %55 = icmp ne i32 %53, %54
  br i1 %55, label %56, label %89

56:                                               ; preds = %52
  %57 = load i32*, i32** @ee1004_set_page, align 8
  %58 = load i32, i32* %17, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @i2c_smbus_write_byte(i32 %61, i32 0)
  store i32 %62, i32* %18, align 4
  %63 = load i32, i32* %18, align 4
  %64 = load i32, i32* @ENXIO, align 4
  %65 = sub nsw i32 0, %64
  %66 = icmp eq i32 %63, %65
  br i1 %66, label %67, label %73

67:                                               ; preds = %56
  %68 = call i32 (...) @ee1004_get_current_page()
  %69 = load i32, i32* %17, align 4
  %70 = icmp eq i32 %68, %69
  br i1 %70, label %71, label %72

71:                                               ; preds = %67
  store i32 0, i32* %18, align 4
  br label %72

72:                                               ; preds = %71, %67
  br label %73

73:                                               ; preds = %72, %56
  %74 = load i32, i32* %18, align 4
  %75 = icmp slt i32 %74, 0
  br i1 %75, label %76, label %84

76:                                               ; preds = %73
  %77 = load %struct.device*, %struct.device** %14, align 8
  %78 = load i32, i32* %17, align 4
  %79 = load i32, i32* %18, align 4
  %80 = call i32 @dev_err(%struct.device* %77, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %78, i32 %79)
  %81 = call i32 @mutex_unlock(i32* @ee1004_bus_lock)
  %82 = load i32, i32* %18, align 4
  %83 = sext i32 %82 to i64
  store i64 %83, i64* %7, align 8
  br label %123

84:                                               ; preds = %73
  %85 = load %struct.device*, %struct.device** %14, align 8
  %86 = load i32, i32* %17, align 4
  %87 = call i32 @dev_dbg(%struct.device* %85, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %86)
  %88 = load i32, i32* %17, align 4
  store i32 %88, i32* @ee1004_current_page, align 4
  br label %89

89:                                               ; preds = %84, %52
  %90 = load %struct.i2c_client*, %struct.i2c_client** %15, align 8
  %91 = load i8*, i8** %11, align 8
  %92 = load i32, i32* %12, align 4
  %93 = load i64, i64* %13, align 8
  %94 = call i32 @ee1004_eeprom_read(%struct.i2c_client* %90, i8* %91, i32 %92, i64 %93)
  store i32 %94, i32* %18, align 4
  %95 = load i32, i32* %18, align 4
  %96 = icmp slt i32 %95, 0
  br i1 %96, label %97, label %101

97:                                               ; preds = %89
  %98 = call i32 @mutex_unlock(i32* @ee1004_bus_lock)
  %99 = load i32, i32* %18, align 4
  %100 = sext i32 %99 to i64
  store i64 %100, i64* %7, align 8
  br label %123

101:                                              ; preds = %89
  %102 = load i32, i32* %18, align 4
  %103 = load i8*, i8** %11, align 8
  %104 = sext i32 %102 to i64
  %105 = getelementptr inbounds i8, i8* %103, i64 %104
  store i8* %105, i8** %11, align 8
  %106 = load i32, i32* %18, align 4
  %107 = load i32, i32* %12, align 4
  %108 = add nsw i32 %107, %106
  store i32 %108, i32* %12, align 4
  %109 = load i32, i32* %18, align 4
  %110 = sext i32 %109 to i64
  %111 = load i64, i64* %13, align 8
  %112 = sub i64 %111, %110
  store i64 %112, i64* %13, align 8
  %113 = load i32, i32* %12, align 4
  %114 = load i32, i32* @EE1004_PAGE_SIZE, align 4
  %115 = icmp eq i32 %113, %114
  br i1 %115, label %116, label %119

116:                                              ; preds = %101
  %117 = load i32, i32* %17, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %17, align 4
  store i32 0, i32* %12, align 4
  br label %119

119:                                              ; preds = %116, %101
  br label %49

120:                                              ; preds = %49
  %121 = call i32 @mutex_unlock(i32* @ee1004_bus_lock)
  %122 = load i64, i64* %16, align 8
  store i64 %122, i64* %7, align 8
  br label %123

123:                                              ; preds = %120, %97, %76, %41, %30
  %124 = load i64, i64* %7, align 8
  ret i64 %124
}

declare dso_local %struct.device* @kobj_to_dev(%struct.kobject*) #1

declare dso_local %struct.i2c_client* @to_i2c_client(%struct.device*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @i2c_smbus_write_byte(i32, i32) #1

declare dso_local i32 @ee1004_get_current_page(...) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32) #1

declare dso_local i32 @ee1004_eeprom_read(%struct.i2c_client*, i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
