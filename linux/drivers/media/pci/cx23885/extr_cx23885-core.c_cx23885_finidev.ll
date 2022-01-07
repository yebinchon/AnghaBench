; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/cx23885/extr_cx23885-core.c_cx23885_finidev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/cx23885/extr_cx23885-core.c_cx23885_finidev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.v4l2_device = type { i32 }
%struct.cx23885_dev = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @cx23885_finidev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cx23885_finidev(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca %struct.v4l2_device*, align 8
  %4 = alloca %struct.cx23885_dev*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %5 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %6 = call %struct.v4l2_device* @pci_get_drvdata(%struct.pci_dev* %5)
  store %struct.v4l2_device* %6, %struct.v4l2_device** %3, align 8
  %7 = load %struct.v4l2_device*, %struct.v4l2_device** %3, align 8
  %8 = call %struct.cx23885_dev* @to_cx23885(%struct.v4l2_device* %7)
  store %struct.cx23885_dev* %8, %struct.cx23885_dev** %4, align 8
  %9 = load %struct.cx23885_dev*, %struct.cx23885_dev** %4, align 8
  %10 = call i32 @cx23885_input_fini(%struct.cx23885_dev* %9)
  %11 = load %struct.cx23885_dev*, %struct.cx23885_dev** %4, align 8
  %12 = call i32 @cx23885_ir_fini(%struct.cx23885_dev* %11)
  %13 = load %struct.cx23885_dev*, %struct.cx23885_dev** %4, align 8
  %14 = call i32 @cx23885_shutdown(%struct.cx23885_dev* %13)
  %15 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %16 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.cx23885_dev*, %struct.cx23885_dev** %4, align 8
  %19 = call i32 @free_irq(i32 %17, %struct.cx23885_dev* %18)
  %20 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %21 = call i32 @pci_disable_device(%struct.pci_dev* %20)
  %22 = load %struct.cx23885_dev*, %struct.cx23885_dev** %4, align 8
  %23 = call i32 @cx23885_dev_unregister(%struct.cx23885_dev* %22)
  %24 = load %struct.cx23885_dev*, %struct.cx23885_dev** %4, align 8
  %25 = getelementptr inbounds %struct.cx23885_dev, %struct.cx23885_dev* %24, i32 0, i32 0
  %26 = call i32 @v4l2_ctrl_handler_free(i32* %25)
  %27 = load %struct.v4l2_device*, %struct.v4l2_device** %3, align 8
  %28 = call i32 @v4l2_device_unregister(%struct.v4l2_device* %27)
  %29 = load %struct.cx23885_dev*, %struct.cx23885_dev** %4, align 8
  %30 = call i32 @kfree(%struct.cx23885_dev* %29)
  ret void
}

declare dso_local %struct.v4l2_device* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local %struct.cx23885_dev* @to_cx23885(%struct.v4l2_device*) #1

declare dso_local i32 @cx23885_input_fini(%struct.cx23885_dev*) #1

declare dso_local i32 @cx23885_ir_fini(%struct.cx23885_dev*) #1

declare dso_local i32 @cx23885_shutdown(%struct.cx23885_dev*) #1

declare dso_local i32 @free_irq(i32, %struct.cx23885_dev*) #1

declare dso_local i32 @pci_disable_device(%struct.pci_dev*) #1

declare dso_local i32 @cx23885_dev_unregister(%struct.cx23885_dev*) #1

declare dso_local i32 @v4l2_ctrl_handler_free(i32*) #1

declare dso_local i32 @v4l2_device_unregister(%struct.v4l2_device*) #1

declare dso_local i32 @kfree(%struct.cx23885_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
