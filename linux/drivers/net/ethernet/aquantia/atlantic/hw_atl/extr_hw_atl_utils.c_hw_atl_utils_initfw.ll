; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/aquantia/atlantic/hw_atl/extr_hw_atl_utils.c_hw_atl_utils_initfw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/aquantia/atlantic/hw_atl/extr_hw_atl_utils.c_hw_atl_utils_initfw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aq_fw_ops = type { i32 (%struct.aq_hw_s*)* }
%struct.aq_hw_s = type { %struct.aq_fw_ops*, i32, i32 }

@HW_ATL_FW_VER_1X = common dso_local global i32 0, align 4
@aq_fw_1x_ops = common dso_local global %struct.aq_fw_ops zeroinitializer, align 8
@HW_ATL_FW_VER_2X = common dso_local global i32 0, align 4
@aq_fw_2x_ops = common dso_local global %struct.aq_fw_ops zeroinitializer, align 8
@HW_ATL_FW_VER_3X = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Bad FW version detected: %x\0A\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hw_atl_utils_initfw(%struct.aq_hw_s* %0, %struct.aq_fw_ops** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.aq_hw_s*, align 8
  %5 = alloca %struct.aq_fw_ops**, align 8
  %6 = alloca i32, align 4
  store %struct.aq_hw_s* %0, %struct.aq_hw_s** %4, align 8
  store %struct.aq_fw_ops** %1, %struct.aq_fw_ops*** %5, align 8
  store i32 0, i32* %6, align 4
  %7 = load %struct.aq_hw_s*, %struct.aq_hw_s** %4, align 8
  %8 = call i32 @hw_atl_utils_soft_reset(%struct.aq_hw_s* %7)
  store i32 %8, i32* %6, align 4
  %9 = load i32, i32* %6, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = load i32, i32* %6, align 4
  store i32 %12, i32* %3, align 4
  br label %70

13:                                               ; preds = %2
  %14 = load %struct.aq_hw_s*, %struct.aq_hw_s** %4, align 8
  %15 = load %struct.aq_hw_s*, %struct.aq_hw_s** %4, align 8
  %16 = getelementptr inbounds %struct.aq_hw_s, %struct.aq_hw_s* %15, i32 0, i32 2
  %17 = call i32 @hw_atl_utils_hw_chip_features_init(%struct.aq_hw_s* %14, i32* %16)
  %18 = load %struct.aq_hw_s*, %struct.aq_hw_s** %4, align 8
  %19 = load %struct.aq_hw_s*, %struct.aq_hw_s** %4, align 8
  %20 = getelementptr inbounds %struct.aq_hw_s, %struct.aq_hw_s* %19, i32 0, i32 1
  %21 = call i32 @hw_atl_utils_get_fw_version(%struct.aq_hw_s* %18, i32* %20)
  %22 = load i32, i32* @HW_ATL_FW_VER_1X, align 4
  %23 = load %struct.aq_hw_s*, %struct.aq_hw_s** %4, align 8
  %24 = getelementptr inbounds %struct.aq_hw_s, %struct.aq_hw_s* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = call i64 @hw_atl_utils_ver_match(i32 %22, i32 %25)
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %13
  %29 = load %struct.aq_fw_ops**, %struct.aq_fw_ops*** %5, align 8
  store %struct.aq_fw_ops* @aq_fw_1x_ops, %struct.aq_fw_ops** %29, align 8
  br label %57

30:                                               ; preds = %13
  %31 = load i32, i32* @HW_ATL_FW_VER_2X, align 4
  %32 = load %struct.aq_hw_s*, %struct.aq_hw_s** %4, align 8
  %33 = getelementptr inbounds %struct.aq_hw_s, %struct.aq_hw_s* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = call i64 @hw_atl_utils_ver_match(i32 %31, i32 %34)
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %30
  %38 = load %struct.aq_fw_ops**, %struct.aq_fw_ops*** %5, align 8
  store %struct.aq_fw_ops* @aq_fw_2x_ops, %struct.aq_fw_ops** %38, align 8
  br label %56

39:                                               ; preds = %30
  %40 = load i32, i32* @HW_ATL_FW_VER_3X, align 4
  %41 = load %struct.aq_hw_s*, %struct.aq_hw_s** %4, align 8
  %42 = getelementptr inbounds %struct.aq_hw_s, %struct.aq_hw_s* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = call i64 @hw_atl_utils_ver_match(i32 %40, i32 %43)
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %39
  %47 = load %struct.aq_fw_ops**, %struct.aq_fw_ops*** %5, align 8
  store %struct.aq_fw_ops* @aq_fw_2x_ops, %struct.aq_fw_ops** %47, align 8
  br label %55

48:                                               ; preds = %39
  %49 = load %struct.aq_hw_s*, %struct.aq_hw_s** %4, align 8
  %50 = getelementptr inbounds %struct.aq_hw_s, %struct.aq_hw_s* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @aq_pr_err(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %51)
  %53 = load i32, i32* @EOPNOTSUPP, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %3, align 4
  br label %70

55:                                               ; preds = %46
  br label %56

56:                                               ; preds = %55, %37
  br label %57

57:                                               ; preds = %56, %28
  %58 = load %struct.aq_fw_ops**, %struct.aq_fw_ops*** %5, align 8
  %59 = load %struct.aq_fw_ops*, %struct.aq_fw_ops** %58, align 8
  %60 = load %struct.aq_hw_s*, %struct.aq_hw_s** %4, align 8
  %61 = getelementptr inbounds %struct.aq_hw_s, %struct.aq_hw_s* %60, i32 0, i32 0
  store %struct.aq_fw_ops* %59, %struct.aq_fw_ops** %61, align 8
  %62 = load %struct.aq_hw_s*, %struct.aq_hw_s** %4, align 8
  %63 = getelementptr inbounds %struct.aq_hw_s, %struct.aq_hw_s* %62, i32 0, i32 0
  %64 = load %struct.aq_fw_ops*, %struct.aq_fw_ops** %63, align 8
  %65 = getelementptr inbounds %struct.aq_fw_ops, %struct.aq_fw_ops* %64, i32 0, i32 0
  %66 = load i32 (%struct.aq_hw_s*)*, i32 (%struct.aq_hw_s*)** %65, align 8
  %67 = load %struct.aq_hw_s*, %struct.aq_hw_s** %4, align 8
  %68 = call i32 %66(%struct.aq_hw_s* %67)
  store i32 %68, i32* %6, align 4
  %69 = load i32, i32* %6, align 4
  store i32 %69, i32* %3, align 4
  br label %70

70:                                               ; preds = %57, %48, %11
  %71 = load i32, i32* %3, align 4
  ret i32 %71
}

declare dso_local i32 @hw_atl_utils_soft_reset(%struct.aq_hw_s*) #1

declare dso_local i32 @hw_atl_utils_hw_chip_features_init(%struct.aq_hw_s*, i32*) #1

declare dso_local i32 @hw_atl_utils_get_fw_version(%struct.aq_hw_s*, i32*) #1

declare dso_local i64 @hw_atl_utils_ver_match(i32, i32) #1

declare dso_local i32 @aq_pr_err(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
