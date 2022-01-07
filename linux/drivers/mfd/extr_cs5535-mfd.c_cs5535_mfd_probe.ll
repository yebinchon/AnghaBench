; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_cs5535-mfd.c_cs5535_mfd_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_cs5535-mfd.c_cs5535_mfd_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.resource = type { i32, i32, i32 }
%struct.pci_dev = type { i32 }
%struct.pci_device_id = type { i32 }

@cs5535_mfd_cells = common dso_local global %struct.TYPE_6__* null, align 8
@cs5535_mfd_resources = common dso_local global %struct.resource* null, align 8
@IORESOURCE_IO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"MFD add devices failed: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"cs5535-acpi\00", align 1
@olpc_acpi_clones = common dso_local global %struct.TYPE_6__* null, align 8
@.str.2 = private unnamed_addr constant [25 x i8] c"%zu devices registered.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, %struct.pci_device_id*)* @cs5535_mfd_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cs5535_mfd_probe(%struct.pci_dev* %0, %struct.pci_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.pci_device_id*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.resource*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store %struct.pci_device_id* %1, %struct.pci_device_id** %5, align 8
  %10 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %11 = call i32 @pci_enable_device(%struct.pci_dev* %10)
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i32, i32* %6, align 4
  store i32 %15, i32* %3, align 4
  br label %86

16:                                               ; preds = %2
  store i32 0, i32* %7, align 4
  br label %17

17:                                               ; preds = %51, %16
  %18 = load i32, i32* %7, align 4
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** @cs5535_mfd_cells, align 8
  %20 = call i32 @ARRAY_SIZE(%struct.TYPE_6__* %19)
  %21 = icmp slt i32 %18, %20
  br i1 %21, label %22, label %54

22:                                               ; preds = %17
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** @cs5535_mfd_cells, align 8
  %24 = load i32, i32* %7, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %8, align 4
  %29 = load %struct.resource*, %struct.resource** @cs5535_mfd_resources, align 8
  %30 = load i32, i32* %8, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.resource, %struct.resource* %29, i64 %31
  store %struct.resource* %32, %struct.resource** %9, align 8
  %33 = load i32, i32* @IORESOURCE_IO, align 4
  %34 = load %struct.resource*, %struct.resource** %9, align 8
  %35 = getelementptr inbounds %struct.resource, %struct.resource* %34, i32 0, i32 2
  store i32 %33, i32* %35, align 4
  %36 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %37 = load i32, i32* %8, align 4
  %38 = call i32 @pci_resource_start(%struct.pci_dev* %36, i32 %37)
  %39 = load %struct.resource*, %struct.resource** %9, align 8
  %40 = getelementptr inbounds %struct.resource, %struct.resource* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 4
  %41 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %42 = load i32, i32* %8, align 4
  %43 = call i32 @pci_resource_end(%struct.pci_dev* %41, i32 %42)
  %44 = load %struct.resource*, %struct.resource** %9, align 8
  %45 = getelementptr inbounds %struct.resource, %struct.resource* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 4
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** @cs5535_mfd_cells, align 8
  %47 = load i32, i32* %7, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  store i32 0, i32* %50, align 4
  br label %51

51:                                               ; preds = %22
  %52 = load i32, i32* %7, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %7, align 4
  br label %17

54:                                               ; preds = %17
  %55 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %56 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %55, i32 0, i32 0
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** @cs5535_mfd_cells, align 8
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** @cs5535_mfd_cells, align 8
  %59 = call i32 @ARRAY_SIZE(%struct.TYPE_6__* %58)
  %60 = call i32 @mfd_add_devices(i32* %56, i32 -1, %struct.TYPE_6__* %57, i32 %59, i32* null, i32 0, i32* null)
  store i32 %60, i32* %6, align 4
  %61 = load i32, i32* %6, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %54
  %64 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %65 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %64, i32 0, i32 0
  %66 = load i32, i32* %6, align 4
  %67 = call i32 @dev_err(i32* %65, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %66)
  br label %82

68:                                               ; preds = %54
  %69 = call i64 (...) @machine_is_olpc()
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %76

71:                                               ; preds = %68
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** @olpc_acpi_clones, align 8
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** @olpc_acpi_clones, align 8
  %74 = call i32 @ARRAY_SIZE(%struct.TYPE_6__* %73)
  %75 = call i32 @mfd_clone_cell(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_6__* %72, i32 %74)
  br label %76

76:                                               ; preds = %71, %68
  %77 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %78 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %77, i32 0, i32 0
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** @cs5535_mfd_cells, align 8
  %80 = call i32 @ARRAY_SIZE(%struct.TYPE_6__* %79)
  %81 = call i32 @dev_info(i32* %78, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %80)
  store i32 0, i32* %3, align 4
  br label %86

82:                                               ; preds = %63
  %83 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %84 = call i32 @pci_disable_device(%struct.pci_dev* %83)
  %85 = load i32, i32* %6, align 4
  store i32 %85, i32* %3, align 4
  br label %86

86:                                               ; preds = %82, %76, %14
  %87 = load i32, i32* %3, align 4
  ret i32 %87
}

declare dso_local i32 @pci_enable_device(%struct.pci_dev*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_6__*) #1

declare dso_local i32 @pci_resource_start(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_resource_end(%struct.pci_dev*, i32) #1

declare dso_local i32 @mfd_add_devices(i32*, i32, %struct.TYPE_6__*, i32, i32*, i32, i32*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i64 @machine_is_olpc(...) #1

declare dso_local i32 @mfd_clone_cell(i8*, %struct.TYPE_6__*, i32) #1

declare dso_local i32 @dev_info(i32*, i8*, i32) #1

declare dso_local i32 @pci_disable_device(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
