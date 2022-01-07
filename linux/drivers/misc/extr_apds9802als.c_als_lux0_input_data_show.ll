; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/extr_apds9802als.c_als_lux0_input_data_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/extr_apds9802als.c_als_lux0_input_data_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.i2c_client = type { i32 }
%struct.als_data = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @als_lux0_input_data_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @als_lux0_input_data_show(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.i2c_client*, align 8
  %9 = alloca %struct.als_data*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  %12 = load %struct.device*, %struct.device** %5, align 8
  %13 = call %struct.i2c_client* @to_i2c_client(%struct.device* %12)
  store %struct.i2c_client* %13, %struct.i2c_client** %8, align 8
  %14 = load %struct.i2c_client*, %struct.i2c_client** %8, align 8
  %15 = call %struct.als_data* @i2c_get_clientdata(%struct.i2c_client* %14)
  store %struct.als_data* %15, %struct.als_data** %9, align 8
  %16 = load %struct.device*, %struct.device** %5, align 8
  %17 = call i32 @pm_runtime_get_sync(%struct.device* %16)
  %18 = load %struct.als_data*, %struct.als_data** %9, align 8
  %19 = getelementptr inbounds %struct.als_data, %struct.als_data* %18, i32 0, i32 0
  %20 = call i32 @mutex_lock(i32* %19)
  %21 = load %struct.i2c_client*, %struct.i2c_client** %8, align 8
  %22 = call i32 @i2c_smbus_write_byte(%struct.i2c_client* %21, i32 64)
  %23 = load %struct.i2c_client*, %struct.i2c_client** %8, align 8
  %24 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %23, i32 129)
  store i32 %24, i32* %11, align 4
  %25 = load %struct.i2c_client*, %struct.i2c_client** %8, align 8
  %26 = load i32, i32* %11, align 4
  %27 = or i32 %26, 8
  %28 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %25, i32 129, i32 %27)
  %29 = load %struct.device*, %struct.device** %5, align 8
  %30 = call i32 @als_wait_for_data_ready(%struct.device* %29)
  store i32 %30, i32* %10, align 4
  %31 = load i32, i32* %10, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %3
  br label %60

34:                                               ; preds = %3
  %35 = load %struct.i2c_client*, %struct.i2c_client** %8, align 8
  %36 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %35, i32 140)
  store i32 %36, i32* %11, align 4
  %37 = load i32, i32* %11, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %34
  %40 = load i32, i32* %11, align 4
  store i32 %40, i32* %10, align 4
  br label %60

41:                                               ; preds = %34
  %42 = load %struct.i2c_client*, %struct.i2c_client** %8, align 8
  %43 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %42, i32 141)
  store i32 %43, i32* %10, align 4
  %44 = load i32, i32* %10, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %41
  br label %60

47:                                               ; preds = %41
  %48 = load %struct.als_data*, %struct.als_data** %9, align 8
  %49 = getelementptr inbounds %struct.als_data, %struct.als_data* %48, i32 0, i32 0
  %50 = call i32 @mutex_unlock(i32* %49)
  %51 = load %struct.device*, %struct.device** %5, align 8
  %52 = call i32 @pm_runtime_put_sync(%struct.device* %51)
  %53 = load i32, i32* %10, align 4
  %54 = shl i32 %53, 8
  %55 = load i32, i32* %11, align 4
  %56 = or i32 %54, %55
  store i32 %56, i32* %11, align 4
  %57 = load i8*, i8** %7, align 8
  %58 = load i32, i32* %11, align 4
  %59 = call i32 @sprintf(i8* %57, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %58)
  store i32 %59, i32* %4, align 4
  br label %67

60:                                               ; preds = %46, %39, %33
  %61 = load %struct.als_data*, %struct.als_data** %9, align 8
  %62 = getelementptr inbounds %struct.als_data, %struct.als_data* %61, i32 0, i32 0
  %63 = call i32 @mutex_unlock(i32* %62)
  %64 = load %struct.device*, %struct.device** %5, align 8
  %65 = call i32 @pm_runtime_put_sync(%struct.device* %64)
  %66 = load i32, i32* %10, align 4
  store i32 %66, i32* %4, align 4
  br label %67

67:                                               ; preds = %60, %47
  %68 = load i32, i32* %4, align 4
  ret i32 %68
}

declare dso_local %struct.i2c_client* @to_i2c_client(%struct.device*) #1

declare dso_local %struct.als_data* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i32 @pm_runtime_get_sync(%struct.device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @i2c_smbus_write_byte(%struct.i2c_client*, i32) #1

declare dso_local i32 @i2c_smbus_read_byte_data(%struct.i2c_client*, i32) #1

declare dso_local i32 @i2c_smbus_write_byte_data(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @als_wait_for_data_ready(%struct.device*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @pm_runtime_put_sync(%struct.device*) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
