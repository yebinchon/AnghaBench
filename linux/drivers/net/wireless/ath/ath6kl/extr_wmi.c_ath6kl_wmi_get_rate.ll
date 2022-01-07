; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_wmi.c_ath6kl_wmi_get_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_wmi.c_ath6kl_wmi_get_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wmi = type { %struct.ath6kl* }
%struct.ath6kl = type { i32 }

@RATE_AUTO = common dso_local global i32 0, align 4
@RATE_INDEX_MSB = common dso_local global i32 0, align 4
@RATE_INDEX_WITHOUT_SGI_MASK = common dso_local global i32 0, align 4
@ATH6KL_FW_CAPABILITY_RATETABLE_MCS15 = common dso_local global i32 0, align 4
@wmi_rate_tbl_mcs15 = common dso_local global i32** null, align 8
@wmi_rate_tbl = common dso_local global i32** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ath6kl_wmi_get_rate(%struct.wmi* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wmi*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ath6kl*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.wmi* %0, %struct.wmi** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.wmi*, %struct.wmi** %4, align 8
  %10 = getelementptr inbounds %struct.wmi, %struct.wmi* %9, i32 0, i32 0
  %11 = load %struct.ath6kl*, %struct.ath6kl** %10, align 8
  store %struct.ath6kl* %11, %struct.ath6kl** %6, align 8
  store i64 0, i64* %7, align 8
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @RATE_AUTO, align 4
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %70

16:                                               ; preds = %2
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @RATE_INDEX_MSB, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %16
  %22 = load i32, i32* @RATE_INDEX_WITHOUT_SGI_MASK, align 4
  %23 = load i32, i32* %5, align 4
  %24 = and i32 %23, %22
  store i32 %24, i32* %5, align 4
  store i64 1, i64* %7, align 8
  br label %25

25:                                               ; preds = %21, %16
  %26 = load i32, i32* @ATH6KL_FW_CAPABILITY_RATETABLE_MCS15, align 4
  %27 = load %struct.ath6kl*, %struct.ath6kl** %6, align 8
  %28 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i64 @test_bit(i32 %26, i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %50

32:                                               ; preds = %25
  %33 = load i32, i32* %5, align 4
  %34 = load i32**, i32*** @wmi_rate_tbl_mcs15, align 8
  %35 = call i32 @ARRAY_SIZE(i32** %34)
  %36 = icmp sge i32 %33, %35
  %37 = zext i1 %36 to i32
  %38 = call i64 @WARN_ON(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %32
  store i32 0, i32* %3, align 4
  br label %70

41:                                               ; preds = %32
  %42 = load i32**, i32*** @wmi_rate_tbl_mcs15, align 8
  %43 = load i32, i32* %5, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32*, i32** %42, i64 %44
  %46 = load i32*, i32** %45, align 8
  %47 = load i64, i64* %7, align 8
  %48 = getelementptr inbounds i32, i32* %46, i64 %47
  %49 = load i32, i32* %48, align 4
  store i32 %49, i32* %8, align 4
  br label %68

50:                                               ; preds = %25
  %51 = load i32, i32* %5, align 4
  %52 = load i32**, i32*** @wmi_rate_tbl, align 8
  %53 = call i32 @ARRAY_SIZE(i32** %52)
  %54 = icmp sge i32 %51, %53
  %55 = zext i1 %54 to i32
  %56 = call i64 @WARN_ON(i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %50
  store i32 0, i32* %3, align 4
  br label %70

59:                                               ; preds = %50
  %60 = load i32**, i32*** @wmi_rate_tbl, align 8
  %61 = load i32, i32* %5, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32*, i32** %60, i64 %62
  %64 = load i32*, i32** %63, align 8
  %65 = load i64, i64* %7, align 8
  %66 = getelementptr inbounds i32, i32* %64, i64 %65
  %67 = load i32, i32* %66, align 4
  store i32 %67, i32* %8, align 4
  br label %68

68:                                               ; preds = %59, %41
  %69 = load i32, i32* %8, align 4
  store i32 %69, i32* %3, align 4
  br label %70

70:                                               ; preds = %68, %58, %40, %15
  %71 = load i32, i32* %3, align 4
  ret i32 %71
}

declare dso_local i64 @test_bit(i32, i32) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @ARRAY_SIZE(i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
