; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/phy/extr_phy_n.c_wlc_phy_update_txcal_ladder_nphy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/phy/extr_phy_n.c_wlc_phy_update_txcal_ladder_nphy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nphy_txiqcal_ladder = type { i32, i32, i64, i32 }
%struct.brcms_phy = type { i32 }

@wlc_phy_update_txcal_ladder_nphy.ladder_lo = internal constant [18 x %struct.nphy_txiqcal_ladder] [%struct.nphy_txiqcal_ladder { i32 3, i32 0, i64 0, i32 0 }, %struct.nphy_txiqcal_ladder { i32 4, i32 0, i64 0, i32 0 }, %struct.nphy_txiqcal_ladder { i32 6, i32 0, i64 0, i32 0 }, %struct.nphy_txiqcal_ladder { i32 9, i32 0, i64 0, i32 0 }, %struct.nphy_txiqcal_ladder { i32 13, i32 0, i64 0, i32 0 }, %struct.nphy_txiqcal_ladder { i32 18, i32 0, i64 0, i32 0 }, %struct.nphy_txiqcal_ladder { i32 25, i32 0, i64 0, i32 0 }, %struct.nphy_txiqcal_ladder { i32 25, i32 1, i64 0, i32 0 }, %struct.nphy_txiqcal_ladder { i32 25, i32 2, i64 0, i32 0 }, %struct.nphy_txiqcal_ladder { i32 25, i32 3, i64 0, i32 0 }, %struct.nphy_txiqcal_ladder { i32 25, i32 4, i64 0, i32 0 }, %struct.nphy_txiqcal_ladder { i32 25, i32 5, i64 0, i32 0 }, %struct.nphy_txiqcal_ladder { i32 25, i32 6, i64 0, i32 0 }, %struct.nphy_txiqcal_ladder { i32 25, i32 7, i64 0, i32 0 }, %struct.nphy_txiqcal_ladder { i32 35, i32 7, i64 0, i32 0 }, %struct.nphy_txiqcal_ladder { i32 50, i32 7, i64 0, i32 0 }, %struct.nphy_txiqcal_ladder { i32 71, i32 7, i64 0, i32 0 }, %struct.nphy_txiqcal_ladder { i32 100, i32 7, i64 0, i32 0 }], align 16
@wlc_phy_update_txcal_ladder_nphy.ladder_iq = internal constant [18 x %struct.nphy_txiqcal_ladder] [%struct.nphy_txiqcal_ladder { i32 3, i32 0, i64 0, i32 0 }, %struct.nphy_txiqcal_ladder { i32 4, i32 0, i64 0, i32 0 }, %struct.nphy_txiqcal_ladder { i32 6, i32 0, i64 0, i32 0 }, %struct.nphy_txiqcal_ladder { i32 9, i32 0, i64 0, i32 0 }, %struct.nphy_txiqcal_ladder { i32 13, i32 0, i64 0, i32 0 }, %struct.nphy_txiqcal_ladder { i32 18, i32 0, i64 0, i32 0 }, %struct.nphy_txiqcal_ladder { i32 25, i32 0, i64 0, i32 0 }, %struct.nphy_txiqcal_ladder { i32 35, i32 0, i64 0, i32 0 }, %struct.nphy_txiqcal_ladder { i32 50, i32 0, i64 0, i32 0 }, %struct.nphy_txiqcal_ladder { i32 71, i32 0, i64 0, i32 0 }, %struct.nphy_txiqcal_ladder { i32 100, i32 0, i64 0, i32 0 }, %struct.nphy_txiqcal_ladder { i32 100, i32 1, i64 0, i32 0 }, %struct.nphy_txiqcal_ladder { i32 100, i32 2, i64 0, i32 0 }, %struct.nphy_txiqcal_ladder { i32 100, i32 3, i64 0, i32 0 }, %struct.nphy_txiqcal_ladder { i32 100, i32 4, i64 0, i32 0 }, %struct.nphy_txiqcal_ladder { i32 100, i32 5, i64 0, i32 0 }, %struct.nphy_txiqcal_ladder { i32 100, i32 6, i64 0, i32 0 }, %struct.nphy_txiqcal_ladder { i32 100, i32 7, i64 0, i32 0 }], align 16
@PHY_CORE_0 = common dso_local global i64 0, align 8
@NPHY_TBL_ID_IQLOCAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.brcms_phy*, i64)* @wlc_phy_update_txcal_ladder_nphy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wlc_phy_update_txcal_ladder_nphy(%struct.brcms_phy* %0, i64 %1) #0 {
  %3 = alloca %struct.brcms_phy*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.brcms_phy* %0, %struct.brcms_phy** %3, align 8
  store i64 %1, i64* %4, align 8
  %9 = load i64, i64* %4, align 8
  %10 = load i64, i64* @PHY_CORE_0, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %18

12:                                               ; preds = %2
  %13 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %14 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = ashr i32 %15, 8
  %17 = and i32 %16, 255
  br label %23

18:                                               ; preds = %2
  %19 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %20 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = and i32 %21, 255
  br label %23

23:                                               ; preds = %18, %12
  %24 = phi i32 [ %17, %12 ], [ %22, %18 ]
  %25 = sext i32 %24 to i64
  store i64 %25, i64* %7, align 8
  store i32 0, i32* %5, align 4
  br label %26

26:                                               ; preds = %79, %23
  %27 = load i32, i32* %5, align 4
  %28 = icmp slt i32 %27, 18
  br i1 %28, label %29, label %82

29:                                               ; preds = %26
  %30 = load i32, i32* %5, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds [18 x %struct.nphy_txiqcal_ladder], [18 x %struct.nphy_txiqcal_ladder]* @wlc_phy_update_txcal_ladder_nphy.ladder_lo, i64 0, i64 %31
  %33 = getelementptr inbounds %struct.nphy_txiqcal_ladder, %struct.nphy_txiqcal_ladder* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* %7, align 8
  %36 = mul nsw i64 %34, %35
  %37 = trunc i64 %36 to i32
  store i32 %37, i32* %6, align 4
  %38 = load i32, i32* %6, align 4
  %39 = sdiv i32 %38, 100
  store i32 %39, i32* %6, align 4
  %40 = load i32, i32* %6, align 4
  %41 = and i32 %40, 255
  %42 = shl i32 %41, 8
  %43 = load i32, i32* %5, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds [18 x %struct.nphy_txiqcal_ladder], [18 x %struct.nphy_txiqcal_ladder]* @wlc_phy_update_txcal_ladder_nphy.ladder_lo, i64 0, i64 %44
  %46 = getelementptr inbounds %struct.nphy_txiqcal_ladder, %struct.nphy_txiqcal_ladder* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 8
  %48 = or i32 %42, %47
  %49 = sext i32 %48 to i64
  store i64 %49, i64* %8, align 8
  %50 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %51 = load i32, i32* @NPHY_TBL_ID_IQLOCAL, align 4
  %52 = load i32, i32* %5, align 4
  %53 = call i32 @wlc_phy_table_write_nphy(%struct.brcms_phy* %50, i32 %51, i32 1, i32 %52, i32 16, i64* %8)
  %54 = load i32, i32* %5, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds [18 x %struct.nphy_txiqcal_ladder], [18 x %struct.nphy_txiqcal_ladder]* @wlc_phy_update_txcal_ladder_nphy.ladder_iq, i64 0, i64 %55
  %57 = getelementptr inbounds %struct.nphy_txiqcal_ladder, %struct.nphy_txiqcal_ladder* %56, i32 0, i32 2
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* %7, align 8
  %60 = mul nsw i64 %58, %59
  %61 = trunc i64 %60 to i32
  store i32 %61, i32* %6, align 4
  %62 = load i32, i32* %6, align 4
  %63 = sdiv i32 %62, 100
  store i32 %63, i32* %6, align 4
  %64 = load i32, i32* %6, align 4
  %65 = and i32 %64, 255
  %66 = shl i32 %65, 8
  %67 = load i32, i32* %5, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds [18 x %struct.nphy_txiqcal_ladder], [18 x %struct.nphy_txiqcal_ladder]* @wlc_phy_update_txcal_ladder_nphy.ladder_iq, i64 0, i64 %68
  %70 = getelementptr inbounds %struct.nphy_txiqcal_ladder, %struct.nphy_txiqcal_ladder* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 8
  %72 = or i32 %66, %71
  %73 = sext i32 %72 to i64
  store i64 %73, i64* %8, align 8
  %74 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %75 = load i32, i32* @NPHY_TBL_ID_IQLOCAL, align 4
  %76 = load i32, i32* %5, align 4
  %77 = add nsw i32 %76, 32
  %78 = call i32 @wlc_phy_table_write_nphy(%struct.brcms_phy* %74, i32 %75, i32 1, i32 %77, i32 16, i64* %8)
  br label %79

79:                                               ; preds = %29
  %80 = load i32, i32* %5, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %5, align 4
  br label %26

82:                                               ; preds = %26
  ret void
}

declare dso_local i32 @wlc_phy_table_write_nphy(%struct.brcms_phy*, i32, i32, i32, i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
