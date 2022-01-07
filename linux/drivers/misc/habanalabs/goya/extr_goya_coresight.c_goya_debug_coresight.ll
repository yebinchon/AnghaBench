; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/habanalabs/goya/extr_goya_coresight.c_goya_debug_coresight.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/habanalabs/goya/extr_goya_coresight.c_goya_debug_coresight.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hl_device = type { i32 }
%struct.hl_debug_params = type { i32 }

@.str = private unnamed_addr constant [25 x i8] c"Unknown coresight id %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@mmPCIE_DBI_DEVICE_ID_VENDOR_ID_REG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @goya_debug_coresight(%struct.hl_device* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hl_device*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.hl_debug_params*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.hl_device* %0, %struct.hl_device** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.hl_debug_params*
  store %struct.hl_debug_params* %10, %struct.hl_debug_params** %6, align 8
  store i32 0, i32* %8, align 4
  %11 = load %struct.hl_debug_params*, %struct.hl_debug_params** %6, align 8
  %12 = getelementptr inbounds %struct.hl_debug_params, %struct.hl_debug_params* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  switch i32 %13, label %39 [
    i32 129, label %14
    i32 133, label %18
    i32 132, label %22
    i32 131, label %26
    i32 134, label %30
    i32 130, label %34
    i32 128, label %38
  ]

14:                                               ; preds = %2
  %15 = load %struct.hl_device*, %struct.hl_device** %4, align 8
  %16 = load %struct.hl_debug_params*, %struct.hl_debug_params** %6, align 8
  %17 = call i32 @goya_config_stm(%struct.hl_device* %15, %struct.hl_debug_params* %16)
  store i32 %17, i32* %8, align 4
  br label %49

18:                                               ; preds = %2
  %19 = load %struct.hl_device*, %struct.hl_device** %4, align 8
  %20 = load %struct.hl_debug_params*, %struct.hl_debug_params** %6, align 8
  %21 = call i32 @goya_config_etf(%struct.hl_device* %19, %struct.hl_debug_params* %20)
  store i32 %21, i32* %8, align 4
  br label %49

22:                                               ; preds = %2
  %23 = load %struct.hl_device*, %struct.hl_device** %4, align 8
  %24 = load %struct.hl_debug_params*, %struct.hl_debug_params** %6, align 8
  %25 = call i32 @goya_config_etr(%struct.hl_device* %23, %struct.hl_debug_params* %24)
  store i32 %25, i32* %8, align 4
  br label %49

26:                                               ; preds = %2
  %27 = load %struct.hl_device*, %struct.hl_device** %4, align 8
  %28 = load %struct.hl_debug_params*, %struct.hl_debug_params** %6, align 8
  %29 = call i32 @goya_config_funnel(%struct.hl_device* %27, %struct.hl_debug_params* %28)
  store i32 %29, i32* %8, align 4
  br label %49

30:                                               ; preds = %2
  %31 = load %struct.hl_device*, %struct.hl_device** %4, align 8
  %32 = load %struct.hl_debug_params*, %struct.hl_debug_params** %6, align 8
  %33 = call i32 @goya_config_bmon(%struct.hl_device* %31, %struct.hl_debug_params* %32)
  store i32 %33, i32* %8, align 4
  br label %49

34:                                               ; preds = %2
  %35 = load %struct.hl_device*, %struct.hl_device** %4, align 8
  %36 = load %struct.hl_debug_params*, %struct.hl_debug_params** %6, align 8
  %37 = call i32 @goya_config_spmu(%struct.hl_device* %35, %struct.hl_debug_params* %36)
  store i32 %37, i32* %8, align 4
  br label %49

38:                                               ; preds = %2
  br label %49

39:                                               ; preds = %2
  %40 = load %struct.hl_device*, %struct.hl_device** %4, align 8
  %41 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.hl_debug_params*, %struct.hl_debug_params** %6, align 8
  %44 = getelementptr inbounds %struct.hl_debug_params, %struct.hl_debug_params* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @dev_err(i32 %42, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %45)
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %3, align 4
  br label %53

49:                                               ; preds = %38, %34, %30, %26, %22, %18, %14
  %50 = load i32, i32* @mmPCIE_DBI_DEVICE_ID_VENDOR_ID_REG, align 4
  %51 = call i32 @RREG32(i32 %50)
  store i32 %51, i32* %7, align 4
  %52 = load i32, i32* %8, align 4
  store i32 %52, i32* %3, align 4
  br label %53

53:                                               ; preds = %49, %39
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local i32 @goya_config_stm(%struct.hl_device*, %struct.hl_debug_params*) #1

declare dso_local i32 @goya_config_etf(%struct.hl_device*, %struct.hl_debug_params*) #1

declare dso_local i32 @goya_config_etr(%struct.hl_device*, %struct.hl_debug_params*) #1

declare dso_local i32 @goya_config_funnel(%struct.hl_device*, %struct.hl_debug_params*) #1

declare dso_local i32 @goya_config_bmon(%struct.hl_device*, %struct.hl_debug_params*) #1

declare dso_local i32 @goya_config_spmu(%struct.hl_device*, %struct.hl_debug_params*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @RREG32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
