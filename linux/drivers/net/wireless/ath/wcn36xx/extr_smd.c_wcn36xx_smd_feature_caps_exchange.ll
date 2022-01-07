; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wcn36xx/extr_smd.c_wcn36xx_smd_feature_caps_exchange.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wcn36xx/extr_smd.c_wcn36xx_smd_feature_caps_exchange.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wcn36xx = type { i32, i32, i32*, i64 }
%struct.wcn36xx_hal_feat_caps_msg = type { i32*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@WCN36XX_HAL_FEATURE_CAPS_EXCHANGE_REQ = common dso_local global i32 0, align 4
@STA_POWERSAVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"Sending hal_feature_caps_exchange failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"Invalid hal_feature_caps_exchange response\00", align 1
@WCN36XX_HAL_CAPS_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wcn36xx_smd_feature_caps_exchange(%struct.wcn36xx* %0) #0 {
  %2 = alloca %struct.wcn36xx*, align 8
  %3 = alloca %struct.wcn36xx_hal_feat_caps_msg, align 8
  %4 = alloca %struct.wcn36xx_hal_feat_caps_msg*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.wcn36xx* %0, %struct.wcn36xx** %2, align 8
  %7 = load %struct.wcn36xx*, %struct.wcn36xx** %2, align 8
  %8 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %7, i32 0, i32 1
  %9 = call i32 @mutex_lock(i32* %8)
  %10 = load i32, i32* @WCN36XX_HAL_FEATURE_CAPS_EXCHANGE_REQ, align 4
  %11 = bitcast %struct.wcn36xx_hal_feat_caps_msg* %3 to { i32*, i32 }*
  %12 = getelementptr inbounds { i32*, i32 }, { i32*, i32 }* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = getelementptr inbounds { i32*, i32 }, { i32*, i32 }* %11, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @INIT_HAL_MSG(i32* %13, i32 %15, i32 %10)
  %17 = getelementptr inbounds %struct.wcn36xx_hal_feat_caps_msg, %struct.wcn36xx_hal_feat_caps_msg* %3, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = load i32, i32* @STA_POWERSAVE, align 4
  %20 = call i32 @set_feat_caps(i32* %18, i32 %19)
  %21 = load %struct.wcn36xx*, %struct.wcn36xx** %2, align 8
  %22 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %21, i32 0, i32 3
  %23 = load i64, i64* %22, align 8
  %24 = bitcast %struct.wcn36xx_hal_feat_caps_msg* %3 to { i32*, i32 }*
  %25 = getelementptr inbounds { i32*, i32 }, { i32*, i32 }* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = getelementptr inbounds { i32*, i32 }, { i32*, i32 }* %24, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @PREPARE_HAL_BUF(i64 %23, i32* %26, i32 %28)
  %30 = load %struct.wcn36xx*, %struct.wcn36xx** %2, align 8
  %31 = getelementptr inbounds %struct.wcn36xx_hal_feat_caps_msg, %struct.wcn36xx_hal_feat_caps_msg* %3, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @wcn36xx_smd_send_and_wait(%struct.wcn36xx* %30, i32 %33)
  store i32 %34, i32* %5, align 4
  %35 = load i32, i32* %5, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %1
  %38 = call i32 @wcn36xx_err(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  br label %74

39:                                               ; preds = %1
  %40 = load %struct.wcn36xx*, %struct.wcn36xx** %2, align 8
  %41 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = sext i32 %42 to i64
  %44 = icmp ne i64 %43, 16
  br i1 %44, label %45, label %47

45:                                               ; preds = %39
  %46 = call i32 @wcn36xx_err(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  br label %74

47:                                               ; preds = %39
  %48 = load %struct.wcn36xx*, %struct.wcn36xx** %2, align 8
  %49 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %48, i32 0, i32 3
  %50 = load i64, i64* %49, align 8
  %51 = inttoptr i64 %50 to %struct.wcn36xx_hal_feat_caps_msg*
  store %struct.wcn36xx_hal_feat_caps_msg* %51, %struct.wcn36xx_hal_feat_caps_msg** %4, align 8
  store i32 0, i32* %6, align 4
  br label %52

52:                                               ; preds = %70, %47
  %53 = load i32, i32* %6, align 4
  %54 = load i32, i32* @WCN36XX_HAL_CAPS_SIZE, align 4
  %55 = icmp slt i32 %53, %54
  br i1 %55, label %56, label %73

56:                                               ; preds = %52
  %57 = load %struct.wcn36xx_hal_feat_caps_msg*, %struct.wcn36xx_hal_feat_caps_msg** %4, align 8
  %58 = getelementptr inbounds %struct.wcn36xx_hal_feat_caps_msg, %struct.wcn36xx_hal_feat_caps_msg* %57, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = load i32, i32* %6, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.wcn36xx*, %struct.wcn36xx** %2, align 8
  %65 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %64, i32 0, i32 2
  %66 = load i32*, i32** %65, align 8
  %67 = load i32, i32* %6, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %66, i64 %68
  store i32 %63, i32* %69, align 4
  br label %70

70:                                               ; preds = %56
  %71 = load i32, i32* %6, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %6, align 4
  br label %52

73:                                               ; preds = %52
  br label %74

74:                                               ; preds = %73, %45, %37
  %75 = load %struct.wcn36xx*, %struct.wcn36xx** %2, align 8
  %76 = getelementptr inbounds %struct.wcn36xx, %struct.wcn36xx* %75, i32 0, i32 1
  %77 = call i32 @mutex_unlock(i32* %76)
  %78 = load i32, i32* %5, align 4
  ret i32 %78
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @INIT_HAL_MSG(i32*, i32, i32) #1

declare dso_local i32 @set_feat_caps(i32*, i32) #1

declare dso_local i32 @PREPARE_HAL_BUF(i64, i32*, i32) #1

declare dso_local i32 @wcn36xx_smd_send_and_wait(%struct.wcn36xx*, i32) #1

declare dso_local i32 @wcn36xx_err(i8*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
