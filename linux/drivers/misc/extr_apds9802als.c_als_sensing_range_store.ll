; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/extr_apds9802als.c_als_sensing_range_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/extr_apds9802als.c_als_sensing_range_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.i2c_client = type { i32 }
%struct.als_data = type { i32 }

@ERANGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @als_sensing_range_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @als_sensing_range_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.i2c_client*, align 8
  %11 = alloca %struct.als_data*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %14 = load %struct.device*, %struct.device** %6, align 8
  %15 = call %struct.i2c_client* @to_i2c_client(%struct.device* %14)
  store %struct.i2c_client* %15, %struct.i2c_client** %10, align 8
  %16 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  %17 = call %struct.als_data* @i2c_get_clientdata(%struct.i2c_client* %16)
  store %struct.als_data* %17, %struct.als_data** %11, align 8
  %18 = load i8*, i8** %8, align 8
  %19 = call i32 @kstrtoul(i8* %18, i32 10, i64* %13)
  store i32 %19, i32* %12, align 4
  %20 = load i32, i32* %12, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %4
  %23 = load i32, i32* %12, align 4
  store i32 %23, i32* %5, align 4
  br label %79

24:                                               ; preds = %4
  %25 = load i64, i64* %13, align 8
  %26 = icmp ult i64 %25, 4096
  br i1 %26, label %27, label %28

27:                                               ; preds = %24
  store i64 1, i64* %13, align 8
  br label %36

28:                                               ; preds = %24
  %29 = load i64, i64* %13, align 8
  %30 = icmp ult i64 %29, 65536
  br i1 %30, label %31, label %32

31:                                               ; preds = %28
  store i64 2, i64* %13, align 8
  br label %35

32:                                               ; preds = %28
  %33 = load i32, i32* @ERANGE, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %5, align 4
  br label %79

35:                                               ; preds = %31
  br label %36

36:                                               ; preds = %35, %27
  %37 = load %struct.device*, %struct.device** %6, align 8
  %38 = call i32 @pm_runtime_get_sync(%struct.device* %37)
  %39 = load %struct.als_data*, %struct.als_data** %11, align 8
  %40 = getelementptr inbounds %struct.als_data, %struct.als_data* %39, i32 0, i32 0
  %41 = call i32 @mutex_lock(i32* %40)
  %42 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  %43 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %42, i32 129)
  store i32 %43, i32* %12, align 4
  %44 = load i32, i32* %12, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %36
  br label %72

47:                                               ; preds = %36
  %48 = load i32, i32* %12, align 4
  %49 = and i32 %48, 250
  store i32 %49, i32* %12, align 4
  %50 = load i64, i64* %13, align 8
  %51 = icmp eq i64 %50, 1
  br i1 %51, label %52, label %55

52:                                               ; preds = %47
  %53 = load i32, i32* %12, align 4
  %54 = or i32 %53, 1
  store i32 %54, i32* %12, align 4
  br label %57

55:                                               ; preds = %47
  %56 = load i32, i32* %12, align 4
  store i32 %56, i32* %12, align 4
  br label %57

57:                                               ; preds = %55, %52
  %58 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  %59 = load i32, i32* %12, align 4
  %60 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %58, i32 129, i32 %59)
  store i32 %60, i32* %12, align 4
  %61 = load i32, i32* %12, align 4
  %62 = icmp sge i32 %61, 0
  br i1 %62, label %63, label %71

63:                                               ; preds = %57
  %64 = load %struct.als_data*, %struct.als_data** %11, align 8
  %65 = getelementptr inbounds %struct.als_data, %struct.als_data* %64, i32 0, i32 0
  %66 = call i32 @mutex_unlock(i32* %65)
  %67 = load %struct.device*, %struct.device** %6, align 8
  %68 = call i32 @pm_runtime_put_sync(%struct.device* %67)
  %69 = load i64, i64* %9, align 8
  %70 = trunc i64 %69 to i32
  store i32 %70, i32* %5, align 4
  br label %79

71:                                               ; preds = %57
  br label %72

72:                                               ; preds = %71, %46
  %73 = load %struct.als_data*, %struct.als_data** %11, align 8
  %74 = getelementptr inbounds %struct.als_data, %struct.als_data* %73, i32 0, i32 0
  %75 = call i32 @mutex_unlock(i32* %74)
  %76 = load %struct.device*, %struct.device** %6, align 8
  %77 = call i32 @pm_runtime_put_sync(%struct.device* %76)
  %78 = load i32, i32* %12, align 4
  store i32 %78, i32* %5, align 4
  br label %79

79:                                               ; preds = %72, %63, %32, %22
  %80 = load i32, i32* %5, align 4
  ret i32 %80
}

declare dso_local %struct.i2c_client* @to_i2c_client(%struct.device*) #1

declare dso_local %struct.als_data* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i32 @kstrtoul(i8*, i32, i64*) #1

declare dso_local i32 @pm_runtime_get_sync(%struct.device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @i2c_smbus_read_byte_data(%struct.i2c_client*, i32) #1

declare dso_local i32 @i2c_smbus_write_byte_data(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @pm_runtime_put_sync(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
