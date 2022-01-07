; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_core.c_ath10k_download_fw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_core.c_ath10k_download_fw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k = type { %struct.TYPE_5__, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i64, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i8*, i32 }

@.str = private unnamed_addr constant [38 x i8] c"failed to configure fw code swap: %d\0A\00", align 1
@ATH10K_DBG_BOOT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"boot uploading firmware image %pK len %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [54 x i8] c"failed to upload firmware via diag ce, trying BMI: %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath10k*)* @ath10k_download_fw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath10k_download_fw(%struct.ath10k* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ath10k*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store %struct.ath10k* %0, %struct.ath10k** %3, align 8
  %8 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %9 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  store i32 %11, i32* %4, align 4
  %12 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %13 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %12, i32 0, i32 1
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  store i8* %17, i8** %6, align 8
  %18 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %19 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %18, i32 0, i32 1
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  store i32 %23, i32* %5, align 4
  %24 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %25 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %26 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %25, i32 0, i32 1
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = call i32 @ath10k_swap_code_seg_configure(%struct.ath10k* %24, %struct.TYPE_6__* %28)
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* %7, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %1
  %33 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %34 = load i32, i32* %7, align 4
  %35 = call i32 @ath10k_err(%struct.ath10k* %33, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %34)
  %36 = load i32, i32* %7, align 4
  store i32 %36, i32* %2, align 4
  br label %67

37:                                               ; preds = %1
  %38 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %39 = load i32, i32* @ATH10K_DBG_BOOT, align 4
  %40 = load i8*, i8** %6, align 8
  %41 = load i32, i32* %5, align 4
  %42 = call i32 @ath10k_dbg(%struct.ath10k* %38, i32 %39, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i8* %40, i32 %41)
  %43 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %44 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %61

48:                                               ; preds = %37
  %49 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %50 = load i32, i32* %4, align 4
  %51 = load i8*, i8** %6, align 8
  %52 = load i32, i32* %5, align 4
  %53 = call i32 @ath10k_hw_diag_fast_download(%struct.ath10k* %49, i32 %50, i8* %51, i32 %52)
  store i32 %53, i32* %7, align 4
  %54 = load i32, i32* %7, align 4
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %48
  store i32 0, i32* %2, align 4
  br label %67

57:                                               ; preds = %48
  %58 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %59 = load i32, i32* %7, align 4
  %60 = call i32 @ath10k_warn(%struct.ath10k* %58, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.2, i64 0, i64 0), i32 %59)
  br label %61

61:                                               ; preds = %57, %37
  %62 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %63 = load i32, i32* %4, align 4
  %64 = load i8*, i8** %6, align 8
  %65 = load i32, i32* %5, align 4
  %66 = call i32 @ath10k_bmi_fast_download(%struct.ath10k* %62, i32 %63, i8* %64, i32 %65)
  store i32 %66, i32* %2, align 4
  br label %67

67:                                               ; preds = %61, %56, %32
  %68 = load i32, i32* %2, align 4
  ret i32 %68
}

declare dso_local i32 @ath10k_swap_code_seg_configure(%struct.ath10k*, %struct.TYPE_6__*) #1

declare dso_local i32 @ath10k_err(%struct.ath10k*, i8*, i32) #1

declare dso_local i32 @ath10k_dbg(%struct.ath10k*, i32, i8*, i8*, i32) #1

declare dso_local i32 @ath10k_hw_diag_fast_download(%struct.ath10k*, i32, i8*, i32) #1

declare dso_local i32 @ath10k_warn(%struct.ath10k*, i8*, i32) #1

declare dso_local i32 @ath10k_bmi_fast_download(%struct.ath10k*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
