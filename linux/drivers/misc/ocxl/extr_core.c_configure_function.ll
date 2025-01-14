; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/ocxl/extr_core.c_configure_function.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/ocxl/extr_core.c_configure_function.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocxl_fn = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.pci_dev = type { i32 }

@.str = private unnamed_addr constant [30 x i8] c"pci_enable_device failed: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ocxl_fn*, %struct.pci_dev*)* @configure_function to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @configure_function(%struct.ocxl_fn* %0, %struct.pci_dev* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ocxl_fn*, align 8
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca i32, align 4
  store %struct.ocxl_fn* %0, %struct.ocxl_fn** %4, align 8
  store %struct.pci_dev* %1, %struct.pci_dev** %5, align 8
  %7 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %8 = call i32 @pci_enable_device(%struct.pci_dev* %7)
  store i32 %8, i32* %6, align 4
  %9 = load i32, i32* %6, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %17

11:                                               ; preds = %2
  %12 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %13 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %12, i32 0, i32 0
  %14 = load i32, i32* %6, align 4
  %15 = call i32 @dev_err(i32* %13, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %14)
  %16 = load i32, i32* %6, align 4
  store i32 %16, i32* %3, align 4
  br label %74

17:                                               ; preds = %2
  %18 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %19 = load %struct.ocxl_fn*, %struct.ocxl_fn** %4, align 8
  %20 = getelementptr inbounds %struct.ocxl_fn, %struct.ocxl_fn* %19, i32 0, i32 1
  %21 = call i32 @ocxl_config_read_function(%struct.pci_dev* %18, %struct.TYPE_2__* %20)
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %17
  %25 = load i32, i32* %6, align 4
  store i32 %25, i32* %3, align 4
  br label %74

26:                                               ; preds = %17
  %27 = load %struct.ocxl_fn*, %struct.ocxl_fn** %4, align 8
  %28 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %29 = call i32 @set_function_device(%struct.ocxl_fn* %27, %struct.pci_dev* %28)
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %6, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %26
  %33 = load i32, i32* %6, align 4
  store i32 %33, i32* %3, align 4
  br label %74

34:                                               ; preds = %26
  %35 = load %struct.ocxl_fn*, %struct.ocxl_fn** %4, align 8
  %36 = call i32 @assign_function_actag(%struct.ocxl_fn* %35)
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* %6, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %34
  %40 = load i32, i32* %6, align 4
  store i32 %40, i32* %3, align 4
  br label %74

41:                                               ; preds = %34
  %42 = load %struct.ocxl_fn*, %struct.ocxl_fn** %4, align 8
  %43 = call i32 @set_function_pasid(%struct.ocxl_fn* %42)
  store i32 %43, i32* %6, align 4
  %44 = load i32, i32* %6, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %41
  %47 = load i32, i32* %6, align 4
  store i32 %47, i32* %3, align 4
  br label %74

48:                                               ; preds = %41
  %49 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %50 = load %struct.ocxl_fn*, %struct.ocxl_fn** %4, align 8
  %51 = getelementptr inbounds %struct.ocxl_fn, %struct.ocxl_fn* %50, i32 0, i32 0
  %52 = call i32 @ocxl_link_setup(%struct.pci_dev* %49, i32 0, i32* %51)
  store i32 %52, i32* %6, align 4
  %53 = load i32, i32* %6, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %48
  %56 = load i32, i32* %6, align 4
  store i32 %56, i32* %3, align 4
  br label %74

57:                                               ; preds = %48
  %58 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %59 = load %struct.ocxl_fn*, %struct.ocxl_fn** %4, align 8
  %60 = getelementptr inbounds %struct.ocxl_fn, %struct.ocxl_fn* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @ocxl_config_set_TL(%struct.pci_dev* %58, i32 %62)
  store i32 %63, i32* %6, align 4
  %64 = load i32, i32* %6, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %73

66:                                               ; preds = %57
  %67 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %68 = load %struct.ocxl_fn*, %struct.ocxl_fn** %4, align 8
  %69 = getelementptr inbounds %struct.ocxl_fn, %struct.ocxl_fn* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @ocxl_link_release(%struct.pci_dev* %67, i32 %70)
  %72 = load i32, i32* %6, align 4
  store i32 %72, i32* %3, align 4
  br label %74

73:                                               ; preds = %57
  store i32 0, i32* %3, align 4
  br label %74

74:                                               ; preds = %73, %66, %55, %46, %39, %32, %24, %11
  %75 = load i32, i32* %3, align 4
  ret i32 %75
}

declare dso_local i32 @pci_enable_device(%struct.pci_dev*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @ocxl_config_read_function(%struct.pci_dev*, %struct.TYPE_2__*) #1

declare dso_local i32 @set_function_device(%struct.ocxl_fn*, %struct.pci_dev*) #1

declare dso_local i32 @assign_function_actag(%struct.ocxl_fn*) #1

declare dso_local i32 @set_function_pasid(%struct.ocxl_fn*) #1

declare dso_local i32 @ocxl_link_setup(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @ocxl_config_set_TL(%struct.pci_dev*, i32) #1

declare dso_local i32 @ocxl_link_release(%struct.pci_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
