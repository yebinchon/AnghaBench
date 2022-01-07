; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ak881x.c_ak881x_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ak881x.c_ak881x_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { %struct.TYPE_7__, %struct.i2c_adapter* }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.i2c_adapter = type { i32 }
%struct.i2c_device_id = type { i32 }
%struct.ak881x = type { i32, i8*, %struct.TYPE_6__*, i32 }

@I2C_FUNC_SMBUS_BYTE_DATA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"I2C-Adapter doesn't support I2C_FUNC_SMBUS_WORD\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ak881x_subdev_ops = common dso_local global i32 0, align 4
@AK881X_DEVICE_ID = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"No ak881x chip detected, register read %x\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@AK881X_DEVICE_REVISION = common dso_local global i32 0, align 4
@AK881X_FIELD = common dso_local global i32 0, align 4
@AK881X_IF_MODE_MASK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"IF mode %x\0A\00", align 1
@AK881X_INTERFACE_MODE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [44 x i8] c"Detected an ak881x chip ID %x, revision %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @ak881x_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ak881x_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.i2c_adapter*, align 8
  %7 = alloca %struct.ak881x*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %10 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %11 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %10, i32 0, i32 1
  %12 = load %struct.i2c_adapter*, %struct.i2c_adapter** %11, align 8
  store %struct.i2c_adapter* %12, %struct.i2c_adapter** %6, align 8
  %13 = load %struct.i2c_adapter*, %struct.i2c_adapter** %6, align 8
  %14 = load i32, i32* @I2C_FUNC_SMBUS_BYTE_DATA, align 4
  %15 = call i32 @i2c_check_functionality(%struct.i2c_adapter* %13, i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %23, label %17

17:                                               ; preds = %2
  %18 = load %struct.i2c_adapter*, %struct.i2c_adapter** %6, align 8
  %19 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %18, i32 0, i32 0
  %20 = call i32 @dev_warn(i32* %19, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* @EIO, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %114

23:                                               ; preds = %2
  %24 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %25 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %24, i32 0, i32 0
  %26 = load i32, i32* @GFP_KERNEL, align 4
  %27 = call %struct.ak881x* @devm_kzalloc(%struct.TYPE_7__* %25, i32 32, i32 %26)
  store %struct.ak881x* %27, %struct.ak881x** %7, align 8
  %28 = load %struct.ak881x*, %struct.ak881x** %7, align 8
  %29 = icmp ne %struct.ak881x* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %23
  %31 = load i32, i32* @ENOMEM, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %3, align 4
  br label %114

33:                                               ; preds = %23
  %34 = load %struct.ak881x*, %struct.ak881x** %7, align 8
  %35 = getelementptr inbounds %struct.ak881x, %struct.ak881x* %34, i32 0, i32 3
  %36 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %37 = call i32 @v4l2_i2c_subdev_init(i32* %35, %struct.i2c_client* %36, i32* @ak881x_subdev_ops)
  %38 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %39 = load i32, i32* @AK881X_DEVICE_ID, align 4
  %40 = call i8* @reg_read(%struct.i2c_client* %38, i32 %39)
  %41 = ptrtoint i8* %40 to i32
  store i32 %41, i32* %9, align 4
  %42 = load i32, i32* %9, align 4
  switch i32 %42, label %44 [
    i32 19, label %43
    i32 20, label %43
  ]

43:                                               ; preds = %33, %33
  br label %51

44:                                               ; preds = %33
  %45 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %46 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %45, i32 0, i32 0
  %47 = load i32, i32* %9, align 4
  %48 = call i32 @dev_err(%struct.TYPE_7__* %46, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %47)
  %49 = load i32, i32* @ENODEV, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %3, align 4
  br label %114

51:                                               ; preds = %43
  %52 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %53 = load i32, i32* @AK881X_DEVICE_REVISION, align 4
  %54 = call i8* @reg_read(%struct.i2c_client* %52, i32 %53)
  %55 = load %struct.ak881x*, %struct.ak881x** %7, align 8
  %56 = getelementptr inbounds %struct.ak881x, %struct.ak881x* %55, i32 0, i32 1
  store i8* %54, i8** %56, align 8
  %57 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %58 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 0
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %59, align 8
  %61 = load %struct.ak881x*, %struct.ak881x** %7, align 8
  %62 = getelementptr inbounds %struct.ak881x, %struct.ak881x* %61, i32 0, i32 2
  store %struct.TYPE_6__* %60, %struct.TYPE_6__** %62, align 8
  %63 = load %struct.ak881x*, %struct.ak881x** %7, align 8
  %64 = getelementptr inbounds %struct.ak881x, %struct.ak881x* %63, i32 0, i32 2
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %64, align 8
  %66 = icmp ne %struct.TYPE_6__* %65, null
  br i1 %66, label %67, label %104

67:                                               ; preds = %51
  %68 = load %struct.ak881x*, %struct.ak881x** %7, align 8
  %69 = getelementptr inbounds %struct.ak881x, %struct.ak881x* %68, i32 0, i32 2
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @AK881X_FIELD, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %67
  store i32 4, i32* %8, align 4
  br label %78

77:                                               ; preds = %67
  store i32 0, i32* %8, align 4
  br label %78

78:                                               ; preds = %77, %76
  %79 = load %struct.ak881x*, %struct.ak881x** %7, align 8
  %80 = getelementptr inbounds %struct.ak881x, %struct.ak881x* %79, i32 0, i32 2
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @AK881X_IF_MODE_MASK, align 4
  %85 = and i32 %83, %84
  switch i32 %85, label %93 [
    i32 130, label %86
    i32 129, label %89
    i32 128, label %92
  ]

86:                                               ; preds = %78
  %87 = load i32, i32* %8, align 4
  %88 = or i32 %87, 1
  store i32 %88, i32* %8, align 4
  br label %94

89:                                               ; preds = %78
  %90 = load i32, i32* %8, align 4
  %91 = or i32 %90, 2
  store i32 %91, i32* %8, align 4
  br label %94

92:                                               ; preds = %78
  br label %93

93:                                               ; preds = %78, %92
  br label %94

94:                                               ; preds = %93, %89, %86
  %95 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %96 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %95, i32 0, i32 0
  %97 = load i32, i32* %8, align 4
  %98 = call i32 @dev_dbg(%struct.TYPE_7__* %96, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32 %97)
  %99 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %100 = load i32, i32* @AK881X_INTERFACE_MODE, align 4
  %101 = load i32, i32* %8, align 4
  %102 = or i32 %101, 160
  %103 = call i32 @reg_write(%struct.i2c_client* %99, i32 %100, i32 %102)
  br label %104

104:                                              ; preds = %94, %51
  %105 = load %struct.ak881x*, %struct.ak881x** %7, align 8
  %106 = getelementptr inbounds %struct.ak881x, %struct.ak881x* %105, i32 0, i32 0
  store i32 480, i32* %106, align 8
  %107 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %108 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %107, i32 0, i32 0
  %109 = load i32, i32* %9, align 4
  %110 = load %struct.ak881x*, %struct.ak881x** %7, align 8
  %111 = getelementptr inbounds %struct.ak881x, %struct.ak881x* %110, i32 0, i32 1
  %112 = load i8*, i8** %111, align 8
  %113 = call i32 @dev_info(%struct.TYPE_7__* %108, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0), i32 %109, i8* %112)
  store i32 0, i32* %3, align 4
  br label %114

114:                                              ; preds = %104, %44, %30, %17
  %115 = load i32, i32* %3, align 4
  ret i32 %115
}

declare dso_local i32 @i2c_check_functionality(%struct.i2c_adapter*, i32) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

declare dso_local %struct.ak881x* @devm_kzalloc(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @v4l2_i2c_subdev_init(i32*, %struct.i2c_client*, i32*) #1

declare dso_local i8* @reg_read(%struct.i2c_client*, i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_7__*, i8*, i32) #1

declare dso_local i32 @dev_dbg(%struct.TYPE_7__*, i8*, i32) #1

declare dso_local i32 @reg_write(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @dev_info(%struct.TYPE_7__*, i8*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
