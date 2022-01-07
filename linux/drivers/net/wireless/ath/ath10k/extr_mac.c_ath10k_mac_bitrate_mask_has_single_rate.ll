; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_mac.c_ath10k_mac_bitrate_mask_has_single_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_mac.c_ath10k_mac_bitrate_mask_has_single_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k = type { i32 }
%struct.cfg80211_bitrate_mask = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32*, i32*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath10k*, i32, %struct.cfg80211_bitrate_mask*, i32*)* @ath10k_mac_bitrate_mask_has_single_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath10k_mac_bitrate_mask_has_single_rate(%struct.ath10k* %0, i32 %1, %struct.cfg80211_bitrate_mask* %2, i32* %3) #0 {
  %5 = alloca %struct.ath10k*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.cfg80211_bitrate_mask*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.ath10k* %0, %struct.ath10k** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.cfg80211_bitrate_mask* %2, %struct.cfg80211_bitrate_mask** %7, align 8
  store i32* %3, i32** %8, align 8
  store i32 0, i32* %9, align 4
  %12 = load %struct.cfg80211_bitrate_mask*, %struct.cfg80211_bitrate_mask** %7, align 8
  %13 = getelementptr inbounds %struct.cfg80211_bitrate_mask, %struct.cfg80211_bitrate_mask* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = load i32, i32* %6, align 4
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i64 %16
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = call i64 @hweight32(i32 %19)
  %21 = load i32, i32* %9, align 4
  %22 = sext i32 %21 to i64
  %23 = add nsw i64 %22, %20
  %24 = trunc i64 %23 to i32
  store i32 %24, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %25

25:                                               ; preds = %55, %4
  %26 = load i32, i32* %10, align 4
  %27 = load %struct.cfg80211_bitrate_mask*, %struct.cfg80211_bitrate_mask** %7, align 8
  %28 = getelementptr inbounds %struct.cfg80211_bitrate_mask, %struct.cfg80211_bitrate_mask* %27, i32 0, i32 0
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = load i32, i32* %6, align 4
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 1
  %34 = load i32*, i32** %33, align 8
  %35 = call i32 @ARRAY_SIZE(i32* %34)
  %36 = icmp slt i32 %26, %35
  br i1 %36, label %37, label %58

37:                                               ; preds = %25
  %38 = load %struct.cfg80211_bitrate_mask*, %struct.cfg80211_bitrate_mask** %7, align 8
  %39 = getelementptr inbounds %struct.cfg80211_bitrate_mask, %struct.cfg80211_bitrate_mask* %38, i32 0, i32 0
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = load i32, i32* %6, align 4
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 1
  %45 = load i32*, i32** %44, align 8
  %46 = load i32, i32* %10, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = call i64 @hweight8(i32 %49)
  %51 = load i32, i32* %9, align 4
  %52 = sext i32 %51 to i64
  %53 = add nsw i64 %52, %50
  %54 = trunc i64 %53 to i32
  store i32 %54, i32* %9, align 4
  br label %55

55:                                               ; preds = %37
  %56 = load i32, i32* %10, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %10, align 4
  br label %25

58:                                               ; preds = %25
  %59 = load i32*, i32** %8, align 8
  store i32 0, i32* %59, align 4
  store i32 0, i32* %10, align 4
  br label %60

60:                                               ; preds = %93, %58
  %61 = load i32, i32* %10, align 4
  %62 = load %struct.cfg80211_bitrate_mask*, %struct.cfg80211_bitrate_mask** %7, align 8
  %63 = getelementptr inbounds %struct.cfg80211_bitrate_mask, %struct.cfg80211_bitrate_mask* %62, i32 0, i32 0
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %63, align 8
  %65 = load i32, i32* %6, align 4
  %66 = zext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  %69 = load i32*, i32** %68, align 8
  %70 = call i32 @ARRAY_SIZE(i32* %69)
  %71 = icmp slt i32 %61, %70
  br i1 %71, label %72, label %96

72:                                               ; preds = %60
  %73 = load %struct.cfg80211_bitrate_mask*, %struct.cfg80211_bitrate_mask** %7, align 8
  %74 = getelementptr inbounds %struct.cfg80211_bitrate_mask, %struct.cfg80211_bitrate_mask* %73, i32 0, i32 0
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** %74, align 8
  %76 = load i32, i32* %6, align 4
  %77 = zext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 0
  %80 = load i32*, i32** %79, align 8
  %81 = load i32, i32* %10, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %80, i64 %82
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @hweight16(i32 %84)
  store i32 %85, i32* %11, align 4
  %86 = load i32, i32* %11, align 4
  %87 = load i32, i32* %9, align 4
  %88 = add nsw i32 %87, %86
  store i32 %88, i32* %9, align 4
  %89 = load i32, i32* %11, align 4
  %90 = load i32*, i32** %8, align 8
  %91 = load i32, i32* %90, align 4
  %92 = add nsw i32 %91, %89
  store i32 %92, i32* %90, align 4
  br label %93

93:                                               ; preds = %72
  %94 = load i32, i32* %10, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %10, align 4
  br label %60

96:                                               ; preds = %60
  %97 = load i32, i32* %9, align 4
  %98 = icmp eq i32 %97, 1
  %99 = zext i1 %98 to i32
  ret i32 %99
}

declare dso_local i64 @hweight32(i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i64 @hweight8(i32) #1

declare dso_local i32 @hweight16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
