; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/cxl/extr_pci.c_cxl_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/cxl/extr_pci.c_cxl_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.pci_device_id = type { i32 }
%struct.cxl = type { i32, i32* }

@.str = private unnamed_addr constant [44 x i8] c"cxl_init_adapter: Ignoring cxl vphb device\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"Ignoring card on incompatible PCI slot\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"Only Radix mode supported\0A\00", align 1
@cxl_verbose = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [30 x i8] c"cxl_init_adapter failed: %li\0A\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"AFU %i failed to initialise: %i\0A\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"AFU %i failed to start: %i\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, %struct.pci_device_id*)* @cxl_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cxl_probe(%struct.pci_dev* %0, %struct.pci_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.pci_device_id*, align 8
  %6 = alloca %struct.cxl*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store %struct.pci_device_id* %1, %struct.pci_device_id** %5, align 8
  %9 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %10 = call i64 @cxl_pci_is_vphb_device(%struct.pci_dev* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %18

12:                                               ; preds = %2
  %13 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %14 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %13, i32 0, i32 0
  %15 = call i32 @dev_dbg(i32* %14, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  %16 = load i32, i32* @ENODEV, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %101

18:                                               ; preds = %2
  %19 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %20 = call i64 @cxl_slot_is_switched(%struct.pci_dev* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %18
  %23 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %24 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %23, i32 0, i32 0
  %25 = call i32 @dev_info(i32* %24, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  %26 = load i32, i32* @ENODEV, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %101

28:                                               ; preds = %18
  %29 = call i64 (...) @cxl_is_power9()
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %40

31:                                               ; preds = %28
  %32 = call i32 (...) @radix_enabled()
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %40, label %34

34:                                               ; preds = %31
  %35 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %36 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %35, i32 0, i32 0
  %37 = call i32 @dev_info(i32* %36, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  %38 = load i32, i32* @ENODEV, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %3, align 4
  br label %101

40:                                               ; preds = %31, %28
  %41 = load i64, i64* @cxl_verbose, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %40
  %44 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %45 = call i32 @dump_cxl_config_space(%struct.pci_dev* %44)
  br label %46

46:                                               ; preds = %43, %40
  %47 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %48 = call %struct.cxl* @cxl_pci_init_adapter(%struct.pci_dev* %47)
  store %struct.cxl* %48, %struct.cxl** %6, align 8
  %49 = load %struct.cxl*, %struct.cxl** %6, align 8
  %50 = call i64 @IS_ERR(%struct.cxl* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %60

52:                                               ; preds = %46
  %53 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %54 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %53, i32 0, i32 0
  %55 = load %struct.cxl*, %struct.cxl** %6, align 8
  %56 = call i32 @PTR_ERR(%struct.cxl* %55)
  %57 = call i32 (i32*, i8*, i32, ...) @dev_err(i32* %54, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i32 %56)
  %58 = load %struct.cxl*, %struct.cxl** %6, align 8
  %59 = call i32 @PTR_ERR(%struct.cxl* %58)
  store i32 %59, i32* %3, align 4
  br label %101

60:                                               ; preds = %46
  store i32 0, i32* %7, align 4
  br label %61

61:                                               ; preds = %97, %60
  %62 = load i32, i32* %7, align 4
  %63 = load %struct.cxl*, %struct.cxl** %6, align 8
  %64 = getelementptr inbounds %struct.cxl, %struct.cxl* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = icmp slt i32 %62, %65
  br i1 %66, label %67, label %100

67:                                               ; preds = %61
  %68 = load %struct.cxl*, %struct.cxl** %6, align 8
  %69 = load i32, i32* %7, align 4
  %70 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %71 = call i32 @pci_init_afu(%struct.cxl* %68, i32 %69, %struct.pci_dev* %70)
  store i32 %71, i32* %8, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %79

73:                                               ; preds = %67
  %74 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %75 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %74, i32 0, i32 0
  %76 = load i32, i32* %7, align 4
  %77 = load i32, i32* %8, align 4
  %78 = call i32 (i32*, i8*, i32, ...) @dev_err(i32* %75, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0), i32 %76, i32 %77)
  br label %97

79:                                               ; preds = %67
  %80 = load %struct.cxl*, %struct.cxl** %6, align 8
  %81 = getelementptr inbounds %struct.cxl, %struct.cxl* %80, i32 0, i32 1
  %82 = load i32*, i32** %81, align 8
  %83 = load i32, i32* %7, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %82, i64 %84
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @cxl_afu_select_best_mode(i32 %86)
  store i32 %87, i32* %8, align 4
  %88 = load i32, i32* %8, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %96

90:                                               ; preds = %79
  %91 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %92 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %91, i32 0, i32 0
  %93 = load i32, i32* %7, align 4
  %94 = load i32, i32* %8, align 4
  %95 = call i32 (i32*, i8*, i32, ...) @dev_err(i32* %92, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0), i32 %93, i32 %94)
  br label %96

96:                                               ; preds = %90, %79
  br label %97

97:                                               ; preds = %96, %73
  %98 = load i32, i32* %7, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %7, align 4
  br label %61

100:                                              ; preds = %61
  store i32 0, i32* %3, align 4
  br label %101

101:                                              ; preds = %100, %52, %34, %22, %12
  %102 = load i32, i32* %3, align 4
  ret i32 %102
}

declare dso_local i64 @cxl_pci_is_vphb_device(%struct.pci_dev*) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i64 @cxl_slot_is_switched(%struct.pci_dev*) #1

declare dso_local i32 @dev_info(i32*, i8*) #1

declare dso_local i64 @cxl_is_power9(...) #1

declare dso_local i32 @radix_enabled(...) #1

declare dso_local i32 @dump_cxl_config_space(%struct.pci_dev*) #1

declare dso_local %struct.cxl* @cxl_pci_init_adapter(%struct.pci_dev*) #1

declare dso_local i64 @IS_ERR(%struct.cxl*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32, ...) #1

declare dso_local i32 @PTR_ERR(%struct.cxl*) #1

declare dso_local i32 @pci_init_afu(%struct.cxl*, i32, %struct.pci_dev*) #1

declare dso_local i32 @cxl_afu_select_best_mode(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
