; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_wm8400-core.c_wm8400_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_wm8400-core.c_wm8400_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wm8400 = type { i32, i32 }
%struct.wm8400_platform_data = type { i32 (i32)* }

@WM8400_RESET_ID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Chip ID register read failed\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"Device is not a WM8400, ID is %x\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@WM8400_ID = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"ID register read failed: %d\0A\00", align 1
@WM8400_CHIP_REV_MASK = common dso_local global i32 0, align 4
@WM8400_CHIP_REV_SHIFT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [20 x i8] c"WM8400 revision %x\0A\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"Failed to register codec\0A\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"Platform init failed: %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [37 x i8] c"No platform initialisation supplied\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wm8400*, %struct.wm8400_platform_data*)* @wm8400_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm8400_init(%struct.wm8400* %0, %struct.wm8400_platform_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wm8400*, align 8
  %5 = alloca %struct.wm8400_platform_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.wm8400* %0, %struct.wm8400** %4, align 8
  store %struct.wm8400_platform_data* %1, %struct.wm8400_platform_data** %5, align 8
  %8 = load %struct.wm8400*, %struct.wm8400** %4, align 8
  %9 = getelementptr inbounds %struct.wm8400, %struct.wm8400* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.wm8400*, %struct.wm8400** %4, align 8
  %12 = call i32 @dev_set_drvdata(i32 %10, %struct.wm8400* %11)
  %13 = load %struct.wm8400*, %struct.wm8400** %4, align 8
  %14 = getelementptr inbounds %struct.wm8400, %struct.wm8400* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @WM8400_RESET_ID, align 4
  %17 = call i32 @regmap_read(i32 %15, i32 %16, i32* %6)
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %7, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %27

20:                                               ; preds = %2
  %21 = load %struct.wm8400*, %struct.wm8400** %4, align 8
  %22 = getelementptr inbounds %struct.wm8400, %struct.wm8400* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 (i32, i8*, ...) @dev_err(i32 %23, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %25 = load i32, i32* @EIO, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %106

27:                                               ; preds = %2
  %28 = load i32, i32* %6, align 4
  %29 = icmp ne i32 %28, 24946
  br i1 %29, label %30, label %38

30:                                               ; preds = %27
  %31 = load %struct.wm8400*, %struct.wm8400** %4, align 8
  %32 = getelementptr inbounds %struct.wm8400, %struct.wm8400* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %6, align 4
  %35 = call i32 (i32, i8*, ...) @dev_err(i32 %33, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %34)
  %36 = load i32, i32* @ENODEV, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %3, align 4
  br label %106

38:                                               ; preds = %27
  %39 = load %struct.wm8400*, %struct.wm8400** %4, align 8
  %40 = getelementptr inbounds %struct.wm8400, %struct.wm8400* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @WM8400_ID, align 4
  %43 = call i32 @regmap_read(i32 %41, i32 %42, i32* %6)
  store i32 %43, i32* %7, align 4
  %44 = load i32, i32* %7, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %53

46:                                               ; preds = %38
  %47 = load %struct.wm8400*, %struct.wm8400** %4, align 8
  %48 = getelementptr inbounds %struct.wm8400, %struct.wm8400* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %7, align 4
  %51 = call i32 (i32, i8*, ...) @dev_err(i32 %49, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %50)
  %52 = load i32, i32* %7, align 4
  store i32 %52, i32* %3, align 4
  br label %106

53:                                               ; preds = %38
  %54 = load i32, i32* %6, align 4
  %55 = load i32, i32* @WM8400_CHIP_REV_MASK, align 4
  %56 = and i32 %54, %55
  %57 = load i32, i32* @WM8400_CHIP_REV_SHIFT, align 4
  %58 = lshr i32 %56, %57
  store i32 %58, i32* %6, align 4
  %59 = load %struct.wm8400*, %struct.wm8400** %4, align 8
  %60 = getelementptr inbounds %struct.wm8400, %struct.wm8400* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* %6, align 4
  %63 = call i32 @dev_info(i32 %61, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i32 %62)
  %64 = load %struct.wm8400*, %struct.wm8400** %4, align 8
  %65 = call i32 @wm8400_register_codec(%struct.wm8400* %64)
  store i32 %65, i32* %7, align 4
  %66 = load i32, i32* %7, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %74

68:                                               ; preds = %53
  %69 = load %struct.wm8400*, %struct.wm8400** %4, align 8
  %70 = getelementptr inbounds %struct.wm8400, %struct.wm8400* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 (i32, i8*, ...) @dev_err(i32 %71, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0))
  %73 = load i32, i32* %7, align 4
  store i32 %73, i32* %3, align 4
  br label %106

74:                                               ; preds = %53
  %75 = load %struct.wm8400_platform_data*, %struct.wm8400_platform_data** %5, align 8
  %76 = icmp ne %struct.wm8400_platform_data* %75, null
  br i1 %76, label %77, label %100

77:                                               ; preds = %74
  %78 = load %struct.wm8400_platform_data*, %struct.wm8400_platform_data** %5, align 8
  %79 = getelementptr inbounds %struct.wm8400_platform_data, %struct.wm8400_platform_data* %78, i32 0, i32 0
  %80 = load i32 (i32)*, i32 (i32)** %79, align 8
  %81 = icmp ne i32 (i32)* %80, null
  br i1 %81, label %82, label %100

82:                                               ; preds = %77
  %83 = load %struct.wm8400_platform_data*, %struct.wm8400_platform_data** %5, align 8
  %84 = getelementptr inbounds %struct.wm8400_platform_data, %struct.wm8400_platform_data* %83, i32 0, i32 0
  %85 = load i32 (i32)*, i32 (i32)** %84, align 8
  %86 = load %struct.wm8400*, %struct.wm8400** %4, align 8
  %87 = getelementptr inbounds %struct.wm8400, %struct.wm8400* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = call i32 %85(i32 %88)
  store i32 %89, i32* %7, align 4
  %90 = load i32, i32* %7, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %99

92:                                               ; preds = %82
  %93 = load %struct.wm8400*, %struct.wm8400** %4, align 8
  %94 = getelementptr inbounds %struct.wm8400, %struct.wm8400* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* %7, align 4
  %97 = call i32 (i32, i8*, ...) @dev_err(i32 %95, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i32 %96)
  %98 = load i32, i32* %7, align 4
  store i32 %98, i32* %3, align 4
  br label %106

99:                                               ; preds = %82
  br label %105

100:                                              ; preds = %77, %74
  %101 = load %struct.wm8400*, %struct.wm8400** %4, align 8
  %102 = getelementptr inbounds %struct.wm8400, %struct.wm8400* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @dev_warn(i32 %103, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.6, i64 0, i64 0))
  br label %105

105:                                              ; preds = %100, %99
  store i32 0, i32* %3, align 4
  br label %106

106:                                              ; preds = %105, %92, %68, %46, %30, %20
  %107 = load i32, i32* %3, align 4
  ret i32 %107
}

declare dso_local i32 @dev_set_drvdata(i32, %struct.wm8400*) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @dev_info(i32, i8*, i32) #1

declare dso_local i32 @wm8400_register_codec(%struct.wm8400*) #1

declare dso_local i32 @dev_warn(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
