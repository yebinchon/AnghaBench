; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_11ac.c_mwifiex_convert_mcsmap_to_maxrate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_11ac.c_mwifiex_convert_mcsmap_to_maxrate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwifiex_private = type { %struct.mwifiex_adapter* }
%struct.mwifiex_adapter = type { i32, i32 }

@BAND_AAC = common dso_local global i32 0, align 4
@IEEE80211_VHT_MCS_NOT_SUPPORTED = common dso_local global i32 0, align 4
@IEEE80211_VHT_MCS_SUPPORT_0_9 = common dso_local global i32 0, align 4
@max_rate_lgi_160MHZ = common dso_local global i64** null, align 8
@max_rate_lgi_80MHZ = common dso_local global i64** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.mwifiex_private*, i32, i64)* @mwifiex_convert_mcsmap_to_maxrate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @mwifiex_convert_mcsmap_to_maxrate(%struct.mwifiex_private* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.mwifiex_private*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.mwifiex_adapter*, align 8
  store %struct.mwifiex_private* %0, %struct.mwifiex_private** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  store i64 0, i64* %10, align 8
  store i32 0, i32* %11, align 4
  %13 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %14 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %13, i32 0, i32 0
  %15 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %14, align 8
  store %struct.mwifiex_adapter* %15, %struct.mwifiex_adapter** %12, align 8
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @BAND_AAC, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %3
  %21 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %12, align 8
  %22 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %11, align 4
  br label %28

24:                                               ; preds = %3
  %25 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %12, align 8
  %26 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %11, align 4
  br label %28

28:                                               ; preds = %24, %20
  store i32 1, i32* %8, align 4
  store i32 1, i32* %7, align 4
  br label %29

29:                                               ; preds = %42, %28
  %30 = load i32, i32* %7, align 4
  %31 = icmp sle i32 %30, 8
  br i1 %31, label %32, label %45

32:                                               ; preds = %29
  %33 = load i64, i64* %6, align 8
  %34 = load i32, i32* %7, align 4
  %35 = call i32 @GET_VHTNSSMCS(i64 %33, i32 %34)
  store i32 %35, i32* %9, align 4
  %36 = load i32, i32* %9, align 4
  %37 = load i32, i32* @IEEE80211_VHT_MCS_NOT_SUPPORTED, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %32
  %40 = load i32, i32* %7, align 4
  store i32 %40, i32* %8, align 4
  br label %41

41:                                               ; preds = %39, %32
  br label %42

42:                                               ; preds = %41
  %43 = load i32, i32* %7, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %7, align 4
  br label %29

45:                                               ; preds = %29
  %46 = load i64, i64* %6, align 8
  %47 = load i32, i32* %8, align 4
  %48 = call i32 @GET_VHTNSSMCS(i64 %46, i32 %47)
  store i32 %48, i32* %9, align 4
  %49 = load i32, i32* %9, align 4
  %50 = load i32, i32* @IEEE80211_VHT_MCS_NOT_SUPPORTED, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %54

52:                                               ; preds = %45
  %53 = load i32, i32* @IEEE80211_VHT_MCS_SUPPORT_0_9, align 4
  store i32 %53, i32* %9, align 4
  br label %54

54:                                               ; preds = %52, %45
  %55 = load i32, i32* %11, align 4
  %56 = call i64 @GET_VHTCAP_CHWDSET(i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %84

58:                                               ; preds = %54
  %59 = load i64**, i64*** @max_rate_lgi_160MHZ, align 8
  %60 = load i32, i32* %8, align 4
  %61 = sub nsw i32 %60, 1
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i64*, i64** %59, i64 %62
  %64 = load i64*, i64** %63, align 8
  %65 = load i32, i32* %9, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i64, i64* %64, i64 %66
  %68 = load i64, i64* %67, align 8
  store i64 %68, i64* %10, align 8
  %69 = load i64, i64* %10, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %83, label %71

71:                                               ; preds = %58
  %72 = load i64**, i64*** @max_rate_lgi_160MHZ, align 8
  %73 = load i32, i32* %8, align 4
  %74 = sub nsw i32 %73, 1
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i64*, i64** %72, i64 %75
  %77 = load i64*, i64** %76, align 8
  %78 = load i32, i32* %9, align 4
  %79 = sub nsw i32 %78, 1
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i64, i64* %77, i64 %80
  %82 = load i64, i64* %81, align 8
  store i64 %82, i64* %10, align 8
  br label %83

83:                                               ; preds = %71, %58
  br label %110

84:                                               ; preds = %54
  %85 = load i64**, i64*** @max_rate_lgi_80MHZ, align 8
  %86 = load i32, i32* %8, align 4
  %87 = sub nsw i32 %86, 1
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i64*, i64** %85, i64 %88
  %90 = load i64*, i64** %89, align 8
  %91 = load i32, i32* %9, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i64, i64* %90, i64 %92
  %94 = load i64, i64* %93, align 8
  store i64 %94, i64* %10, align 8
  %95 = load i64, i64* %10, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %109, label %97

97:                                               ; preds = %84
  %98 = load i64**, i64*** @max_rate_lgi_80MHZ, align 8
  %99 = load i32, i32* %8, align 4
  %100 = sub nsw i32 %99, 1
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i64*, i64** %98, i64 %101
  %103 = load i64*, i64** %102, align 8
  %104 = load i32, i32* %9, align 4
  %105 = sub nsw i32 %104, 1
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i64, i64* %103, i64 %106
  %108 = load i64, i64* %107, align 8
  store i64 %108, i64* %10, align 8
  br label %109

109:                                              ; preds = %97, %84
  br label %110

110:                                              ; preds = %109, %83
  %111 = load i64, i64* %10, align 8
  ret i64 %111
}

declare dso_local i32 @GET_VHTNSSMCS(i64, i32) #1

declare dso_local i64 @GET_VHTCAP_CHWDSET(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
