; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/habanalabs/extr_pci.c_hl_pci_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/habanalabs/extr_pci.c_hl_pci_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hl_device = type { i32, %struct.TYPE_2__*, i64, %struct.pci_dev* }
%struct.TYPE_2__ = type { i32 (%struct.hl_device*)*, i32 (%struct.hl_device*)* }
%struct.pci_dev = type { i32 }

@.str = private unnamed_addr constant [25 x i8] c"can't enable PCI device\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"Failed to initialize iATU\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"Failed to initialize PCI BARs\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hl_pci_init(%struct.hl_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hl_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.pci_dev*, align 8
  %7 = alloca i32, align 4
  store %struct.hl_device* %0, %struct.hl_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.hl_device*, %struct.hl_device** %4, align 8
  %9 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %8, i32 0, i32 3
  %10 = load %struct.pci_dev*, %struct.pci_dev** %9, align 8
  store %struct.pci_dev* %10, %struct.pci_dev** %6, align 8
  %11 = load %struct.hl_device*, %struct.hl_device** %4, align 8
  %12 = load i32, i32* %5, align 4
  %13 = call i32 @hl_pci_set_dma_mask(%struct.hl_device* %11, i32 %12)
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %7, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load i32, i32* %7, align 4
  store i32 %17, i32* %3, align 4
  br label %76

18:                                               ; preds = %2
  %19 = load %struct.hl_device*, %struct.hl_device** %4, align 8
  %20 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %18
  %24 = load %struct.hl_device*, %struct.hl_device** %4, align 8
  %25 = call i32 @hl_pci_reset_link_through_bridge(%struct.hl_device* %24)
  br label %26

26:                                               ; preds = %23, %18
  %27 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %28 = call i32 @pci_enable_device_mem(%struct.pci_dev* %27)
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %7, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %26
  %32 = load %struct.hl_device*, %struct.hl_device** %4, align 8
  %33 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @dev_err(i32 %34, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %36 = load i32, i32* %7, align 4
  store i32 %36, i32* %3, align 4
  br label %76

37:                                               ; preds = %26
  %38 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %39 = call i32 @pci_set_master(%struct.pci_dev* %38)
  %40 = load %struct.hl_device*, %struct.hl_device** %4, align 8
  %41 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %40, i32 0, i32 1
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32 (%struct.hl_device*)*, i32 (%struct.hl_device*)** %43, align 8
  %45 = load %struct.hl_device*, %struct.hl_device** %4, align 8
  %46 = call i32 %44(%struct.hl_device* %45)
  store i32 %46, i32* %7, align 4
  %47 = load i32, i32* %7, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %37
  %50 = load %struct.hl_device*, %struct.hl_device** %4, align 8
  %51 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @dev_err(i32 %52, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  br label %70

54:                                               ; preds = %37
  %55 = load %struct.hl_device*, %struct.hl_device** %4, align 8
  %56 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %55, i32 0, i32 1
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 1
  %59 = load i32 (%struct.hl_device*)*, i32 (%struct.hl_device*)** %58, align 8
  %60 = load %struct.hl_device*, %struct.hl_device** %4, align 8
  %61 = call i32 %59(%struct.hl_device* %60)
  store i32 %61, i32* %7, align 4
  %62 = load i32, i32* %7, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %54
  %65 = load %struct.hl_device*, %struct.hl_device** %4, align 8
  %66 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @dev_err(i32 %67, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  br label %70

69:                                               ; preds = %54
  store i32 0, i32* %3, align 4
  br label %76

70:                                               ; preds = %64, %49
  %71 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %72 = call i32 @pci_clear_master(%struct.pci_dev* %71)
  %73 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %74 = call i32 @pci_disable_device(%struct.pci_dev* %73)
  %75 = load i32, i32* %7, align 4
  store i32 %75, i32* %3, align 4
  br label %76

76:                                               ; preds = %70, %69, %31, %16
  %77 = load i32, i32* %3, align 4
  ret i32 %77
}

declare dso_local i32 @hl_pci_set_dma_mask(%struct.hl_device*, i32) #1

declare dso_local i32 @hl_pci_reset_link_through_bridge(%struct.hl_device*) #1

declare dso_local i32 @pci_enable_device_mem(%struct.pci_dev*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @pci_set_master(%struct.pci_dev*) #1

declare dso_local i32 @pci_clear_master(%struct.pci_dev*) #1

declare dso_local i32 @pci_disable_device(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
