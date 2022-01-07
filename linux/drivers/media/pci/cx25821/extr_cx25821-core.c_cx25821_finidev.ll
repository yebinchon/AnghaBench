; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/cx25821/extr_cx25821-core.c_cx25821_finidev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/cx25821/extr_cx25821-core.c_cx25821_finidev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i64 }
%struct.v4l2_device = type { i32 }
%struct.cx25821_dev = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @cx25821_finidev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cx25821_finidev(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca %struct.v4l2_device*, align 8
  %4 = alloca %struct.cx25821_dev*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %5 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %6 = call %struct.v4l2_device* @pci_get_drvdata(%struct.pci_dev* %5)
  store %struct.v4l2_device* %6, %struct.v4l2_device** %3, align 8
  %7 = load %struct.v4l2_device*, %struct.v4l2_device** %3, align 8
  %8 = call %struct.cx25821_dev* @get_cx25821(%struct.v4l2_device* %7)
  store %struct.cx25821_dev* %8, %struct.cx25821_dev** %4, align 8
  %9 = load %struct.cx25821_dev*, %struct.cx25821_dev** %4, align 8
  %10 = call i32 @cx25821_shutdown(%struct.cx25821_dev* %9)
  %11 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %12 = call i32 @pci_disable_device(%struct.pci_dev* %11)
  %13 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %14 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %1
  %18 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %19 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.cx25821_dev*, %struct.cx25821_dev** %4, align 8
  %22 = call i32 @free_irq(i64 %20, %struct.cx25821_dev* %21)
  br label %23

23:                                               ; preds = %17, %1
  %24 = load %struct.cx25821_dev*, %struct.cx25821_dev** %4, align 8
  %25 = call i32 @cx25821_dev_unregister(%struct.cx25821_dev* %24)
  %26 = load %struct.v4l2_device*, %struct.v4l2_device** %3, align 8
  %27 = call i32 @v4l2_device_unregister(%struct.v4l2_device* %26)
  %28 = load %struct.cx25821_dev*, %struct.cx25821_dev** %4, align 8
  %29 = call i32 @kfree(%struct.cx25821_dev* %28)
  ret void
}

declare dso_local %struct.v4l2_device* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local %struct.cx25821_dev* @get_cx25821(%struct.v4l2_device*) #1

declare dso_local i32 @cx25821_shutdown(%struct.cx25821_dev*) #1

declare dso_local i32 @pci_disable_device(%struct.pci_dev*) #1

declare dso_local i32 @free_irq(i64, %struct.cx25821_dev*) #1

declare dso_local i32 @cx25821_dev_unregister(%struct.cx25821_dev*) #1

declare dso_local i32 @v4l2_device_unregister(%struct.v4l2_device*) #1

declare dso_local i32 @kfree(%struct.cx25821_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
