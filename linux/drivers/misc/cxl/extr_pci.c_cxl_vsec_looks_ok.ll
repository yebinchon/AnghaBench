; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/cxl/extr_pci.c_cxl_vsec_looks_ok.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/cxl/extr_pci.c_cxl_vsec_looks_ok.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cxl = type { i32, i64, %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i64, i32, i32 }
%struct.pci_dev = type { i32 }

@CXL_STATUS_SECOND_PORT = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@CXL_UNSUPPORTED_FEATURES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"ABORTING: CXL requires unsupported features\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [61 x i8] c"Ignoring card. PSL type is not supported (caia version: %d)\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"ABORTING: Device has no AFUs\0A\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"ABORTING: VSEC shows no AFU descriptors\0A\00", align 1
@.str.4 = private unnamed_addr constant [77 x i8] c"ABORTING: Problem state size larger than available in BAR2: 0x%llx > 0x%llx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cxl*, %struct.pci_dev*)* @cxl_vsec_looks_ok to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cxl_vsec_looks_ok(%struct.cxl* %0, %struct.pci_dev* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cxl*, align 8
  %5 = alloca %struct.pci_dev*, align 8
  store %struct.cxl* %0, %struct.cxl** %4, align 8
  store %struct.pci_dev* %1, %struct.pci_dev** %5, align 8
  %6 = load %struct.cxl*, %struct.cxl** %4, align 8
  %7 = getelementptr inbounds %struct.cxl, %struct.cxl* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = load i32, i32* @CXL_STATUS_SECOND_PORT, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load i32, i32* @EBUSY, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %103

15:                                               ; preds = %2
  %16 = load %struct.cxl*, %struct.cxl** %4, align 8
  %17 = getelementptr inbounds %struct.cxl, %struct.cxl* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @CXL_UNSUPPORTED_FEATURES, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %15
  %23 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %24 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %23, i32 0, i32 0
  %25 = call i32 (i32*, i8*, ...) @dev_err(i32* %24, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %103

28:                                               ; preds = %15
  %29 = load %struct.cxl*, %struct.cxl** %4, align 8
  %30 = call i32 @cxl_compatible_caia_version(%struct.cxl* %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %41, label %32

32:                                               ; preds = %28
  %33 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %34 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %33, i32 0, i32 0
  %35 = load %struct.cxl*, %struct.cxl** %4, align 8
  %36 = getelementptr inbounds %struct.cxl, %struct.cxl* %35, i32 0, i32 4
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @dev_info(i32* %34, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i64 0, i64 0), i32 %37)
  %39 = load i32, i32* @ENODEV, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %3, align 4
  br label %103

41:                                               ; preds = %28
  %42 = load %struct.cxl*, %struct.cxl** %4, align 8
  %43 = getelementptr inbounds %struct.cxl, %struct.cxl* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 8
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %52, label %46

46:                                               ; preds = %41
  %47 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %48 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %47, i32 0, i32 0
  %49 = call i32 (i32*, i8*, ...) @dev_err(i32* %48, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %3, align 4
  br label %103

52:                                               ; preds = %41
  %53 = load %struct.cxl*, %struct.cxl** %4, align 8
  %54 = getelementptr inbounds %struct.cxl, %struct.cxl* %53, i32 0, i32 2
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %66

59:                                               ; preds = %52
  %60 = load %struct.cxl*, %struct.cxl** %4, align 8
  %61 = getelementptr inbounds %struct.cxl, %struct.cxl* %60, i32 0, i32 2
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %72, label %66

66:                                               ; preds = %59, %52
  %67 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %68 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %67, i32 0, i32 0
  %69 = call i32 (i32*, i8*, ...) @dev_err(i32* %68, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0))
  %70 = load i32, i32* @EINVAL, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %3, align 4
  br label %103

72:                                               ; preds = %59
  %73 = load %struct.cxl*, %struct.cxl** %4, align 8
  %74 = getelementptr inbounds %struct.cxl, %struct.cxl* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %77 = call i64 @p2_size(%struct.pci_dev* %76)
  %78 = load %struct.cxl*, %struct.cxl** %4, align 8
  %79 = getelementptr inbounds %struct.cxl, %struct.cxl* %78, i32 0, i32 2
  %80 = load %struct.TYPE_2__*, %struct.TYPE_2__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = sub nsw i64 %77, %82
  %84 = icmp sgt i64 %75, %83
  br i1 %84, label %85, label %102

85:                                               ; preds = %72
  %86 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %87 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %86, i32 0, i32 0
  %88 = load %struct.cxl*, %struct.cxl** %4, align 8
  %89 = getelementptr inbounds %struct.cxl, %struct.cxl* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %92 = call i64 @p2_size(%struct.pci_dev* %91)
  %93 = load %struct.cxl*, %struct.cxl** %4, align 8
  %94 = getelementptr inbounds %struct.cxl, %struct.cxl* %93, i32 0, i32 2
  %95 = load %struct.TYPE_2__*, %struct.TYPE_2__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = sub nsw i64 %92, %97
  %99 = call i32 (i32*, i8*, ...) @dev_err(i32* %87, i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.4, i64 0, i64 0), i64 %90, i64 %98)
  %100 = load i32, i32* @EINVAL, align 4
  %101 = sub nsw i32 0, %100
  store i32 %101, i32* %3, align 4
  br label %103

102:                                              ; preds = %72
  store i32 0, i32* %3, align 4
  br label %103

103:                                              ; preds = %102, %85, %66, %46, %32, %22, %12
  %104 = load i32, i32* %3, align 4
  ret i32 %104
}

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @cxl_compatible_caia_version(%struct.cxl*) #1

declare dso_local i32 @dev_info(i32*, i8*, i32) #1

declare dso_local i64 @p2_size(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
