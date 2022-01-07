; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/phy/extr_phy_n.c_wlc_phy_adjust_min_noisevar_nphy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/phy/extr_phy_n.c_wlc_phy_adjust_min_noisevar_nphy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcms_phy = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32*, i32* }

@NPHY_NOISEVAR_TBLLEN40 = common dso_local global i32 0, align 4
@NPHY_NOISEVAR_TBLLEN20 = common dso_local global i32 0, align 4
@NPHY_TBL_ID_NOISEVAR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.brcms_phy*, i32, i32*, i32*)* @wlc_phy_adjust_min_noisevar_nphy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wlc_phy_adjust_min_noisevar_nphy(%struct.brcms_phy* %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca %struct.brcms_phy*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.brcms_phy* %0, %struct.brcms_phy** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %13 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %14 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 8
  %16 = call i64 @CHSPEC_IS40(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %4
  %19 = load i32, i32* @NPHY_NOISEVAR_TBLLEN40, align 4
  br label %22

20:                                               ; preds = %4
  %21 = load i32, i32* @NPHY_NOISEVAR_TBLLEN20, align 4
  br label %22

22:                                               ; preds = %20, %18
  %23 = phi i32 [ %19, %18 ], [ %21, %20 ]
  store i32 %23, i32* %12, align 4
  %24 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %25 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %79

28:                                               ; preds = %22
  store i32 0, i32* %9, align 4
  br label %29

29:                                               ; preds = %70, %28
  %30 = load i32, i32* %9, align 4
  %31 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %32 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp slt i32 %30, %34
  br i1 %35, label %36, label %73

36:                                               ; preds = %29
  %37 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %38 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 1
  %40 = load i32*, i32** %39, align 8
  %41 = load i32, i32* %9, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* %11, align 4
  %45 = load i32, i32* %11, align 4
  %46 = icmp sge i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %36
  %48 = load i32, i32* %11, align 4
  %49 = mul nsw i32 %48, 2
  %50 = add nsw i32 %49, 1
  br label %57

51:                                               ; preds = %36
  %52 = load i32, i32* %12, align 4
  %53 = load i32, i32* %11, align 4
  %54 = mul nsw i32 %53, 2
  %55 = add nsw i32 %52, %54
  %56 = add nsw i32 %55, 1
  br label %57

57:                                               ; preds = %51, %47
  %58 = phi i32 [ %50, %47 ], [ %56, %51 ]
  store i32 %58, i32* %10, align 4
  %59 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %60 = load i32, i32* @NPHY_TBL_ID_NOISEVAR, align 4
  %61 = load i32, i32* %10, align 4
  %62 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %63 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 2
  %65 = load i32*, i32** %64, align 8
  %66 = load i32, i32* %9, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %65, i64 %67
  %69 = call i32 @wlc_phy_table_write_nphy(%struct.brcms_phy* %59, i32 %60, i32 1, i32 %61, i32 32, i32* %68)
  br label %70

70:                                               ; preds = %57
  %71 = load i32, i32* %9, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %9, align 4
  br label %29

73:                                               ; preds = %29
  %74 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %75 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  store i32 0, i32* %76, align 8
  %77 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %78 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %77, i32 0, i32 0
  store i32 0, i32* %78, align 8
  br label %79

79:                                               ; preds = %73, %22
  %80 = load i32*, i32** %8, align 8
  %81 = icmp ne i32* %80, null
  br i1 %81, label %82, label %151

82:                                               ; preds = %79
  %83 = load i32*, i32** %7, align 8
  %84 = icmp ne i32* %83, null
  br i1 %84, label %85, label %151

85:                                               ; preds = %82
  %86 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %87 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 0
  store i32 0, i32* %88, align 8
  store i32 0, i32* %9, align 4
  br label %89

89:                                               ; preds = %145, %85
  %90 = load i32, i32* %9, align 4
  %91 = load i32, i32* %6, align 4
  %92 = icmp slt i32 %90, %91
  br i1 %92, label %93, label %148

93:                                               ; preds = %89
  %94 = load i32*, i32** %7, align 8
  %95 = load i32, i32* %9, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i32, i32* %94, i64 %96
  %98 = load i32, i32* %97, align 4
  store i32 %98, i32* %11, align 4
  %99 = load i32, i32* %11, align 4
  %100 = icmp sge i32 %99, 0
  br i1 %100, label %101, label %105

101:                                              ; preds = %93
  %102 = load i32, i32* %11, align 4
  %103 = mul nsw i32 %102, 2
  %104 = add nsw i32 %103, 1
  br label %111

105:                                              ; preds = %93
  %106 = load i32, i32* %12, align 4
  %107 = load i32, i32* %11, align 4
  %108 = mul nsw i32 %107, 2
  %109 = add nsw i32 %106, %108
  %110 = add nsw i32 %109, 1
  br label %111

111:                                              ; preds = %105, %101
  %112 = phi i32 [ %104, %101 ], [ %110, %105 ]
  store i32 %112, i32* %10, align 4
  %113 = load i32, i32* %11, align 4
  %114 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %115 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %114, i32 0, i32 1
  %116 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %115, i32 0, i32 1
  %117 = load i32*, i32** %116, align 8
  %118 = load i32, i32* %9, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i32, i32* %117, i64 %119
  store i32 %113, i32* %120, align 4
  %121 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %122 = load i32, i32* @NPHY_TBL_ID_NOISEVAR, align 4
  %123 = load i32, i32* %10, align 4
  %124 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %125 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %124, i32 0, i32 1
  %126 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %125, i32 0, i32 2
  %127 = load i32*, i32** %126, align 8
  %128 = load i32, i32* %9, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i32, i32* %127, i64 %129
  %131 = call i32 @wlc_phy_table_read_nphy(%struct.brcms_phy* %121, i32 %122, i32 1, i32 %123, i32 32, i32* %130)
  %132 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %133 = load i32, i32* @NPHY_TBL_ID_NOISEVAR, align 4
  %134 = load i32, i32* %10, align 4
  %135 = load i32*, i32** %8, align 8
  %136 = load i32, i32* %9, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i32, i32* %135, i64 %137
  %139 = call i32 @wlc_phy_table_write_nphy(%struct.brcms_phy* %132, i32 %133, i32 1, i32 %134, i32 32, i32* %138)
  %140 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %141 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %140, i32 0, i32 1
  %142 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %142, align 8
  br label %145

145:                                              ; preds = %111
  %146 = load i32, i32* %9, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %9, align 4
  br label %89

148:                                              ; preds = %89
  %149 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %150 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %149, i32 0, i32 0
  store i32 1, i32* %150, align 8
  br label %151

151:                                              ; preds = %148, %82, %79
  ret void
}

declare dso_local i64 @CHSPEC_IS40(i32) #1

declare dso_local i32 @wlc_phy_table_write_nphy(%struct.brcms_phy*, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @wlc_phy_table_read_nphy(%struct.brcms_phy*, i32, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
