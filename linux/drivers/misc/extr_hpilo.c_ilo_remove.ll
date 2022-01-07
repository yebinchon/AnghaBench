; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/extr_hpilo.c_ilo_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/extr_hpilo.c_ilo_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.ilo_hwinfo = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@max_ccb = common dso_local global i32 0, align 4
@ilo_class = common dso_local global i32 0, align 4
@ilo_major = common dso_local global i32 0, align 4
@ilo_hwdev = common dso_local global i64* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @ilo_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ilo_remove(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.ilo_hwinfo*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %6 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %7 = call %struct.ilo_hwinfo* @pci_get_drvdata(%struct.pci_dev* %6)
  store %struct.ilo_hwinfo* %7, %struct.ilo_hwinfo** %5, align 8
  %8 = load %struct.ilo_hwinfo*, %struct.ilo_hwinfo** %5, align 8
  %9 = icmp ne %struct.ilo_hwinfo* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  br label %59

11:                                               ; preds = %1
  %12 = load %struct.ilo_hwinfo*, %struct.ilo_hwinfo** %5, align 8
  %13 = call i32 @clear_device(%struct.ilo_hwinfo* %12)
  %14 = load %struct.ilo_hwinfo*, %struct.ilo_hwinfo** %5, align 8
  %15 = getelementptr inbounds %struct.ilo_hwinfo, %struct.ilo_hwinfo* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @MINOR(i32 %17)
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* %4, align 4
  store i32 %19, i32* %3, align 4
  br label %20

20:                                               ; preds = %32, %11
  %21 = load i32, i32* %3, align 4
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* @max_ccb, align 4
  %24 = add nsw i32 %22, %23
  %25 = icmp slt i32 %21, %24
  br i1 %25, label %26, label %35

26:                                               ; preds = %20
  %27 = load i32, i32* @ilo_class, align 4
  %28 = load i32, i32* @ilo_major, align 4
  %29 = load i32, i32* %3, align 4
  %30 = call i32 @MKDEV(i32 %28, i32 %29)
  %31 = call i32 @device_destroy(i32 %27, i32 %30)
  br label %32

32:                                               ; preds = %26
  %33 = load i32, i32* %3, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %3, align 4
  br label %20

35:                                               ; preds = %20
  %36 = load %struct.ilo_hwinfo*, %struct.ilo_hwinfo** %5, align 8
  %37 = getelementptr inbounds %struct.ilo_hwinfo, %struct.ilo_hwinfo* %36, i32 0, i32 0
  %38 = call i32 @cdev_del(%struct.TYPE_2__* %37)
  %39 = load %struct.ilo_hwinfo*, %struct.ilo_hwinfo** %5, align 8
  %40 = call i32 @ilo_disable_interrupts(%struct.ilo_hwinfo* %39)
  %41 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %42 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.ilo_hwinfo*, %struct.ilo_hwinfo** %5, align 8
  %45 = call i32 @free_irq(i32 %43, %struct.ilo_hwinfo* %44)
  %46 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %47 = load %struct.ilo_hwinfo*, %struct.ilo_hwinfo** %5, align 8
  %48 = call i32 @ilo_unmap_device(%struct.pci_dev* %46, %struct.ilo_hwinfo* %47)
  %49 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %50 = call i32 @pci_release_regions(%struct.pci_dev* %49)
  %51 = load %struct.ilo_hwinfo*, %struct.ilo_hwinfo** %5, align 8
  %52 = call i32 @kfree(%struct.ilo_hwinfo* %51)
  %53 = load i64*, i64** @ilo_hwdev, align 8
  %54 = load i32, i32* %4, align 4
  %55 = load i32, i32* @max_ccb, align 4
  %56 = sdiv i32 %54, %55
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i64, i64* %53, i64 %57
  store i64 0, i64* %58, align 8
  br label %59

59:                                               ; preds = %35, %10
  ret void
}

declare dso_local %struct.ilo_hwinfo* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local i32 @clear_device(%struct.ilo_hwinfo*) #1

declare dso_local i32 @MINOR(i32) #1

declare dso_local i32 @device_destroy(i32, i32) #1

declare dso_local i32 @MKDEV(i32, i32) #1

declare dso_local i32 @cdev_del(%struct.TYPE_2__*) #1

declare dso_local i32 @ilo_disable_interrupts(%struct.ilo_hwinfo*) #1

declare dso_local i32 @free_irq(i32, %struct.ilo_hwinfo*) #1

declare dso_local i32 @ilo_unmap_device(%struct.pci_dev*, %struct.ilo_hwinfo*) #1

declare dso_local i32 @pci_release_regions(%struct.pci_dev*) #1

declare dso_local i32 @kfree(%struct.ilo_hwinfo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
