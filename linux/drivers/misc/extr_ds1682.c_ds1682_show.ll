; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/extr_ds1682.c_ds1682_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/extr_ds1682.c_ds1682_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.sensor_device_attribute_2 = type { i64, i32 }
%struct.i2c_client = type { i32 }

@.str = private unnamed_addr constant [28 x i8] c"ds1682_show() called on %s\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@DS1682_REG_ELAPSED = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [6 x i8] c"%llu\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @ds1682_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ds1682_show(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.sensor_device_attribute_2*, align 8
  %9 = alloca %struct.i2c_client*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  %15 = load %struct.device_attribute*, %struct.device_attribute** %6, align 8
  %16 = call %struct.sensor_device_attribute_2* @to_sensor_dev_attr_2(%struct.device_attribute* %15)
  store %struct.sensor_device_attribute_2* %16, %struct.sensor_device_attribute_2** %8, align 8
  %17 = load %struct.device*, %struct.device** %5, align 8
  %18 = call %struct.i2c_client* @to_i2c_client(%struct.device* %17)
  store %struct.i2c_client* %18, %struct.i2c_client** %9, align 8
  store i64 0, i64* %12, align 8
  %19 = load %struct.device*, %struct.device** %5, align 8
  %20 = load %struct.device_attribute*, %struct.device_attribute** %6, align 8
  %21 = getelementptr inbounds %struct.device_attribute, %struct.device_attribute* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @dev_dbg(%struct.device* %19, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %23)
  %25 = load %struct.i2c_client*, %struct.i2c_client** %9, align 8
  %26 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %8, align 8
  %27 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %8, align 8
  %30 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = bitcast i64* %12 to i32*
  %33 = call i32 @i2c_smbus_read_i2c_block_data(%struct.i2c_client* %25, i64 %28, i32 %31, i32* %32)
  store i32 %33, i32* %13, align 4
  %34 = load i32, i32* %13, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %3
  %37 = load i32, i32* @EIO, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %4, align 4
  br label %98

39:                                               ; preds = %3
  %40 = load i64, i64* %12, align 8
  %41 = call i64 @le32_to_cpu(i64 %40)
  store i64 %41, i64* %10, align 8
  %42 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %8, align 8
  %43 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @DS1682_REG_ELAPSED, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %84

47:                                               ; preds = %39
  store i32 5, i32* %14, align 4
  br label %48

48:                                               ; preds = %81, %47
  %49 = load %struct.i2c_client*, %struct.i2c_client** %9, align 8
  %50 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %8, align 8
  %51 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %8, align 8
  %54 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = bitcast i64* %12 to i32*
  %57 = call i32 @i2c_smbus_read_i2c_block_data(%struct.i2c_client* %49, i64 %52, i32 %55, i32* %56)
  store i32 %57, i32* %13, align 4
  %58 = load i32, i32* %13, align 4
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %63, label %60

60:                                               ; preds = %48
  %61 = load i32, i32* %14, align 4
  %62 = icmp sle i32 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %60, %48
  %64 = load i32, i32* @EIO, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %4, align 4
  br label %98

66:                                               ; preds = %60
  %67 = load i64, i64* %10, align 8
  store i64 %67, i64* %11, align 8
  %68 = load i64, i64* %12, align 8
  %69 = call i64 @le32_to_cpu(i64 %68)
  store i64 %69, i64* %10, align 8
  %70 = load i32, i32* %14, align 4
  %71 = add nsw i32 %70, -1
  store i32 %71, i32* %14, align 4
  br label %72

72:                                               ; preds = %66
  %73 = load i64, i64* %10, align 8
  %74 = load i64, i64* %11, align 8
  %75 = icmp ne i64 %73, %74
  br i1 %75, label %76, label %81

76:                                               ; preds = %72
  %77 = load i64, i64* %10, align 8
  %78 = load i64, i64* %11, align 8
  %79 = add i64 %78, 1
  %80 = icmp ne i64 %77, %79
  br label %81

81:                                               ; preds = %76, %72
  %82 = phi i1 [ false, %72 ], [ %80, %76 ]
  br i1 %82, label %48, label %83

83:                                               ; preds = %81
  br label %84

84:                                               ; preds = %83, %39
  %85 = load i8*, i8** %7, align 8
  %86 = load %struct.sensor_device_attribute_2*, %struct.sensor_device_attribute_2** %8, align 8
  %87 = getelementptr inbounds %struct.sensor_device_attribute_2, %struct.sensor_device_attribute_2* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 8
  %89 = icmp eq i32 %88, 4
  br i1 %89, label %90, label %93

90:                                               ; preds = %84
  %91 = load i64, i64* %10, align 8
  %92 = mul i64 %91, 250
  br label %95

93:                                               ; preds = %84
  %94 = load i64, i64* %10, align 8
  br label %95

95:                                               ; preds = %93, %90
  %96 = phi i64 [ %92, %90 ], [ %94, %93 ]
  %97 = call i32 @sprintf(i8* %85, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i64 %96)
  store i32 %97, i32* %4, align 4
  br label %98

98:                                               ; preds = %95, %63, %36
  %99 = load i32, i32* %4, align 4
  ret i32 %99
}

declare dso_local %struct.sensor_device_attribute_2* @to_sensor_dev_attr_2(%struct.device_attribute*) #1

declare dso_local %struct.i2c_client* @to_i2c_client(%struct.device*) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32) #1

declare dso_local i32 @i2c_smbus_read_i2c_block_data(%struct.i2c_client*, i64, i32, i32*) #1

declare dso_local i64 @le32_to_cpu(i64) #1

declare dso_local i32 @sprintf(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
