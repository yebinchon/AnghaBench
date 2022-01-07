; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_omap_elm.c_elm_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_omap_elm.c_elm_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.elm_info = type { i32, i32, i32 }

@.str = private unnamed_addr constant [46 x i8] c"Unable to configure elm - device not probed?\0A\00", align 1
@EPROBE_DEFER = common dso_local global i32 0, align 4
@ELM_ECC_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"unsupported config ecc-size=%d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@ERROR_VECTOR_MAX = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"unsupported config ecc-step=%d\0A\00", align 1
@ECC_BCH_LEVEL_MASK = common dso_local global i32 0, align 4
@ELM_LOCATION_CONFIG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @elm_config(%struct.device* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.elm_info*, align 8
  store %struct.device* %0, %struct.device** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %14 = load %struct.device*, %struct.device** %7, align 8
  %15 = call %struct.elm_info* @dev_get_drvdata(%struct.device* %14)
  store %struct.elm_info* %15, %struct.elm_info** %13, align 8
  %16 = load %struct.elm_info*, %struct.elm_info** %13, align 8
  %17 = icmp ne %struct.elm_info* %16, null
  br i1 %17, label %23, label %18

18:                                               ; preds = %5
  %19 = load %struct.device*, %struct.device** %7, align 8
  %20 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %19, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* @EPROBE_DEFER, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %6, align 4
  br label %65

23:                                               ; preds = %5
  %24 = load i32, i32* %10, align 4
  %25 = load i32, i32* @ELM_ECC_SIZE, align 4
  %26 = add nsw i32 %25, 1
  %27 = sdiv i32 %26, 2
  %28 = icmp sgt i32 %24, %27
  br i1 %28, label %29, label %35

29:                                               ; preds = %23
  %30 = load %struct.device*, %struct.device** %7, align 8
  %31 = load i32, i32* %10, align 4
  %32 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %30, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %31)
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %6, align 4
  br label %65

35:                                               ; preds = %23
  %36 = load i32, i32* %9, align 4
  %37 = load i32, i32* @ERROR_VECTOR_MAX, align 4
  %38 = icmp sgt i32 %36, %37
  br i1 %38, label %39, label %45

39:                                               ; preds = %35
  %40 = load %struct.device*, %struct.device** %7, align 8
  %41 = load i32, i32* %9, align 4
  %42 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %40, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %41)
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %6, align 4
  br label %65

45:                                               ; preds = %35
  %46 = load i32, i32* %8, align 4
  %47 = load i32, i32* @ECC_BCH_LEVEL_MASK, align 4
  %48 = and i32 %46, %47
  %49 = load i32, i32* @ELM_ECC_SIZE, align 4
  %50 = shl i32 %49, 16
  %51 = or i32 %48, %50
  store i32 %51, i32* %12, align 4
  %52 = load %struct.elm_info*, %struct.elm_info** %13, align 8
  %53 = load i32, i32* @ELM_LOCATION_CONFIG, align 4
  %54 = load i32, i32* %12, align 4
  %55 = call i32 @elm_write_reg(%struct.elm_info* %52, i32 %53, i32 %54)
  %56 = load i32, i32* %8, align 4
  %57 = load %struct.elm_info*, %struct.elm_info** %13, align 8
  %58 = getelementptr inbounds %struct.elm_info, %struct.elm_info* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 4
  %59 = load i32, i32* %9, align 4
  %60 = load %struct.elm_info*, %struct.elm_info** %13, align 8
  %61 = getelementptr inbounds %struct.elm_info, %struct.elm_info* %60, i32 0, i32 1
  store i32 %59, i32* %61, align 4
  %62 = load i32, i32* %11, align 4
  %63 = load %struct.elm_info*, %struct.elm_info** %13, align 8
  %64 = getelementptr inbounds %struct.elm_info, %struct.elm_info* %63, i32 0, i32 2
  store i32 %62, i32* %64, align 4
  store i32 0, i32* %6, align 4
  br label %65

65:                                               ; preds = %45, %39, %29, %18
  %66 = load i32, i32* %6, align 4
  ret i32 %66
}

declare dso_local %struct.elm_info* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @elm_write_reg(%struct.elm_info*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
