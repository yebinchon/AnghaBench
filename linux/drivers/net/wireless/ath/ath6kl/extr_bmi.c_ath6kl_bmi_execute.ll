; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_bmi.c_ath6kl_bmi_execute.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_bmi.c_ath6kl_bmi_execute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath6kl = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64*, i64 }

@BMI_EXECUTE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [42 x i8] c"bmi done sent already, cmd %d disallowed\0A\00", align 1
@EACCES = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ATH6KL_DBG_BMI = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"bmi execute: addr: 0x%x, param: %d)\0A\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"Unable to write to the device: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"Unable to read from the device: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ath6kl_bmi_execute(%struct.ath6kl* %0, i64 %1, i64* %2) #0 {
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
  %12 = load i64, i64* @BMI_EXECUTE, align 8
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
  br label %108

24:                                               ; preds = %3
  store i32 24, i32* %11, align 4
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
  br label %108

35:                                               ; preds = %24
  %36 = load %struct.ath6kl*, %struct.ath6kl** %5, align 8
  %37 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 1
  %39 = load i64*, i64** %38, align 8
  %40 = load i32, i32* %11, align 4
  %41 = call i32 @memset(i64* %39, i32 0, i32 %40)
  %42 = load i32, i32* @ATH6KL_DBG_BMI, align 4
  %43 = load i64, i64* %6, align 8
  %44 = load i64*, i64** %7, align 8
  %45 = load i64, i64* %44, align 8
  %46 = call i32 @ath6kl_dbg(i32 %42, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i64 %43, i64 %45)
  store i64 0, i64* %10, align 8
  %47 = load %struct.ath6kl*, %struct.ath6kl** %5, align 8
  %48 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 1
  %50 = load i64*, i64** %49, align 8
  %51 = load i64, i64* %10, align 8
  %52 = getelementptr inbounds i64, i64* %50, i64 %51
  %53 = call i32 @memcpy(i64* %52, i64* %8, i32 8)
  %54 = load i64, i64* %10, align 8
  %55 = add i64 %54, 8
  store i64 %55, i64* %10, align 8
  %56 = load %struct.ath6kl*, %struct.ath6kl** %5, align 8
  %57 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 1
  %59 = load i64*, i64** %58, align 8
  %60 = load i64, i64* %10, align 8
  %61 = getelementptr inbounds i64, i64* %59, i64 %60
  %62 = call i32 @memcpy(i64* %61, i64* %6, i32 8)
  %63 = load i64, i64* %10, align 8
  %64 = add i64 %63, 8
  store i64 %64, i64* %10, align 8
  %65 = load %struct.ath6kl*, %struct.ath6kl** %5, align 8
  %66 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 1
  %68 = load i64*, i64** %67, align 8
  %69 = load i64, i64* %10, align 8
  %70 = getelementptr inbounds i64, i64* %68, i64 %69
  %71 = load i64*, i64** %7, align 8
  %72 = call i32 @memcpy(i64* %70, i64* %71, i32 8)
  %73 = load i64, i64* %10, align 8
  %74 = add i64 %73, 8
  store i64 %74, i64* %10, align 8
  %75 = load %struct.ath6kl*, %struct.ath6kl** %5, align 8
  %76 = load %struct.ath6kl*, %struct.ath6kl** %5, align 8
  %77 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 1
  %79 = load i64*, i64** %78, align 8
  %80 = load i64, i64* %10, align 8
  %81 = call i32 @ath6kl_hif_bmi_write(%struct.ath6kl* %75, i64* %79, i64 %80)
  store i32 %81, i32* %9, align 4
  %82 = load i32, i32* %9, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %88

84:                                               ; preds = %35
  %85 = load i32, i32* %9, align 4
  %86 = call i32 @ath6kl_err(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 %85)
  %87 = load i32, i32* %9, align 4
  store i32 %87, i32* %4, align 4
  br label %108

88:                                               ; preds = %35
  %89 = load %struct.ath6kl*, %struct.ath6kl** %5, align 8
  %90 = load %struct.ath6kl*, %struct.ath6kl** %5, align 8
  %91 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 1
  %93 = load i64*, i64** %92, align 8
  %94 = call i32 @ath6kl_hif_bmi_read(%struct.ath6kl* %89, i64* %93, i32 8)
  store i32 %94, i32* %9, align 4
  %95 = load i32, i32* %9, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %101

97:                                               ; preds = %88
  %98 = load i32, i32* %9, align 4
  %99 = call i32 @ath6kl_err(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i32 %98)
  %100 = load i32, i32* %9, align 4
  store i32 %100, i32* %4, align 4
  br label %108

101:                                              ; preds = %88
  %102 = load i64*, i64** %7, align 8
  %103 = load %struct.ath6kl*, %struct.ath6kl** %5, align 8
  %104 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 1
  %106 = load i64*, i64** %105, align 8
  %107 = call i32 @memcpy(i64* %102, i64* %106, i32 8)
  store i32 0, i32* %4, align 4
  br label %108

108:                                              ; preds = %101, %97, %84, %31, %18
  %109 = load i32, i32* %4, align 4
  ret i32 %109
}

declare dso_local i32 @ath6kl_err(i8*, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @memset(i64*, i32, i32) #1

declare dso_local i32 @ath6kl_dbg(i32, i8*, i64, i64) #1

declare dso_local i32 @memcpy(i64*, i64*, i32) #1

declare dso_local i32 @ath6kl_hif_bmi_write(%struct.ath6kl*, i64*, i64) #1

declare dso_local i32 @ath6kl_hif_bmi_read(%struct.ath6kl*, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
