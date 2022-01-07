; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_rdc321x-southbridge.c_rdc321x_sb_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_rdc321x-southbridge.c_rdc321x_sb_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.pci_dev* }
%struct.pci_dev = type { i32 }
%struct.TYPE_3__ = type { %struct.pci_dev* }
%struct.pci_device_id = type { i32 }

@.str = private unnamed_addr constant [25 x i8] c"failed to enable device\0A\00", align 1
@rdc321x_gpio_pdata = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@rdc321x_wdt_pdata = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@rdc321x_sb_cells = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, %struct.pci_device_id*)* @rdc321x_sb_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rdc321x_sb_probe(%struct.pci_dev* %0, %struct.pci_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.pci_device_id*, align 8
  %6 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store %struct.pci_device_id* %1, %struct.pci_device_id** %5, align 8
  %7 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %8 = call i32 @pci_enable_device(%struct.pci_dev* %7)
  store i32 %8, i32* %6, align 4
  %9 = load i32, i32* %6, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %2
  %12 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %13 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %12, i32 0, i32 0
  %14 = call i32 @dev_err(i32* %13, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %15 = load i32, i32* %6, align 4
  store i32 %15, i32* %3, align 4
  br label %25

16:                                               ; preds = %2
  %17 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  store %struct.pci_dev* %17, %struct.pci_dev** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @rdc321x_gpio_pdata, i32 0, i32 0), align 8
  %18 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  store %struct.pci_dev* %18, %struct.pci_dev** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @rdc321x_wdt_pdata, i32 0, i32 0), align 8
  %19 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %20 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %19, i32 0, i32 0
  %21 = load i32, i32* @rdc321x_sb_cells, align 4
  %22 = load i32, i32* @rdc321x_sb_cells, align 4
  %23 = call i32 @ARRAY_SIZE(i32 %22)
  %24 = call i32 @devm_mfd_add_devices(i32* %20, i32 -1, i32 %21, i32 %23, i32* null, i32 0, i32* null)
  store i32 %24, i32* %3, align 4
  br label %25

25:                                               ; preds = %16, %11
  %26 = load i32, i32* %3, align 4
  ret i32 %26
}

declare dso_local i32 @pci_enable_device(%struct.pci_dev*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @devm_mfd_add_devices(i32*, i32, i32, i32, i32*, i32, i32*) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
