; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/extr_phantom.c_phantom_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/extr_phantom.c_phantom_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.phantom_device = type { i64, i64, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@phantom_class = common dso_local global i32 0, align 4
@phantom_major = common dso_local global i32 0, align 4
@PHN_IRQCTL = common dso_local global i64 0, align 8
@phantom_devices = common dso_local global i64* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @phantom_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @phantom_remove(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca %struct.phantom_device*, align 8
  %4 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %5 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %6 = call %struct.phantom_device* @pci_get_drvdata(%struct.pci_dev* %5)
  store %struct.phantom_device* %6, %struct.phantom_device** %3, align 8
  %7 = load %struct.phantom_device*, %struct.phantom_device** %3, align 8
  %8 = getelementptr inbounds %struct.phantom_device, %struct.phantom_device* %7, i32 0, i32 3
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = call i32 @MINOR(i32 %10)
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* @phantom_class, align 4
  %13 = load i32, i32* @phantom_major, align 4
  %14 = load i32, i32* %4, align 4
  %15 = call i32 @MKDEV(i32 %13, i32 %14)
  %16 = call i32 @device_destroy(i32 %12, i32 %15)
  %17 = load %struct.phantom_device*, %struct.phantom_device** %3, align 8
  %18 = getelementptr inbounds %struct.phantom_device, %struct.phantom_device* %17, i32 0, i32 3
  %19 = call i32 @cdev_del(%struct.TYPE_2__* %18)
  %20 = load %struct.phantom_device*, %struct.phantom_device** %3, align 8
  %21 = getelementptr inbounds %struct.phantom_device, %struct.phantom_device* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @PHN_IRQCTL, align 8
  %24 = add nsw i64 %22, %23
  %25 = call i32 @iowrite32(i32 0, i64 %24)
  %26 = load %struct.phantom_device*, %struct.phantom_device** %3, align 8
  %27 = getelementptr inbounds %struct.phantom_device, %struct.phantom_device* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @PHN_IRQCTL, align 8
  %30 = add nsw i64 %28, %29
  %31 = call i32 @ioread32(i64 %30)
  %32 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %33 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.phantom_device*, %struct.phantom_device** %3, align 8
  %36 = call i32 @free_irq(i32 %34, %struct.phantom_device* %35)
  %37 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %38 = load %struct.phantom_device*, %struct.phantom_device** %3, align 8
  %39 = getelementptr inbounds %struct.phantom_device, %struct.phantom_device* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = call i32 @pci_iounmap(%struct.pci_dev* %37, i64 %40)
  %42 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %43 = load %struct.phantom_device*, %struct.phantom_device** %3, align 8
  %44 = getelementptr inbounds %struct.phantom_device, %struct.phantom_device* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = call i32 @pci_iounmap(%struct.pci_dev* %42, i64 %45)
  %47 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %48 = load %struct.phantom_device*, %struct.phantom_device** %3, align 8
  %49 = getelementptr inbounds %struct.phantom_device, %struct.phantom_device* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = call i32 @pci_iounmap(%struct.pci_dev* %47, i64 %50)
  %52 = load %struct.phantom_device*, %struct.phantom_device** %3, align 8
  %53 = call i32 @kfree(%struct.phantom_device* %52)
  %54 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %55 = call i32 @pci_release_regions(%struct.pci_dev* %54)
  %56 = load i64*, i64** @phantom_devices, align 8
  %57 = load i32, i32* %4, align 4
  %58 = zext i32 %57 to i64
  %59 = getelementptr inbounds i64, i64* %56, i64 %58
  store i64 0, i64* %59, align 8
  %60 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %61 = call i32 @pci_disable_device(%struct.pci_dev* %60)
  ret void
}

declare dso_local %struct.phantom_device* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local i32 @MINOR(i32) #1

declare dso_local i32 @device_destroy(i32, i32) #1

declare dso_local i32 @MKDEV(i32, i32) #1

declare dso_local i32 @cdev_del(%struct.TYPE_2__*) #1

declare dso_local i32 @iowrite32(i32, i64) #1

declare dso_local i32 @ioread32(i64) #1

declare dso_local i32 @free_irq(i32, %struct.phantom_device*) #1

declare dso_local i32 @pci_iounmap(%struct.pci_dev*, i64) #1

declare dso_local i32 @kfree(%struct.phantom_device*) #1

declare dso_local i32 @pci_release_regions(%struct.pci_dev*) #1

declare dso_local i32 @pci_disable_device(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
