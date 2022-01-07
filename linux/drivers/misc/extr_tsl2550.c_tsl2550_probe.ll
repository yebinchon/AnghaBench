; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/extr_tsl2550.c_tsl2550_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/extr_tsl2550.c_tsl2550_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { %struct.TYPE_3__, %struct.i2c_adapter* }
%struct.TYPE_3__ = type { i32*, i32 }
%struct.i2c_adapter = type { i32 }
%struct.i2c_device_id = type { i32 }
%struct.tsl2550_data = type { i32, i32, %struct.i2c_client* }

@I2C_FUNC_SMBUS_WRITE_BYTE = common dso_local global i32 0, align 4
@I2C_FUNC_SMBUS_READ_BYTE_DATA = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"invalid operating_mode (%d)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"%s operating mode\0A\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"extended\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"standard\00", align 1
@tsl2550_attr_group = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [25 x i8] c"support ver. %s enabled\0A\00", align 1
@DRIVER_VERSION = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @tsl2550_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tsl2550_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.i2c_adapter*, align 8
  %7 = alloca %struct.tsl2550_data*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %10 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %11 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %10, i32 0, i32 1
  %12 = load %struct.i2c_adapter*, %struct.i2c_adapter** %11, align 8
  store %struct.i2c_adapter* %12, %struct.i2c_adapter** %6, align 8
  store i32 0, i32* %9, align 4
  %13 = load %struct.i2c_adapter*, %struct.i2c_adapter** %6, align 8
  %14 = load i32, i32* @I2C_FUNC_SMBUS_WRITE_BYTE, align 4
  %15 = load i32, i32* @I2C_FUNC_SMBUS_READ_BYTE_DATA, align 4
  %16 = or i32 %14, %15
  %17 = call i32 @i2c_check_functionality(%struct.i2c_adapter* %13, i32 %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %2
  %20 = load i32, i32* @EIO, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %9, align 4
  br label %101

22:                                               ; preds = %2
  %23 = load i32, i32* @GFP_KERNEL, align 4
  %24 = call %struct.tsl2550_data* @kzalloc(i32 16, i32 %23)
  store %struct.tsl2550_data* %24, %struct.tsl2550_data** %7, align 8
  %25 = load %struct.tsl2550_data*, %struct.tsl2550_data** %7, align 8
  %26 = icmp ne %struct.tsl2550_data* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %22
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %9, align 4
  br label %101

30:                                               ; preds = %22
  %31 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %32 = load %struct.tsl2550_data*, %struct.tsl2550_data** %7, align 8
  %33 = getelementptr inbounds %struct.tsl2550_data, %struct.tsl2550_data* %32, i32 0, i32 2
  store %struct.i2c_client* %31, %struct.i2c_client** %33, align 8
  %34 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %35 = load %struct.tsl2550_data*, %struct.tsl2550_data** %7, align 8
  %36 = call i32 @i2c_set_clientdata(%struct.i2c_client* %34, %struct.tsl2550_data* %35)
  %37 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %38 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  store i32* %40, i32** %8, align 8
  %41 = load i32*, i32** %8, align 8
  %42 = icmp ne i32* %41, null
  br i1 %42, label %43, label %64

43:                                               ; preds = %30
  %44 = load i32*, i32** %8, align 8
  %45 = load i32, i32* %44, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %51, label %47

47:                                               ; preds = %43
  %48 = load i32*, i32** %8, align 8
  %49 = load i32, i32* %48, align 4
  %50 = icmp sgt i32 %49, 1
  br i1 %50, label %51, label %59

51:                                               ; preds = %47, %43
  %52 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %53 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %52, i32 0, i32 0
  %54 = load i32*, i32** %8, align 8
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @dev_err(%struct.TYPE_3__* %53, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %55)
  %57 = load i32, i32* @EINVAL, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %9, align 4
  br label %98

59:                                               ; preds = %47
  %60 = load i32*, i32** %8, align 8
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.tsl2550_data*, %struct.tsl2550_data** %7, align 8
  %63 = getelementptr inbounds %struct.tsl2550_data, %struct.tsl2550_data* %62, i32 0, i32 0
  store i32 %61, i32* %63, align 8
  br label %67

64:                                               ; preds = %30
  %65 = load %struct.tsl2550_data*, %struct.tsl2550_data** %7, align 8
  %66 = getelementptr inbounds %struct.tsl2550_data, %struct.tsl2550_data* %65, i32 0, i32 0
  store i32 0, i32* %66, align 8
  br label %67

67:                                               ; preds = %64, %59
  %68 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %69 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %68, i32 0, i32 0
  %70 = load %struct.tsl2550_data*, %struct.tsl2550_data** %7, align 8
  %71 = getelementptr inbounds %struct.tsl2550_data, %struct.tsl2550_data* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = icmp ne i32 %72, 0
  %74 = zext i1 %73 to i64
  %75 = select i1 %73, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0)
  %76 = call i32 @dev_info(%struct.TYPE_3__* %69, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i8* %75)
  %77 = load %struct.tsl2550_data*, %struct.tsl2550_data** %7, align 8
  %78 = getelementptr inbounds %struct.tsl2550_data, %struct.tsl2550_data* %77, i32 0, i32 1
  %79 = call i32 @mutex_init(i32* %78)
  %80 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %81 = call i32 @tsl2550_init_client(%struct.i2c_client* %80)
  store i32 %81, i32* %9, align 4
  %82 = load i32, i32* %9, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %67
  br label %98

85:                                               ; preds = %67
  %86 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %87 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 1
  %89 = call i32 @sysfs_create_group(i32* %88, i32* @tsl2550_attr_group)
  store i32 %89, i32* %9, align 4
  %90 = load i32, i32* %9, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %85
  br label %98

93:                                               ; preds = %85
  %94 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %95 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %94, i32 0, i32 0
  %96 = load i8*, i8** @DRIVER_VERSION, align 8
  %97 = call i32 @dev_info(%struct.TYPE_3__* %95, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i8* %96)
  store i32 0, i32* %3, align 4
  br label %103

98:                                               ; preds = %92, %84, %51
  %99 = load %struct.tsl2550_data*, %struct.tsl2550_data** %7, align 8
  %100 = call i32 @kfree(%struct.tsl2550_data* %99)
  br label %101

101:                                              ; preds = %98, %27, %19
  %102 = load i32, i32* %9, align 4
  store i32 %102, i32* %3, align 4
  br label %103

103:                                              ; preds = %101, %93
  %104 = load i32, i32* %3, align 4
  ret i32 %104
}

declare dso_local i32 @i2c_check_functionality(%struct.i2c_adapter*, i32) #1

declare dso_local %struct.tsl2550_data* @kzalloc(i32, i32) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.tsl2550_data*) #1

declare dso_local i32 @dev_err(%struct.TYPE_3__*, i8*, i32) #1

declare dso_local i32 @dev_info(%struct.TYPE_3__*, i8*, i8*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @tsl2550_init_client(%struct.i2c_client*) #1

declare dso_local i32 @sysfs_create_group(i32*, i32*) #1

declare dso_local i32 @kfree(%struct.tsl2550_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
