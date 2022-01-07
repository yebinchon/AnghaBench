; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_bmi.c_ath6kl_bmi_set_app_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_bmi.c_ath6kl_bmi_set_app_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath6kl = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32*, i64 }

@BMI_SET_APP_START = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [42 x i8] c"bmi done sent already, cmd %d disallowed\0A\00", align 1
@EACCES = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ATH6KL_DBG_BMI = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"bmi set app start: addr: 0x%x\0A\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"Unable to write to the device: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ath6kl_bmi_set_app_start(%struct.ath6kl* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ath6kl*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.ath6kl* %0, %struct.ath6kl** %4, align 8
  store i64 %1, i64* %5, align 8
  %10 = load i64, i64* @BMI_SET_APP_START, align 8
  store i64 %10, i64* %6, align 8
  %11 = load %struct.ath6kl*, %struct.ath6kl** %4, align 8
  %12 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 2
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %2
  %17 = load i64, i64* %6, align 8
  %18 = trunc i64 %17 to i32
  %19 = call i32 @ath6kl_err(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load i32, i32* @EACCES, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %75

22:                                               ; preds = %2
  store i32 16, i32* %9, align 4
  %23 = load i32, i32* %9, align 4
  %24 = load %struct.ath6kl*, %struct.ath6kl** %4, align 8
  %25 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp sgt i32 %23, %27
  br i1 %28, label %29, label %33

29:                                               ; preds = %22
  %30 = call i32 @WARN_ON(i32 1)
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %3, align 4
  br label %75

33:                                               ; preds = %22
  %34 = load %struct.ath6kl*, %struct.ath6kl** %4, align 8
  %35 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 1
  %37 = load i32*, i32** %36, align 8
  %38 = load i32, i32* %9, align 4
  %39 = call i32 @memset(i32* %37, i32 0, i32 %38)
  %40 = load i32, i32* @ATH6KL_DBG_BMI, align 4
  %41 = load i64, i64* %5, align 8
  %42 = call i32 @ath6kl_dbg(i32 %40, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i64 %41)
  store i64 0, i64* %8, align 8
  %43 = load %struct.ath6kl*, %struct.ath6kl** %4, align 8
  %44 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 1
  %46 = load i32*, i32** %45, align 8
  %47 = load i64, i64* %8, align 8
  %48 = getelementptr inbounds i32, i32* %46, i64 %47
  %49 = call i32 @memcpy(i32* %48, i64* %6, i32 8)
  %50 = load i64, i64* %8, align 8
  %51 = add i64 %50, 8
  store i64 %51, i64* %8, align 8
  %52 = load %struct.ath6kl*, %struct.ath6kl** %4, align 8
  %53 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 1
  %55 = load i32*, i32** %54, align 8
  %56 = load i64, i64* %8, align 8
  %57 = getelementptr inbounds i32, i32* %55, i64 %56
  %58 = call i32 @memcpy(i32* %57, i64* %5, i32 8)
  %59 = load i64, i64* %8, align 8
  %60 = add i64 %59, 8
  store i64 %60, i64* %8, align 8
  %61 = load %struct.ath6kl*, %struct.ath6kl** %4, align 8
  %62 = load %struct.ath6kl*, %struct.ath6kl** %4, align 8
  %63 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 1
  %65 = load i32*, i32** %64, align 8
  %66 = load i64, i64* %8, align 8
  %67 = call i32 @ath6kl_hif_bmi_write(%struct.ath6kl* %61, i32* %65, i64 %66)
  store i32 %67, i32* %7, align 4
  %68 = load i32, i32* %7, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %33
  %71 = load i32, i32* %7, align 4
  %72 = call i32 @ath6kl_err(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 %71)
  %73 = load i32, i32* %7, align 4
  store i32 %73, i32* %3, align 4
  br label %75

74:                                               ; preds = %33
  store i32 0, i32* %3, align 4
  br label %75

75:                                               ; preds = %74, %70, %29, %16
  %76 = load i32, i32* %3, align 4
  ret i32 %76
}

declare dso_local i32 @ath6kl_err(i8*, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @ath6kl_dbg(i32, i8*, i64) #1

declare dso_local i32 @memcpy(i32*, i64*, i32) #1

declare dso_local i32 @ath6kl_hif_bmi_write(%struct.ath6kl*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
