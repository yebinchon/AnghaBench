; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_ath9k_pci_owl_loader.c_owl_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_ath9k_pci_owl_loader.c_owl_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.pci_device_id = type { i32 }
%struct.owl_ctx = type { i32 }

@EIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"no eeprom filename found.\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@owl_fw_cb = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"failed to request caldata (%d).\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, %struct.pci_device_id*)* @owl_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @owl_probe(%struct.pci_dev* %0, %struct.pci_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.pci_device_id*, align 8
  %6 = alloca %struct.owl_ctx*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store %struct.pci_device_id* %1, %struct.pci_device_id** %5, align 8
  store i32 0, i32* %8, align 4
  %9 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %10 = call i64 @pcim_enable_device(%struct.pci_dev* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load i32, i32* @EIO, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %62

15:                                               ; preds = %2
  %16 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %17 = call i32 @pcim_pin_device(%struct.pci_dev* %16)
  %18 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %19 = call i8* @owl_get_eeprom_name(%struct.pci_dev* %18)
  store i8* %19, i8** %7, align 8
  %20 = load i8*, i8** %7, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %28, label %22

22:                                               ; preds = %15
  %23 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %24 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %23, i32 0, i32 0
  %25 = call i32 (i32*, i8*, ...) @dev_err(i32* %24, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %26 = load i32, i32* @ENODEV, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %62

28:                                               ; preds = %15
  %29 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %30 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %29, i32 0, i32 0
  %31 = load i32, i32* @GFP_KERNEL, align 4
  %32 = call %struct.owl_ctx* @devm_kzalloc(i32* %30, i32 4, i32 %31)
  store %struct.owl_ctx* %32, %struct.owl_ctx** %6, align 8
  %33 = load %struct.owl_ctx*, %struct.owl_ctx** %6, align 8
  %34 = icmp ne %struct.owl_ctx* %33, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %28
  %36 = load i32, i32* @ENOMEM, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %3, align 4
  br label %62

38:                                               ; preds = %28
  %39 = load %struct.owl_ctx*, %struct.owl_ctx** %6, align 8
  %40 = getelementptr inbounds %struct.owl_ctx, %struct.owl_ctx* %39, i32 0, i32 0
  %41 = call i32 @init_completion(i32* %40)
  %42 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %43 = load %struct.owl_ctx*, %struct.owl_ctx** %6, align 8
  %44 = call i32 @pci_set_drvdata(%struct.pci_dev* %42, %struct.owl_ctx* %43)
  %45 = load i32, i32* @THIS_MODULE, align 4
  %46 = load i8*, i8** %7, align 8
  %47 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %48 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %47, i32 0, i32 0
  %49 = load i32, i32* @GFP_KERNEL, align 4
  %50 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %51 = load i32, i32* @owl_fw_cb, align 4
  %52 = call i32 @request_firmware_nowait(i32 %45, i32 1, i8* %46, i32* %48, i32 %49, %struct.pci_dev* %50, i32 %51)
  store i32 %52, i32* %8, align 4
  %53 = load i32, i32* %8, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %38
  %56 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %57 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %56, i32 0, i32 0
  %58 = load i32, i32* %8, align 4
  %59 = call i32 (i32*, i8*, ...) @dev_err(i32* %57, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %58)
  br label %60

60:                                               ; preds = %55, %38
  %61 = load i32, i32* %8, align 4
  store i32 %61, i32* %3, align 4
  br label %62

62:                                               ; preds = %60, %35, %22, %12
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

declare dso_local i64 @pcim_enable_device(%struct.pci_dev*) #1

declare dso_local i32 @pcim_pin_device(%struct.pci_dev*) #1

declare dso_local i8* @owl_get_eeprom_name(%struct.pci_dev*) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local %struct.owl_ctx* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @pci_set_drvdata(%struct.pci_dev*, %struct.owl_ctx*) #1

declare dso_local i32 @request_firmware_nowait(i32, i32, i8*, i32*, i32, %struct.pci_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
