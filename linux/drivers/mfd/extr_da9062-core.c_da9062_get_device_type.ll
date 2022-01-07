; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_da9062-core.c_da9062_get_device_type.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_da9062-core.c_da9062_get_device_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.da9062 = type { i32, i32 }

@DA9062AA_DEVICE_ID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Cannot read chip ID.\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@DA9062_PMIC_DEVICE_ID = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"Invalid device ID: 0x%02x\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@DA9062AA_VARIANT_ID = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"Cannot read chip variant id.\0A\00", align 1
@DA9062AA_VRC_MASK = common dso_local global i32 0, align 4
@DA9062AA_VRC_SHIFT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [7 x i8] c"DA9061\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"DA9062\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"Unknown\00", align 1
@.str.6 = private unnamed_addr constant [57 x i8] c"Device detected (device-ID: 0x%02X, var-ID: 0x%02X, %s)\0A\00", align 1
@DA9062AA_MRC_MASK = common dso_local global i32 0, align 4
@DA9062AA_MRC_SHIFT = common dso_local global i32 0, align 4
@DA9062_PMIC_VARIANT_MRC_AA = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [36 x i8] c"Cannot support variant MRC: 0x%02X\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.da9062*)* @da9062_get_device_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @da9062_get_device_type(%struct.da9062* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.da9062*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store %struct.da9062* %0, %struct.da9062** %3, align 8
  %10 = load %struct.da9062*, %struct.da9062** %3, align 8
  %11 = getelementptr inbounds %struct.da9062, %struct.da9062* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @DA9062AA_DEVICE_ID, align 4
  %14 = call i32 @regmap_read(i32 %12, i32 %13, i32* %4)
  store i32 %14, i32* %9, align 4
  %15 = load i32, i32* %9, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %24

17:                                               ; preds = %1
  %18 = load %struct.da9062*, %struct.da9062** %3, align 8
  %19 = getelementptr inbounds %struct.da9062, %struct.da9062* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 (i32, i8*, ...) @dev_err(i32 %20, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* @EIO, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %87

24:                                               ; preds = %1
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* @DA9062_PMIC_DEVICE_ID, align 4
  %27 = icmp ne i32 %25, %26
  br i1 %27, label %28, label %36

28:                                               ; preds = %24
  %29 = load %struct.da9062*, %struct.da9062** %3, align 8
  %30 = getelementptr inbounds %struct.da9062, %struct.da9062* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %4, align 4
  %33 = call i32 (i32, i8*, ...) @dev_err(i32 %31, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %32)
  %34 = load i32, i32* @ENODEV, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %2, align 4
  br label %87

36:                                               ; preds = %24
  %37 = load %struct.da9062*, %struct.da9062** %3, align 8
  %38 = getelementptr inbounds %struct.da9062, %struct.da9062* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @DA9062AA_VARIANT_ID, align 4
  %41 = call i32 @regmap_read(i32 %39, i32 %40, i32* %5)
  store i32 %41, i32* %9, align 4
  %42 = load i32, i32* %9, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %51

44:                                               ; preds = %36
  %45 = load %struct.da9062*, %struct.da9062** %3, align 8
  %46 = getelementptr inbounds %struct.da9062, %struct.da9062* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 (i32, i8*, ...) @dev_err(i32 %47, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  %49 = load i32, i32* @EIO, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %2, align 4
  br label %87

51:                                               ; preds = %36
  %52 = load i32, i32* %5, align 4
  %53 = load i32, i32* @DA9062AA_VRC_MASK, align 4
  %54 = and i32 %52, %53
  %55 = load i32, i32* @DA9062AA_VRC_SHIFT, align 4
  %56 = ashr i32 %54, %55
  store i32 %56, i32* %7, align 4
  %57 = load i32, i32* %7, align 4
  switch i32 %57, label %60 [
    i32 129, label %58
    i32 128, label %59
  ]

58:                                               ; preds = %51
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8** %8, align 8
  br label %61

59:                                               ; preds = %51
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i8** %8, align 8
  br label %61

60:                                               ; preds = %51
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i8** %8, align 8
  br label %61

61:                                               ; preds = %60, %59, %58
  %62 = load %struct.da9062*, %struct.da9062** %3, align 8
  %63 = getelementptr inbounds %struct.da9062, %struct.da9062* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* %4, align 4
  %66 = load i32, i32* %5, align 4
  %67 = load i8*, i8** %8, align 8
  %68 = call i32 @dev_info(i32 %64, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.6, i64 0, i64 0), i32 %65, i32 %66, i8* %67)
  %69 = load i32, i32* %5, align 4
  %70 = load i32, i32* @DA9062AA_MRC_MASK, align 4
  %71 = and i32 %69, %70
  %72 = load i32, i32* @DA9062AA_MRC_SHIFT, align 4
  %73 = ashr i32 %71, %72
  store i32 %73, i32* %6, align 4
  %74 = load i32, i32* %6, align 4
  %75 = load i32, i32* @DA9062_PMIC_VARIANT_MRC_AA, align 4
  %76 = icmp slt i32 %74, %75
  br i1 %76, label %77, label %85

77:                                               ; preds = %61
  %78 = load %struct.da9062*, %struct.da9062** %3, align 8
  %79 = getelementptr inbounds %struct.da9062, %struct.da9062* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* %6, align 4
  %82 = call i32 (i32, i8*, ...) @dev_err(i32 %80, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.7, i64 0, i64 0), i32 %81)
  %83 = load i32, i32* @ENODEV, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %2, align 4
  br label %87

85:                                               ; preds = %61
  %86 = load i32, i32* %9, align 4
  store i32 %86, i32* %2, align 4
  br label %87

87:                                               ; preds = %85, %77, %44, %28, %17
  %88 = load i32, i32* %2, align 4
  ret i32 %88
}

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @dev_info(i32, i8*, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
