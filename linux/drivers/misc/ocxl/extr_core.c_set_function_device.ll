; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/ocxl/extr_core.c_set_function_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/ocxl/extr_core.c_set_function_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocxl_fn = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32* }
%struct.pci_dev = type { i32 }

@free_function_dev = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"ocxlfn.%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ocxl_fn*, %struct.pci_dev*)* @set_function_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_function_device(%struct.ocxl_fn* %0, %struct.pci_dev* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ocxl_fn*, align 8
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca i32, align 4
  store %struct.ocxl_fn* %0, %struct.ocxl_fn** %4, align 8
  store %struct.pci_dev* %1, %struct.pci_dev** %5, align 8
  %7 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %8 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %7, i32 0, i32 0
  %9 = load %struct.ocxl_fn*, %struct.ocxl_fn** %4, align 8
  %10 = getelementptr inbounds %struct.ocxl_fn, %struct.ocxl_fn* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 1
  store i32* %8, i32** %11, align 8
  %12 = load i32, i32* @free_function_dev, align 4
  %13 = load %struct.ocxl_fn*, %struct.ocxl_fn** %4, align 8
  %14 = getelementptr inbounds %struct.ocxl_fn, %struct.ocxl_fn* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  store i32 %12, i32* %15, align 8
  %16 = load %struct.ocxl_fn*, %struct.ocxl_fn** %4, align 8
  %17 = getelementptr inbounds %struct.ocxl_fn, %struct.ocxl_fn* %16, i32 0, i32 0
  %18 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %19 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %18, i32 0, i32 0
  %20 = call i32 @dev_name(i32* %19)
  %21 = call i32 @dev_set_name(%struct.TYPE_2__* %17, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %20)
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %2
  %25 = load i32, i32* %6, align 4
  store i32 %25, i32* %3, align 4
  br label %27

26:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %27

27:                                               ; preds = %26, %24
  %28 = load i32, i32* %3, align 4
  ret i32 %28
}

declare dso_local i32 @dev_set_name(%struct.TYPE_2__*, i8*, i32) #1

declare dso_local i32 @dev_name(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
