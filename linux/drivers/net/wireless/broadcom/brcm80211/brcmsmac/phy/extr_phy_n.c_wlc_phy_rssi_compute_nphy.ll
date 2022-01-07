; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/phy/extr_phy_n.c_wlc_phy_rssi_compute_nphy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/phy/extr_phy_n.c_wlc_phy_rssi_compute_nphy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcms_phy = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.d11rxhdr = type { i32, i32, i32 }

@PRXS1_nphy_PWR0_MASK = common dso_local global i32 0, align 4
@PRXS1_nphy_PWR1_MASK = common dso_local global i32 0, align 4
@RSSI_ANT_MERGE_MAX = common dso_local global i64 0, align 8
@RSSI_ANT_MERGE_MIN = common dso_local global i64 0, align 8
@RSSI_ANT_MERGE_AVG = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wlc_phy_rssi_compute_nphy(%struct.brcms_phy* %0, %struct.d11rxhdr* %1) #0 {
  %3 = alloca %struct.brcms_phy*, align 8
  %4 = alloca %struct.d11rxhdr*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.brcms_phy* %0, %struct.brcms_phy** %3, align 8
  store %struct.d11rxhdr* %1, %struct.d11rxhdr** %4, align 8
  store i32 0, i32* %5, align 4
  %10 = load %struct.d11rxhdr*, %struct.d11rxhdr** %4, align 8
  %11 = getelementptr inbounds %struct.d11rxhdr, %struct.d11rxhdr* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @PRXS1_nphy_PWR0_MASK, align 4
  %14 = and i32 %12, %13
  store i32 %14, i32* %6, align 4
  %15 = load %struct.d11rxhdr*, %struct.d11rxhdr** %4, align 8
  %16 = getelementptr inbounds %struct.d11rxhdr, %struct.d11rxhdr* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @PRXS1_nphy_PWR1_MASK, align 4
  %19 = and i32 %17, %18
  %20 = ashr i32 %19, 8
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp sgt i32 %21, 127
  br i1 %22, label %23, label %26

23:                                               ; preds = %2
  %24 = load i32, i32* %6, align 4
  %25 = sub nsw i32 %24, 256
  store i32 %25, i32* %6, align 4
  br label %26

26:                                               ; preds = %23, %2
  %27 = load i32, i32* %7, align 4
  %28 = icmp sgt i32 %27, 127
  br i1 %28, label %29, label %32

29:                                               ; preds = %26
  %30 = load i32, i32* %7, align 4
  %31 = sub nsw i32 %30, 256
  store i32 %31, i32* %7, align 4
  br label %32

32:                                               ; preds = %29, %26
  %33 = load %struct.d11rxhdr*, %struct.d11rxhdr** %4, align 8
  %34 = getelementptr inbounds %struct.d11rxhdr, %struct.d11rxhdr* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = and i32 %35, 255
  store i32 %36, i32* %8, align 4
  %37 = load %struct.d11rxhdr*, %struct.d11rxhdr** %4, align 8
  %38 = getelementptr inbounds %struct.d11rxhdr, %struct.d11rxhdr* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = and i32 %39, 255
  store i32 %40, i32* %9, align 4
  %41 = load i32, i32* %9, align 4
  %42 = icmp sgt i32 %41, 127
  br i1 %42, label %43, label %46

43:                                               ; preds = %32
  %44 = load i32, i32* %9, align 4
  %45 = sub nsw i32 %44, 256
  store i32 %45, i32* %9, align 4
  br label %46

46:                                               ; preds = %43, %32
  %47 = load i32, i32* %6, align 4
  %48 = icmp eq i32 %47, 16
  br i1 %48, label %52, label %49

49:                                               ; preds = %46
  %50 = load i32, i32* %6, align 4
  %51 = icmp eq i32 %50, 32
  br i1 %51, label %52, label %55

52:                                               ; preds = %49, %46
  %53 = load i32, i32* %7, align 4
  store i32 %53, i32* %6, align 4
  %54 = load i32, i32* %9, align 4
  store i32 %54, i32* %7, align 4
  br label %55

55:                                               ; preds = %52, %49
  %56 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %57 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %56, i32 0, i32 0
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @RSSI_ANT_MERGE_MAX, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %73

63:                                               ; preds = %55
  %64 = load i32, i32* %6, align 4
  %65 = load i32, i32* %7, align 4
  %66 = icmp sgt i32 %64, %65
  br i1 %66, label %67, label %69

67:                                               ; preds = %63
  %68 = load i32, i32* %6, align 4
  br label %71

69:                                               ; preds = %63
  %70 = load i32, i32* %7, align 4
  br label %71

71:                                               ; preds = %69, %67
  %72 = phi i32 [ %68, %67 ], [ %70, %69 ]
  store i32 %72, i32* %5, align 4
  br label %106

73:                                               ; preds = %55
  %74 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %75 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %74, i32 0, i32 0
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @RSSI_ANT_MERGE_MIN, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %81, label %91

81:                                               ; preds = %73
  %82 = load i32, i32* %6, align 4
  %83 = load i32, i32* %7, align 4
  %84 = icmp slt i32 %82, %83
  br i1 %84, label %85, label %87

85:                                               ; preds = %81
  %86 = load i32, i32* %6, align 4
  br label %89

87:                                               ; preds = %81
  %88 = load i32, i32* %7, align 4
  br label %89

89:                                               ; preds = %87, %85
  %90 = phi i32 [ %86, %85 ], [ %88, %87 ]
  store i32 %90, i32* %5, align 4
  br label %105

91:                                               ; preds = %73
  %92 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %93 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %92, i32 0, i32 0
  %94 = load %struct.TYPE_2__*, %struct.TYPE_2__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* @RSSI_ANT_MERGE_AVG, align 8
  %98 = icmp eq i64 %96, %97
  br i1 %98, label %99, label %104

99:                                               ; preds = %91
  %100 = load i32, i32* %6, align 4
  %101 = load i32, i32* %7, align 4
  %102 = add nsw i32 %100, %101
  %103 = ashr i32 %102, 1
  store i32 %103, i32* %5, align 4
  br label %104

104:                                              ; preds = %99, %91
  br label %105

105:                                              ; preds = %104, %89
  br label %106

106:                                              ; preds = %105, %71
  %107 = load i32, i32* %5, align 4
  ret i32 %107
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
