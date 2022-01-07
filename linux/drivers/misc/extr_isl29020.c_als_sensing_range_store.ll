; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/extr_isl29020.c_als_sensing_range_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/extr_isl29020.c_als_sensing_range_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.i2c_client = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @als_sensing_range_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @als_sensing_range_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.i2c_client*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %13 = load %struct.device*, %struct.device** %6, align 8
  %14 = call %struct.i2c_client* @to_i2c_client(%struct.device* %13)
  store %struct.i2c_client* %14, %struct.i2c_client** %10, align 8
  %15 = load i8*, i8** %8, align 8
  %16 = call i32 @kstrtoul(i8* %15, i32 10, i64* %12)
  store i32 %16, i32* %11, align 4
  %17 = load i32, i32* %11, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %4
  %20 = load i32, i32* %11, align 4
  store i32 %20, i32* %5, align 4
  br label %71

21:                                               ; preds = %4
  %22 = load i64, i64* %12, align 8
  %23 = icmp ult i64 %22, 1
  br i1 %23, label %27, label %24

24:                                               ; preds = %21
  %25 = load i64, i64* %12, align 8
  %26 = icmp ugt i64 %25, 64000
  br i1 %26, label %27, label %30

27:                                               ; preds = %24, %21
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %5, align 4
  br label %71

30:                                               ; preds = %24
  %31 = load i64, i64* %12, align 8
  %32 = icmp ule i64 %31, 1000
  br i1 %32, label %33, label %34

33:                                               ; preds = %30
  store i64 1, i64* %12, align 8
  br label %45

34:                                               ; preds = %30
  %35 = load i64, i64* %12, align 8
  %36 = icmp ule i64 %35, 4000
  br i1 %36, label %37, label %38

37:                                               ; preds = %34
  store i64 2, i64* %12, align 8
  br label %44

38:                                               ; preds = %34
  %39 = load i64, i64* %12, align 8
  %40 = icmp ule i64 %39, 16000
  br i1 %40, label %41, label %42

41:                                               ; preds = %38
  store i64 3, i64* %12, align 8
  br label %43

42:                                               ; preds = %38
  store i64 4, i64* %12, align 8
  br label %43

43:                                               ; preds = %42, %41
  br label %44

44:                                               ; preds = %43, %37
  br label %45

45:                                               ; preds = %44, %33
  %46 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  %47 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %46, i32 0)
  store i32 %47, i32* %11, align 4
  %48 = load i32, i32* %11, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %45
  %51 = load i32, i32* %11, align 4
  store i32 %51, i32* %5, align 4
  br label %71

52:                                               ; preds = %45
  %53 = load i32, i32* %11, align 4
  %54 = and i32 %53, 252
  store i32 %54, i32* %11, align 4
  %55 = load i64, i64* %12, align 8
  %56 = sub i64 %55, 1
  %57 = load i32, i32* %11, align 4
  %58 = sext i32 %57 to i64
  %59 = or i64 %58, %56
  %60 = trunc i64 %59 to i32
  store i32 %60, i32* %11, align 4
  %61 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  %62 = load i32, i32* %11, align 4
  %63 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %61, i32 0, i32 %62)
  store i32 %63, i32* %11, align 4
  %64 = load i32, i32* %11, align 4
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %52
  %67 = load i32, i32* %11, align 4
  store i32 %67, i32* %5, align 4
  br label %71

68:                                               ; preds = %52
  %69 = load i64, i64* %9, align 8
  %70 = trunc i64 %69 to i32
  store i32 %70, i32* %5, align 4
  br label %71

71:                                               ; preds = %68, %66, %50, %27, %19
  %72 = load i32, i32* %5, align 4
  ret i32 %72
}

declare dso_local %struct.i2c_client* @to_i2c_client(%struct.device*) #1

declare dso_local i32 @kstrtoul(i8*, i32, i64*) #1

declare dso_local i32 @i2c_smbus_read_byte_data(%struct.i2c_client*, i32) #1

declare dso_local i32 @i2c_smbus_write_byte_data(%struct.i2c_client*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
