; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/habanalabs/extr_device.c_hl_device_suspend.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/habanalabs/extr_device.c_hl_device_suspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hl_device = type { i32, i32, i32, %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { {}*, {}*, {}* }

@.str = private unnamed_addr constant [30 x i8] c"Can't suspend while in reset\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"Failed to disable PCI access of device CPU\0A\00", align 1
@PCI_D3hot = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hl_device_suspend(%struct.hl_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hl_device*, align 8
  %4 = alloca i32, align 4
  store %struct.hl_device* %0, %struct.hl_device** %3, align 8
  %5 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %6 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 4
  %8 = call i32 @pci_save_state(i32 %7)
  %9 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %10 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %9, i32 0, i32 5
  %11 = call i32 @atomic_cmpxchg(i32* %10, i32 0, i32 1)
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %21

14:                                               ; preds = %1
  %15 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %16 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @dev_err(i32 %17, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* @EIO, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %71

21:                                               ; preds = %1
  %22 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %23 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %22, i32 0, i32 0
  store i32 1, i32* %23, align 8
  %24 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %25 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %24, i32 0, i32 3
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 2
  %28 = bitcast {}** %27 to i32 (%struct.hl_device*)**
  %29 = load i32 (%struct.hl_device*)*, i32 (%struct.hl_device*)** %28, align 8
  %30 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %31 = call i32 %29(%struct.hl_device* %30)
  %32 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %33 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %32, i32 0, i32 3
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  %36 = bitcast {}** %35 to i32 (%struct.hl_device*)**
  %37 = load i32 (%struct.hl_device*)*, i32 (%struct.hl_device*)** %36, align 8
  %38 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %39 = call i32 %37(%struct.hl_device* %38)
  %40 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %41 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %40, i32 0, i32 4
  %42 = call i32 @mutex_lock(i32* %41)
  %43 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %44 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %43, i32 0, i32 4
  %45 = call i32 @mutex_unlock(i32* %44)
  %46 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %47 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %46, i32 0, i32 3
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = bitcast {}** %49 to i32 (%struct.hl_device*)**
  %51 = load i32 (%struct.hl_device*)*, i32 (%struct.hl_device*)** %50, align 8
  %52 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %53 = call i32 %51(%struct.hl_device* %52)
  store i32 %53, i32* %4, align 4
  %54 = load i32, i32* %4, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %21
  %57 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %58 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @dev_err(i32 %59, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  br label %61

61:                                               ; preds = %56, %21
  %62 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %63 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @pci_disable_device(i32 %64)
  %66 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %67 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @PCI_D3hot, align 4
  %70 = call i32 @pci_set_power_state(i32 %68, i32 %69)
  store i32 0, i32* %2, align 4
  br label %71

71:                                               ; preds = %61, %14
  %72 = load i32, i32* %2, align 4
  ret i32 %72
}

declare dso_local i32 @pci_save_state(i32) #1

declare dso_local i32 @atomic_cmpxchg(i32*, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @pci_disable_device(i32) #1

declare dso_local i32 @pci_set_power_state(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
