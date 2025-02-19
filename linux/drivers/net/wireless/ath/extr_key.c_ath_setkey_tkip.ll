; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/extr_key.c_ath_setkey_tkip.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/extr_key.c_ath_setkey_tkip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_common = type { i32 }
%struct.ath_keyval = type { i32, i32 }

@NL80211_TKIP_DATA_OFFSET_TX_MIC_KEY = common dso_local global i32 0, align 4
@NL80211_TKIP_DATA_OFFSET_RX_MIC_KEY = common dso_local global i32 0, align 4
@ATH_CRYPT_CAP_MIC_COMBINED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Setting TX MIC Key Failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath_common*, i64, i32*, %struct.ath_keyval*, i32*, i32)* @ath_setkey_tkip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath_setkey_tkip(%struct.ath_common* %0, i64 %1, i32* %2, %struct.ath_keyval* %3, i32* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.ath_common*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.ath_keyval*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  store %struct.ath_common* %0, %struct.ath_common** %8, align 8
  store i64 %1, i64* %9, align 8
  store i32* %2, i32** %10, align 8
  store %struct.ath_keyval* %3, %struct.ath_keyval** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32 %5, i32* %13, align 4
  %16 = load i32*, i32** %10, align 8
  %17 = load i32, i32* @NL80211_TKIP_DATA_OFFSET_TX_MIC_KEY, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i32, i32* %16, i64 %18
  store i32* %19, i32** %15, align 8
  %20 = load i32*, i32** %10, align 8
  %21 = load i32, i32* @NL80211_TKIP_DATA_OFFSET_RX_MIC_KEY, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %20, i64 %22
  store i32* %23, i32** %14, align 8
  %24 = load i32*, i32** %12, align 8
  %25 = icmp eq i32* %24, null
  br i1 %25, label %26, label %57

26:                                               ; preds = %6
  %27 = load i32, i32* %13, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %40

29:                                               ; preds = %26
  %30 = load %struct.ath_keyval*, %struct.ath_keyval** %11, align 8
  %31 = getelementptr inbounds %struct.ath_keyval, %struct.ath_keyval* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32*, i32** %15, align 8
  %34 = call i32 @memcpy(i32 %32, i32* %33, i32 4)
  %35 = load %struct.ath_keyval*, %struct.ath_keyval** %11, align 8
  %36 = getelementptr inbounds %struct.ath_keyval, %struct.ath_keyval* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load i32*, i32** %15, align 8
  %39 = call i32 @memcpy(i32 %37, i32* %38, i32 4)
  br label %51

40:                                               ; preds = %26
  %41 = load %struct.ath_keyval*, %struct.ath_keyval** %11, align 8
  %42 = getelementptr inbounds %struct.ath_keyval, %struct.ath_keyval* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32*, i32** %14, align 8
  %45 = call i32 @memcpy(i32 %43, i32* %44, i32 4)
  %46 = load %struct.ath_keyval*, %struct.ath_keyval** %11, align 8
  %47 = getelementptr inbounds %struct.ath_keyval, %struct.ath_keyval* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load i32*, i32** %14, align 8
  %50 = call i32 @memcpy(i32 %48, i32* %49, i32 4)
  br label %51

51:                                               ; preds = %40, %29
  %52 = load %struct.ath_common*, %struct.ath_common** %8, align 8
  %53 = load i64, i64* %9, align 8
  %54 = load %struct.ath_keyval*, %struct.ath_keyval** %11, align 8
  %55 = load i32*, i32** %12, align 8
  %56 = call i32 @ath_hw_set_keycache_entry(%struct.ath_common* %52, i64 %53, %struct.ath_keyval* %54, i32* %55)
  store i32 %56, i32* %7, align 4
  br label %106

57:                                               ; preds = %6
  %58 = load %struct.ath_common*, %struct.ath_common** %8, align 8
  %59 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @ATH_CRYPT_CAP_MIC_COMBINED, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %80

64:                                               ; preds = %57
  %65 = load %struct.ath_keyval*, %struct.ath_keyval** %11, align 8
  %66 = getelementptr inbounds %struct.ath_keyval, %struct.ath_keyval* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32*, i32** %14, align 8
  %69 = call i32 @memcpy(i32 %67, i32* %68, i32 4)
  %70 = load %struct.ath_keyval*, %struct.ath_keyval** %11, align 8
  %71 = getelementptr inbounds %struct.ath_keyval, %struct.ath_keyval* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load i32*, i32** %15, align 8
  %74 = call i32 @memcpy(i32 %72, i32* %73, i32 4)
  %75 = load %struct.ath_common*, %struct.ath_common** %8, align 8
  %76 = load i64, i64* %9, align 8
  %77 = load %struct.ath_keyval*, %struct.ath_keyval** %11, align 8
  %78 = load i32*, i32** %12, align 8
  %79 = call i32 @ath_hw_set_keycache_entry(%struct.ath_common* %75, i64 %76, %struct.ath_keyval* %77, i32* %78)
  store i32 %79, i32* %7, align 4
  br label %106

80:                                               ; preds = %57
  %81 = load %struct.ath_keyval*, %struct.ath_keyval** %11, align 8
  %82 = getelementptr inbounds %struct.ath_keyval, %struct.ath_keyval* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load i32*, i32** %15, align 8
  %85 = call i32 @memcpy(i32 %83, i32* %84, i32 4)
  %86 = load %struct.ath_common*, %struct.ath_common** %8, align 8
  %87 = load i64, i64* %9, align 8
  %88 = load %struct.ath_keyval*, %struct.ath_keyval** %11, align 8
  %89 = call i32 @ath_hw_set_keycache_entry(%struct.ath_common* %86, i64 %87, %struct.ath_keyval* %88, i32* null)
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %94, label %91

91:                                               ; preds = %80
  %92 = load %struct.ath_common*, %struct.ath_common** %8, align 8
  %93 = call i32 @ath_err(%struct.ath_common* %92, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %7, align 4
  br label %106

94:                                               ; preds = %80
  %95 = load %struct.ath_keyval*, %struct.ath_keyval** %11, align 8
  %96 = getelementptr inbounds %struct.ath_keyval, %struct.ath_keyval* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = load i32*, i32** %14, align 8
  %99 = call i32 @memcpy(i32 %97, i32* %98, i32 4)
  %100 = load %struct.ath_common*, %struct.ath_common** %8, align 8
  %101 = load i64, i64* %9, align 8
  %102 = add nsw i64 %101, 32
  %103 = load %struct.ath_keyval*, %struct.ath_keyval** %11, align 8
  %104 = load i32*, i32** %12, align 8
  %105 = call i32 @ath_hw_set_keycache_entry(%struct.ath_common* %100, i64 %102, %struct.ath_keyval* %103, i32* %104)
  store i32 %105, i32* %7, align 4
  br label %106

106:                                              ; preds = %94, %91, %64, %51
  %107 = load i32, i32* %7, align 4
  ret i32 %107
}

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @ath_hw_set_keycache_entry(%struct.ath_common*, i64, %struct.ath_keyval*, i32*) #1

declare dso_local i32 @ath_err(%struct.ath_common*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
