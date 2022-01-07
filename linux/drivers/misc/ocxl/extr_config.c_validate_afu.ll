; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/ocxl/extr_config.c_validate_afu.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/ocxl/extr_config.c_validate_afu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.ocxl_afu_config = type { i32, i32, i32* }

@.str = private unnamed_addr constant [16 x i8] c"Empty AFU name\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@OCXL_TEMPL_NAME_LEN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"Invalid character in AFU name\0A\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"Invalid global MMIO bar number\0A\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"Invalid per-process MMIO bar number\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, %struct.ocxl_afu_config*)* @validate_afu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @validate_afu(%struct.pci_dev* %0, %struct.ocxl_afu_config* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.ocxl_afu_config*, align 8
  %6 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store %struct.ocxl_afu_config* %1, %struct.ocxl_afu_config** %5, align 8
  %7 = load %struct.ocxl_afu_config*, %struct.ocxl_afu_config** %5, align 8
  %8 = getelementptr inbounds %struct.ocxl_afu_config, %struct.ocxl_afu_config* %7, i32 0, i32 2
  %9 = load i32*, i32** %8, align 8
  %10 = getelementptr inbounds i32, i32* %9, i64 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %19, label %13

13:                                               ; preds = %2
  %14 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %15 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %14, i32 0, i32 0
  %16 = call i32 @dev_err(i32* %15, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %87

19:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  br label %20

20:                                               ; preds = %41, %19
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* @OCXL_TEMPL_NAME_LEN, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %44

24:                                               ; preds = %20
  %25 = load %struct.ocxl_afu_config*, %struct.ocxl_afu_config** %5, align 8
  %26 = getelementptr inbounds %struct.ocxl_afu_config, %struct.ocxl_afu_config* %25, i32 0, i32 2
  %27 = load i32*, i32** %26, align 8
  %28 = load i32, i32* %6, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @char_allowed(i32 %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %40, label %34

34:                                               ; preds = %24
  %35 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %36 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %35, i32 0, i32 0
  %37 = call i32 @dev_err(i32* %36, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %3, align 4
  br label %87

40:                                               ; preds = %24
  br label %41

41:                                               ; preds = %40
  %42 = load i32, i32* %6, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %6, align 4
  br label %20

44:                                               ; preds = %20
  %45 = load %struct.ocxl_afu_config*, %struct.ocxl_afu_config** %5, align 8
  %46 = getelementptr inbounds %struct.ocxl_afu_config, %struct.ocxl_afu_config* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %65

49:                                               ; preds = %44
  %50 = load %struct.ocxl_afu_config*, %struct.ocxl_afu_config** %5, align 8
  %51 = getelementptr inbounds %struct.ocxl_afu_config, %struct.ocxl_afu_config* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = icmp ne i32 %52, 2
  br i1 %53, label %54, label %65

54:                                               ; preds = %49
  %55 = load %struct.ocxl_afu_config*, %struct.ocxl_afu_config** %5, align 8
  %56 = getelementptr inbounds %struct.ocxl_afu_config, %struct.ocxl_afu_config* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = icmp ne i32 %57, 4
  br i1 %58, label %59, label %65

59:                                               ; preds = %54
  %60 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %61 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %60, i32 0, i32 0
  %62 = call i32 @dev_err(i32* %61, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  %63 = load i32, i32* @EINVAL, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %3, align 4
  br label %87

65:                                               ; preds = %54, %49, %44
  %66 = load %struct.ocxl_afu_config*, %struct.ocxl_afu_config** %5, align 8
  %67 = getelementptr inbounds %struct.ocxl_afu_config, %struct.ocxl_afu_config* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %86

70:                                               ; preds = %65
  %71 = load %struct.ocxl_afu_config*, %struct.ocxl_afu_config** %5, align 8
  %72 = getelementptr inbounds %struct.ocxl_afu_config, %struct.ocxl_afu_config* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = icmp ne i32 %73, 2
  br i1 %74, label %75, label %86

75:                                               ; preds = %70
  %76 = load %struct.ocxl_afu_config*, %struct.ocxl_afu_config** %5, align 8
  %77 = getelementptr inbounds %struct.ocxl_afu_config, %struct.ocxl_afu_config* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = icmp ne i32 %78, 4
  br i1 %79, label %80, label %86

80:                                               ; preds = %75
  %81 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %82 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %81, i32 0, i32 0
  %83 = call i32 @dev_err(i32* %82, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0))
  %84 = load i32, i32* @EINVAL, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %3, align 4
  br label %87

86:                                               ; preds = %75, %70, %65
  store i32 0, i32* %3, align 4
  br label %87

87:                                               ; preds = %86, %80, %59, %34, %13
  %88 = load i32, i32* %3, align 4
  ret i32 %88
}

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @char_allowed(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
