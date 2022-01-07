; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/mei/extr_init.c_mei_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/mei/extr_init.c_mei_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mei_device = type { i64, i32, i32, i64 }

@.str = private unnamed_addr constant [32 x i8] c"reset in start the mei device.\0A\00", align 1
@MEI_DEV_INITIALIZING = common dso_local global i64 0, align 8
@ENODEV = common dso_local global i32 0, align 4
@MEI_DEV_DISABLED = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [22 x i8] c"reset failed ret = %d\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"HBM haven't started\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"host is not ready.\0A\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"ME is not ready.\0A\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"MEI start failed.\0A\00", align 1
@.str.6 = private unnamed_addr constant [34 x i8] c"link layer has been established.\0A\00", align 1
@.str.7 = private unnamed_addr constant [35 x i8] c"link layer initialization failed.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mei_start(%struct.mei_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mei_device*, align 8
  %4 = alloca i32, align 4
  store %struct.mei_device* %0, %struct.mei_device** %3, align 8
  %5 = load %struct.mei_device*, %struct.mei_device** %3, align 8
  %6 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %5, i32 0, i32 1
  %7 = call i32 @mutex_lock(i32* %6)
  %8 = load %struct.mei_device*, %struct.mei_device** %3, align 8
  %9 = call i32 @mei_clear_interrupts(%struct.mei_device* %8)
  %10 = load %struct.mei_device*, %struct.mei_device** %3, align 8
  %11 = call i32 @mei_hw_config(%struct.mei_device* %10)
  %12 = load %struct.mei_device*, %struct.mei_device** %3, align 8
  %13 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @dev_dbg(i32 %14, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %16 = load %struct.mei_device*, %struct.mei_device** %3, align 8
  %17 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %16, i32 0, i32 3
  store i64 0, i64* %17, align 8
  br label %18

18:                                               ; preds = %41, %1
  %19 = load %struct.mei_device*, %struct.mei_device** %3, align 8
  %20 = load i64, i64* @MEI_DEV_INITIALIZING, align 8
  %21 = call i32 @mei_set_devstate(%struct.mei_device* %19, i64 %20)
  %22 = load %struct.mei_device*, %struct.mei_device** %3, align 8
  %23 = call i32 @mei_reset(%struct.mei_device* %22)
  store i32 %23, i32* %4, align 4
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* @ENODEV, align 4
  %26 = sub nsw i32 0, %25
  %27 = icmp eq i32 %24, %26
  br i1 %27, label %34, label %28

28:                                               ; preds = %18
  %29 = load %struct.mei_device*, %struct.mei_device** %3, align 8
  %30 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @MEI_DEV_DISABLED, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %40

34:                                               ; preds = %28, %18
  %35 = load %struct.mei_device*, %struct.mei_device** %3, align 8
  %36 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %4, align 4
  %39 = call i32 (i32, i8*, ...) @dev_err(i32 %37, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %38)
  br label %88

40:                                               ; preds = %28
  br label %41

41:                                               ; preds = %40
  %42 = load i32, i32* %4, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %18, label %44

44:                                               ; preds = %41
  %45 = load %struct.mei_device*, %struct.mei_device** %3, align 8
  %46 = call i64 @mei_hbm_start_wait(%struct.mei_device* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %44
  %49 = load %struct.mei_device*, %struct.mei_device** %3, align 8
  %50 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = call i32 (i32, i8*, ...) @dev_err(i32 %51, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  br label %88

53:                                               ; preds = %44
  %54 = load %struct.mei_device*, %struct.mei_device** %3, align 8
  %55 = call i32 @mei_host_is_ready(%struct.mei_device* %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %62, label %57

57:                                               ; preds = %53
  %58 = load %struct.mei_device*, %struct.mei_device** %3, align 8
  %59 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = call i32 (i32, i8*, ...) @dev_err(i32 %60, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  br label %88

62:                                               ; preds = %53
  %63 = load %struct.mei_device*, %struct.mei_device** %3, align 8
  %64 = call i32 @mei_hw_is_ready(%struct.mei_device* %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %71, label %66

66:                                               ; preds = %62
  %67 = load %struct.mei_device*, %struct.mei_device** %3, align 8
  %68 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = call i32 (i32, i8*, ...) @dev_err(i32 %69, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0))
  br label %88

71:                                               ; preds = %62
  %72 = load %struct.mei_device*, %struct.mei_device** %3, align 8
  %73 = call i32 @mei_hbm_version_is_supported(%struct.mei_device* %72)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %80, label %75

75:                                               ; preds = %71
  %76 = load %struct.mei_device*, %struct.mei_device** %3, align 8
  %77 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @dev_dbg(i32 %78, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0))
  br label %88

80:                                               ; preds = %71
  %81 = load %struct.mei_device*, %struct.mei_device** %3, align 8
  %82 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @dev_dbg(i32 %83, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i64 0, i64 0))
  %85 = load %struct.mei_device*, %struct.mei_device** %3, align 8
  %86 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %85, i32 0, i32 1
  %87 = call i32 @mutex_unlock(i32* %86)
  store i32 0, i32* %2, align 4
  br label %101

88:                                               ; preds = %75, %66, %57, %48, %34
  %89 = load %struct.mei_device*, %struct.mei_device** %3, align 8
  %90 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 4
  %92 = call i32 (i32, i8*, ...) @dev_err(i32 %91, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.7, i64 0, i64 0))
  %93 = load %struct.mei_device*, %struct.mei_device** %3, align 8
  %94 = load i64, i64* @MEI_DEV_DISABLED, align 8
  %95 = call i32 @mei_set_devstate(%struct.mei_device* %93, i64 %94)
  %96 = load %struct.mei_device*, %struct.mei_device** %3, align 8
  %97 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %96, i32 0, i32 1
  %98 = call i32 @mutex_unlock(i32* %97)
  %99 = load i32, i32* @ENODEV, align 4
  %100 = sub nsw i32 0, %99
  store i32 %100, i32* %2, align 4
  br label %101

101:                                              ; preds = %88, %80
  %102 = load i32, i32* %2, align 4
  ret i32 %102
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mei_clear_interrupts(%struct.mei_device*) #1

declare dso_local i32 @mei_hw_config(%struct.mei_device*) #1

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i32 @mei_set_devstate(%struct.mei_device*, i64) #1

declare dso_local i32 @mei_reset(%struct.mei_device*) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i64 @mei_hbm_start_wait(%struct.mei_device*) #1

declare dso_local i32 @mei_host_is_ready(%struct.mei_device*) #1

declare dso_local i32 @mei_hw_is_ready(%struct.mei_device*) #1

declare dso_local i32 @mei_hbm_version_is_supported(%struct.mei_device*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
