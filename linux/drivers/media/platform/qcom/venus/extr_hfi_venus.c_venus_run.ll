; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/qcom/venus/extr_hfi_venus.c_venus_run.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/qcom/venus/extr_hfi_venus.c_venus_run.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.venus_hfi_device = type { %struct.TYPE_4__, %struct.TYPE_6__, %struct.TYPE_5__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { %struct.device* }
%struct.device = type { i32 }

@UC_REGION_ADDR = common dso_local global i32 0, align 4
@UC_REGION_SIZE = common dso_local global i32 0, align 4
@SHARED_QSIZE = common dso_local global i32 0, align 4
@CPU_CS_SCIACMDARG2 = common dso_local global i32 0, align 4
@CPU_CS_SCIACMDARG1 = common dso_local global i32 0, align 4
@SFR_ADDR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"failed to reset venus core\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.venus_hfi_device*)* @venus_run to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @venus_run(%struct.venus_hfi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.venus_hfi_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  store %struct.venus_hfi_device* %0, %struct.venus_hfi_device** %3, align 8
  %6 = load %struct.venus_hfi_device*, %struct.venus_hfi_device** %3, align 8
  %7 = getelementptr inbounds %struct.venus_hfi_device, %struct.venus_hfi_device* %6, i32 0, i32 2
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %10 = load %struct.device*, %struct.device** %9, align 8
  store %struct.device* %10, %struct.device** %4, align 8
  %11 = load %struct.venus_hfi_device*, %struct.venus_hfi_device** %3, align 8
  %12 = call i32 @venus_set_registers(%struct.venus_hfi_device* %11)
  %13 = load %struct.venus_hfi_device*, %struct.venus_hfi_device** %3, align 8
  %14 = load i32, i32* @UC_REGION_ADDR, align 4
  %15 = load %struct.venus_hfi_device*, %struct.venus_hfi_device** %3, align 8
  %16 = getelementptr inbounds %struct.venus_hfi_device, %struct.venus_hfi_device* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @venus_writel(%struct.venus_hfi_device* %13, i32 %14, i32 %18)
  %20 = load %struct.venus_hfi_device*, %struct.venus_hfi_device** %3, align 8
  %21 = load i32, i32* @UC_REGION_SIZE, align 4
  %22 = load i32, i32* @SHARED_QSIZE, align 4
  %23 = call i32 @venus_writel(%struct.venus_hfi_device* %20, i32 %21, i32 %22)
  %24 = load %struct.venus_hfi_device*, %struct.venus_hfi_device** %3, align 8
  %25 = load i32, i32* @CPU_CS_SCIACMDARG2, align 4
  %26 = load %struct.venus_hfi_device*, %struct.venus_hfi_device** %3, align 8
  %27 = getelementptr inbounds %struct.venus_hfi_device, %struct.venus_hfi_device* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @venus_writel(%struct.venus_hfi_device* %24, i32 %25, i32 %29)
  %31 = load %struct.venus_hfi_device*, %struct.venus_hfi_device** %3, align 8
  %32 = load i32, i32* @CPU_CS_SCIACMDARG1, align 4
  %33 = call i32 @venus_writel(%struct.venus_hfi_device* %31, i32 %32, i32 1)
  %34 = load %struct.venus_hfi_device*, %struct.venus_hfi_device** %3, align 8
  %35 = getelementptr inbounds %struct.venus_hfi_device, %struct.venus_hfi_device* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %47

39:                                               ; preds = %1
  %40 = load %struct.venus_hfi_device*, %struct.venus_hfi_device** %3, align 8
  %41 = load i32, i32* @SFR_ADDR, align 4
  %42 = load %struct.venus_hfi_device*, %struct.venus_hfi_device** %3, align 8
  %43 = getelementptr inbounds %struct.venus_hfi_device, %struct.venus_hfi_device* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @venus_writel(%struct.venus_hfi_device* %40, i32 %41, i32 %45)
  br label %47

47:                                               ; preds = %39, %1
  %48 = load %struct.venus_hfi_device*, %struct.venus_hfi_device** %3, align 8
  %49 = call i32 @venus_boot_core(%struct.venus_hfi_device* %48)
  store i32 %49, i32* %5, align 4
  %50 = load i32, i32* %5, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %47
  %53 = load %struct.device*, %struct.device** %4, align 8
  %54 = call i32 @dev_err(%struct.device* %53, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %55 = load i32, i32* %5, align 4
  store i32 %55, i32* %2, align 4
  br label %59

56:                                               ; preds = %47
  %57 = load %struct.venus_hfi_device*, %struct.venus_hfi_device** %3, align 8
  %58 = call i32 @venus_hwversion(%struct.venus_hfi_device* %57)
  store i32 0, i32* %2, align 4
  br label %59

59:                                               ; preds = %56, %52
  %60 = load i32, i32* %2, align 4
  ret i32 %60
}

declare dso_local i32 @venus_set_registers(%struct.venus_hfi_device*) #1

declare dso_local i32 @venus_writel(%struct.venus_hfi_device*, i32, i32) #1

declare dso_local i32 @venus_boot_core(%struct.venus_hfi_device*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @venus_hwversion(%struct.venus_hfi_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
