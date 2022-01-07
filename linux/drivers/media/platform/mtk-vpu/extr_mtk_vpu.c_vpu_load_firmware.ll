; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/mtk-vpu/extr_mtk_vpu.c_vpu_load_firmware.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/mtk-vpu/extr_mtk_vpu.c_vpu_load_firmware.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.mtk_vpu = type { i32, i32, i32, %struct.vpu_run }
%struct.vpu_run = type { i32, i32, i32 }

@.str = private unnamed_addr constant [32 x i8] c"VPU platform device is invalid\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"enable clock failed %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"firmware request\0A\00", align 1
@P_FW = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [26 x i8] c"Failed to request %s, %d\0A\00", align 1
@VPU_P_FW = common dso_local global i32 0, align 4
@D_FW = common dso_local global i32 0, align 4
@VPU_D_FW = common dso_local global i32 0, align 4
@VPU_RESET = common dso_local global i32 0, align 4
@INIT_TIMEOUT_MS = common dso_local global i32 0, align 4
@ETIME = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [34 x i8] c"wait vpu initialization timeout!\0A\00", align 1
@ERESTARTSYS = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [35 x i8] c"wait vpu interrupted by a signal!\0A\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"vpu is ready. Fw version %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vpu_load_firmware(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.mtk_vpu*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.vpu_run*, align 8
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  store %struct.device* %9, %struct.device** %5, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %11 = icmp ne %struct.platform_device* %10, null
  br i1 %11, label %17, label %12

12:                                               ; preds = %1
  %13 = load %struct.device*, %struct.device** %5, align 8
  %14 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %13, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %121

17:                                               ; preds = %1
  %18 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %19 = call %struct.mtk_vpu* @platform_get_drvdata(%struct.platform_device* %18)
  store %struct.mtk_vpu* %19, %struct.mtk_vpu** %4, align 8
  %20 = load %struct.mtk_vpu*, %struct.mtk_vpu** %4, align 8
  %21 = getelementptr inbounds %struct.mtk_vpu, %struct.mtk_vpu* %20, i32 0, i32 3
  store %struct.vpu_run* %21, %struct.vpu_run** %6, align 8
  %22 = load %struct.mtk_vpu*, %struct.mtk_vpu** %4, align 8
  %23 = getelementptr inbounds %struct.mtk_vpu, %struct.mtk_vpu* %22, i32 0, i32 1
  %24 = call i32 @mutex_lock(i32* %23)
  %25 = load %struct.mtk_vpu*, %struct.mtk_vpu** %4, align 8
  %26 = getelementptr inbounds %struct.mtk_vpu, %struct.mtk_vpu* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %17
  %30 = load %struct.mtk_vpu*, %struct.mtk_vpu** %4, align 8
  %31 = getelementptr inbounds %struct.mtk_vpu, %struct.mtk_vpu* %30, i32 0, i32 1
  %32 = call i32 @mutex_unlock(i32* %31)
  store i32 0, i32* %2, align 4
  br label %121

33:                                               ; preds = %17
  %34 = load %struct.mtk_vpu*, %struct.mtk_vpu** %4, align 8
  %35 = getelementptr inbounds %struct.mtk_vpu, %struct.mtk_vpu* %34, i32 0, i32 1
  %36 = call i32 @mutex_unlock(i32* %35)
  %37 = load %struct.mtk_vpu*, %struct.mtk_vpu** %4, align 8
  %38 = call i32 @vpu_clock_enable(%struct.mtk_vpu* %37)
  store i32 %38, i32* %7, align 4
  %39 = load i32, i32* %7, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %33
  %42 = load %struct.device*, %struct.device** %5, align 8
  %43 = load i32, i32* %7, align 4
  %44 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %42, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %43)
  %45 = load i32, i32* %7, align 4
  store i32 %45, i32* %2, align 4
  br label %121

46:                                               ; preds = %33
  %47 = load %struct.mtk_vpu*, %struct.mtk_vpu** %4, align 8
  %48 = getelementptr inbounds %struct.mtk_vpu, %struct.mtk_vpu* %47, i32 0, i32 1
  %49 = call i32 @mutex_lock(i32* %48)
  %50 = load %struct.vpu_run*, %struct.vpu_run** %6, align 8
  %51 = getelementptr inbounds %struct.vpu_run, %struct.vpu_run* %50, i32 0, i32 0
  store i32 0, i32* %51, align 4
  %52 = load %struct.mtk_vpu*, %struct.mtk_vpu** %4, align 8
  %53 = getelementptr inbounds %struct.mtk_vpu, %struct.mtk_vpu* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @dev_dbg(i32 %54, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  %56 = load %struct.mtk_vpu*, %struct.mtk_vpu** %4, align 8
  %57 = load i32, i32* @P_FW, align 4
  %58 = call i32 @load_requested_vpu(%struct.mtk_vpu* %56, i32 %57)
  store i32 %58, i32* %7, align 4
  %59 = load i32, i32* %7, align 4
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %46
  %62 = load %struct.device*, %struct.device** %5, align 8
  %63 = load i32, i32* @VPU_P_FW, align 4
  %64 = load i32, i32* %7, align 4
  %65 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %62, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 %63, i32 %64)
  br label %114

66:                                               ; preds = %46
  %67 = load %struct.mtk_vpu*, %struct.mtk_vpu** %4, align 8
  %68 = load i32, i32* @D_FW, align 4
  %69 = call i32 @load_requested_vpu(%struct.mtk_vpu* %67, i32 %68)
  store i32 %69, i32* %7, align 4
  %70 = load i32, i32* %7, align 4
  %71 = icmp slt i32 %70, 0
  br i1 %71, label %72, label %77

72:                                               ; preds = %66
  %73 = load %struct.device*, %struct.device** %5, align 8
  %74 = load i32, i32* @VPU_D_FW, align 4
  %75 = load i32, i32* %7, align 4
  %76 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %73, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 %74, i32 %75)
  br label %114

77:                                               ; preds = %66
  %78 = load %struct.mtk_vpu*, %struct.mtk_vpu** %4, align 8
  %79 = getelementptr inbounds %struct.mtk_vpu, %struct.mtk_vpu* %78, i32 0, i32 0
  store i32 1, i32* %79, align 4
  %80 = load %struct.mtk_vpu*, %struct.mtk_vpu** %4, align 8
  %81 = load i32, i32* @VPU_RESET, align 4
  %82 = call i32 @vpu_cfg_writel(%struct.mtk_vpu* %80, i32 1, i32 %81)
  %83 = load %struct.vpu_run*, %struct.vpu_run** %6, align 8
  %84 = getelementptr inbounds %struct.vpu_run, %struct.vpu_run* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.vpu_run*, %struct.vpu_run** %6, align 8
  %87 = getelementptr inbounds %struct.vpu_run, %struct.vpu_run* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @INIT_TIMEOUT_MS, align 4
  %90 = call i32 @msecs_to_jiffies(i32 %89)
  %91 = call i32 @wait_event_interruptible_timeout(i32 %85, i32 %88, i32 %90)
  store i32 %91, i32* %7, align 4
  %92 = load i32, i32* %7, align 4
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %99

94:                                               ; preds = %77
  %95 = load i32, i32* @ETIME, align 4
  %96 = sub nsw i32 0, %95
  store i32 %96, i32* %7, align 4
  %97 = load %struct.device*, %struct.device** %5, align 8
  %98 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %97, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0))
  br label %114

99:                                               ; preds = %77
  %100 = load i32, i32* @ERESTARTSYS, align 4
  %101 = sub nsw i32 0, %100
  %102 = load i32, i32* %7, align 4
  %103 = icmp eq i32 %101, %102
  br i1 %103, label %104, label %107

104:                                              ; preds = %99
  %105 = load %struct.device*, %struct.device** %5, align 8
  %106 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %105, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0))
  br label %114

107:                                              ; preds = %99
  br label %108

108:                                              ; preds = %107
  store i32 0, i32* %7, align 4
  %109 = load %struct.device*, %struct.device** %5, align 8
  %110 = load %struct.vpu_run*, %struct.vpu_run** %6, align 8
  %111 = getelementptr inbounds %struct.vpu_run, %struct.vpu_run* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @dev_info(%struct.device* %109, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0), i32 %112)
  br label %114

114:                                              ; preds = %108, %104, %94, %72, %61
  %115 = load %struct.mtk_vpu*, %struct.mtk_vpu** %4, align 8
  %116 = getelementptr inbounds %struct.mtk_vpu, %struct.mtk_vpu* %115, i32 0, i32 1
  %117 = call i32 @mutex_unlock(i32* %116)
  %118 = load %struct.mtk_vpu*, %struct.mtk_vpu** %4, align 8
  %119 = call i32 @vpu_clock_disable(%struct.mtk_vpu* %118)
  %120 = load i32, i32* %7, align 4
  store i32 %120, i32* %2, align 4
  br label %121

121:                                              ; preds = %114, %41, %29, %12
  %122 = load i32, i32* %2, align 4
  ret i32 %122
}

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local %struct.mtk_vpu* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @vpu_clock_enable(%struct.mtk_vpu*) #1

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i32 @load_requested_vpu(%struct.mtk_vpu*, i32) #1

declare dso_local i32 @vpu_cfg_writel(%struct.mtk_vpu*, i32, i32) #1

declare dso_local i32 @wait_event_interruptible_timeout(i32, i32, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @dev_info(%struct.device*, i8*, i32) #1

declare dso_local i32 @vpu_clock_disable(%struct.mtk_vpu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
