; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/extr_pti.c_pti_pci_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/extr_pti.c_pti_pci_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.pti_dev = type { i32, i32* }

@pti_console = common dso_local global i32 0, align 4
@PTITTY_MINOR_NUM = common dso_local global i32 0, align 4
@pti_tty_driver = common dso_local global i32 0, align 4
@pti_char_driver = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @pti_pci_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pti_pci_remove(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca %struct.pti_dev*, align 8
  %4 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %5 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %6 = call %struct.pti_dev* @pci_get_drvdata(%struct.pci_dev* %5)
  store %struct.pti_dev* %6, %struct.pti_dev** %3, align 8
  %7 = call i32 @unregister_console(i32* @pti_console)
  store i32 0, i32* %4, align 4
  br label %8

8:                                                ; preds = %23, %1
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @PTITTY_MINOR_NUM, align 4
  %11 = icmp ult i32 %9, %10
  br i1 %11, label %12, label %26

12:                                               ; preds = %8
  %13 = load i32, i32* @pti_tty_driver, align 4
  %14 = load i32, i32* %4, align 4
  %15 = call i32 @tty_unregister_device(i32 %13, i32 %14)
  %16 = load %struct.pti_dev*, %struct.pti_dev** %3, align 8
  %17 = getelementptr inbounds %struct.pti_dev, %struct.pti_dev* %16, i32 0, i32 1
  %18 = load i32*, i32** %17, align 8
  %19 = load i32, i32* %4, align 4
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %18, i64 %20
  %22 = call i32 @tty_port_destroy(i32* %21)
  br label %23

23:                                               ; preds = %12
  %24 = load i32, i32* %4, align 4
  %25 = add i32 %24, 1
  store i32 %25, i32* %4, align 4
  br label %8

26:                                               ; preds = %8
  %27 = load %struct.pti_dev*, %struct.pti_dev** %3, align 8
  %28 = getelementptr inbounds %struct.pti_dev, %struct.pti_dev* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @iounmap(i32 %29)
  %31 = load %struct.pti_dev*, %struct.pti_dev** %3, align 8
  %32 = call i32 @kfree(%struct.pti_dev* %31)
  %33 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %34 = call i32 @pci_release_region(%struct.pci_dev* %33, i32 1)
  %35 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %36 = call i32 @pci_disable_device(%struct.pci_dev* %35)
  %37 = call i32 @misc_deregister(i32* @pti_char_driver)
  ret void
}

declare dso_local %struct.pti_dev* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local i32 @unregister_console(i32*) #1

declare dso_local i32 @tty_unregister_device(i32, i32) #1

declare dso_local i32 @tty_port_destroy(i32*) #1

declare dso_local i32 @iounmap(i32) #1

declare dso_local i32 @kfree(%struct.pti_dev*) #1

declare dso_local i32 @pci_release_region(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_disable_device(%struct.pci_dev*) #1

declare dso_local i32 @misc_deregister(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
