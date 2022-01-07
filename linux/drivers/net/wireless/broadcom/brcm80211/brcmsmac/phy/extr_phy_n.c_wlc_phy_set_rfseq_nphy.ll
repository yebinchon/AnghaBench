; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/phy/extr_phy_n.c_wlc_phy_set_rfseq_nphy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/phy/extr_phy_n.c_wlc_phy_set_rfseq_nphy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcms_phy = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@NPHY_REV3_RFSEQ_CMD_END = common dso_local global i32 0, align 4
@NPHY_RFSEQ_CMD_END = common dso_local global i32 0, align 4
@NPHY_TBL_ID_RFSEQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.brcms_phy*, i32, i32*, i32*, i32)* @wlc_phy_set_rfseq_nphy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wlc_phy_set_rfseq_nphy(%struct.brcms_phy* %0, i32 %1, i32* %2, i32* %3, i32 %4) #0 {
  %6 = alloca %struct.brcms_phy*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.brcms_phy* %0, %struct.brcms_phy** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32 %4, i32* %10, align 4
  %16 = load %struct.brcms_phy*, %struct.brcms_phy** %6, align 8
  %17 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = call i64 @NREV_GE(i32 %19, i32 3)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %5
  %23 = load i32, i32* @NPHY_REV3_RFSEQ_CMD_END, align 4
  br label %26

24:                                               ; preds = %5
  %25 = load i32, i32* @NPHY_RFSEQ_CMD_END, align 4
  br label %26

26:                                               ; preds = %24, %22
  %27 = phi i32 [ %23, %22 ], [ %25, %24 ]
  store i32 %27, i32* %14, align 4
  store i32 1, i32* %15, align 4
  %28 = load %struct.brcms_phy*, %struct.brcms_phy** %6, align 8
  %29 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %26
  %33 = load %struct.brcms_phy*, %struct.brcms_phy** %6, align 8
  %34 = call i32 @wlc_phy_stay_in_carriersearch_nphy(%struct.brcms_phy* %33, i32 1)
  br label %35

35:                                               ; preds = %32, %26
  %36 = load i32, i32* %7, align 4
  %37 = shl i32 %36, 4
  store i32 %37, i32* %11, align 4
  %38 = load %struct.brcms_phy*, %struct.brcms_phy** %6, align 8
  %39 = load i32, i32* @NPHY_TBL_ID_RFSEQ, align 4
  %40 = load i32, i32* %10, align 4
  %41 = load i32, i32* %11, align 4
  %42 = load i32*, i32** %8, align 8
  %43 = call i32 @wlc_phy_table_write_nphy(%struct.brcms_phy* %38, i32 %39, i32 %40, i32 %41, i32 8, i32* %42)
  %44 = load i32, i32* %11, align 4
  %45 = add nsw i32 %44, 128
  store i32 %45, i32* %12, align 4
  %46 = load %struct.brcms_phy*, %struct.brcms_phy** %6, align 8
  %47 = load i32, i32* @NPHY_TBL_ID_RFSEQ, align 4
  %48 = load i32, i32* %10, align 4
  %49 = load i32, i32* %12, align 4
  %50 = load i32*, i32** %9, align 8
  %51 = call i32 @wlc_phy_table_write_nphy(%struct.brcms_phy* %46, i32 %47, i32 %48, i32 %49, i32 8, i32* %50)
  %52 = load i32, i32* %10, align 4
  store i32 %52, i32* %13, align 4
  br label %53

53:                                               ; preds = %69, %35
  %54 = load i32, i32* %13, align 4
  %55 = icmp slt i32 %54, 16
  br i1 %55, label %56, label %72

56:                                               ; preds = %53
  %57 = load %struct.brcms_phy*, %struct.brcms_phy** %6, align 8
  %58 = load i32, i32* @NPHY_TBL_ID_RFSEQ, align 4
  %59 = load i32, i32* %11, align 4
  %60 = load i32, i32* %13, align 4
  %61 = add nsw i32 %59, %60
  %62 = call i32 @wlc_phy_table_write_nphy(%struct.brcms_phy* %57, i32 %58, i32 1, i32 %61, i32 8, i32* %14)
  %63 = load %struct.brcms_phy*, %struct.brcms_phy** %6, align 8
  %64 = load i32, i32* @NPHY_TBL_ID_RFSEQ, align 4
  %65 = load i32, i32* %12, align 4
  %66 = load i32, i32* %13, align 4
  %67 = add nsw i32 %65, %66
  %68 = call i32 @wlc_phy_table_write_nphy(%struct.brcms_phy* %63, i32 %64, i32 1, i32 %67, i32 8, i32* %15)
  br label %69

69:                                               ; preds = %56
  %70 = load i32, i32* %13, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %13, align 4
  br label %53

72:                                               ; preds = %53
  %73 = load %struct.brcms_phy*, %struct.brcms_phy** %6, align 8
  %74 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %72
  %78 = load %struct.brcms_phy*, %struct.brcms_phy** %6, align 8
  %79 = call i32 @wlc_phy_stay_in_carriersearch_nphy(%struct.brcms_phy* %78, i32 0)
  br label %80

80:                                               ; preds = %77, %72
  ret void
}

declare dso_local i64 @NREV_GE(i32, i32) #1

declare dso_local i32 @wlc_phy_stay_in_carriersearch_nphy(%struct.brcms_phy*, i32) #1

declare dso_local i32 @wlc_phy_table_write_nphy(%struct.brcms_phy*, i32, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
