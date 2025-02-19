; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_core.c_ath10k_core_get_fw_features_str.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_core.c_ath10k_core_get_fw_features_str.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@ATH10K_FW_FEATURE_COUNT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c",\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ath10k_core_get_fw_features_str(%struct.ath10k* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.ath10k*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.ath10k* %0, %struct.ath10k** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  store i64 0, i64* %7, align 8
  store i32 0, i32* %8, align 4
  br label %9

9:                                                ; preds = %47, %3
  %10 = load i32, i32* %8, align 4
  %11 = load i32, i32* @ATH10K_FW_FEATURE_COUNT, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %50

13:                                               ; preds = %9
  %14 = load i32, i32* %8, align 4
  %15 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %16 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i64 @test_bit(i32 %14, i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %46

22:                                               ; preds = %13
  %23 = load i64, i64* %7, align 8
  %24 = icmp ugt i64 %23, 0
  br i1 %24, label %25, label %35

25:                                               ; preds = %22
  %26 = load i8*, i8** %5, align 8
  %27 = load i64, i64* %7, align 8
  %28 = getelementptr inbounds i8, i8* %26, i64 %27
  %29 = load i64, i64* %6, align 8
  %30 = load i64, i64* %7, align 8
  %31 = sub i64 %29, %30
  %32 = call i64 @scnprintf(i8* %28, i64 %31, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %33 = load i64, i64* %7, align 8
  %34 = add i64 %33, %32
  store i64 %34, i64* %7, align 8
  br label %35

35:                                               ; preds = %25, %22
  %36 = load i8*, i8** %5, align 8
  %37 = load i64, i64* %7, align 8
  %38 = getelementptr inbounds i8, i8* %36, i64 %37
  %39 = load i64, i64* %6, align 8
  %40 = load i64, i64* %7, align 8
  %41 = sub i64 %39, %40
  %42 = load i32, i32* %8, align 4
  %43 = call i64 @ath10k_core_get_fw_feature_str(i8* %38, i64 %41, i32 %42)
  %44 = load i64, i64* %7, align 8
  %45 = add i64 %44, %43
  store i64 %45, i64* %7, align 8
  br label %46

46:                                               ; preds = %35, %13
  br label %47

47:                                               ; preds = %46
  %48 = load i32, i32* %8, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %8, align 4
  br label %9

50:                                               ; preds = %9
  ret void
}

declare dso_local i64 @test_bit(i32, i32) #1

declare dso_local i64 @scnprintf(i8*, i64, i8*) #1

declare dso_local i64 @ath10k_core_get_fw_feature_str(i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
