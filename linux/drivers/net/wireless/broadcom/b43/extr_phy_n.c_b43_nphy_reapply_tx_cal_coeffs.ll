; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_phy_n.c_b43_nphy_reapply_tx_cal_coeffs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_phy_n.c_b43_nphy_reapply_tx_cal_coeffs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_wldev = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_8__*, %struct.b43_phy_n* }
%struct.TYPE_8__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64 }
%struct.b43_phy_n = type { i64*, %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.b43_wldev*)* @b43_nphy_reapply_tx_cal_coeffs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @b43_nphy_reapply_tx_cal_coeffs(%struct.b43_wldev* %0) #0 {
  %2 = alloca %struct.b43_wldev*, align 8
  %3 = alloca %struct.b43_phy_n*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [7 x i64], align 16
  %6 = alloca i32, align 4
  store %struct.b43_wldev* %0, %struct.b43_wldev** %2, align 8
  %7 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %8 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 1
  %10 = load %struct.b43_phy_n*, %struct.b43_phy_n** %9, align 8
  store %struct.b43_phy_n* %10, %struct.b43_phy_n** %3, align 8
  store i32 1, i32* %6, align 4
  %11 = load %struct.b43_phy_n*, %struct.b43_phy_n** %3, align 8
  %12 = getelementptr inbounds %struct.b43_phy_n, %struct.b43_phy_n* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 8
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %40

15:                                               ; preds = %1
  %16 = load %struct.b43_phy_n*, %struct.b43_phy_n** %3, align 8
  %17 = getelementptr inbounds %struct.b43_phy_n, %struct.b43_phy_n* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %21 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %19, %27
  br i1 %28, label %40, label %29

29:                                               ; preds = %15
  %30 = load %struct.b43_phy_n*, %struct.b43_phy_n** %3, align 8
  %31 = getelementptr inbounds %struct.b43_phy_n, %struct.b43_phy_n* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %35 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %36, align 8
  %38 = call i64 @cfg80211_get_chandef_type(%struct.TYPE_8__* %37)
  %39 = icmp ne i64 %33, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %29, %15, %1
  br label %106

41:                                               ; preds = %29
  %42 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %43 = call i32 @B43_NTAB16(i32 15, i32 80)
  %44 = getelementptr inbounds [7 x i64], [7 x i64]* %5, i64 0, i64 0
  %45 = call i32 @b43_ntab_read_bulk(%struct.b43_wldev* %42, i32 %43, i32 7, i64* %44)
  store i32 0, i32* %4, align 4
  br label %46

46:                                               ; preds = %64, %41
  %47 = load i32, i32* %4, align 4
  %48 = icmp slt i32 %47, 4
  br i1 %48, label %49, label %67

49:                                               ; preds = %46
  %50 = load i32, i32* %4, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds [7 x i64], [7 x i64]* %5, i64 0, i64 %51
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.b43_phy_n*, %struct.b43_phy_n** %3, align 8
  %55 = getelementptr inbounds %struct.b43_phy_n, %struct.b43_phy_n* %54, i32 0, i32 0
  %56 = load i64*, i64** %55, align 8
  %57 = load i32, i32* %4, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i64, i64* %56, i64 %58
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %53, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %49
  store i32 0, i32* %6, align 4
  br label %67

63:                                               ; preds = %49
  br label %64

64:                                               ; preds = %63
  %65 = load i32, i32* %4, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %4, align 4
  br label %46

67:                                               ; preds = %62, %46
  %68 = load i32, i32* %6, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %106, label %70

70:                                               ; preds = %67
  %71 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %72 = call i32 @B43_NTAB16(i32 15, i32 80)
  %73 = load %struct.b43_phy_n*, %struct.b43_phy_n** %3, align 8
  %74 = getelementptr inbounds %struct.b43_phy_n, %struct.b43_phy_n* %73, i32 0, i32 0
  %75 = load i64*, i64** %74, align 8
  %76 = call i32 @b43_ntab_write_bulk(%struct.b43_wldev* %71, i32 %72, i32 4, i64* %75)
  store i32 0, i32* %4, align 4
  br label %77

77:                                               ; preds = %84, %70
  %78 = load i32, i32* %4, align 4
  %79 = icmp slt i32 %78, 4
  br i1 %79, label %80, label %87

80:                                               ; preds = %77
  %81 = load i32, i32* %4, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds [7 x i64], [7 x i64]* %5, i64 0, i64 %82
  store i64 0, i64* %83, align 8
  br label %84

84:                                               ; preds = %80
  %85 = load i32, i32* %4, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %4, align 4
  br label %77

87:                                               ; preds = %77
  %88 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %89 = call i32 @B43_NTAB16(i32 15, i32 88)
  %90 = getelementptr inbounds [7 x i64], [7 x i64]* %5, i64 0, i64 0
  %91 = call i32 @b43_ntab_write_bulk(%struct.b43_wldev* %88, i32 %89, i32 4, i64* %90)
  %92 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %93 = call i32 @B43_NTAB16(i32 15, i32 85)
  %94 = load %struct.b43_phy_n*, %struct.b43_phy_n** %3, align 8
  %95 = getelementptr inbounds %struct.b43_phy_n, %struct.b43_phy_n* %94, i32 0, i32 0
  %96 = load i64*, i64** %95, align 8
  %97 = getelementptr inbounds i64, i64* %96, i64 5
  %98 = call i32 @b43_ntab_write_bulk(%struct.b43_wldev* %92, i32 %93, i32 2, i64* %97)
  %99 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %100 = call i32 @B43_NTAB16(i32 15, i32 93)
  %101 = load %struct.b43_phy_n*, %struct.b43_phy_n** %3, align 8
  %102 = getelementptr inbounds %struct.b43_phy_n, %struct.b43_phy_n* %101, i32 0, i32 0
  %103 = load i64*, i64** %102, align 8
  %104 = getelementptr inbounds i64, i64* %103, i64 5
  %105 = call i32 @b43_ntab_write_bulk(%struct.b43_wldev* %99, i32 %100, i32 2, i64* %104)
  br label %106

106:                                              ; preds = %40, %87, %67
  ret void
}

declare dso_local i64 @cfg80211_get_chandef_type(%struct.TYPE_8__*) #1

declare dso_local i32 @b43_ntab_read_bulk(%struct.b43_wldev*, i32, i32, i64*) #1

declare dso_local i32 @B43_NTAB16(i32, i32) #1

declare dso_local i32 @b43_ntab_write_bulk(%struct.b43_wldev*, i32, i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
