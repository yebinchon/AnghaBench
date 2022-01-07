; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_bmi.c_ath6kl_bmi_reg_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_bmi.c_ath6kl_bmi_reg_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath6kl = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64*, i64 }

@BMI_READ_SOC_REGISTER = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [42 x i8] c"bmi done sent already, cmd %d disallowed\0A\00", align 1
@EACCES = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ATH6KL_DBG_BMI = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"bmi read SOC reg: addr: 0x%x\0A\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"Unable to write to the device: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"Unable to read from the device: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ath6kl_bmi_reg_read(%struct.ath6kl* %0, i64 %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ath6kl*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.ath6kl* %0, %struct.ath6kl** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64* %2, i64** %7, align 8
  %12 = load i64, i64* @BMI_READ_SOC_REGISTER, align 8
  store i64 %12, i64* %8, align 8
  %13 = load %struct.ath6kl*, %struct.ath6kl** %5, align 8
  %14 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 2
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %3
  %19 = load i64, i64* %8, align 8
  %20 = trunc i64 %19 to i32
  %21 = call i32 @ath6kl_err(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %20)
  %22 = load i32, i32* @EACCES, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %4, align 4
  br label %96

24:                                               ; preds = %3
  store i32 16, i32* %11, align 4
  %25 = load i32, i32* %11, align 4
  %26 = load %struct.ath6kl*, %struct.ath6kl** %5, align 8
  %27 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp sgt i32 %25, %29
  br i1 %30, label %31, label %35

31:                                               ; preds = %24
  %32 = call i32 @WARN_ON(i32 1)
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %4, align 4
  br label %96

35:                                               ; preds = %24
  %36 = load %struct.ath6kl*, %struct.ath6kl** %5, align 8
  %37 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 1
  %39 = load i64*, i64** %38, align 8
  %40 = load i32, i32* %11, align 4
  %41 = call i32 @memset(i64* %39, i32 0, i32 %40)
  %42 = load i32, i32* @ATH6KL_DBG_BMI, align 4
  %43 = load i64, i64* %6, align 8
  %44 = call i32 @ath6kl_dbg(i32 %42, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i64 %43)
  store i64 0, i64* %10, align 8
  %45 = load %struct.ath6kl*, %struct.ath6kl** %5, align 8
  %46 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 1
  %48 = load i64*, i64** %47, align 8
  %49 = load i64, i64* %10, align 8
  %50 = getelementptr inbounds i64, i64* %48, i64 %49
  %51 = call i32 @memcpy(i64* %50, i64* %8, i32 8)
  %52 = load i64, i64* %10, align 8
  %53 = add i64 %52, 8
  store i64 %53, i64* %10, align 8
  %54 = load %struct.ath6kl*, %struct.ath6kl** %5, align 8
  %55 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 1
  %57 = load i64*, i64** %56, align 8
  %58 = load i64, i64* %10, align 8
  %59 = getelementptr inbounds i64, i64* %57, i64 %58
  %60 = call i32 @memcpy(i64* %59, i64* %6, i32 8)
  %61 = load i64, i64* %10, align 8
  %62 = add i64 %61, 8
  store i64 %62, i64* %10, align 8
  %63 = load %struct.ath6kl*, %struct.ath6kl** %5, align 8
  %64 = load %struct.ath6kl*, %struct.ath6kl** %5, align 8
  %65 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 1
  %67 = load i64*, i64** %66, align 8
  %68 = load i64, i64* %10, align 8
  %69 = call i32 @ath6kl_hif_bmi_write(%struct.ath6kl* %63, i64* %67, i64 %68)
  store i32 %69, i32* %9, align 4
  %70 = load i32, i32* %9, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %35
  %73 = load i32, i32* %9, align 4
  %74 = call i32 @ath6kl_err(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 %73)
  %75 = load i32, i32* %9, align 4
  store i32 %75, i32* %4, align 4
  br label %96

76:                                               ; preds = %35
  %77 = load %struct.ath6kl*, %struct.ath6kl** %5, align 8
  %78 = load %struct.ath6kl*, %struct.ath6kl** %5, align 8
  %79 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 1
  %81 = load i64*, i64** %80, align 8
  %82 = call i32 @ath6kl_hif_bmi_read(%struct.ath6kl* %77, i64* %81, i32 8)
  store i32 %82, i32* %9, align 4
  %83 = load i32, i32* %9, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %89

85:                                               ; preds = %76
  %86 = load i32, i32* %9, align 4
  %87 = call i32 @ath6kl_err(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i32 %86)
  %88 = load i32, i32* %9, align 4
  store i32 %88, i32* %4, align 4
  br label %96

89:                                               ; preds = %76
  %90 = load i64*, i64** %7, align 8
  %91 = load %struct.ath6kl*, %struct.ath6kl** %5, align 8
  %92 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 1
  %94 = load i64*, i64** %93, align 8
  %95 = call i32 @memcpy(i64* %90, i64* %94, i32 8)
  store i32 0, i32* %4, align 4
  br label %96

96:                                               ; preds = %89, %85, %72, %31, %18
  %97 = load i32, i32* %4, align 4
  ret i32 %97
}

declare dso_local i32 @ath6kl_err(i8*, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @memset(i64*, i32, i32) #1

declare dso_local i32 @ath6kl_dbg(i32, i8*, i64) #1

declare dso_local i32 @memcpy(i64*, i64*, i32) #1

declare dso_local i32 @ath6kl_hif_bmi_write(%struct.ath6kl*, i64*, i64) #1

declare dso_local i32 @ath6kl_hif_bmi_read(%struct.ath6kl*, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
