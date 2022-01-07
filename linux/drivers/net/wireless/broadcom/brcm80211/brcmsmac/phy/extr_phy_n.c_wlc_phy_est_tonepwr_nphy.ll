; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/phy/extr_phy_n.c_wlc_phy_est_tonepwr_nphy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/phy/extr_phy_n.c_wlc_phy_est_tonepwr_nphy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcms_phy = type { i32 }

@NPHY_RSSI_SEL_TSSI_5G = common dso_local global i64 0, align 8
@NPHY_RSSI_SEL_TSSI_2G = common dso_local global i64 0, align 8
@NPHY_TBL_ID_CORE1TXPWRCTL = common dso_local global i32 0, align 4
@NPHY_TBL_ID_CORE2TXPWRCTL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wlc_phy_est_tonepwr_nphy(%struct.brcms_phy* %0, i32* %1, i64 %2) #0 {
  %4 = alloca %struct.brcms_phy*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [2 x i32], align 4
  %10 = alloca [2 x i32], align 4
  %11 = alloca [4 x i32], align 16
  %12 = alloca [2 x i32], align 4
  %13 = alloca i64, align 8
  store %struct.brcms_phy* %0, %struct.brcms_phy** %4, align 8
  store i32* %1, i32** %5, align 8
  store i64 %2, i64* %6, align 8
  %14 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %15 = call i32 @read_phy_reg(%struct.brcms_phy* %14, i32 489)
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = and i32 %16, 63
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %8, align 4
  %19 = icmp sle i32 %18, 31
  br i1 %19, label %20, label %22

20:                                               ; preds = %3
  %21 = load i32, i32* %8, align 4
  br label %25

22:                                               ; preds = %3
  %23 = load i32, i32* %8, align 4
  %24 = sub nsw i32 %23, 64
  br label %25

25:                                               ; preds = %22, %20
  %26 = phi i32 [ %21, %20 ], [ %24, %22 ]
  %27 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  store i32 %26, i32* %27, align 4
  %28 = load i32, i32* %7, align 4
  %29 = ashr i32 %28, 8
  %30 = and i32 %29, 63
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* %8, align 4
  %32 = icmp sle i32 %31, 31
  br i1 %32, label %33, label %35

33:                                               ; preds = %25
  %34 = load i32, i32* %8, align 4
  br label %38

35:                                               ; preds = %25
  %36 = load i32, i32* %8, align 4
  %37 = sub nsw i32 %36, 64
  br label %38

38:                                               ; preds = %35, %33
  %39 = phi i32 [ %34, %33 ], [ %37, %35 ]
  %40 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 1
  store i32 %39, i32* %40, align 4
  %41 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %42 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i64 @CHSPEC_IS5G(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %38
  %47 = load i64, i64* @NPHY_RSSI_SEL_TSSI_5G, align 8
  br label %50

48:                                               ; preds = %38
  %49 = load i64, i64* @NPHY_RSSI_SEL_TSSI_2G, align 8
  br label %50

50:                                               ; preds = %48, %46
  %51 = phi i64 [ %47, %46 ], [ %49, %48 ]
  store i64 %51, i64* %13, align 8
  %52 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %53 = load i64, i64* %13, align 8
  %54 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 0
  %55 = load i64, i64* %6, align 8
  %56 = call i32 @wlc_phy_poll_rssi_nphy(%struct.brcms_phy* %52, i64 %53, i32* %54, i64 %55)
  %57 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 0
  %58 = load i32, i32* %57, align 16
  %59 = load i64, i64* %6, align 8
  %60 = trunc i64 %59 to i32
  %61 = sdiv i32 %58, %60
  %62 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 0
  store i32 %61, i32* %62, align 4
  %63 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 2
  %64 = load i32, i32* %63, align 8
  %65 = load i64, i64* %6, align 8
  %66 = trunc i64 %65 to i32
  %67 = sdiv i32 %64, %66
  %68 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 1
  store i32 %67, i32* %68, align 4
  %69 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  %70 = load i32, i32* %69, align 4
  %71 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 0
  %72 = load i32, i32* %71, align 4
  %73 = sub nsw i32 %70, %72
  %74 = add nsw i32 %73, 64
  %75 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  store i32 %74, i32* %75, align 4
  %76 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 1
  %77 = load i32, i32* %76, align 4
  %78 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 1
  %79 = load i32, i32* %78, align 4
  %80 = sub nsw i32 %77, %79
  %81 = add nsw i32 %80, 64
  %82 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 1
  store i32 %81, i32* %82, align 4
  %83 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  %84 = load i32, i32* %83, align 4
  %85 = icmp slt i32 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %50
  %87 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  store i32 0, i32* %87, align 4
  br label %95

88:                                               ; preds = %50
  %89 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  %90 = load i32, i32* %89, align 4
  %91 = icmp sgt i32 %90, 63
  br i1 %91, label %92, label %94

92:                                               ; preds = %88
  %93 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  store i32 63, i32* %93, align 4
  br label %94

94:                                               ; preds = %92, %88
  br label %95

95:                                               ; preds = %94, %86
  %96 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 1
  %97 = load i32, i32* %96, align 4
  %98 = icmp slt i32 %97, 0
  br i1 %98, label %99, label %101

99:                                               ; preds = %95
  %100 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 1
  store i32 0, i32* %100, align 4
  br label %108

101:                                              ; preds = %95
  %102 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 1
  %103 = load i32, i32* %102, align 4
  %104 = icmp sgt i32 %103, 63
  br i1 %104, label %105, label %107

105:                                              ; preds = %101
  %106 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 1
  store i32 63, i32* %106, align 4
  br label %107

107:                                              ; preds = %105, %101
  br label %108

108:                                              ; preds = %107, %99
  %109 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %110 = load i32, i32* @NPHY_TBL_ID_CORE1TXPWRCTL, align 4
  %111 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  %112 = load i32, i32* %111, align 4
  %113 = load i32*, i32** %5, align 8
  %114 = getelementptr inbounds i32, i32* %113, i64 0
  %115 = call i32 @wlc_phy_table_read_nphy(%struct.brcms_phy* %109, i32 %110, i32 1, i32 %112, i32 32, i32* %114)
  %116 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %117 = load i32, i32* @NPHY_TBL_ID_CORE2TXPWRCTL, align 4
  %118 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 1
  %119 = load i32, i32* %118, align 4
  %120 = load i32*, i32** %5, align 8
  %121 = getelementptr inbounds i32, i32* %120, i64 1
  %122 = call i32 @wlc_phy_table_read_nphy(%struct.brcms_phy* %116, i32 %117, i32 1, i32 %119, i32 32, i32* %121)
  ret void
}

declare dso_local i32 @read_phy_reg(%struct.brcms_phy*, i32) #1

declare dso_local i64 @CHSPEC_IS5G(i32) #1

declare dso_local i32 @wlc_phy_poll_rssi_nphy(%struct.brcms_phy*, i64, i32*, i64) #1

declare dso_local i32 @wlc_phy_table_read_nphy(%struct.brcms_phy*, i32, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
