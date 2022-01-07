; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wil6210/extr_cfg80211.c__wil_cfg80211_merge_extra_ies.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wil6210/extr_cfg80211.c__wil_cfg80211_merge_extra_ies.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@WLAN_EID_VENDOR_SPECIFIC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64*, i64, i64*, i64, i64**, i64*)* @_wil_cfg80211_merge_extra_ies to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_wil_cfg80211_merge_extra_ies(i64* %0, i64 %1, i64* %2, i64 %3, i64** %4, i64* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i64*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64**, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i64*, align 8
  %15 = alloca i64*, align 8
  %16 = alloca i64*, align 8
  %17 = alloca i64, align 8
  store i64* %0, i64** %8, align 8
  store i64 %1, i64* %9, align 8
  store i64* %2, i64** %10, align 8
  store i64 %3, i64* %11, align 8
  store i64** %4, i64*** %12, align 8
  store i64* %5, i64** %13, align 8
  %18 = load i64*, i64** %8, align 8
  %19 = icmp ne i64* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %6
  store i64 0, i64* %9, align 8
  br label %21

21:                                               ; preds = %20, %6
  %22 = load i64*, i64** %10, align 8
  %23 = icmp ne i64* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %21
  store i64 0, i64* %11, align 8
  br label %25

25:                                               ; preds = %24, %21
  %26 = load i64, i64* %9, align 8
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %25
  %29 = load i64, i64* %11, align 8
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %28
  %32 = load i64**, i64*** %12, align 8
  store i64* null, i64** %32, align 8
  %33 = load i64*, i64** %13, align 8
  store i64 0, i64* %33, align 8
  store i32 0, i32* %7, align 4
  br label %121

34:                                               ; preds = %28, %25
  %35 = load i64, i64* %9, align 8
  %36 = load i64, i64* %11, align 8
  %37 = add nsw i64 %35, %36
  %38 = load i32, i32* @GFP_KERNEL, align 4
  %39 = call i64* @kmalloc(i64 %37, i32 %38)
  store i64* %39, i64** %14, align 8
  %40 = load i64*, i64** %14, align 8
  %41 = icmp ne i64* %40, null
  br i1 %41, label %45, label %42

42:                                               ; preds = %34
  %43 = load i32, i32* @ENOMEM, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %7, align 4
  br label %121

45:                                               ; preds = %34
  %46 = load i64*, i64** %8, align 8
  %47 = icmp ne i64* %46, null
  br i1 %47, label %48, label %53

48:                                               ; preds = %45
  %49 = load i64*, i64** %14, align 8
  %50 = load i64*, i64** %8, align 8
  %51 = load i64, i64* %9, align 8
  %52 = call i32 @memcpy(i64* %49, i64* %50, i64 %51)
  br label %53

53:                                               ; preds = %48, %45
  %54 = load i64*, i64** %14, align 8
  %55 = load i64, i64* %9, align 8
  %56 = getelementptr inbounds i64, i64* %54, i64 %55
  store i64* %56, i64** %15, align 8
  %57 = load i64*, i64** %10, align 8
  store i64* %57, i64** %16, align 8
  br label %58

58:                                               ; preds = %107, %53
  %59 = load i64*, i64** %16, align 8
  %60 = icmp ne i64* %59, null
  br i1 %60, label %61, label %68

61:                                               ; preds = %58
  %62 = load i64*, i64** %16, align 8
  %63 = getelementptr inbounds i64, i64* %62, i64 1
  %64 = load i64*, i64** %10, align 8
  %65 = load i64, i64* %11, align 8
  %66 = getelementptr inbounds i64, i64* %64, i64 %65
  %67 = icmp ult i64* %63, %66
  br label %68

68:                                               ; preds = %61, %58
  %69 = phi i1 [ false, %58 ], [ %67, %61 ]
  br i1 %69, label %70, label %111

70:                                               ; preds = %68
  %71 = load i64*, i64** %16, align 8
  %72 = getelementptr inbounds i64, i64* %71, i64 1
  %73 = load i64, i64* %72, align 8
  %74 = add nsw i64 2, %73
  store i64 %74, i64* %17, align 8
  %75 = load i64*, i64** %16, align 8
  %76 = load i64, i64* %17, align 8
  %77 = getelementptr inbounds i64, i64* %75, i64 %76
  %78 = load i64*, i64** %10, align 8
  %79 = load i64, i64* %11, align 8
  %80 = getelementptr inbounds i64, i64* %78, i64 %79
  %81 = icmp ugt i64* %77, %80
  br i1 %81, label %82, label %83

82:                                               ; preds = %70
  br label %111

83:                                               ; preds = %70
  %84 = load i64*, i64** %16, align 8
  %85 = getelementptr inbounds i64, i64* %84, i64 0
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @WLAN_EID_VENDOR_SPECIFIC, align 8
  %88 = icmp eq i64 %86, %87
  br i1 %88, label %89, label %107

89:                                               ; preds = %83
  %90 = load i64*, i64** %8, align 8
  %91 = icmp ne i64* %90, null
  br i1 %91, label %92, label %99

92:                                               ; preds = %89
  %93 = load i64*, i64** %8, align 8
  %94 = load i64, i64* %9, align 8
  %95 = load i64*, i64** %16, align 8
  %96 = load i64, i64* %17, align 8
  %97 = call i32 @_wil_cfg80211_find_ie(i64* %93, i64 %94, i64* %95, i64 %96)
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %107, label %99

99:                                               ; preds = %92, %89
  %100 = load i64*, i64** %15, align 8
  %101 = load i64*, i64** %16, align 8
  %102 = load i64, i64* %17, align 8
  %103 = call i32 @memcpy(i64* %100, i64* %101, i64 %102)
  %104 = load i64, i64* %17, align 8
  %105 = load i64*, i64** %15, align 8
  %106 = getelementptr inbounds i64, i64* %105, i64 %104
  store i64* %106, i64** %15, align 8
  br label %107

107:                                              ; preds = %99, %92, %83
  %108 = load i64, i64* %17, align 8
  %109 = load i64*, i64** %16, align 8
  %110 = getelementptr inbounds i64, i64* %109, i64 %108
  store i64* %110, i64** %16, align 8
  br label %58

111:                                              ; preds = %82, %68
  %112 = load i64*, i64** %14, align 8
  %113 = load i64**, i64*** %12, align 8
  store i64* %112, i64** %113, align 8
  %114 = load i64*, i64** %15, align 8
  %115 = load i64*, i64** %14, align 8
  %116 = ptrtoint i64* %114 to i64
  %117 = ptrtoint i64* %115 to i64
  %118 = sub i64 %116, %117
  %119 = sdiv exact i64 %118, 8
  %120 = load i64*, i64** %13, align 8
  store i64 %119, i64* %120, align 8
  store i32 0, i32* %7, align 4
  br label %121

121:                                              ; preds = %111, %42, %31
  %122 = load i32, i32* %7, align 4
  ret i32 %122
}

declare dso_local i64* @kmalloc(i64, i32) #1

declare dso_local i32 @memcpy(i64*, i64*, i64) #1

declare dso_local i32 @_wil_cfg80211_find_ie(i64*, i64, i64*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
