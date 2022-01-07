; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/rc/extr_ir-spi.c_ir_spi_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/rc/extr_ir-spi.c_ir_spi_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.ir_spi_data = type { %struct.TYPE_8__*, i32, i32, %struct.spi_device*, i32 }
%struct.TYPE_8__ = type { i8*, %struct.ir_spi_data*, i32, i32 (%struct.TYPE_8__*, i32)*, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"irda_regulator\00", align 1
@RC_DRIVER_IR_RAW_TX = common dso_local global i32 0, align 4
@ir_spi_tx = common dso_local global i32 0, align 4
@ir_spi_set_tx_carrier = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"IR SPI\00", align 1
@IR_SPI_DRIVER_NAME = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [15 x i8] c"led-active-low\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"duty-cycle\00", align 1
@IR_SPI_DEFAULT_FREQUENCY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*)* @ir_spi_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ir_spi_probe(%struct.spi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.spi_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.ir_spi_data*, align 8
  store %struct.spi_device* %0, %struct.spi_device** %3, align 8
  %7 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %8 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %7, i32 0, i32 0
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.ir_spi_data* @devm_kzalloc(%struct.TYPE_9__* %8, i32 32, i32 %9)
  store %struct.ir_spi_data* %10, %struct.ir_spi_data** %6, align 8
  %11 = load %struct.ir_spi_data*, %struct.ir_spi_data** %6, align 8
  %12 = icmp ne %struct.ir_spi_data* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %108

16:                                               ; preds = %1
  %17 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %18 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %17, i32 0, i32 0
  %19 = call i32 @devm_regulator_get(%struct.TYPE_9__* %18, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %20 = load %struct.ir_spi_data*, %struct.ir_spi_data** %6, align 8
  %21 = getelementptr inbounds %struct.ir_spi_data, %struct.ir_spi_data* %20, i32 0, i32 4
  store i32 %19, i32* %21, align 8
  %22 = load %struct.ir_spi_data*, %struct.ir_spi_data** %6, align 8
  %23 = getelementptr inbounds %struct.ir_spi_data, %struct.ir_spi_data* %22, i32 0, i32 4
  %24 = load i32, i32* %23, align 8
  %25 = call i64 @IS_ERR(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %16
  %28 = load %struct.ir_spi_data*, %struct.ir_spi_data** %6, align 8
  %29 = getelementptr inbounds %struct.ir_spi_data, %struct.ir_spi_data* %28, i32 0, i32 4
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @PTR_ERR(i32 %30)
  store i32 %31, i32* %2, align 4
  br label %108

32:                                               ; preds = %16
  %33 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %34 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %33, i32 0, i32 0
  %35 = load i32, i32* @RC_DRIVER_IR_RAW_TX, align 4
  %36 = call %struct.TYPE_8__* @devm_rc_allocate_device(%struct.TYPE_9__* %34, i32 %35)
  %37 = load %struct.ir_spi_data*, %struct.ir_spi_data** %6, align 8
  %38 = getelementptr inbounds %struct.ir_spi_data, %struct.ir_spi_data* %37, i32 0, i32 0
  store %struct.TYPE_8__* %36, %struct.TYPE_8__** %38, align 8
  %39 = load %struct.ir_spi_data*, %struct.ir_spi_data** %6, align 8
  %40 = getelementptr inbounds %struct.ir_spi_data, %struct.ir_spi_data* %39, i32 0, i32 0
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %40, align 8
  %42 = icmp ne %struct.TYPE_8__* %41, null
  br i1 %42, label %46, label %43

43:                                               ; preds = %32
  %44 = load i32, i32* @ENOMEM, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %2, align 4
  br label %108

46:                                               ; preds = %32
  %47 = load i32, i32* @ir_spi_tx, align 4
  %48 = load %struct.ir_spi_data*, %struct.ir_spi_data** %6, align 8
  %49 = getelementptr inbounds %struct.ir_spi_data, %struct.ir_spi_data* %48, i32 0, i32 0
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 5
  store i32 %47, i32* %51, align 4
  %52 = load i32, i32* @ir_spi_set_tx_carrier, align 4
  %53 = load %struct.ir_spi_data*, %struct.ir_spi_data** %6, align 8
  %54 = getelementptr inbounds %struct.ir_spi_data, %struct.ir_spi_data* %53, i32 0, i32 0
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 4
  store i32 %52, i32* %56, align 8
  %57 = load %struct.ir_spi_data*, %struct.ir_spi_data** %6, align 8
  %58 = getelementptr inbounds %struct.ir_spi_data, %struct.ir_spi_data* %57, i32 0, i32 0
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 3
  store i32 (%struct.TYPE_8__*, i32)* @ir_spi_set_duty_cycle, i32 (%struct.TYPE_8__*, i32)** %60, align 8
  %61 = load %struct.ir_spi_data*, %struct.ir_spi_data** %6, align 8
  %62 = getelementptr inbounds %struct.ir_spi_data, %struct.ir_spi_data* %61, i32 0, i32 0
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8** %64, align 8
  %65 = load i32, i32* @IR_SPI_DRIVER_NAME, align 4
  %66 = load %struct.ir_spi_data*, %struct.ir_spi_data** %6, align 8
  %67 = getelementptr inbounds %struct.ir_spi_data, %struct.ir_spi_data* %66, i32 0, i32 0
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 2
  store i32 %65, i32* %69, align 8
  %70 = load %struct.ir_spi_data*, %struct.ir_spi_data** %6, align 8
  %71 = load %struct.ir_spi_data*, %struct.ir_spi_data** %6, align 8
  %72 = getelementptr inbounds %struct.ir_spi_data, %struct.ir_spi_data* %71, i32 0, i32 0
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 1
  store %struct.ir_spi_data* %70, %struct.ir_spi_data** %74, align 8
  %75 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %76 = load %struct.ir_spi_data*, %struct.ir_spi_data** %6, align 8
  %77 = getelementptr inbounds %struct.ir_spi_data, %struct.ir_spi_data* %76, i32 0, i32 3
  store %struct.spi_device* %75, %struct.spi_device** %77, align 8
  %78 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %79 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @of_property_read_bool(i32 %81, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  %83 = load %struct.ir_spi_data*, %struct.ir_spi_data** %6, align 8
  %84 = getelementptr inbounds %struct.ir_spi_data, %struct.ir_spi_data* %83, i32 0, i32 2
  store i32 %82, i32* %84, align 4
  %85 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %86 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @of_property_read_u8(i32 %88, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i32* %5)
  store i32 %89, i32* %4, align 4
  %90 = load i32, i32* %4, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %46
  store i32 50, i32* %5, align 4
  br label %93

93:                                               ; preds = %92, %46
  %94 = load %struct.ir_spi_data*, %struct.ir_spi_data** %6, align 8
  %95 = getelementptr inbounds %struct.ir_spi_data, %struct.ir_spi_data* %94, i32 0, i32 0
  %96 = load %struct.TYPE_8__*, %struct.TYPE_8__** %95, align 8
  %97 = load i32, i32* %5, align 4
  %98 = call i32 @ir_spi_set_duty_cycle(%struct.TYPE_8__* %96, i32 %97)
  %99 = load i32, i32* @IR_SPI_DEFAULT_FREQUENCY, align 4
  %100 = load %struct.ir_spi_data*, %struct.ir_spi_data** %6, align 8
  %101 = getelementptr inbounds %struct.ir_spi_data, %struct.ir_spi_data* %100, i32 0, i32 1
  store i32 %99, i32* %101, align 8
  %102 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %103 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %102, i32 0, i32 0
  %104 = load %struct.ir_spi_data*, %struct.ir_spi_data** %6, align 8
  %105 = getelementptr inbounds %struct.ir_spi_data, %struct.ir_spi_data* %104, i32 0, i32 0
  %106 = load %struct.TYPE_8__*, %struct.TYPE_8__** %105, align 8
  %107 = call i32 @devm_rc_register_device(%struct.TYPE_9__* %103, %struct.TYPE_8__* %106)
  store i32 %107, i32* %2, align 4
  br label %108

108:                                              ; preds = %93, %43, %27, %13
  %109 = load i32, i32* %2, align 4
  ret i32 %109
}

declare dso_local %struct.ir_spi_data* @devm_kzalloc(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i32 @devm_regulator_get(%struct.TYPE_9__*, i8*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local %struct.TYPE_8__* @devm_rc_allocate_device(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @ir_spi_set_duty_cycle(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @of_property_read_bool(i32, i8*) #1

declare dso_local i32 @of_property_read_u8(i32, i8*, i32*) #1

declare dso_local i32 @devm_rc_register_device(%struct.TYPE_9__*, %struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
