; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_bmi.c_ath6kl_bmi_reg_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_bmi.c_ath6kl_bmi_reg_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath6kl = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32*, i64 }

@BMI_WRITE_SOC_REGISTER = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [42 x i8] c"bmi done sent already, cmd %d disallowed\0A\00", align 1
@EACCES = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ATH6KL_DBG_BMI = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"bmi write SOC reg: addr: 0x%x, param: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"Unable to write to the device: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ath6kl_bmi_reg_write(%struct.ath6kl* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ath6kl*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.ath6kl* %0, %struct.ath6kl** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %12 = load i64, i64* @BMI_WRITE_SOC_REGISTER, align 8
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
  br label %87

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
  br label %87

35:                                               ; preds = %24
  %36 = load %struct.ath6kl*, %struct.ath6kl** %5, align 8
  %37 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  %40 = load i32, i32* %11, align 4
  %41 = call i32 @memset(i32* %39, i32 0, i32 %40)
  %42 = load i32, i32* @ATH6KL_DBG_BMI, align 4
  %43 = load i64, i64* %6, align 8
  %44 = load i64, i64* %7, align 8
  %45 = call i32 @ath6kl_dbg(i32 %42, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i64 %43, i64 %44)
  store i64 0, i64* %10, align 8
  %46 = load %struct.ath6kl*, %struct.ath6kl** %5, align 8
  %47 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 1
  %49 = load i32*, i32** %48, align 8
  %50 = load i64, i64* %10, align 8
  %51 = getelementptr inbounds i32, i32* %49, i64 %50
  %52 = call i32 @memcpy(i32* %51, i64* %8, i32 8)
  %53 = load i64, i64* %10, align 8
  %54 = add i64 %53, 8
  store i64 %54, i64* %10, align 8
  %55 = load %struct.ath6kl*, %struct.ath6kl** %5, align 8
  %56 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 1
  %58 = load i32*, i32** %57, align 8
  %59 = load i64, i64* %10, align 8
  %60 = getelementptr inbounds i32, i32* %58, i64 %59
  %61 = call i32 @memcpy(i32* %60, i64* %6, i32 8)
  %62 = load i64, i64* %10, align 8
  %63 = add i64 %62, 8
  store i64 %63, i64* %10, align 8
  %64 = load %struct.ath6kl*, %struct.ath6kl** %5, align 8
  %65 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 1
  %67 = load i32*, i32** %66, align 8
  %68 = load i64, i64* %10, align 8
  %69 = getelementptr inbounds i32, i32* %67, i64 %68
  %70 = call i32 @memcpy(i32* %69, i64* %7, i32 8)
  %71 = load i64, i64* %10, align 8
  %72 = add i64 %71, 8
  store i64 %72, i64* %10, align 8
  %73 = load %struct.ath6kl*, %struct.ath6kl** %5, align 8
  %74 = load %struct.ath6kl*, %struct.ath6kl** %5, align 8
  %75 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 1
  %77 = load i32*, i32** %76, align 8
  %78 = load i64, i64* %10, align 8
  %79 = call i32 @ath6kl_hif_bmi_write(%struct.ath6kl* %73, i32* %77, i64 %78)
  store i32 %79, i32* %9, align 4
  %80 = load i32, i32* %9, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %86

82:                                               ; preds = %35
  %83 = load i32, i32* %9, align 4
  %84 = call i32 @ath6kl_err(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 %83)
  %85 = load i32, i32* %9, align 4
  store i32 %85, i32* %4, align 4
  br label %87

86:                                               ; preds = %35
  store i32 0, i32* %4, align 4
  br label %87

87:                                               ; preds = %86, %82, %31, %18
  %88 = load i32, i32* %4, align 4
  ret i32 %88
}

declare dso_local i32 @ath6kl_err(i8*, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @ath6kl_dbg(i32, i8*, i64, i64) #1

declare dso_local i32 @memcpy(i32*, i64*, i32) #1

declare dso_local i32 @ath6kl_hif_bmi_write(%struct.ath6kl*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
