; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/habanalabs/goya/extr_goya_hwmgr.c_goya_set_pll_profile.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/habanalabs/goya/extr_goya_hwmgr.c_goya_set_pll_profile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hl_device = type { i32, i32, %struct.goya_device* }
%struct.goya_device = type { i32, i32, i32 }

@MME_PLL = common dso_local global i32 0, align 4
@TPC_PLL = common dso_local global i32 0, align 4
@IC_PLL = common dso_local global i32 0, align 4
@GOYA_PLL_FREQ_LOW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"unknown frequency setting\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goya_set_pll_profile(%struct.hl_device* %0, i32 %1) #0 {
  %3 = alloca %struct.hl_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.goya_device*, align 8
  store %struct.hl_device* %0, %struct.hl_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %7 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %6, i32 0, i32 2
  %8 = load %struct.goya_device*, %struct.goya_device** %7, align 8
  store %struct.goya_device* %8, %struct.goya_device** %5, align 8
  %9 = load i32, i32* %4, align 4
  switch i32 %9, label %61 [
    i32 130, label %10
    i32 128, label %29
    i32 129, label %42
  ]

10:                                               ; preds = %2
  %11 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %12 = load i32, i32* @MME_PLL, align 4
  %13 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %14 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @hl_set_frequency(%struct.hl_device* %11, i32 %12, i32 %15)
  %17 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %18 = load i32, i32* @TPC_PLL, align 4
  %19 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %20 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @hl_set_frequency(%struct.hl_device* %17, i32 %18, i32 %21)
  %23 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %24 = load i32, i32* @IC_PLL, align 4
  %25 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %26 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @hl_set_frequency(%struct.hl_device* %23, i32 %24, i32 %27)
  br label %66

29:                                               ; preds = %2
  %30 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %31 = load i32, i32* @MME_PLL, align 4
  %32 = load i32, i32* @GOYA_PLL_FREQ_LOW, align 4
  %33 = call i32 @hl_set_frequency(%struct.hl_device* %30, i32 %31, i32 %32)
  %34 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %35 = load i32, i32* @TPC_PLL, align 4
  %36 = load i32, i32* @GOYA_PLL_FREQ_LOW, align 4
  %37 = call i32 @hl_set_frequency(%struct.hl_device* %34, i32 %35, i32 %36)
  %38 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %39 = load i32, i32* @IC_PLL, align 4
  %40 = load i32, i32* @GOYA_PLL_FREQ_LOW, align 4
  %41 = call i32 @hl_set_frequency(%struct.hl_device* %38, i32 %39, i32 %40)
  br label %66

42:                                               ; preds = %2
  %43 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %44 = load i32, i32* @MME_PLL, align 4
  %45 = load %struct.goya_device*, %struct.goya_device** %5, align 8
  %46 = getelementptr inbounds %struct.goya_device, %struct.goya_device* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @hl_set_frequency(%struct.hl_device* %43, i32 %44, i32 %47)
  %49 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %50 = load i32, i32* @TPC_PLL, align 4
  %51 = load %struct.goya_device*, %struct.goya_device** %5, align 8
  %52 = getelementptr inbounds %struct.goya_device, %struct.goya_device* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @hl_set_frequency(%struct.hl_device* %49, i32 %50, i32 %53)
  %55 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %56 = load i32, i32* @IC_PLL, align 4
  %57 = load %struct.goya_device*, %struct.goya_device** %5, align 8
  %58 = getelementptr inbounds %struct.goya_device, %struct.goya_device* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @hl_set_frequency(%struct.hl_device* %55, i32 %56, i32 %59)
  br label %66

61:                                               ; preds = %2
  %62 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %63 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @dev_err(i32 %64, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %66

66:                                               ; preds = %61, %42, %29, %10
  ret void
}

declare dso_local i32 @hl_set_frequency(%struct.hl_device*, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
