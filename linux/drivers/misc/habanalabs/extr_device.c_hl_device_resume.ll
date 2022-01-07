; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/habanalabs/extr_device.c_hl_device_resume.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/habanalabs/extr_device.c_hl_device_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hl_device = type { i32, i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { {}* }

@PCI_D0 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Failed to enable PCI device in resume\0A\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"Failed to resume device after suspend\0A\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"Failed to reset device during resume\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hl_device_resume(%struct.hl_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hl_device*, align 8
  %4 = alloca i32, align 4
  store %struct.hl_device* %0, %struct.hl_device** %3, align 8
  %5 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %6 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @PCI_D0, align 4
  %9 = call i32 @pci_set_power_state(i32 %7, i32 %8)
  %10 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %11 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @pci_restore_state(i32 %12)
  %14 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %15 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @pci_enable_device_mem(i32 %16)
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* %4, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %1
  %21 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %22 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @dev_err(i32 %23, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %25 = load i32, i32* %4, align 4
  store i32 %25, i32* %2, align 4
  br label %72

26:                                               ; preds = %1
  %27 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %28 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @pci_set_master(i32 %29)
  %31 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %32 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %31, i32 0, i32 4
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = bitcast {}** %34 to i32 (%struct.hl_device*)**
  %36 = load i32 (%struct.hl_device*)*, i32 (%struct.hl_device*)** %35, align 8
  %37 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %38 = call i32 %36(%struct.hl_device* %37)
  store i32 %38, i32* %4, align 4
  %39 = load i32, i32* %4, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %26
  %42 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %43 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @dev_err(i32 %44, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  br label %62

46:                                               ; preds = %26
  %47 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %48 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %47, i32 0, i32 0
  store i32 0, i32* %48, align 8
  %49 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %50 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %49, i32 0, i32 3
  %51 = call i32 @atomic_set(i32* %50, i32 0)
  %52 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %53 = call i32 @hl_device_reset(%struct.hl_device* %52, i32 1, i32 0)
  store i32 %53, i32* %4, align 4
  %54 = load i32, i32* %4, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %46
  %57 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %58 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @dev_err(i32 %59, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0))
  br label %62

61:                                               ; preds = %46
  store i32 0, i32* %2, align 4
  br label %72

62:                                               ; preds = %56, %41
  %63 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %64 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @pci_clear_master(i32 %65)
  %67 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %68 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @pci_disable_device(i32 %69)
  %71 = load i32, i32* %4, align 4
  store i32 %71, i32* %2, align 4
  br label %72

72:                                               ; preds = %62, %61, %20
  %73 = load i32, i32* %2, align 4
  ret i32 %73
}

declare dso_local i32 @pci_set_power_state(i32, i32) #1

declare dso_local i32 @pci_restore_state(i32) #1

declare dso_local i32 @pci_enable_device_mem(i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @pci_set_master(i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @hl_device_reset(%struct.hl_device*, i32, i32) #1

declare dso_local i32 @pci_clear_master(i32) #1

declare dso_local i32 @pci_disable_device(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
