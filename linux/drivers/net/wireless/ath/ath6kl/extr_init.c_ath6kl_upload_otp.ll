; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_init.c_ath6kl_upload_otp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_init.c_ath6kl_upload_otp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath6kl = type { %struct.TYPE_2__, i32, i32* }
%struct.TYPE_2__ = type { i64, i64 }

@ATH6KL_DBG_BOOT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"writing otp to 0x%x (%zd B)\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"Failed to upload OTP file: %d\0A\00", align 1
@hi_app_start = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"Failed to read hi_app_start: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"app_start_override_addr%s 0x%x\0A\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c" (from hw)\00", align 1
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"executing OTP at 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath6kl*)* @ath6kl_upload_otp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath6kl_upload_otp(%struct.ath6kl* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ath6kl*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ath6kl* %0, %struct.ath6kl** %3, align 8
  store i32 0, i32* %6, align 4
  %8 = load %struct.ath6kl*, %struct.ath6kl** %3, align 8
  %9 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %8, i32 0, i32 2
  %10 = load i32*, i32** %9, align 8
  %11 = icmp eq i32* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %86

13:                                               ; preds = %1
  %14 = load %struct.ath6kl*, %struct.ath6kl** %3, align 8
  %15 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  store i64 %17, i64* %4, align 8
  %18 = load i32, i32* @ATH6KL_DBG_BOOT, align 4
  %19 = load i64, i64* %4, align 8
  %20 = inttoptr i64 %19 to i8*
  %21 = load %struct.ath6kl*, %struct.ath6kl** %3, align 8
  %22 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = call i32 (i32, i8*, i8*, ...) @ath6kl_dbg(i32 %18, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i8* %20, i32 %23)
  %25 = load %struct.ath6kl*, %struct.ath6kl** %3, align 8
  %26 = load i64, i64* %4, align 8
  %27 = load %struct.ath6kl*, %struct.ath6kl** %3, align 8
  %28 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %27, i32 0, i32 2
  %29 = load i32*, i32** %28, align 8
  %30 = load %struct.ath6kl*, %struct.ath6kl** %3, align 8
  %31 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @ath6kl_bmi_fast_download(%struct.ath6kl* %25, i64 %26, i32* %29, i32 %32)
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* %7, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %13
  %37 = load i32, i32* %7, align 4
  %38 = call i32 @ath6kl_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %37)
  %39 = load i32, i32* %7, align 4
  store i32 %39, i32* %2, align 4
  br label %86

40:                                               ; preds = %13
  %41 = load %struct.ath6kl*, %struct.ath6kl** %3, align 8
  %42 = load i32, i32* @hi_app_start, align 4
  %43 = call i32 @ath6kl_bmi_read_hi32(%struct.ath6kl* %41, i32 %42, i64* %4)
  store i32 %43, i32* %7, align 4
  %44 = load i32, i32* %7, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %40
  %47 = load i32, i32* %7, align 4
  %48 = call i32 @ath6kl_err(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %47)
  %49 = load i32, i32* %7, align 4
  store i32 %49, i32* %2, align 4
  br label %86

50:                                               ; preds = %40
  %51 = load %struct.ath6kl*, %struct.ath6kl** %3, align 8
  %52 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp eq i64 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %50
  %57 = load i64, i64* %4, align 8
  %58 = load %struct.ath6kl*, %struct.ath6kl** %3, align 8
  %59 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  store i64 %57, i64* %60, align 8
  store i32 1, i32* %6, align 4
  br label %61

61:                                               ; preds = %56, %50
  %62 = load i32, i32* @ATH6KL_DBG_BOOT, align 4
  %63 = load i32, i32* %6, align 4
  %64 = icmp ne i32 %63, 0
  %65 = zext i1 %64 to i64
  %66 = select i1 %64, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0)
  %67 = load %struct.ath6kl*, %struct.ath6kl** %3, align 8
  %68 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = call i32 (i32, i8*, i8*, ...) @ath6kl_dbg(i32 %62, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i8* %66, i64 %70)
  %72 = load i32, i32* @ATH6KL_DBG_BOOT, align 4
  %73 = load %struct.ath6kl*, %struct.ath6kl** %3, align 8
  %74 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = inttoptr i64 %76 to i8*
  %78 = call i32 (i32, i8*, i8*, ...) @ath6kl_dbg(i32 %72, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0), i8* %77)
  store i64 0, i64* %5, align 8
  %79 = load %struct.ath6kl*, %struct.ath6kl** %3, align 8
  %80 = load %struct.ath6kl*, %struct.ath6kl** %3, align 8
  %81 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = call i32 @ath6kl_bmi_execute(%struct.ath6kl* %79, i64 %83, i64* %5)
  %85 = load i32, i32* %7, align 4
  store i32 %85, i32* %2, align 4
  br label %86

86:                                               ; preds = %61, %46, %36, %12
  %87 = load i32, i32* %2, align 4
  ret i32 %87
}

declare dso_local i32 @ath6kl_dbg(i32, i8*, i8*, ...) #1

declare dso_local i32 @ath6kl_bmi_fast_download(%struct.ath6kl*, i64, i32*, i32) #1

declare dso_local i32 @ath6kl_err(i8*, i32) #1

declare dso_local i32 @ath6kl_bmi_read_hi32(%struct.ath6kl*, i32, i64*) #1

declare dso_local i32 @ath6kl_bmi_execute(%struct.ath6kl*, i64, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
