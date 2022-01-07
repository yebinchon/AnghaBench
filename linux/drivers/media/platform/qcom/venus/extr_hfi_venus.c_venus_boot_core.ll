; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/qcom/venus/extr_hfi_venus.c_venus_boot_core.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/qcom/venus/extr_hfi_venus.c_venus_boot_core.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.venus_hfi_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.device* }
%struct.device = type { i32 }

@venus_boot_core.max_tries = internal constant i32 100, align 4
@VIDC_CTRL_INIT = common dso_local global i32 0, align 4
@VIDC_CTRL_INIT_CTRL_SHIFT = common dso_local global i32 0, align 4
@WRAPPER_INTR_MASK = common dso_local global i32 0, align 4
@WRAPPER_INTR_MASK_A2HVCODEC_MASK = common dso_local global i32 0, align 4
@CPU_CS_SCIACMDARG3 = common dso_local global i32 0, align 4
@CPU_CS_SCIACMDARG0 = common dso_local global i32 0, align 4
@CPU_CS_SCIACMDARG0_ERROR_STATUS_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"invalid setting for UC_REGION\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.venus_hfi_device*)* @venus_boot_core to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @venus_boot_core(%struct.venus_hfi_device* %0) #0 {
  %2 = alloca %struct.venus_hfi_device*, align 8
  %3 = alloca %struct.device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.venus_hfi_device* %0, %struct.venus_hfi_device** %2, align 8
  %7 = load %struct.venus_hfi_device*, %struct.venus_hfi_device** %2, align 8
  %8 = getelementptr inbounds %struct.venus_hfi_device, %struct.venus_hfi_device* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load %struct.device*, %struct.device** %10, align 8
  store %struct.device* %11, %struct.device** %3, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %12 = load %struct.venus_hfi_device*, %struct.venus_hfi_device** %2, align 8
  %13 = load i32, i32* @VIDC_CTRL_INIT, align 4
  %14 = load i32, i32* @VIDC_CTRL_INIT_CTRL_SHIFT, align 4
  %15 = call i32 @BIT(i32 %14)
  %16 = call i32 @venus_writel(%struct.venus_hfi_device* %12, i32 %13, i32 %15)
  %17 = load %struct.venus_hfi_device*, %struct.venus_hfi_device** %2, align 8
  %18 = load i32, i32* @WRAPPER_INTR_MASK, align 4
  %19 = load i32, i32* @WRAPPER_INTR_MASK_A2HVCODEC_MASK, align 4
  %20 = call i32 @venus_writel(%struct.venus_hfi_device* %17, i32 %18, i32 %19)
  %21 = load %struct.venus_hfi_device*, %struct.venus_hfi_device** %2, align 8
  %22 = load i32, i32* @CPU_CS_SCIACMDARG3, align 4
  %23 = call i32 @venus_writel(%struct.venus_hfi_device* %21, i32 %22, i32 1)
  br label %24

24:                                               ; preds = %45, %1
  %25 = load i32, i32* %4, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %24
  %28 = load i32, i32* %5, align 4
  %29 = icmp ult i32 %28, 100
  br label %30

30:                                               ; preds = %27, %24
  %31 = phi i1 [ false, %24 ], [ %29, %27 ]
  br i1 %31, label %32, label %49

32:                                               ; preds = %30
  %33 = load %struct.venus_hfi_device*, %struct.venus_hfi_device** %2, align 8
  %34 = load i32, i32* @CPU_CS_SCIACMDARG0, align 4
  %35 = call i32 @venus_readl(%struct.venus_hfi_device* %33, i32 %34)
  store i32 %35, i32* %4, align 4
  %36 = load i32, i32* %4, align 4
  %37 = load i32, i32* @CPU_CS_SCIACMDARG0_ERROR_STATUS_MASK, align 4
  %38 = and i32 %36, %37
  %39 = icmp eq i32 %38, 4
  br i1 %39, label %40, label %45

40:                                               ; preds = %32
  %41 = load %struct.device*, %struct.device** %3, align 8
  %42 = call i32 @dev_err(%struct.device* %41, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %6, align 4
  br label %49

45:                                               ; preds = %32
  %46 = call i32 @usleep_range(i32 500, i32 1000)
  %47 = load i32, i32* %5, align 4
  %48 = add i32 %47, 1
  store i32 %48, i32* %5, align 4
  br label %24

49:                                               ; preds = %40, %30
  %50 = load i32, i32* %5, align 4
  %51 = icmp uge i32 %50, 100
  br i1 %51, label %52, label %55

52:                                               ; preds = %49
  %53 = load i32, i32* @ETIMEDOUT, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %6, align 4
  br label %55

55:                                               ; preds = %52, %49
  %56 = load i32, i32* %6, align 4
  ret i32 %56
}

declare dso_local i32 @venus_writel(%struct.venus_hfi_device*, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @venus_readl(%struct.venus_hfi_device*, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @usleep_range(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
