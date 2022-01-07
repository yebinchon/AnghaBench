; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_bmi.c_ath6kl_bmi_get_target_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_bmi.c_ath6kl_bmi_get_target_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath6kl = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.ath6kl_bmi_target_info = type { i32, i32, i32 }

@BMI_GET_TARGET_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"bmi done sent already, cmd %d disallowed\0A\00", align 1
@EACCES = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"Unable to send get target info: %d\0A\00", align 1
@ATH6KL_HIF_TYPE_USB = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [32 x i8] c"Unable to recv target info: %d\0A\00", align 1
@TARGET_VERSION_SENTINAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [43 x i8] c"unable to read target info byte count: %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [43 x i8] c"Unable to read target info (%d bytes): %d\0A\00", align 1
@ATH6KL_DBG_BMI = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [36 x i8] c"target info (ver: 0x%x type: 0x%x)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ath6kl_bmi_get_target_info(%struct.ath6kl* %0, %struct.ath6kl_bmi_target_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ath6kl*, align 8
  %5 = alloca %struct.ath6kl_bmi_target_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ath6kl* %0, %struct.ath6kl** %4, align 8
  store %struct.ath6kl_bmi_target_info* %1, %struct.ath6kl_bmi_target_info** %5, align 8
  %8 = load i32, i32* @BMI_GET_TARGET_INFO, align 4
  store i32 %8, i32* %7, align 4
  %9 = load %struct.ath6kl*, %struct.ath6kl** %4, align 8
  %10 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %2
  %15 = load i32, i32* %7, align 4
  %16 = call i32 (i8*, i32, ...) @ath6kl_err(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %15)
  %17 = load i32, i32* @EACCES, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %105

19:                                               ; preds = %2
  %20 = load %struct.ath6kl*, %struct.ath6kl** %4, align 8
  %21 = call i32 @ath6kl_hif_bmi_write(%struct.ath6kl* %20, i32* %7, i32 4)
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %19
  %25 = load i32, i32* %6, align 4
  %26 = call i32 (i8*, i32, ...) @ath6kl_err(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %25)
  %27 = load i32, i32* %6, align 4
  store i32 %27, i32* %3, align 4
  br label %105

28:                                               ; preds = %19
  %29 = load %struct.ath6kl*, %struct.ath6kl** %4, align 8
  %30 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @ATH6KL_HIF_TYPE_USB, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %39

34:                                               ; preds = %28
  %35 = load %struct.ath6kl*, %struct.ath6kl** %4, align 8
  %36 = load %struct.ath6kl_bmi_target_info*, %struct.ath6kl_bmi_target_info** %5, align 8
  %37 = bitcast %struct.ath6kl_bmi_target_info* %36 to i32*
  %38 = call i32 @ath6kl_hif_bmi_read(%struct.ath6kl* %35, i32* %37, i32 12)
  store i32 %38, i32* %6, align 4
  br label %44

39:                                               ; preds = %28
  %40 = load %struct.ath6kl*, %struct.ath6kl** %4, align 8
  %41 = load %struct.ath6kl_bmi_target_info*, %struct.ath6kl_bmi_target_info** %5, align 8
  %42 = getelementptr inbounds %struct.ath6kl_bmi_target_info, %struct.ath6kl_bmi_target_info* %41, i32 0, i32 1
  %43 = call i32 @ath6kl_hif_bmi_read(%struct.ath6kl* %40, i32* %42, i32 4)
  store i32 %43, i32* %6, align 4
  br label %44

44:                                               ; preds = %39, %34
  %45 = load i32, i32* %6, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %44
  %48 = load i32, i32* %6, align 4
  %49 = call i32 (i8*, i32, ...) @ath6kl_err(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %48)
  %50 = load i32, i32* %6, align 4
  store i32 %50, i32* %3, align 4
  br label %105

51:                                               ; preds = %44
  %52 = load %struct.ath6kl_bmi_target_info*, %struct.ath6kl_bmi_target_info** %5, align 8
  %53 = getelementptr inbounds %struct.ath6kl_bmi_target_info, %struct.ath6kl_bmi_target_info* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @le32_to_cpu(i32 %54)
  %56 = load i32, i32* @TARGET_VERSION_SENTINAL, align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %58, label %96

58:                                               ; preds = %51
  %59 = load %struct.ath6kl*, %struct.ath6kl** %4, align 8
  %60 = load %struct.ath6kl_bmi_target_info*, %struct.ath6kl_bmi_target_info** %5, align 8
  %61 = getelementptr inbounds %struct.ath6kl_bmi_target_info, %struct.ath6kl_bmi_target_info* %60, i32 0, i32 2
  %62 = call i32 @ath6kl_hif_bmi_read(%struct.ath6kl* %59, i32* %61, i32 4)
  store i32 %62, i32* %6, align 4
  %63 = load i32, i32* %6, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %58
  %66 = load i32, i32* %6, align 4
  %67 = call i32 (i8*, i32, ...) @ath6kl_err(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0), i32 %66)
  %68 = load i32, i32* %6, align 4
  store i32 %68, i32* %3, align 4
  br label %105

69:                                               ; preds = %58
  %70 = load %struct.ath6kl_bmi_target_info*, %struct.ath6kl_bmi_target_info** %5, align 8
  %71 = getelementptr inbounds %struct.ath6kl_bmi_target_info, %struct.ath6kl_bmi_target_info* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @le32_to_cpu(i32 %72)
  %74 = sext i32 %73 to i64
  %75 = icmp ne i64 %74, 12
  br i1 %75, label %76, label %80

76:                                               ; preds = %69
  %77 = call i32 @WARN_ON(i32 1)
  %78 = load i32, i32* @EINVAL, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %3, align 4
  br label %105

80:                                               ; preds = %69
  %81 = load %struct.ath6kl*, %struct.ath6kl** %4, align 8
  %82 = load %struct.ath6kl_bmi_target_info*, %struct.ath6kl_bmi_target_info** %5, align 8
  %83 = bitcast %struct.ath6kl_bmi_target_info* %82 to i32*
  %84 = getelementptr inbounds i32, i32* %83, i64 4
  %85 = call i32 @ath6kl_hif_bmi_read(%struct.ath6kl* %81, i32* %84, i32 8)
  store i32 %85, i32* %6, align 4
  %86 = load i32, i32* %6, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %95

88:                                               ; preds = %80
  %89 = load %struct.ath6kl_bmi_target_info*, %struct.ath6kl_bmi_target_info** %5, align 8
  %90 = getelementptr inbounds %struct.ath6kl_bmi_target_info, %struct.ath6kl_bmi_target_info* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* %6, align 4
  %93 = call i32 (i8*, i32, ...) @ath6kl_err(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4, i64 0, i64 0), i32 %91, i32 %92)
  %94 = load i32, i32* %6, align 4
  store i32 %94, i32* %3, align 4
  br label %105

95:                                               ; preds = %80
  br label %96

96:                                               ; preds = %95, %51
  %97 = load i32, i32* @ATH6KL_DBG_BMI, align 4
  %98 = load %struct.ath6kl_bmi_target_info*, %struct.ath6kl_bmi_target_info** %5, align 8
  %99 = getelementptr inbounds %struct.ath6kl_bmi_target_info, %struct.ath6kl_bmi_target_info* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.ath6kl_bmi_target_info*, %struct.ath6kl_bmi_target_info** %5, align 8
  %102 = getelementptr inbounds %struct.ath6kl_bmi_target_info, %struct.ath6kl_bmi_target_info* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @ath6kl_dbg(i32 %97, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0), i32 %100, i32 %103)
  store i32 0, i32* %3, align 4
  br label %105

105:                                              ; preds = %96, %88, %76, %65, %47, %24, %14
  %106 = load i32, i32* %3, align 4
  ret i32 %106
}

declare dso_local i32 @ath6kl_err(i8*, i32, ...) #1

declare dso_local i32 @ath6kl_hif_bmi_write(%struct.ath6kl*, i32*, i32) #1

declare dso_local i32 @ath6kl_hif_bmi_read(%struct.ath6kl*, i32*, i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @ath6kl_dbg(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
