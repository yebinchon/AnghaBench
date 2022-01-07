; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/phy/extr_phy_lcn.c_wlc_lcnphy_agc_temp_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/phy/extr_phy_lcn.c_wlc_lcnphy_agc_temp_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcms_phy = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.brcms_phy_lcnphy* }
%struct.brcms_phy_lcnphy = type { i32, i32, i32, i32, i32, i32, i32, i32, i64 }
%struct.phytbl_info = type { i32*, i32, i32, i32, i32 }

@LCNPHY_TBL_ID_GAIN_IDX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.brcms_phy*)* @wlc_lcnphy_agc_temp_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wlc_lcnphy_agc_temp_init(%struct.brcms_phy* %0) #0 {
  %2 = alloca %struct.brcms_phy*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.phytbl_info, align 8
  %5 = alloca [2 x i32], align 4
  %6 = alloca %struct.brcms_phy_lcnphy*, align 8
  store %struct.brcms_phy* %0, %struct.brcms_phy** %2, align 8
  %7 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %8 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load %struct.brcms_phy_lcnphy*, %struct.brcms_phy_lcnphy** %9, align 8
  store %struct.brcms_phy_lcnphy* %10, %struct.brcms_phy_lcnphy** %6, align 8
  %11 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %12 = call i32 @read_phy_reg(%struct.brcms_phy* %11, i32 1247)
  store i32 %12, i32* %3, align 4
  %13 = load i32, i32* %3, align 4
  %14 = and i32 %13, 255
  %15 = ashr i32 %14, 0
  %16 = load %struct.brcms_phy_lcnphy*, %struct.brcms_phy_lcnphy** %6, align 8
  %17 = getelementptr inbounds %struct.brcms_phy_lcnphy, %struct.brcms_phy_lcnphy* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 8
  %18 = load %struct.brcms_phy_lcnphy*, %struct.brcms_phy_lcnphy** %6, align 8
  %19 = getelementptr inbounds %struct.brcms_phy_lcnphy, %struct.brcms_phy_lcnphy* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp sgt i32 %20, 127
  br i1 %21, label %22, label %27

22:                                               ; preds = %1
  %23 = load %struct.brcms_phy_lcnphy*, %struct.brcms_phy_lcnphy** %6, align 8
  %24 = getelementptr inbounds %struct.brcms_phy_lcnphy, %struct.brcms_phy_lcnphy* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = sub nsw i32 %25, 256
  store i32 %26, i32* %24, align 8
  br label %27

27:                                               ; preds = %22, %1
  %28 = load i32, i32* %3, align 4
  %29 = and i32 %28, 65280
  %30 = ashr i32 %29, 8
  %31 = load %struct.brcms_phy_lcnphy*, %struct.brcms_phy_lcnphy** %6, align 8
  %32 = getelementptr inbounds %struct.brcms_phy_lcnphy, %struct.brcms_phy_lcnphy* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 4
  %33 = load %struct.brcms_phy_lcnphy*, %struct.brcms_phy_lcnphy** %6, align 8
  %34 = getelementptr inbounds %struct.brcms_phy_lcnphy, %struct.brcms_phy_lcnphy* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = icmp sgt i32 %35, 127
  br i1 %36, label %37, label %42

37:                                               ; preds = %27
  %38 = load %struct.brcms_phy_lcnphy*, %struct.brcms_phy_lcnphy** %6, align 8
  %39 = getelementptr inbounds %struct.brcms_phy_lcnphy, %struct.brcms_phy_lcnphy* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = sub nsw i32 %40, 256
  store i32 %41, i32* %39, align 4
  br label %42

42:                                               ; preds = %37, %27
  %43 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  %44 = getelementptr inbounds %struct.phytbl_info, %struct.phytbl_info* %4, i32 0, i32 0
  store i32* %43, i32** %44, align 8
  %45 = getelementptr inbounds %struct.phytbl_info, %struct.phytbl_info* %4, i32 0, i32 1
  store i32 2, i32* %45, align 8
  %46 = getelementptr inbounds %struct.phytbl_info, %struct.phytbl_info* %4, i32 0, i32 2
  store i32 17, i32* %46, align 4
  %47 = getelementptr inbounds %struct.phytbl_info, %struct.phytbl_info* %4, i32 0, i32 3
  store i32 59, i32* %47, align 8
  %48 = getelementptr inbounds %struct.phytbl_info, %struct.phytbl_info* %4, i32 0, i32 4
  store i32 32, i32* %48, align 4
  %49 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %50 = call i32 @wlc_lcnphy_read_table(%struct.brcms_phy* %49, %struct.phytbl_info* %4)
  %51 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  %52 = load i32, i32* %51, align 4
  %53 = icmp sgt i32 %52, 63
  br i1 %53, label %54, label %58

54:                                               ; preds = %42
  %55 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  %56 = load i32, i32* %55, align 4
  %57 = sub nsw i32 %56, 128
  store i32 %57, i32* %55, align 4
  br label %58

58:                                               ; preds = %54, %42
  %59 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.brcms_phy_lcnphy*, %struct.brcms_phy_lcnphy** %6, align 8
  %62 = getelementptr inbounds %struct.brcms_phy_lcnphy, %struct.brcms_phy_lcnphy* %61, i32 0, i32 2
  store i32 %60, i32* %62, align 8
  %63 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 1
  %64 = load i32, i32* %63, align 4
  %65 = icmp sgt i32 %64, 63
  br i1 %65, label %66, label %70

66:                                               ; preds = %58
  %67 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 1
  %68 = load i32, i32* %67, align 4
  %69 = sub nsw i32 %68, 128
  store i32 %69, i32* %67, align 4
  br label %70

70:                                               ; preds = %66, %58
  %71 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 1
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.brcms_phy_lcnphy*, %struct.brcms_phy_lcnphy** %6, align 8
  %74 = getelementptr inbounds %struct.brcms_phy_lcnphy, %struct.brcms_phy_lcnphy* %73, i32 0, i32 3
  store i32 %72, i32* %74, align 4
  %75 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %76 = call i32 @read_phy_reg(%struct.brcms_phy* %75, i32 1076)
  %77 = and i32 %76, 255
  store i32 %77, i32* %3, align 4
  %78 = load i32, i32* %3, align 4
  %79 = icmp sgt i32 %78, 127
  br i1 %79, label %80, label %83

80:                                               ; preds = %70
  %81 = load i32, i32* %3, align 4
  %82 = sub nsw i32 %81, 256
  store i32 %82, i32* %3, align 4
  br label %83

83:                                               ; preds = %80, %70
  %84 = load i32, i32* %3, align 4
  %85 = sext i32 %84 to i64
  %86 = load %struct.brcms_phy_lcnphy*, %struct.brcms_phy_lcnphy** %6, align 8
  %87 = getelementptr inbounds %struct.brcms_phy_lcnphy, %struct.brcms_phy_lcnphy* %86, i32 0, i32 8
  store i64 %85, i64* %87, align 8
  %88 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %89 = call i32 @read_phy_reg(%struct.brcms_phy* %88, i32 1060)
  %90 = and i32 %89, 65280
  %91 = ashr i32 %90, 8
  %92 = load %struct.brcms_phy_lcnphy*, %struct.brcms_phy_lcnphy** %6, align 8
  %93 = getelementptr inbounds %struct.brcms_phy_lcnphy, %struct.brcms_phy_lcnphy* %92, i32 0, i32 4
  store i32 %91, i32* %93, align 8
  %94 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %95 = call i32 @read_phy_reg(%struct.brcms_phy* %94, i32 1061)
  %96 = and i32 %95, 255
  %97 = ashr i32 %96, 0
  %98 = load %struct.brcms_phy_lcnphy*, %struct.brcms_phy_lcnphy** %6, align 8
  %99 = getelementptr inbounds %struct.brcms_phy_lcnphy, %struct.brcms_phy_lcnphy* %98, i32 0, i32 5
  store i32 %97, i32* %99, align 4
  %100 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  %101 = getelementptr inbounds %struct.phytbl_info, %struct.phytbl_info* %4, i32 0, i32 0
  store i32* %100, i32** %101, align 8
  %102 = getelementptr inbounds %struct.phytbl_info, %struct.phytbl_info* %4, i32 0, i32 1
  store i32 2, i32* %102, align 8
  %103 = load i32, i32* @LCNPHY_TBL_ID_GAIN_IDX, align 4
  %104 = getelementptr inbounds %struct.phytbl_info, %struct.phytbl_info* %4, i32 0, i32 2
  store i32 %103, i32* %104, align 4
  %105 = getelementptr inbounds %struct.phytbl_info, %struct.phytbl_info* %4, i32 0, i32 3
  store i32 28, i32* %105, align 8
  %106 = getelementptr inbounds %struct.phytbl_info, %struct.phytbl_info* %4, i32 0, i32 4
  store i32 32, i32* %106, align 4
  %107 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %108 = call i32 @wlc_lcnphy_read_table(%struct.brcms_phy* %107, %struct.phytbl_info* %4)
  %109 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.brcms_phy_lcnphy*, %struct.brcms_phy_lcnphy** %6, align 8
  %112 = getelementptr inbounds %struct.brcms_phy_lcnphy, %struct.brcms_phy_lcnphy* %111, i32 0, i32 6
  store i32 %110, i32* %112, align 8
  %113 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 1
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.brcms_phy_lcnphy*, %struct.brcms_phy_lcnphy** %6, align 8
  %116 = getelementptr inbounds %struct.brcms_phy_lcnphy, %struct.brcms_phy_lcnphy* %115, i32 0, i32 7
  store i32 %114, i32* %116, align 4
  ret void
}

declare dso_local i32 @read_phy_reg(%struct.brcms_phy*, i32) #1

declare dso_local i32 @wlc_lcnphy_read_table(%struct.brcms_phy*, %struct.phytbl_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
