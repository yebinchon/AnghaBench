; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wcn36xx/extr_testmode.c_wcn36xx_tm_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wcn36xx/extr_testmode.c_wcn36xx_tm_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.wcn36xx* }
%struct.wcn36xx = type { i32 }
%struct.ieee80211_vif = type { i32 }
%struct.nlattr = type { i32 }

@WCN36XX_TM_ATTR_MAX = common dso_local global i32 0, align 4
@WCN36XX_DBG_TESTMODE_DUMP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"Data:\00", align 1
@wcn36xx_tm_policy = common dso_local global i32 0, align 4
@WCN36XX_TM_ATTR_CMD = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@WCN36XX_TM_CMD_PTT = common dso_local global i16 0, align 2
@EOPNOTSUPP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wcn36xx_tm_cmd(%struct.ieee80211_hw* %0, %struct.ieee80211_vif* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ieee80211_hw*, align 8
  %7 = alloca %struct.ieee80211_vif*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.wcn36xx*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i16, align 2
  %15 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %6, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %16 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %17 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %16, i32 0, i32 0
  %18 = load %struct.wcn36xx*, %struct.wcn36xx** %17, align 8
  store %struct.wcn36xx* %18, %struct.wcn36xx** %10, align 8
  %19 = load i32, i32* @WCN36XX_TM_ATTR_MAX, align 4
  %20 = add nsw i32 %19, 1
  %21 = zext i32 %20 to i64
  %22 = call i8* @llvm.stacksave()
  store i8* %22, i8** %11, align 8
  %23 = alloca %struct.nlattr*, i64 %21, align 16
  store i64 %21, i64* %12, align 8
  store i32 0, i32* %13, align 4
  %24 = load i32, i32* @WCN36XX_DBG_TESTMODE_DUMP, align 4
  %25 = load i8*, i8** %8, align 8
  %26 = load i32, i32* %9, align 4
  %27 = call i32 @wcn36xx_dbg_dump(i32 %24, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %25, i32 %26)
  %28 = load i32, i32* @WCN36XX_TM_ATTR_MAX, align 4
  %29 = load i8*, i8** %8, align 8
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* @wcn36xx_tm_policy, align 4
  %32 = call i32 @nla_parse_deprecated(%struct.nlattr** %23, i32 %28, i8* %29, i32 %30, i32 %31, i32* null)
  store i32 %32, i32* %13, align 4
  %33 = load i32, i32* %13, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %4
  %36 = load i32, i32* %13, align 4
  store i32 %36, i32* %5, align 4
  store i32 1, i32* %15, align 4
  br label %62

37:                                               ; preds = %4
  %38 = load i64, i64* @WCN36XX_TM_ATTR_CMD, align 8
  %39 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %23, i64 %38
  %40 = load %struct.nlattr*, %struct.nlattr** %39, align 8
  %41 = icmp ne %struct.nlattr* %40, null
  br i1 %41, label %45, label %42

42:                                               ; preds = %37
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %5, align 4
  store i32 1, i32* %15, align 4
  br label %62

45:                                               ; preds = %37
  %46 = load i64, i64* @WCN36XX_TM_ATTR_CMD, align 8
  %47 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %23, i64 %46
  %48 = load %struct.nlattr*, %struct.nlattr** %47, align 8
  %49 = call zeroext i16 @nla_get_u16(%struct.nlattr* %48)
  store i16 %49, i16* %14, align 2
  %50 = load i16, i16* %14, align 2
  %51 = zext i16 %50 to i32
  %52 = load i16, i16* @WCN36XX_TM_CMD_PTT, align 2
  %53 = zext i16 %52 to i32
  %54 = icmp ne i32 %51, %53
  br i1 %54, label %55, label %58

55:                                               ; preds = %45
  %56 = load i32, i32* @EOPNOTSUPP, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %5, align 4
  store i32 1, i32* %15, align 4
  br label %62

58:                                               ; preds = %45
  %59 = load %struct.wcn36xx*, %struct.wcn36xx** %10, align 8
  %60 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %7, align 8
  %61 = call i32 @wcn36xx_tm_cmd_ptt(%struct.wcn36xx* %59, %struct.ieee80211_vif* %60, %struct.nlattr** %23)
  store i32 %61, i32* %5, align 4
  store i32 1, i32* %15, align 4
  br label %62

62:                                               ; preds = %58, %55, %42, %35
  %63 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %63)
  %64 = load i32, i32* %5, align 4
  ret i32 %64
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @wcn36xx_dbg_dump(i32, i8*, i8*, i32) #2

declare dso_local i32 @nla_parse_deprecated(%struct.nlattr**, i32, i8*, i32, i32, i32*) #2

declare dso_local zeroext i16 @nla_get_u16(%struct.nlattr*) #2

declare dso_local i32 @wcn36xx_tm_cmd_ptt(%struct.wcn36xx*, %struct.ieee80211_vif*, %struct.nlattr**) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
