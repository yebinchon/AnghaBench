; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/extr_lattice-ecp3-config.c_lattice_ecp3_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/extr_lattice-ecp3-config.c_lattice_ecp3_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i32 }
%struct.fpga_data = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"Memory allocation for fpga_data failed\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@FW_ACTION_HOTPLUG = common dso_local global i32 0, align 4
@FIRMWARE_NAME = common dso_local global i32 0, align 4
@firmware_load = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"Firmware loading failed with %d!\0A\00", align 1
@.str.2 = private unnamed_addr constant [48 x i8] c"FPGA bitstream configuration driver registered\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*)* @lattice_ecp3_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lattice_ecp3_probe(%struct.spi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.spi_device*, align 8
  %4 = alloca %struct.fpga_data*, align 8
  %5 = alloca i32, align 4
  store %struct.spi_device* %0, %struct.spi_device** %3, align 8
  %6 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %7 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %6, i32 0, i32 0
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.fpga_data* @devm_kzalloc(i32* %7, i32 4, i32 %8)
  store %struct.fpga_data* %9, %struct.fpga_data** %4, align 8
  %10 = load %struct.fpga_data*, %struct.fpga_data** %4, align 8
  %11 = icmp ne %struct.fpga_data* %10, null
  br i1 %11, label %18, label %12

12:                                               ; preds = %1
  %13 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %14 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %13, i32 0, i32 0
  %15 = call i32 (i32*, i8*, ...) @dev_err(i32* %14, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %46

18:                                               ; preds = %1
  %19 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %20 = load %struct.fpga_data*, %struct.fpga_data** %4, align 8
  %21 = call i32 @spi_set_drvdata(%struct.spi_device* %19, %struct.fpga_data* %20)
  %22 = load %struct.fpga_data*, %struct.fpga_data** %4, align 8
  %23 = getelementptr inbounds %struct.fpga_data, %struct.fpga_data* %22, i32 0, i32 0
  %24 = call i32 @init_completion(i32* %23)
  %25 = load i32, i32* @THIS_MODULE, align 4
  %26 = load i32, i32* @FW_ACTION_HOTPLUG, align 4
  %27 = load i32, i32* @FIRMWARE_NAME, align 4
  %28 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %29 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %28, i32 0, i32 0
  %30 = load i32, i32* @GFP_KERNEL, align 4
  %31 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %32 = load i32, i32* @firmware_load, align 4
  %33 = call i32 @request_firmware_nowait(i32 %25, i32 %26, i32 %27, i32* %29, i32 %30, %struct.spi_device* %31, i32 %32)
  store i32 %33, i32* %5, align 4
  %34 = load i32, i32* %5, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %18
  %37 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %38 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %37, i32 0, i32 0
  %39 = load i32, i32* %5, align 4
  %40 = call i32 (i32*, i8*, ...) @dev_err(i32* %38, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %39)
  %41 = load i32, i32* %5, align 4
  store i32 %41, i32* %2, align 4
  br label %46

42:                                               ; preds = %18
  %43 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %44 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %43, i32 0, i32 0
  %45 = call i32 @dev_info(i32* %44, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %46

46:                                               ; preds = %42, %36, %12
  %47 = load i32, i32* %2, align 4
  ret i32 %47
}

declare dso_local %struct.fpga_data* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @spi_set_drvdata(%struct.spi_device*, %struct.fpga_data*) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @request_firmware_nowait(i32, i32, i32, i32*, i32, %struct.spi_device*, i32) #1

declare dso_local i32 @dev_info(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
