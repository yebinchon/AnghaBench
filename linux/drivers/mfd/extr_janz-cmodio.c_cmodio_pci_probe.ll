; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_janz-cmodio.c_cmodio_pci_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_janz-cmodio.c_cmodio_pci_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.pci_device_id = type { i32 }
%struct.cmodio_device = type { %struct.TYPE_5__*, i32, %struct.pci_dev* }
%struct.TYPE_5__ = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"unable to enable device\0A\00", align 1
@DRV_NAME = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"unable to request regions\0A\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"unable to remap onboard regs\0A\00", align 1
@cmodio_sysfs_attr_group = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [35 x i8] c"unable to create sysfs attributes\0A\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"unable to probe submodules\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, %struct.pci_device_id*)* @cmodio_pci_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cmodio_pci_probe(%struct.pci_dev* %0, %struct.pci_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.pci_device_id*, align 8
  %6 = alloca %struct.cmodio_device*, align 8
  %7 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store %struct.pci_device_id* %1, %struct.pci_device_id** %5, align 8
  %8 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %9 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %8, i32 0, i32 0
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.cmodio_device* @devm_kzalloc(%struct.TYPE_6__* %9, i32 24, i32 %10)
  store %struct.cmodio_device* %11, %struct.cmodio_device** %6, align 8
  %12 = load %struct.cmodio_device*, %struct.cmodio_device** %6, align 8
  %13 = icmp ne %struct.cmodio_device* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %110

17:                                               ; preds = %2
  %18 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %19 = load %struct.cmodio_device*, %struct.cmodio_device** %6, align 8
  %20 = call i32 @pci_set_drvdata(%struct.pci_dev* %18, %struct.cmodio_device* %19)
  %21 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %22 = load %struct.cmodio_device*, %struct.cmodio_device** %6, align 8
  %23 = getelementptr inbounds %struct.cmodio_device, %struct.cmodio_device* %22, i32 0, i32 2
  store %struct.pci_dev* %21, %struct.pci_dev** %23, align 8
  %24 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %25 = call i32 @pci_enable_device(%struct.pci_dev* %24)
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %7, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %17
  %29 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %30 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %29, i32 0, i32 0
  %31 = call i32 @dev_err(%struct.TYPE_6__* %30, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %32 = load i32, i32* %7, align 4
  store i32 %32, i32* %3, align 4
  br label %110

33:                                               ; preds = %17
  %34 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %35 = call i32 @pci_set_master(%struct.pci_dev* %34)
  %36 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %37 = load i32, i32* @DRV_NAME, align 4
  %38 = call i32 @pci_request_regions(%struct.pci_dev* %36, i32 %37)
  store i32 %38, i32* %7, align 4
  %39 = load i32, i32* %7, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %33
  %42 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %43 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %42, i32 0, i32 0
  %44 = call i32 @dev_err(%struct.TYPE_6__* %43, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  br label %106

45:                                               ; preds = %33
  %46 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %47 = call %struct.TYPE_5__* @pci_ioremap_bar(%struct.pci_dev* %46, i32 4)
  %48 = load %struct.cmodio_device*, %struct.cmodio_device** %6, align 8
  %49 = getelementptr inbounds %struct.cmodio_device, %struct.cmodio_device* %48, i32 0, i32 0
  store %struct.TYPE_5__* %47, %struct.TYPE_5__** %49, align 8
  %50 = load %struct.cmodio_device*, %struct.cmodio_device** %6, align 8
  %51 = getelementptr inbounds %struct.cmodio_device, %struct.cmodio_device* %50, i32 0, i32 0
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %51, align 8
  %53 = icmp ne %struct.TYPE_5__* %52, null
  br i1 %53, label %60, label %54

54:                                               ; preds = %45
  %55 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %56 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %55, i32 0, i32 0
  %57 = call i32 @dev_err(%struct.TYPE_6__* %56, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  %58 = load i32, i32* @ENOMEM, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %7, align 4
  br label %103

60:                                               ; preds = %45
  %61 = load %struct.cmodio_device*, %struct.cmodio_device** %6, align 8
  %62 = getelementptr inbounds %struct.cmodio_device, %struct.cmodio_device* %61, i32 0, i32 0
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 1
  %65 = call i32 @ioread8(i32* %64)
  %66 = load %struct.cmodio_device*, %struct.cmodio_device** %6, align 8
  %67 = getelementptr inbounds %struct.cmodio_device, %struct.cmodio_device* %66, i32 0, i32 1
  store i32 %65, i32* %67, align 8
  %68 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %69 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 0
  %71 = call i32 @sysfs_create_group(i32* %70, i32* @cmodio_sysfs_attr_group)
  store i32 %71, i32* %7, align 4
  %72 = load i32, i32* %7, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %60
  %75 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %76 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %75, i32 0, i32 0
  %77 = call i32 @dev_err(%struct.TYPE_6__* %76, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0))
  br label %98

78:                                               ; preds = %60
  %79 = load %struct.cmodio_device*, %struct.cmodio_device** %6, align 8
  %80 = getelementptr inbounds %struct.cmodio_device, %struct.cmodio_device* %79, i32 0, i32 0
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 0
  %83 = call i32 @iowrite8(i32 15, i32* %82)
  %84 = load %struct.cmodio_device*, %struct.cmodio_device** %6, align 8
  %85 = call i32 @cmodio_probe_submodules(%struct.cmodio_device* %84)
  store i32 %85, i32* %7, align 4
  %86 = load i32, i32* %7, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %92

88:                                               ; preds = %78
  %89 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %90 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %89, i32 0, i32 0
  %91 = call i32 @dev_err(%struct.TYPE_6__* %90, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0))
  br label %93

92:                                               ; preds = %78
  store i32 0, i32* %3, align 4
  br label %110

93:                                               ; preds = %88
  %94 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %95 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 0
  %97 = call i32 @sysfs_remove_group(i32* %96, i32* @cmodio_sysfs_attr_group)
  br label %98

98:                                               ; preds = %93, %74
  %99 = load %struct.cmodio_device*, %struct.cmodio_device** %6, align 8
  %100 = getelementptr inbounds %struct.cmodio_device, %struct.cmodio_device* %99, i32 0, i32 0
  %101 = load %struct.TYPE_5__*, %struct.TYPE_5__** %100, align 8
  %102 = call i32 @iounmap(%struct.TYPE_5__* %101)
  br label %103

103:                                              ; preds = %98, %54
  %104 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %105 = call i32 @pci_release_regions(%struct.pci_dev* %104)
  br label %106

106:                                              ; preds = %103, %41
  %107 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %108 = call i32 @pci_disable_device(%struct.pci_dev* %107)
  %109 = load i32, i32* %7, align 4
  store i32 %109, i32* %3, align 4
  br label %110

110:                                              ; preds = %106, %92, %28, %14
  %111 = load i32, i32* %3, align 4
  ret i32 %111
}

declare dso_local %struct.cmodio_device* @devm_kzalloc(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @pci_set_drvdata(%struct.pci_dev*, %struct.cmodio_device*) #1

declare dso_local i32 @pci_enable_device(%struct.pci_dev*) #1

declare dso_local i32 @dev_err(%struct.TYPE_6__*, i8*) #1

declare dso_local i32 @pci_set_master(%struct.pci_dev*) #1

declare dso_local i32 @pci_request_regions(%struct.pci_dev*, i32) #1

declare dso_local %struct.TYPE_5__* @pci_ioremap_bar(%struct.pci_dev*, i32) #1

declare dso_local i32 @ioread8(i32*) #1

declare dso_local i32 @sysfs_create_group(i32*, i32*) #1

declare dso_local i32 @iowrite8(i32, i32*) #1

declare dso_local i32 @cmodio_probe_submodules(%struct.cmodio_device*) #1

declare dso_local i32 @sysfs_remove_group(i32*, i32*) #1

declare dso_local i32 @iounmap(%struct.TYPE_5__*) #1

declare dso_local i32 @pci_release_regions(%struct.pci_dev*) #1

declare dso_local i32 @pci_disable_device(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
