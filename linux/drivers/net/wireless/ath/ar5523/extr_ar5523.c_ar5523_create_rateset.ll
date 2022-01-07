; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ar5523/extr_ar5523.c_ar5523_create_rateset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ar5523/extr_ar5523.c_ar5523_create_rateset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ar5523 = type { %struct.TYPE_11__*, i32 }
%struct.TYPE_11__ = type { %struct.TYPE_10__, %struct.TYPE_7__* }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_7__ = type { %struct.ieee80211_supported_band** }
%struct.ieee80211_supported_band = type { i32, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32 }
%struct.ieee80211_bss_conf = type { i32, i32 }
%struct.ar5523_cmd_rateset = type { i32*, i32 }
%struct.ieee80211_sta = type { i32* }

@.str = private unnamed_addr constant [33 x i8] c"STA not found. Cannot set rates\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"sta rate_set = %08x\0A\00", align 1
@AR5523_MAX_NRATES = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"Considering rate %d : %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ar5523*, %struct.ieee80211_bss_conf*, %struct.ar5523_cmd_rateset*, i32)* @ar5523_create_rateset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ar5523_create_rateset(%struct.ar5523* %0, %struct.ieee80211_bss_conf* %1, %struct.ar5523_cmd_rateset* %2, i32 %3) #0 {
  %5 = alloca %struct.ar5523*, align 8
  %6 = alloca %struct.ieee80211_bss_conf*, align 8
  %7 = alloca %struct.ar5523_cmd_rateset*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ieee80211_supported_band*, align 8
  %10 = alloca %struct.ieee80211_sta*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.ar5523* %0, %struct.ar5523** %5, align 8
  store %struct.ieee80211_bss_conf* %1, %struct.ieee80211_bss_conf** %6, align 8
  store %struct.ar5523_cmd_rateset* %2, %struct.ar5523_cmd_rateset** %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %12, align 4
  %15 = load %struct.ar5523*, %struct.ar5523** %5, align 8
  %16 = getelementptr inbounds %struct.ar5523, %struct.ar5523* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %6, align 8
  %19 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call %struct.ieee80211_sta* @ieee80211_find_sta(i32 %17, i32 %20)
  store %struct.ieee80211_sta* %21, %struct.ieee80211_sta** %10, align 8
  %22 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %6, align 8
  %23 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %14, align 4
  %25 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %10, align 8
  %26 = icmp ne %struct.ieee80211_sta* %25, null
  br i1 %26, label %33, label %27

27:                                               ; preds = %4
  %28 = load %struct.ar5523*, %struct.ar5523** %5, align 8
  %29 = call i32 @ar5523_info(%struct.ar5523* %28, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %30 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %6, align 8
  %31 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %13, align 4
  br label %48

33:                                               ; preds = %4
  %34 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %10, align 8
  %35 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = load %struct.ar5523*, %struct.ar5523** %5, align 8
  %38 = getelementptr inbounds %struct.ar5523, %struct.ar5523* %37, i32 0, i32 0
  %39 = load %struct.TYPE_11__*, %struct.TYPE_11__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = getelementptr inbounds i32, i32* %36, i64 %45
  %47 = load i32, i32* %46, align 4
  store i32 %47, i32* %13, align 4
  br label %48

48:                                               ; preds = %33, %27
  %49 = load %struct.ar5523*, %struct.ar5523** %5, align 8
  %50 = load i32, i32* %13, align 4
  %51 = call i32 (%struct.ar5523*, i8*, i32, ...) @ar5523_dbg(%struct.ar5523* %49, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %50)
  %52 = load %struct.ar5523*, %struct.ar5523** %5, align 8
  %53 = getelementptr inbounds %struct.ar5523, %struct.ar5523* %52, i32 0, i32 0
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i32 0, i32 1
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 0
  %58 = load %struct.ieee80211_supported_band**, %struct.ieee80211_supported_band*** %57, align 8
  %59 = load %struct.ar5523*, %struct.ar5523** %5, align 8
  %60 = getelementptr inbounds %struct.ar5523, %struct.ar5523* %59, i32 0, i32 0
  %61 = load %struct.TYPE_11__*, %struct.TYPE_11__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 0
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = getelementptr inbounds %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %58, i64 %67
  %69 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %68, align 8
  store %struct.ieee80211_supported_band* %69, %struct.ieee80211_supported_band** %9, align 8
  store i32 0, i32* %11, align 4
  br label %70

70:                                               ; preds = %135, %48
  %71 = load i32, i32* %11, align 4
  %72 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %9, align 8
  %73 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = icmp slt i32 %71, %74
  br i1 %75, label %76, label %138

76:                                               ; preds = %70
  %77 = load i32, i32* %12, align 4
  %78 = load i32, i32* @AR5523_MAX_NRATES, align 4
  %79 = icmp sge i32 %77, %78
  %80 = zext i1 %79 to i32
  %81 = call i32 @BUG_ON(i32 %80)
  %82 = load %struct.ar5523*, %struct.ar5523** %5, align 8
  %83 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %9, align 8
  %84 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %83, i32 0, i32 1
  %85 = load %struct.TYPE_12__*, %struct.TYPE_12__** %84, align 8
  %86 = load i32, i32* %11, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %85, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* %13, align 4
  %92 = and i32 %91, 1
  %93 = call i32 (%struct.ar5523*, i8*, i32, ...) @ar5523_dbg(%struct.ar5523* %82, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %90, i32 %92)
  %94 = load i32, i32* %13, align 4
  %95 = and i32 %94, 1
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %130

97:                                               ; preds = %76
  %98 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %9, align 8
  %99 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %98, i32 0, i32 1
  %100 = load %struct.TYPE_12__*, %struct.TYPE_12__** %99, align 8
  %101 = load i32, i32* %11, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %100, i64 %102
  %104 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.ar5523_cmd_rateset*, %struct.ar5523_cmd_rateset** %7, align 8
  %107 = getelementptr inbounds %struct.ar5523_cmd_rateset, %struct.ar5523_cmd_rateset* %106, i32 0, i32 0
  %108 = load i32*, i32** %107, align 8
  %109 = load i32, i32* %12, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i32, i32* %108, i64 %110
  store i32 %105, i32* %111, align 4
  %112 = load i32, i32* %14, align 4
  %113 = and i32 %112, 1
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %127

115:                                              ; preds = %97
  %116 = load i32, i32* %8, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %127

118:                                              ; preds = %115
  %119 = load %struct.ar5523_cmd_rateset*, %struct.ar5523_cmd_rateset** %7, align 8
  %120 = getelementptr inbounds %struct.ar5523_cmd_rateset, %struct.ar5523_cmd_rateset* %119, i32 0, i32 0
  %121 = load i32*, i32** %120, align 8
  %122 = load i32, i32* %12, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i32, i32* %121, i64 %123
  %125 = load i32, i32* %124, align 4
  %126 = or i32 %125, 128
  store i32 %126, i32* %124, align 4
  br label %127

127:                                              ; preds = %118, %115, %97
  %128 = load i32, i32* %12, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %12, align 4
  br label %130

130:                                              ; preds = %127, %76
  %131 = load i32, i32* %13, align 4
  %132 = ashr i32 %131, 1
  store i32 %132, i32* %13, align 4
  %133 = load i32, i32* %14, align 4
  %134 = ashr i32 %133, 1
  store i32 %134, i32* %14, align 4
  br label %135

135:                                              ; preds = %130
  %136 = load i32, i32* %11, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %11, align 4
  br label %70

138:                                              ; preds = %70
  %139 = load i32, i32* %12, align 4
  %140 = load %struct.ar5523_cmd_rateset*, %struct.ar5523_cmd_rateset** %7, align 8
  %141 = getelementptr inbounds %struct.ar5523_cmd_rateset, %struct.ar5523_cmd_rateset* %140, i32 0, i32 1
  store i32 %139, i32* %141, align 8
  ret void
}

declare dso_local %struct.ieee80211_sta* @ieee80211_find_sta(i32, i32) #1

declare dso_local i32 @ar5523_info(%struct.ar5523*, i8*) #1

declare dso_local i32 @ar5523_dbg(%struct.ar5523*, i8*, i32, ...) #1

declare dso_local i32 @BUG_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
