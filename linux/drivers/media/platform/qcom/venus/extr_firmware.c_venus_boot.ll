; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/qcom/venus/extr_firmware.c_venus_boot.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/qcom/venus/extr_firmware.c_venus_boot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.venus_core = type { i64, %struct.TYPE_2__*, %struct.device* }
%struct.TYPE_2__ = type { i32 }
%struct.device = type { i32 }

@CONFIG_QCOM_MDT_LOADER = common dso_local global i32 0, align 4
@EPROBE_DEFER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"fail to load video firmware\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@VENUS_PAS_ID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @venus_boot(%struct.venus_core* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.venus_core*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.venus_core* %0, %struct.venus_core** %3, align 8
  %8 = load %struct.venus_core*, %struct.venus_core** %3, align 8
  %9 = getelementptr inbounds %struct.venus_core, %struct.venus_core* %8, i32 0, i32 2
  %10 = load %struct.device*, %struct.device** %9, align 8
  store %struct.device* %10, %struct.device** %4, align 8
  %11 = load i32, i32* @CONFIG_QCOM_MDT_LOADER, align 4
  %12 = call i32 @IS_ENABLED(i32 %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %22

14:                                               ; preds = %1
  %15 = load %struct.venus_core*, %struct.venus_core** %3, align 8
  %16 = getelementptr inbounds %struct.venus_core, %struct.venus_core* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %14
  %20 = call i32 (...) @qcom_scm_is_available()
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %19, %1
  %23 = load i32, i32* @EPROBE_DEFER, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %2, align 4
  br label %55

25:                                               ; preds = %19, %14
  %26 = load %struct.venus_core*, %struct.venus_core** %3, align 8
  %27 = load %struct.venus_core*, %struct.venus_core** %3, align 8
  %28 = getelementptr inbounds %struct.venus_core, %struct.venus_core* %27, i32 0, i32 1
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @venus_load_fw(%struct.venus_core* %26, i32 %31, i32* %5, i64* %6)
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* %7, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %25
  %36 = load %struct.device*, %struct.device** %4, align 8
  %37 = call i32 @dev_err(%struct.device* %36, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %2, align 4
  br label %55

40:                                               ; preds = %25
  %41 = load %struct.venus_core*, %struct.venus_core** %3, align 8
  %42 = getelementptr inbounds %struct.venus_core, %struct.venus_core* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %40
  %46 = load i32, i32* @VENUS_PAS_ID, align 4
  %47 = call i32 @qcom_scm_pas_auth_and_reset(i32 %46)
  store i32 %47, i32* %7, align 4
  br label %53

48:                                               ; preds = %40
  %49 = load %struct.venus_core*, %struct.venus_core** %3, align 8
  %50 = load i32, i32* %5, align 4
  %51 = load i64, i64* %6, align 8
  %52 = call i32 @venus_boot_no_tz(%struct.venus_core* %49, i32 %50, i64 %51)
  store i32 %52, i32* %7, align 4
  br label %53

53:                                               ; preds = %48, %45
  %54 = load i32, i32* %7, align 4
  store i32 %54, i32* %2, align 4
  br label %55

55:                                               ; preds = %53, %35, %22
  %56 = load i32, i32* %2, align 4
  ret i32 %56
}

declare dso_local i32 @IS_ENABLED(i32) #1

declare dso_local i32 @qcom_scm_is_available(...) #1

declare dso_local i32 @venus_load_fw(%struct.venus_core*, i32, i32*, i64*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @qcom_scm_pas_auth_and_reset(i32) #1

declare dso_local i32 @venus_boot_no_tz(%struct.venus_core*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
