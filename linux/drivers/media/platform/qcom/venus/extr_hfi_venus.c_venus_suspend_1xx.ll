; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/qcom/venus/extr_hfi_venus.c_venus_suspend_1xx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/qcom/venus/extr_hfi_venus.c_venus_suspend_1xx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.venus_core = type { %struct.device* }
%struct.device = type { i32 }
%struct.venus_hfi_device = type { i32, i64, i32, i32 }

@.str = private unnamed_addr constant [27 x i8] c"bad state, cannot suspend\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"prepare for power collapse fail (%d)\0A\00", align 1
@HFI_CMD_SYS_PC_PREP = common dso_local global i64 0, align 8
@CPU_CS_SCIACMDARG0 = common dso_local global i32 0, align 4
@CPU_CS_SCIACMDARG0_PC_READY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.venus_core*)* @venus_suspend_1xx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @venus_suspend_1xx(%struct.venus_core* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.venus_core*, align 8
  %4 = alloca %struct.venus_hfi_device*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.venus_core* %0, %struct.venus_core** %3, align 8
  %8 = load %struct.venus_core*, %struct.venus_core** %3, align 8
  %9 = call %struct.venus_hfi_device* @to_hfi_priv(%struct.venus_core* %8)
  store %struct.venus_hfi_device* %9, %struct.venus_hfi_device** %4, align 8
  %10 = load %struct.venus_core*, %struct.venus_core** %3, align 8
  %11 = getelementptr inbounds %struct.venus_core, %struct.venus_core* %10, i32 0, i32 0
  %12 = load %struct.device*, %struct.device** %11, align 8
  store %struct.device* %12, %struct.device** %5, align 8
  %13 = load %struct.venus_hfi_device*, %struct.venus_hfi_device** %4, align 8
  %14 = getelementptr inbounds %struct.venus_hfi_device, %struct.venus_hfi_device* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %1
  %18 = load %struct.venus_hfi_device*, %struct.venus_hfi_device** %4, align 8
  %19 = getelementptr inbounds %struct.venus_hfi_device, %struct.venus_hfi_device* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %17, %1
  store i32 0, i32* %2, align 4
  br label %108

23:                                               ; preds = %17
  %24 = load %struct.venus_hfi_device*, %struct.venus_hfi_device** %4, align 8
  %25 = getelementptr inbounds %struct.venus_hfi_device, %struct.venus_hfi_device* %24, i32 0, i32 2
  %26 = call i32 @mutex_lock(i32* %25)
  %27 = load %struct.venus_hfi_device*, %struct.venus_hfi_device** %4, align 8
  %28 = call i32 @venus_is_valid_state(%struct.venus_hfi_device* %27)
  store i32 %28, i32* %7, align 4
  %29 = load %struct.venus_hfi_device*, %struct.venus_hfi_device** %4, align 8
  %30 = getelementptr inbounds %struct.venus_hfi_device, %struct.venus_hfi_device* %29, i32 0, i32 2
  %31 = call i32 @mutex_unlock(i32* %30)
  %32 = load i32, i32* %7, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %39, label %34

34:                                               ; preds = %23
  %35 = load %struct.device*, %struct.device** %5, align 8
  %36 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %35, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %2, align 4
  br label %108

39:                                               ; preds = %23
  %40 = load %struct.venus_hfi_device*, %struct.venus_hfi_device** %4, align 8
  %41 = call i32 @venus_prepare_power_collapse(%struct.venus_hfi_device* %40, i32 1)
  store i32 %41, i32* %7, align 4
  %42 = load i32, i32* %7, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %39
  %45 = load %struct.device*, %struct.device** %5, align 8
  %46 = load i32, i32* %7, align 4
  %47 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %45, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %46)
  %48 = load i32, i32* %7, align 4
  store i32 %48, i32* %2, align 4
  br label %108

49:                                               ; preds = %39
  %50 = load %struct.venus_hfi_device*, %struct.venus_hfi_device** %4, align 8
  %51 = getelementptr inbounds %struct.venus_hfi_device, %struct.venus_hfi_device* %50, i32 0, i32 2
  %52 = call i32 @mutex_lock(i32* %51)
  %53 = load %struct.venus_hfi_device*, %struct.venus_hfi_device** %4, align 8
  %54 = getelementptr inbounds %struct.venus_hfi_device, %struct.venus_hfi_device* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @HFI_CMD_SYS_PC_PREP, align 8
  %57 = icmp ne i64 %55, %56
  br i1 %57, label %58, label %64

58:                                               ; preds = %49
  %59 = load %struct.venus_hfi_device*, %struct.venus_hfi_device** %4, align 8
  %60 = getelementptr inbounds %struct.venus_hfi_device, %struct.venus_hfi_device* %59, i32 0, i32 2
  %61 = call i32 @mutex_unlock(i32* %60)
  %62 = load i32, i32* @EINVAL, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %2, align 4
  br label %108

64:                                               ; preds = %49
  %65 = load %struct.venus_hfi_device*, %struct.venus_hfi_device** %4, align 8
  %66 = call i32 @venus_are_queues_empty(%struct.venus_hfi_device* %65)
  store i32 %66, i32* %7, align 4
  %67 = load i32, i32* %7, align 4
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %72, label %69

69:                                               ; preds = %64
  %70 = load i32, i32* %7, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %78, label %72

72:                                               ; preds = %69, %64
  %73 = load %struct.venus_hfi_device*, %struct.venus_hfi_device** %4, align 8
  %74 = getelementptr inbounds %struct.venus_hfi_device, %struct.venus_hfi_device* %73, i32 0, i32 2
  %75 = call i32 @mutex_unlock(i32* %74)
  %76 = load i32, i32* @EINVAL, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %2, align 4
  br label %108

78:                                               ; preds = %69
  %79 = load %struct.venus_hfi_device*, %struct.venus_hfi_device** %4, align 8
  %80 = load i32, i32* @CPU_CS_SCIACMDARG0, align 4
  %81 = call i32 @venus_readl(%struct.venus_hfi_device* %79, i32 %80)
  store i32 %81, i32* %6, align 4
  %82 = load i32, i32* %6, align 4
  %83 = load i32, i32* @CPU_CS_SCIACMDARG0_PC_READY, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %92, label %86

86:                                               ; preds = %78
  %87 = load %struct.venus_hfi_device*, %struct.venus_hfi_device** %4, align 8
  %88 = getelementptr inbounds %struct.venus_hfi_device, %struct.venus_hfi_device* %87, i32 0, i32 2
  %89 = call i32 @mutex_unlock(i32* %88)
  %90 = load i32, i32* @EINVAL, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %2, align 4
  br label %108

92:                                               ; preds = %78
  %93 = load %struct.venus_hfi_device*, %struct.venus_hfi_device** %4, align 8
  %94 = call i32 @venus_power_off(%struct.venus_hfi_device* %93)
  store i32 %94, i32* %7, align 4
  %95 = load i32, i32* %7, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %102

97:                                               ; preds = %92
  %98 = load %struct.venus_hfi_device*, %struct.venus_hfi_device** %4, align 8
  %99 = getelementptr inbounds %struct.venus_hfi_device, %struct.venus_hfi_device* %98, i32 0, i32 2
  %100 = call i32 @mutex_unlock(i32* %99)
  %101 = load i32, i32* %7, align 4
  store i32 %101, i32* %2, align 4
  br label %108

102:                                              ; preds = %92
  %103 = load %struct.venus_hfi_device*, %struct.venus_hfi_device** %4, align 8
  %104 = getelementptr inbounds %struct.venus_hfi_device, %struct.venus_hfi_device* %103, i32 0, i32 0
  store i32 1, i32* %104, align 8
  %105 = load %struct.venus_hfi_device*, %struct.venus_hfi_device** %4, align 8
  %106 = getelementptr inbounds %struct.venus_hfi_device, %struct.venus_hfi_device* %105, i32 0, i32 2
  %107 = call i32 @mutex_unlock(i32* %106)
  store i32 0, i32* %2, align 4
  br label %108

108:                                              ; preds = %102, %97, %86, %72, %58, %44, %34, %22
  %109 = load i32, i32* %2, align 4
  ret i32 %109
}

declare dso_local %struct.venus_hfi_device* @to_hfi_priv(%struct.venus_core*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @venus_is_valid_state(%struct.venus_hfi_device*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @venus_prepare_power_collapse(%struct.venus_hfi_device*, i32) #1

declare dso_local i32 @venus_are_queues_empty(%struct.venus_hfi_device*) #1

declare dso_local i32 @venus_readl(%struct.venus_hfi_device*, i32) #1

declare dso_local i32 @venus_power_off(%struct.venus_hfi_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
