; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_lpc_sch.c_lpc_sch_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_lpc_sch.c_lpc_sch_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpc_sch_info = type { i32, i32, i32, i32 }
%struct.pci_dev = type { i32 }
%struct.pci_device_id = type { i64, i32 }
%struct.mfd_cell = type { i32 }

@sch_chipset_info = common dso_local global %struct.lpc_sch_info* null, align 8
@SMBASE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"isch_smbus\00", align 1
@GPIOBASE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"sch_gpio\00", align 1
@WDTBASE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"ie6xx_wdt\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"All decode registers disabled.\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, %struct.pci_device_id*)* @lpc_sch_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpc_sch_probe(%struct.pci_dev* %0, %struct.pci_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.pci_device_id*, align 8
  %6 = alloca [3 x %struct.mfd_cell], align 4
  %7 = alloca %struct.lpc_sch_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store %struct.pci_device_id* %1, %struct.pci_device_id** %5, align 8
  %10 = load %struct.lpc_sch_info*, %struct.lpc_sch_info** @sch_chipset_info, align 8
  %11 = load %struct.pci_device_id*, %struct.pci_device_id** %5, align 8
  %12 = getelementptr inbounds %struct.pci_device_id, %struct.pci_device_id* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = getelementptr inbounds %struct.lpc_sch_info, %struct.lpc_sch_info* %10, i64 %13
  store %struct.lpc_sch_info* %14, %struct.lpc_sch_info** %7, align 8
  store i32 0, i32* %8, align 4
  %15 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %16 = load i32, i32* @SMBASE, align 4
  %17 = load %struct.lpc_sch_info*, %struct.lpc_sch_info** %7, align 8
  %18 = getelementptr inbounds %struct.lpc_sch_info, %struct.lpc_sch_info* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.pci_device_id*, %struct.pci_device_id** %5, align 8
  %21 = getelementptr inbounds %struct.pci_device_id, %struct.pci_device_id* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* %8, align 4
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds [3 x %struct.mfd_cell], [3 x %struct.mfd_cell]* %6, i64 0, i64 %24
  %26 = call i32 @lpc_sch_populate_cell(%struct.pci_dev* %15, i32 %16, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %19, i32 -1, i32 %22, %struct.mfd_cell* %25)
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* %9, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %2
  %30 = load i32, i32* %9, align 4
  store i32 %30, i32* %3, align 4
  br label %101

31:                                               ; preds = %2
  %32 = load i32, i32* %9, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %31
  %35 = load i32, i32* %8, align 4
  %36 = add i32 %35, 1
  store i32 %36, i32* %8, align 4
  br label %37

37:                                               ; preds = %34, %31
  %38 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %39 = load i32, i32* @GPIOBASE, align 4
  %40 = load %struct.lpc_sch_info*, %struct.lpc_sch_info** %7, align 8
  %41 = getelementptr inbounds %struct.lpc_sch_info, %struct.lpc_sch_info* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.lpc_sch_info*, %struct.lpc_sch_info** %7, align 8
  %44 = getelementptr inbounds %struct.lpc_sch_info, %struct.lpc_sch_info* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.pci_device_id*, %struct.pci_device_id** %5, align 8
  %47 = getelementptr inbounds %struct.pci_device_id, %struct.pci_device_id* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* %8, align 4
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds [3 x %struct.mfd_cell], [3 x %struct.mfd_cell]* %6, i64 0, i64 %50
  %52 = call i32 @lpc_sch_populate_cell(%struct.pci_dev* %38, i32 %39, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %42, i32 %45, i32 %48, %struct.mfd_cell* %51)
  store i32 %52, i32* %9, align 4
  %53 = load i32, i32* %9, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %37
  %56 = load i32, i32* %9, align 4
  store i32 %56, i32* %3, align 4
  br label %101

57:                                               ; preds = %37
  %58 = load i32, i32* %9, align 4
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %57
  %61 = load i32, i32* %8, align 4
  %62 = add i32 %61, 1
  store i32 %62, i32* %8, align 4
  br label %63

63:                                               ; preds = %60, %57
  %64 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %65 = load i32, i32* @WDTBASE, align 4
  %66 = load %struct.lpc_sch_info*, %struct.lpc_sch_info** %7, align 8
  %67 = getelementptr inbounds %struct.lpc_sch_info, %struct.lpc_sch_info* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.pci_device_id*, %struct.pci_device_id** %5, align 8
  %70 = getelementptr inbounds %struct.pci_device_id, %struct.pci_device_id* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* %8, align 4
  %73 = zext i32 %72 to i64
  %74 = getelementptr inbounds [3 x %struct.mfd_cell], [3 x %struct.mfd_cell]* %6, i64 0, i64 %73
  %75 = call i32 @lpc_sch_populate_cell(%struct.pci_dev* %64, i32 %65, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %68, i32 -1, i32 %71, %struct.mfd_cell* %74)
  store i32 %75, i32* %9, align 4
  %76 = load i32, i32* %9, align 4
  %77 = icmp slt i32 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %63
  %79 = load i32, i32* %9, align 4
  store i32 %79, i32* %3, align 4
  br label %101

80:                                               ; preds = %63
  %81 = load i32, i32* %9, align 4
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %80
  %84 = load i32, i32* %8, align 4
  %85 = add i32 %84, 1
  store i32 %85, i32* %8, align 4
  br label %86

86:                                               ; preds = %83, %80
  %87 = load i32, i32* %8, align 4
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %95

89:                                               ; preds = %86
  %90 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %91 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %90, i32 0, i32 0
  %92 = call i32 @dev_err(i32* %91, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  %93 = load i32, i32* @ENODEV, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %3, align 4
  br label %101

95:                                               ; preds = %86
  %96 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %97 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %96, i32 0, i32 0
  %98 = getelementptr inbounds [3 x %struct.mfd_cell], [3 x %struct.mfd_cell]* %6, i64 0, i64 0
  %99 = load i32, i32* %8, align 4
  %100 = call i32 @mfd_add_devices(i32* %97, i32 0, %struct.mfd_cell* %98, i32 %99, i32* null, i32 0, i32* null)
  store i32 %100, i32* %3, align 4
  br label %101

101:                                              ; preds = %95, %89, %78, %55, %29
  %102 = load i32, i32* %3, align 4
  ret i32 %102
}

declare dso_local i32 @lpc_sch_populate_cell(%struct.pci_dev*, i32, i8*, i32, i32, i32, %struct.mfd_cell*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @mfd_add_devices(i32*, i32, %struct.mfd_cell*, i32, i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
