; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/maps/extr_pismo.c_pismo_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/maps/extr_pismo.c_pismo_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { %struct.pismo_pdata* }
%struct.pismo_pdata = type { i32*, i32, i32 }
%struct.i2c_device_id = type { i32 }
%struct.pismo_eeprom = type { %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.pismo_data = type { i32, i32, %struct.i2c_client* }

@I2C_FUNC_I2C = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"functionality mismatch\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"error reading EEPROM: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"%.15s board found\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @pismo_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pismo_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.pismo_pdata*, align 8
  %7 = alloca %struct.pismo_eeprom, align 8
  %8 = alloca %struct.pismo_data*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %11 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %12 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = load %struct.pismo_pdata*, %struct.pismo_pdata** %13, align 8
  store %struct.pismo_pdata* %14, %struct.pismo_pdata** %6, align 8
  %15 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %16 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @I2C_FUNC_I2C, align 4
  %19 = call i32 @i2c_check_functionality(i32 %17, i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %27, label %21

21:                                               ; preds = %2
  %22 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %23 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %22, i32 0, i32 0
  %24 = call i32 (%struct.TYPE_6__*, i8*, ...) @dev_err(%struct.TYPE_6__* %23, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %25 = load i32, i32* @EIO, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %111

27:                                               ; preds = %2
  %28 = load i32, i32* @GFP_KERNEL, align 4
  %29 = call %struct.pismo_data* @kzalloc(i32 16, i32 %28)
  store %struct.pismo_data* %29, %struct.pismo_data** %8, align 8
  %30 = load %struct.pismo_data*, %struct.pismo_data** %8, align 8
  %31 = icmp ne %struct.pismo_data* %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %27
  %33 = load i32, i32* @ENOMEM, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %3, align 4
  br label %111

35:                                               ; preds = %27
  %36 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %37 = load %struct.pismo_data*, %struct.pismo_data** %8, align 8
  %38 = getelementptr inbounds %struct.pismo_data, %struct.pismo_data* %37, i32 0, i32 2
  store %struct.i2c_client* %36, %struct.i2c_client** %38, align 8
  %39 = load %struct.pismo_pdata*, %struct.pismo_pdata** %6, align 8
  %40 = icmp ne %struct.pismo_pdata* %39, null
  br i1 %40, label %41, label %52

41:                                               ; preds = %35
  %42 = load %struct.pismo_pdata*, %struct.pismo_pdata** %6, align 8
  %43 = getelementptr inbounds %struct.pismo_pdata, %struct.pismo_pdata* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.pismo_data*, %struct.pismo_data** %8, align 8
  %46 = getelementptr inbounds %struct.pismo_data, %struct.pismo_data* %45, i32 0, i32 1
  store i32 %44, i32* %46, align 4
  %47 = load %struct.pismo_pdata*, %struct.pismo_pdata** %6, align 8
  %48 = getelementptr inbounds %struct.pismo_pdata, %struct.pismo_pdata* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.pismo_data*, %struct.pismo_data** %8, align 8
  %51 = getelementptr inbounds %struct.pismo_data, %struct.pismo_data* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 8
  br label %52

52:                                               ; preds = %41, %35
  %53 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %54 = load %struct.pismo_data*, %struct.pismo_data** %8, align 8
  %55 = call i32 @i2c_set_clientdata(%struct.i2c_client* %53, %struct.pismo_data* %54)
  %56 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %57 = call i32 @pismo_eeprom_read(%struct.i2c_client* %56, %struct.pismo_eeprom* %7, i32 0, i32 16)
  store i32 %57, i32* %9, align 4
  %58 = load i32, i32* %9, align 4
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %52
  %61 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %62 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %61, i32 0, i32 0
  %63 = load i32, i32* %9, align 4
  %64 = call i32 (%struct.TYPE_6__*, i8*, ...) @dev_err(%struct.TYPE_6__* %62, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %63)
  br label %107

65:                                               ; preds = %52
  %66 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %67 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.pismo_eeprom, %struct.pismo_eeprom* %7, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @dev_info(%struct.TYPE_6__* %67, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 %69)
  store i32 0, i32* %10, align 4
  br label %71

71:                                               ; preds = %103, %65
  %72 = load i32, i32* %10, align 4
  %73 = getelementptr inbounds %struct.pismo_eeprom, %struct.pismo_eeprom* %7, i32 0, i32 0
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %73, align 8
  %75 = call i32 @ARRAY_SIZE(%struct.TYPE_5__* %74)
  %76 = icmp slt i32 %72, %75
  br i1 %76, label %77, label %106

77:                                               ; preds = %71
  %78 = getelementptr inbounds %struct.pismo_eeprom, %struct.pismo_eeprom* %7, i32 0, i32 0
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** %78, align 8
  %80 = load i32, i32* %10, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = icmp ne i32 %84, 255
  br i1 %85, label %86, label %102

86:                                               ; preds = %77
  %87 = load %struct.pismo_data*, %struct.pismo_data** %8, align 8
  %88 = load i32, i32* %10, align 4
  %89 = getelementptr inbounds %struct.pismo_eeprom, %struct.pismo_eeprom* %7, i32 0, i32 0
  %90 = load %struct.TYPE_5__*, %struct.TYPE_5__** %89, align 8
  %91 = load i32, i32* %10, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i64 %92
  %94 = load %struct.pismo_pdata*, %struct.pismo_pdata** %6, align 8
  %95 = getelementptr inbounds %struct.pismo_pdata, %struct.pismo_pdata* %94, i32 0, i32 0
  %96 = load i32*, i32** %95, align 8
  %97 = load i32, i32* %10, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i32, i32* %96, i64 %98
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @pismo_add_one(%struct.pismo_data* %87, i32 %88, %struct.TYPE_5__* %93, i32 %100)
  br label %102

102:                                              ; preds = %86, %77
  br label %103

103:                                              ; preds = %102
  %104 = load i32, i32* %10, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %10, align 4
  br label %71

106:                                              ; preds = %71
  store i32 0, i32* %3, align 4
  br label %111

107:                                              ; preds = %60
  %108 = load %struct.pismo_data*, %struct.pismo_data** %8, align 8
  %109 = call i32 @kfree(%struct.pismo_data* %108)
  %110 = load i32, i32* %9, align 4
  store i32 %110, i32* %3, align 4
  br label %111

111:                                              ; preds = %107, %106, %32, %21
  %112 = load i32, i32* %3, align 4
  ret i32 %112
}

declare dso_local i32 @i2c_check_functionality(i32, i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_6__*, i8*, ...) #1

declare dso_local %struct.pismo_data* @kzalloc(i32, i32) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.pismo_data*) #1

declare dso_local i32 @pismo_eeprom_read(%struct.i2c_client*, %struct.pismo_eeprom*, i32, i32) #1

declare dso_local i32 @dev_info(%struct.TYPE_6__*, i8*, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_5__*) #1

declare dso_local i32 @pismo_add_one(%struct.pismo_data*, i32, %struct.TYPE_5__*, i32) #1

declare dso_local i32 @kfree(%struct.pismo_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
