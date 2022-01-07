; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_testmode.c_ath10k_tm_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_testmode.c_ath10k_tm_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.ath10k* }
%struct.ath10k = type { i32 }
%struct.ieee80211_vif = type { i32 }
%struct.nlattr = type { i32 }

@ATH10K_TM_ATTR_MAX = common dso_local global i32 0, align 4
@ath10k_tm_policy = common dso_local global i32 0, align 4
@ATH10K_TM_ATTR_CMD = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ath10k_tm_cmd(%struct.ieee80211_hw* %0, %struct.ieee80211_vif* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ieee80211_hw*, align 8
  %7 = alloca %struct.ieee80211_vif*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.ath10k*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %6, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %15 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %16 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %15, i32 0, i32 0
  %17 = load %struct.ath10k*, %struct.ath10k** %16, align 8
  store %struct.ath10k* %17, %struct.ath10k** %10, align 8
  %18 = load i32, i32* @ATH10K_TM_ATTR_MAX, align 4
  %19 = add nsw i32 %18, 1
  %20 = zext i32 %19 to i64
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %11, align 8
  %22 = alloca %struct.nlattr*, i64 %20, align 16
  store i64 %20, i64* %12, align 8
  %23 = load i32, i32* @ATH10K_TM_ATTR_MAX, align 4
  %24 = load i8*, i8** %8, align 8
  %25 = load i32, i32* %9, align 4
  %26 = load i32, i32* @ath10k_tm_policy, align 4
  %27 = call i32 @nla_parse_deprecated(%struct.nlattr** %22, i32 %23, i8* %24, i32 %25, i32 %26, i32* null)
  store i32 %27, i32* %13, align 4
  %28 = load i32, i32* %13, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %4
  %31 = load i32, i32* %13, align 4
  store i32 %31, i32* %5, align 4
  store i32 1, i32* %14, align 4
  br label %60

32:                                               ; preds = %4
  %33 = load i64, i64* @ATH10K_TM_ATTR_CMD, align 8
  %34 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %22, i64 %33
  %35 = load %struct.nlattr*, %struct.nlattr** %34, align 8
  %36 = icmp ne %struct.nlattr* %35, null
  br i1 %36, label %40, label %37

37:                                               ; preds = %32
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %5, align 4
  store i32 1, i32* %14, align 4
  br label %60

40:                                               ; preds = %32
  %41 = load i64, i64* @ATH10K_TM_ATTR_CMD, align 8
  %42 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %22, i64 %41
  %43 = load %struct.nlattr*, %struct.nlattr** %42, align 8
  %44 = call i32 @nla_get_u32(%struct.nlattr* %43)
  switch i32 %44, label %57 [
    i32 131, label %45
    i32 130, label %48
    i32 129, label %51
    i32 128, label %54
  ]

45:                                               ; preds = %40
  %46 = load %struct.ath10k*, %struct.ath10k** %10, align 8
  %47 = call i32 @ath10k_tm_cmd_get_version(%struct.ath10k* %46, %struct.nlattr** %22)
  store i32 %47, i32* %5, align 4
  store i32 1, i32* %14, align 4
  br label %60

48:                                               ; preds = %40
  %49 = load %struct.ath10k*, %struct.ath10k** %10, align 8
  %50 = call i32 @ath10k_tm_cmd_utf_start(%struct.ath10k* %49, %struct.nlattr** %22)
  store i32 %50, i32* %5, align 4
  store i32 1, i32* %14, align 4
  br label %60

51:                                               ; preds = %40
  %52 = load %struct.ath10k*, %struct.ath10k** %10, align 8
  %53 = call i32 @ath10k_tm_cmd_utf_stop(%struct.ath10k* %52, %struct.nlattr** %22)
  store i32 %53, i32* %5, align 4
  store i32 1, i32* %14, align 4
  br label %60

54:                                               ; preds = %40
  %55 = load %struct.ath10k*, %struct.ath10k** %10, align 8
  %56 = call i32 @ath10k_tm_cmd_wmi(%struct.ath10k* %55, %struct.nlattr** %22)
  store i32 %56, i32* %5, align 4
  store i32 1, i32* %14, align 4
  br label %60

57:                                               ; preds = %40
  %58 = load i32, i32* @EOPNOTSUPP, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %5, align 4
  store i32 1, i32* %14, align 4
  br label %60

60:                                               ; preds = %57, %54, %51, %48, %45, %37, %30
  %61 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %61)
  %62 = load i32, i32* %5, align 4
  ret i32 %62
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @nla_parse_deprecated(%struct.nlattr**, i32, i8*, i32, i32, i32*) #2

declare dso_local i32 @nla_get_u32(%struct.nlattr*) #2

declare dso_local i32 @ath10k_tm_cmd_get_version(%struct.ath10k*, %struct.nlattr**) #2

declare dso_local i32 @ath10k_tm_cmd_utf_start(%struct.ath10k*, %struct.nlattr**) #2

declare dso_local i32 @ath10k_tm_cmd_utf_stop(%struct.ath10k*, %struct.nlattr**) #2

declare dso_local i32 @ath10k_tm_cmd_wmi(%struct.ath10k*, %struct.nlattr**) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
