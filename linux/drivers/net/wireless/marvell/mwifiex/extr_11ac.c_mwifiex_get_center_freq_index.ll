; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_11ac.c_mwifiex_get_center_freq_index.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_11ac.c_mwifiex_get_center_freq_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwifiex_private = type { i32 }

@BAND_AAC = common dso_local global i32 0, align 4
@IEEE80211_VHT_CHANWIDTH_80MHZ = common dso_local global i32 0, align 4
@IEEE80211_VHT_CHANWIDTH_160MHZ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mwifiex_get_center_freq_index(%struct.mwifiex_private* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.mwifiex_private*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.mwifiex_private* %0, %struct.mwifiex_private** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %10 = load i32, i32* %6, align 4
  %11 = load i32, i32* @BAND_AAC, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %66

14:                                               ; preds = %4
  %15 = load i32, i32* %7, align 4
  switch i32 %15, label %64 [
    i32 36, label %16
    i32 40, label %16
    i32 44, label %16
    i32 48, label %16
    i32 52, label %22
    i32 56, label %22
    i32 60, label %22
    i32 64, label %22
    i32 100, label %34
    i32 104, label %34
    i32 108, label %34
    i32 112, label %34
    i32 116, label %40
    i32 120, label %40
    i32 124, label %40
    i32 128, label %40
    i32 132, label %52
    i32 136, label %52
    i32 140, label %52
    i32 144, label %52
    i32 149, label %58
    i32 153, label %58
    i32 157, label %58
    i32 161, label %58
  ]

16:                                               ; preds = %14, %14, %14, %14
  %17 = load i32, i32* %8, align 4
  %18 = load i32, i32* @IEEE80211_VHT_CHANWIDTH_80MHZ, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %16
  store i32 42, i32* %9, align 4
  br label %21

21:                                               ; preds = %20, %16
  br label %65

22:                                               ; preds = %14, %14, %14, %14
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* @IEEE80211_VHT_CHANWIDTH_80MHZ, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %22
  store i32 58, i32* %9, align 4
  br label %33

27:                                               ; preds = %22
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* @IEEE80211_VHT_CHANWIDTH_160MHZ, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %27
  store i32 50, i32* %9, align 4
  br label %32

32:                                               ; preds = %31, %27
  br label %33

33:                                               ; preds = %32, %26
  br label %65

34:                                               ; preds = %14, %14, %14, %14
  %35 = load i32, i32* %8, align 4
  %36 = load i32, i32* @IEEE80211_VHT_CHANWIDTH_80MHZ, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %34
  store i32 106, i32* %9, align 4
  br label %39

39:                                               ; preds = %38, %34
  br label %65

40:                                               ; preds = %14, %14, %14, %14
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* @IEEE80211_VHT_CHANWIDTH_80MHZ, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %40
  store i32 122, i32* %9, align 4
  br label %51

45:                                               ; preds = %40
  %46 = load i32, i32* %8, align 4
  %47 = load i32, i32* @IEEE80211_VHT_CHANWIDTH_160MHZ, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %45
  store i32 114, i32* %9, align 4
  br label %50

50:                                               ; preds = %49, %45
  br label %51

51:                                               ; preds = %50, %44
  br label %65

52:                                               ; preds = %14, %14, %14, %14
  %53 = load i32, i32* %8, align 4
  %54 = load i32, i32* @IEEE80211_VHT_CHANWIDTH_80MHZ, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %52
  store i32 138, i32* %9, align 4
  br label %57

57:                                               ; preds = %56, %52
  br label %65

58:                                               ; preds = %14, %14, %14, %14
  %59 = load i32, i32* %8, align 4
  %60 = load i32, i32* @IEEE80211_VHT_CHANWIDTH_80MHZ, align 4
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %58
  store i32 155, i32* %9, align 4
  br label %63

63:                                               ; preds = %62, %58
  br label %65

64:                                               ; preds = %14
  store i32 42, i32* %9, align 4
  br label %65

65:                                               ; preds = %64, %63, %57, %51, %39, %33, %21
  br label %66

66:                                               ; preds = %65, %4
  %67 = load i32, i32* %9, align 4
  ret i32 %67
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
