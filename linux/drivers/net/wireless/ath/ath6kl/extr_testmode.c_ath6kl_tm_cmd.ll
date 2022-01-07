; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_testmode.c_ath6kl_tm_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_testmode.c_ath6kl_tm_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiphy = type { i32 }
%struct.wireless_dev = type { i32 }
%struct.ath6kl = type { i32 }
%struct.nlattr = type { i32 }

@ATH6KL_TM_ATTR_MAX = common dso_local global i32 0, align 4
@ath6kl_tm_policy = common dso_local global i32 0, align 4
@ATH6KL_TM_ATTR_CMD = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@ATH6KL_TM_ATTR_DATA = common dso_local global i64 0, align 8
@EOPNOTSUPP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ath6kl_tm_cmd(%struct.wiphy* %0, %struct.wireless_dev* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.wiphy*, align 8
  %7 = alloca %struct.wireless_dev*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.ath6kl*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  store %struct.wiphy* %0, %struct.wiphy** %6, align 8
  store %struct.wireless_dev* %1, %struct.wireless_dev** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %17 = load %struct.wiphy*, %struct.wiphy** %6, align 8
  %18 = call %struct.ath6kl* @wiphy_priv(%struct.wiphy* %17)
  store %struct.ath6kl* %18, %struct.ath6kl** %10, align 8
  %19 = load i32, i32* @ATH6KL_TM_ATTR_MAX, align 4
  %20 = add nsw i32 %19, 1
  %21 = zext i32 %20 to i64
  %22 = call i8* @llvm.stacksave()
  store i8* %22, i8** %11, align 8
  %23 = alloca %struct.nlattr*, i64 %21, align 16
  store i64 %21, i64* %12, align 8
  %24 = load i32, i32* @ATH6KL_TM_ATTR_MAX, align 4
  %25 = load i8*, i8** %8, align 8
  %26 = load i32, i32* %9, align 4
  %27 = load i32, i32* @ath6kl_tm_policy, align 4
  %28 = call i32 @nla_parse_deprecated(%struct.nlattr** %23, i32 %24, i8* %25, i32 %26, i32 %27, i32* null)
  store i32 %28, i32* %13, align 4
  %29 = load i32, i32* %13, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %4
  %32 = load i32, i32* %13, align 4
  store i32 %32, i32* %5, align 4
  store i32 1, i32* %16, align 4
  br label %73

33:                                               ; preds = %4
  %34 = load i64, i64* @ATH6KL_TM_ATTR_CMD, align 8
  %35 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %23, i64 %34
  %36 = load %struct.nlattr*, %struct.nlattr** %35, align 8
  %37 = icmp ne %struct.nlattr* %36, null
  br i1 %37, label %41, label %38

38:                                               ; preds = %33
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %5, align 4
  store i32 1, i32* %16, align 4
  br label %73

41:                                               ; preds = %33
  %42 = load i64, i64* @ATH6KL_TM_ATTR_CMD, align 8
  %43 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %23, i64 %42
  %44 = load %struct.nlattr*, %struct.nlattr** %43, align 8
  %45 = call i32 @nla_get_u32(%struct.nlattr* %44)
  switch i32 %45, label %70 [
    i32 128, label %46
    i32 129, label %69
  ]

46:                                               ; preds = %41
  %47 = load i64, i64* @ATH6KL_TM_ATTR_DATA, align 8
  %48 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %23, i64 %47
  %49 = load %struct.nlattr*, %struct.nlattr** %48, align 8
  %50 = icmp ne %struct.nlattr* %49, null
  br i1 %50, label %54, label %51

51:                                               ; preds = %46
  %52 = load i32, i32* @EINVAL, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %5, align 4
  store i32 1, i32* %16, align 4
  br label %73

54:                                               ; preds = %46
  %55 = load i64, i64* @ATH6KL_TM_ATTR_DATA, align 8
  %56 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %23, i64 %55
  %57 = load %struct.nlattr*, %struct.nlattr** %56, align 8
  %58 = call i8* @nla_data(%struct.nlattr* %57)
  store i8* %58, i8** %15, align 8
  %59 = load i64, i64* @ATH6KL_TM_ATTR_DATA, align 8
  %60 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %23, i64 %59
  %61 = load %struct.nlattr*, %struct.nlattr** %60, align 8
  %62 = call i32 @nla_len(%struct.nlattr* %61)
  store i32 %62, i32* %14, align 4
  %63 = load %struct.ath6kl*, %struct.ath6kl** %10, align 8
  %64 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i8*, i8** %15, align 8
  %67 = load i32, i32* %14, align 4
  %68 = call i32 @ath6kl_wmi_test_cmd(i32 %65, i8* %66, i32 %67)
  store i32 0, i32* %5, align 4
  store i32 1, i32* %16, align 4
  br label %73

69:                                               ; preds = %41
  br label %70

70:                                               ; preds = %41, %69
  %71 = load i32, i32* @EOPNOTSUPP, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %5, align 4
  store i32 1, i32* %16, align 4
  br label %73

73:                                               ; preds = %70, %54, %51, %38, %31
  %74 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %74)
  %75 = load i32, i32* %5, align 4
  ret i32 %75
}

declare dso_local %struct.ath6kl* @wiphy_priv(%struct.wiphy*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @nla_parse_deprecated(%struct.nlattr**, i32, i8*, i32, i32, i32*) #1

declare dso_local i32 @nla_get_u32(%struct.nlattr*) #1

declare dso_local i8* @nla_data(%struct.nlattr*) #1

declare dso_local i32 @nla_len(%struct.nlattr*) #1

declare dso_local i32 @ath6kl_wmi_test_cmd(i32, i8*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
