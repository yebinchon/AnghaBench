; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/ngene/extr_ngene-core.c_ngene_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/ngene/extr_ngene-core.c_ngene_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.pci_device_id = type { i64 }
%struct.ngene = type { i32, %struct.ngene_info*, %struct.pci_dev* }
%struct.ngene_info = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"Found %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ngene_probe(%struct.pci_dev* %0, %struct.pci_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.pci_device_id*, align 8
  %6 = alloca %struct.ngene*, align 8
  %7 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store %struct.pci_device_id* %1, %struct.pci_device_id** %5, align 8
  store i32 0, i32* %7, align 4
  %8 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %9 = call i64 @pci_enable_device(%struct.pci_dev* %8)
  %10 = icmp slt i64 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = load i32, i32* @ENODEV, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %3, align 4
  br label %80

14:                                               ; preds = %2
  %15 = call %struct.ngene* @vzalloc(i32 24)
  store %struct.ngene* %15, %struct.ngene** %6, align 8
  %16 = load %struct.ngene*, %struct.ngene** %6, align 8
  %17 = icmp eq %struct.ngene* %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %14
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %7, align 4
  br label %76

21:                                               ; preds = %14
  %22 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %23 = load %struct.ngene*, %struct.ngene** %6, align 8
  %24 = getelementptr inbounds %struct.ngene, %struct.ngene* %23, i32 0, i32 2
  store %struct.pci_dev* %22, %struct.pci_dev** %24, align 8
  %25 = load %struct.pci_device_id*, %struct.pci_device_id** %5, align 8
  %26 = getelementptr inbounds %struct.pci_device_id, %struct.pci_device_id* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = inttoptr i64 %27 to %struct.ngene_info*
  %29 = load %struct.ngene*, %struct.ngene** %6, align 8
  %30 = getelementptr inbounds %struct.ngene, %struct.ngene* %29, i32 0, i32 1
  store %struct.ngene_info* %28, %struct.ngene_info** %30, align 8
  %31 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %32 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %31, i32 0, i32 0
  %33 = load %struct.ngene*, %struct.ngene** %6, align 8
  %34 = getelementptr inbounds %struct.ngene, %struct.ngene* %33, i32 0, i32 1
  %35 = load %struct.ngene_info*, %struct.ngene_info** %34, align 8
  %36 = getelementptr inbounds %struct.ngene_info, %struct.ngene_info* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @dev_info(i32* %32, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %37)
  %39 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %40 = load %struct.ngene*, %struct.ngene** %6, align 8
  %41 = call i32 @pci_set_drvdata(%struct.pci_dev* %39, %struct.ngene* %40)
  %42 = load %struct.ngene*, %struct.ngene** %6, align 8
  %43 = call i32 @ngene_get_buffers(%struct.ngene* %42)
  store i32 %43, i32* %7, align 4
  %44 = load i32, i32* %7, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %21
  br label %73

47:                                               ; preds = %21
  %48 = load %struct.ngene*, %struct.ngene** %6, align 8
  %49 = call i32 @ngene_start(%struct.ngene* %48)
  store i32 %49, i32* %7, align 4
  %50 = load i32, i32* %7, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %47
  br label %73

53:                                               ; preds = %47
  %54 = load %struct.ngene*, %struct.ngene** %6, align 8
  %55 = call i32 @cxd_attach(%struct.ngene* %54)
  %56 = load %struct.ngene*, %struct.ngene** %6, align 8
  %57 = call i32 @ngene_buffer_config(%struct.ngene* %56)
  store i32 %57, i32* %7, align 4
  %58 = load i32, i32* %7, align 4
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %53
  br label %73

61:                                               ; preds = %53
  %62 = load %struct.ngene*, %struct.ngene** %6, align 8
  %63 = getelementptr inbounds %struct.ngene, %struct.ngene* %62, i32 0, i32 0
  store i32 -1, i32* %63, align 8
  %64 = load %struct.ngene*, %struct.ngene** %6, align 8
  %65 = call i32 @init_channels(%struct.ngene* %64)
  store i32 %65, i32* %7, align 4
  %66 = load i32, i32* %7, align 4
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %61
  br label %70

69:                                               ; preds = %61
  store i32 0, i32* %3, align 4
  br label %80

70:                                               ; preds = %68
  %71 = load %struct.ngene*, %struct.ngene** %6, align 8
  %72 = call i32 @ngene_stop(%struct.ngene* %71)
  br label %73

73:                                               ; preds = %70, %60, %52, %46
  %74 = load %struct.ngene*, %struct.ngene** %6, align 8
  %75 = call i32 @ngene_release_buffers(%struct.ngene* %74)
  br label %76

76:                                               ; preds = %73, %18
  %77 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %78 = call i32 @pci_disable_device(%struct.pci_dev* %77)
  %79 = load i32, i32* %7, align 4
  store i32 %79, i32* %3, align 4
  br label %80

80:                                               ; preds = %76, %69, %11
  %81 = load i32, i32* %3, align 4
  ret i32 %81
}

declare dso_local i64 @pci_enable_device(%struct.pci_dev*) #1

declare dso_local %struct.ngene* @vzalloc(i32) #1

declare dso_local i32 @dev_info(i32*, i8*, i32) #1

declare dso_local i32 @pci_set_drvdata(%struct.pci_dev*, %struct.ngene*) #1

declare dso_local i32 @ngene_get_buffers(%struct.ngene*) #1

declare dso_local i32 @ngene_start(%struct.ngene*) #1

declare dso_local i32 @cxd_attach(%struct.ngene*) #1

declare dso_local i32 @ngene_buffer_config(%struct.ngene*) #1

declare dso_local i32 @init_channels(%struct.ngene*) #1

declare dso_local i32 @ngene_stop(%struct.ngene*) #1

declare dso_local i32 @ngene_release_buffers(%struct.ngene*) #1

declare dso_local i32 @pci_disable_device(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
