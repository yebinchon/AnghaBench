; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_cfg80211.c_ath6kl_is_valid_iftype.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_cfg80211.c_ath6kl_is_valid_iftype.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath6kl = type { i32, i32, i32, i64, i64 }

@NL80211_IFTYPE_ADHOC = common dso_local global i32 0, align 4
@NL80211_IFTYPE_STATION = common dso_local global i32 0, align 4
@NL80211_IFTYPE_AP = common dso_local global i32 0, align 4
@NL80211_IFTYPE_P2P_CLIENT = common dso_local global i32 0, align 4
@NL80211_IFTYPE_P2P_GO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath6kl*, i32, i32*, i32*)* @ath6kl_is_valid_iftype to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath6kl_is_valid_iftype(%struct.ath6kl* %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ath6kl*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store %struct.ath6kl* %0, %struct.ath6kl** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %11 = load i32, i32* %7, align 4
  %12 = load i32*, i32** %9, align 8
  %13 = call i64 @ath6kl_nliftype_to_drv_iftype(i32 %11, i32* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %101

16:                                               ; preds = %4
  %17 = load %struct.ath6kl*, %struct.ath6kl** %6, align 8
  %18 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %17, i32 0, i32 4
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %30, label %21

21:                                               ; preds = %16
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* @NL80211_IFTYPE_ADHOC, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %31

25:                                               ; preds = %21
  %26 = load %struct.ath6kl*, %struct.ath6kl** %6, align 8
  %27 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %26, i32 0, i32 3
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %25, %16
  store i32 0, i32* %5, align 4
  br label %101

31:                                               ; preds = %25, %21
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* @NL80211_IFTYPE_STATION, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %43, label %35

35:                                               ; preds = %31
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* @NL80211_IFTYPE_AP, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %43, label %39

39:                                               ; preds = %35
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* @NL80211_IFTYPE_ADHOC, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %66

43:                                               ; preds = %39, %35, %31
  store i32 0, i32* %10, align 4
  br label %44

44:                                               ; preds = %62, %43
  %45 = load i32, i32* %10, align 4
  %46 = load %struct.ath6kl*, %struct.ath6kl** %6, align 8
  %47 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = icmp slt i32 %45, %48
  br i1 %49, label %50, label %65

50:                                               ; preds = %44
  %51 = load %struct.ath6kl*, %struct.ath6kl** %6, align 8
  %52 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* %10, align 4
  %55 = call i32 @BIT(i32 %54)
  %56 = and i32 %53, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %50
  %59 = load i32, i32* %10, align 4
  %60 = load i32*, i32** %8, align 8
  store i32 %59, i32* %60, align 4
  store i32 1, i32* %5, align 4
  br label %101

61:                                               ; preds = %50
  br label %62

62:                                               ; preds = %61
  %63 = load i32, i32* %10, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %10, align 4
  br label %44

65:                                               ; preds = %44
  br label %66

66:                                               ; preds = %65, %39
  %67 = load i32, i32* %7, align 4
  %68 = load i32, i32* @NL80211_IFTYPE_P2P_CLIENT, align 4
  %69 = icmp eq i32 %67, %68
  br i1 %69, label %74, label %70

70:                                               ; preds = %66
  %71 = load i32, i32* %7, align 4
  %72 = load i32, i32* @NL80211_IFTYPE_P2P_GO, align 4
  %73 = icmp eq i32 %71, %72
  br i1 %73, label %74, label %100

74:                                               ; preds = %70, %66
  %75 = load %struct.ath6kl*, %struct.ath6kl** %6, align 8
  %76 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  store i32 %77, i32* %10, align 4
  br label %78

78:                                               ; preds = %96, %74
  %79 = load i32, i32* %10, align 4
  %80 = load %struct.ath6kl*, %struct.ath6kl** %6, align 8
  %81 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = icmp slt i32 %79, %82
  br i1 %83, label %84, label %99

84:                                               ; preds = %78
  %85 = load %struct.ath6kl*, %struct.ath6kl** %6, align 8
  %86 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* %10, align 4
  %89 = call i32 @BIT(i32 %88)
  %90 = and i32 %87, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %84
  %93 = load i32, i32* %10, align 4
  %94 = load i32*, i32** %8, align 8
  store i32 %93, i32* %94, align 4
  store i32 1, i32* %5, align 4
  br label %101

95:                                               ; preds = %84
  br label %96

96:                                               ; preds = %95
  %97 = load i32, i32* %10, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %10, align 4
  br label %78

99:                                               ; preds = %78
  br label %100

100:                                              ; preds = %99, %70
  store i32 0, i32* %5, align 4
  br label %101

101:                                              ; preds = %100, %92, %58, %30, %15
  %102 = load i32, i32* %5, align 4
  ret i32 %102
}

declare dso_local i64 @ath6kl_nliftype_to_drv_iftype(i32, i32*) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
