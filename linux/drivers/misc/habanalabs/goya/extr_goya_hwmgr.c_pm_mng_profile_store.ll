; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/habanalabs/goya/extr_goya_hwmgr.c_pm_mng_profile_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/habanalabs/goya/extr_goya_hwmgr.c_pm_mng_profile_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.hl_device = type { i64, i32, i32, i32, i32, i64 }

@ENODEV = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [71 x i8] c"Can't change PM profile while compute context is opened on the device\0A\00", align 1
@EPERM = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"auto\00", align 1
@PM_MANUAL = common dso_local global i64 0, align 8
@PLL_HIGH = common dso_local global i32 0, align 4
@PLL_LOW = common dso_local global i32 0, align 4
@PM_AUTO = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [7 x i8] c"manual\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"value should be auto or manual\0A\00", align 1
@EINVAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @pm_mng_profile_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @pm_mng_profile_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.hl_device*, align 8
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %11 = load %struct.device*, %struct.device** %6, align 8
  %12 = call %struct.hl_device* @dev_get_drvdata(%struct.device* %11)
  store %struct.hl_device* %12, %struct.hl_device** %10, align 8
  %13 = load %struct.hl_device*, %struct.hl_device** %10, align 8
  %14 = call i64 @hl_device_disabled_or_in_reset(%struct.hl_device* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %4
  %17 = load i64, i64* @ENODEV, align 8
  %18 = sub i64 0, %17
  store i64 %18, i64* %9, align 8
  br label %92

19:                                               ; preds = %4
  %20 = load %struct.hl_device*, %struct.hl_device** %10, align 8
  %21 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %20, i32 0, i32 1
  %22 = call i32 @mutex_lock(i32* %21)
  %23 = load %struct.hl_device*, %struct.hl_device** %10, align 8
  %24 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %23, i32 0, i32 5
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %19
  %28 = load %struct.hl_device*, %struct.hl_device** %10, align 8
  %29 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @dev_err(i32 %30, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str, i64 0, i64 0))
  %32 = load i64, i64* @EPERM, align 8
  %33 = sub i64 0, %32
  store i64 %33, i64* %9, align 8
  br label %88

34:                                               ; preds = %19
  %35 = load i8*, i8** %8, align 8
  %36 = call i32 @strlen(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %37 = call i64 @strncmp(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* %35, i32 %36)
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %56

39:                                               ; preds = %34
  %40 = load %struct.hl_device*, %struct.hl_device** %10, align 8
  %41 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @PM_MANUAL, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %55

45:                                               ; preds = %39
  %46 = load i32, i32* @PLL_HIGH, align 4
  %47 = load %struct.hl_device*, %struct.hl_device** %10, align 8
  %48 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %47, i32 0, i32 4
  store i32 %46, i32* %48, align 4
  %49 = load %struct.hl_device*, %struct.hl_device** %10, align 8
  %50 = load i32, i32* @PLL_LOW, align 4
  %51 = call i32 @hl_device_set_frequency(%struct.hl_device* %49, i32 %50)
  %52 = load i64, i64* @PM_AUTO, align 8
  %53 = load %struct.hl_device*, %struct.hl_device** %10, align 8
  %54 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %53, i32 0, i32 0
  store i64 %52, i64* %54, align 8
  br label %55

55:                                               ; preds = %45, %39
  br label %87

56:                                               ; preds = %34
  %57 = load i8*, i8** %8, align 8
  %58 = call i32 @strlen(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %59 = call i64 @strncmp(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* %57, i32 %58)
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %61, label %79

61:                                               ; preds = %56
  %62 = load %struct.hl_device*, %struct.hl_device** %10, align 8
  %63 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @PM_AUTO, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %78

67:                                               ; preds = %61
  %68 = load i64, i64* @PM_MANUAL, align 8
  %69 = load %struct.hl_device*, %struct.hl_device** %10, align 8
  %70 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %69, i32 0, i32 0
  store i64 %68, i64* %70, align 8
  %71 = load %struct.hl_device*, %struct.hl_device** %10, align 8
  %72 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %71, i32 0, i32 1
  %73 = call i32 @mutex_unlock(i32* %72)
  %74 = load %struct.hl_device*, %struct.hl_device** %10, align 8
  %75 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %74, i32 0, i32 3
  %76 = call i32 @flush_delayed_work(i32* %75)
  %77 = load i64, i64* %9, align 8
  store i64 %77, i64* %5, align 8
  br label %94

78:                                               ; preds = %61
  br label %86

79:                                               ; preds = %56
  %80 = load %struct.hl_device*, %struct.hl_device** %10, align 8
  %81 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @dev_err(i32 %82, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  %84 = load i64, i64* @EINVAL, align 8
  %85 = sub i64 0, %84
  store i64 %85, i64* %9, align 8
  br label %86

86:                                               ; preds = %79, %78
  br label %87

87:                                               ; preds = %86, %55
  br label %88

88:                                               ; preds = %87, %27
  %89 = load %struct.hl_device*, %struct.hl_device** %10, align 8
  %90 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %89, i32 0, i32 1
  %91 = call i32 @mutex_unlock(i32* %90)
  br label %92

92:                                               ; preds = %88, %16
  %93 = load i64, i64* %9, align 8
  store i64 %93, i64* %5, align 8
  br label %94

94:                                               ; preds = %92, %67
  %95 = load i64, i64* %5, align 8
  ret i64 %95
}

declare dso_local %struct.hl_device* @dev_get_drvdata(%struct.device*) #1

declare dso_local i64 @hl_device_disabled_or_in_reset(%struct.hl_device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @hl_device_set_frequency(%struct.hl_device*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @flush_delayed_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
