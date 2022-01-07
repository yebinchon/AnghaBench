; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/phy/extr_phy_n.c_wlc_phy_static_table_download_nphy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/phy/extr_phy_n.c_wlc_phy_static_table_download_nphy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcms_phy = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@mimophytbl_info_sz_rev16 = common dso_local global i64 0, align 8
@mimophytbl_info_rev16 = common dso_local global i32* null, align 8
@mimophytbl_info_sz_rev7 = common dso_local global i64 0, align 8
@mimophytbl_info_rev7 = common dso_local global i32* null, align 8
@mimophytbl_info_sz_rev3 = common dso_local global i64 0, align 8
@mimophytbl_info_rev3 = common dso_local global i32* null, align 8
@mimophytbl_info_sz_rev0 = common dso_local global i64 0, align 8
@mimophytbl_info_rev0 = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.brcms_phy*)* @wlc_phy_static_table_download_nphy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wlc_phy_static_table_download_nphy(%struct.brcms_phy* %0) #0 {
  %2 = alloca %struct.brcms_phy*, align 8
  %3 = alloca i64, align 8
  store %struct.brcms_phy* %0, %struct.brcms_phy** %2, align 8
  %4 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %5 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = call i64 @NREV_GE(i32 %7, i32 16)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %25

10:                                               ; preds = %1
  store i64 0, i64* %3, align 8
  br label %11

11:                                               ; preds = %21, %10
  %12 = load i64, i64* %3, align 8
  %13 = load i64, i64* @mimophytbl_info_sz_rev16, align 8
  %14 = icmp ult i64 %12, %13
  br i1 %14, label %15, label %24

15:                                               ; preds = %11
  %16 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %17 = load i32*, i32** @mimophytbl_info_rev16, align 8
  %18 = load i64, i64* %3, align 8
  %19 = getelementptr inbounds i32, i32* %17, i64 %18
  %20 = call i32 @wlc_phy_write_table_nphy(%struct.brcms_phy* %16, i32* %19)
  br label %21

21:                                               ; preds = %15
  %22 = load i64, i64* %3, align 8
  %23 = add i64 %22, 1
  store i64 %23, i64* %3, align 8
  br label %11

24:                                               ; preds = %11
  br label %86

25:                                               ; preds = %1
  %26 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %27 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i64 @NREV_GE(i32 %29, i32 7)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %47

32:                                               ; preds = %25
  store i64 0, i64* %3, align 8
  br label %33

33:                                               ; preds = %43, %32
  %34 = load i64, i64* %3, align 8
  %35 = load i64, i64* @mimophytbl_info_sz_rev7, align 8
  %36 = icmp ult i64 %34, %35
  br i1 %36, label %37, label %46

37:                                               ; preds = %33
  %38 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %39 = load i32*, i32** @mimophytbl_info_rev7, align 8
  %40 = load i64, i64* %3, align 8
  %41 = getelementptr inbounds i32, i32* %39, i64 %40
  %42 = call i32 @wlc_phy_write_table_nphy(%struct.brcms_phy* %38, i32* %41)
  br label %43

43:                                               ; preds = %37
  %44 = load i64, i64* %3, align 8
  %45 = add i64 %44, 1
  store i64 %45, i64* %3, align 8
  br label %33

46:                                               ; preds = %33
  br label %85

47:                                               ; preds = %25
  %48 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %49 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i64 @NREV_GE(i32 %51, i32 3)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %69

54:                                               ; preds = %47
  store i64 0, i64* %3, align 8
  br label %55

55:                                               ; preds = %65, %54
  %56 = load i64, i64* %3, align 8
  %57 = load i64, i64* @mimophytbl_info_sz_rev3, align 8
  %58 = icmp ult i64 %56, %57
  br i1 %58, label %59, label %68

59:                                               ; preds = %55
  %60 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %61 = load i32*, i32** @mimophytbl_info_rev3, align 8
  %62 = load i64, i64* %3, align 8
  %63 = getelementptr inbounds i32, i32* %61, i64 %62
  %64 = call i32 @wlc_phy_write_table_nphy(%struct.brcms_phy* %60, i32* %63)
  br label %65

65:                                               ; preds = %59
  %66 = load i64, i64* %3, align 8
  %67 = add i64 %66, 1
  store i64 %67, i64* %3, align 8
  br label %55

68:                                               ; preds = %55
  br label %84

69:                                               ; preds = %47
  store i64 0, i64* %3, align 8
  br label %70

70:                                               ; preds = %80, %69
  %71 = load i64, i64* %3, align 8
  %72 = load i64, i64* @mimophytbl_info_sz_rev0, align 8
  %73 = icmp ult i64 %71, %72
  br i1 %73, label %74, label %83

74:                                               ; preds = %70
  %75 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %76 = load i32*, i32** @mimophytbl_info_rev0, align 8
  %77 = load i64, i64* %3, align 8
  %78 = getelementptr inbounds i32, i32* %76, i64 %77
  %79 = call i32 @wlc_phy_write_table_nphy(%struct.brcms_phy* %75, i32* %78)
  br label %80

80:                                               ; preds = %74
  %81 = load i64, i64* %3, align 8
  %82 = add i64 %81, 1
  store i64 %82, i64* %3, align 8
  br label %70

83:                                               ; preds = %70
  br label %84

84:                                               ; preds = %83, %68
  br label %85

85:                                               ; preds = %84, %46
  br label %86

86:                                               ; preds = %85, %24
  ret void
}

declare dso_local i64 @NREV_GE(i32, i32) #1

declare dso_local i32 @wlc_phy_write_table_nphy(%struct.brcms_phy*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
