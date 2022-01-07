; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/eeprom/extr_idt_89hpesx.c_idt_ee_match_id.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/eeprom/extr_idt_89hpesx.c_idt_ee_match_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_device_id = type { i64* }
%struct.fwnode_handle = type { i32 }

@ee_ids = common dso_local global %struct.i2c_device_id* null, align 8
@I2C_NAME_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"compatible\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.i2c_device_id* (%struct.fwnode_handle*)* @idt_ee_match_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.i2c_device_id* @idt_ee_match_id(%struct.fwnode_handle* %0) #0 {
  %2 = alloca %struct.i2c_device_id*, align 8
  %3 = alloca %struct.fwnode_handle*, align 8
  %4 = alloca %struct.i2c_device_id*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.fwnode_handle* %0, %struct.fwnode_handle** %3, align 8
  %11 = load %struct.i2c_device_id*, %struct.i2c_device_id** @ee_ids, align 8
  store %struct.i2c_device_id* %11, %struct.i2c_device_id** %4, align 8
  %12 = load i32, i32* @I2C_NAME_SIZE, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %7, align 8
  %15 = alloca i8, i64 %13, align 16
  store i64 %13, i64* %8, align 8
  %16 = load %struct.fwnode_handle*, %struct.fwnode_handle** %3, align 8
  %17 = call i32 @fwnode_property_read_string(%struct.fwnode_handle* %16, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8** %5)
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* %9, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %1
  store %struct.i2c_device_id* null, %struct.i2c_device_id** %2, align 8
  store i32 1, i32* %10, align 4
  br label %54

21:                                               ; preds = %1
  %22 = load i8*, i8** %5, align 8
  %23 = call i8* @strchr(i8* %22, i8 signext 44)
  store i8* %23, i8** %6, align 8
  %24 = load i8*, i8** %6, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %26, label %29

26:                                               ; preds = %21
  %27 = load i8*, i8** %6, align 8
  %28 = getelementptr inbounds i8, i8* %27, i64 1
  br label %31

29:                                               ; preds = %21
  %30 = load i8*, i8** %5, align 8
  br label %31

31:                                               ; preds = %29, %26
  %32 = phi i8* [ %28, %26 ], [ %30, %29 ]
  %33 = trunc i64 %13 to i32
  %34 = call i32 @strlcpy(i8* %15, i8* %32, i32 %33)
  br label %35

35:                                               ; preds = %50, %31
  %36 = load %struct.i2c_device_id*, %struct.i2c_device_id** %4, align 8
  %37 = getelementptr inbounds %struct.i2c_device_id, %struct.i2c_device_id* %36, i32 0, i32 0
  %38 = load i64*, i64** %37, align 8
  %39 = getelementptr inbounds i64, i64* %38, i64 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %53

42:                                               ; preds = %35
  %43 = load %struct.i2c_device_id*, %struct.i2c_device_id** %4, align 8
  %44 = getelementptr inbounds %struct.i2c_device_id, %struct.i2c_device_id* %43, i32 0, i32 0
  %45 = load i64*, i64** %44, align 8
  %46 = call i64 @strcmp(i8* %15, i64* %45)
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %42
  %49 = load %struct.i2c_device_id*, %struct.i2c_device_id** %4, align 8
  store %struct.i2c_device_id* %49, %struct.i2c_device_id** %2, align 8
  store i32 1, i32* %10, align 4
  br label %54

50:                                               ; preds = %42
  %51 = load %struct.i2c_device_id*, %struct.i2c_device_id** %4, align 8
  %52 = getelementptr inbounds %struct.i2c_device_id, %struct.i2c_device_id* %51, i32 1
  store %struct.i2c_device_id* %52, %struct.i2c_device_id** %4, align 8
  br label %35

53:                                               ; preds = %35
  store %struct.i2c_device_id* null, %struct.i2c_device_id** %2, align 8
  store i32 1, i32* %10, align 4
  br label %54

54:                                               ; preds = %53, %48, %20
  %55 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %55)
  %56 = load %struct.i2c_device_id*, %struct.i2c_device_id** %2, align 8
  ret %struct.i2c_device_id* %56
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @fwnode_property_read_string(%struct.fwnode_handle*, i8*, i8**) #2

declare dso_local i8* @strchr(i8*, i8 signext) #2

declare dso_local i32 @strlcpy(i8*, i8*, i32) #2

declare dso_local i64 @strcmp(i8*, i64*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
