; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/phy/extr_phy_lcn.c_wlc_lcnphy_load_tx_gain_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/phy/extr_phy_lcn.c_wlc_lcnphy_load_tx_gain_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcms_phy = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.lcnphy_tx_gain_tbl_entry = type { i32, i32, i32, i32, i32 }
%struct.phytbl_info = type { i32, i32, i32*, i64, i32 }

@BFL_FEM = common dso_local global i32 0, align 4
@LCNPHY_TBL_ID_TXPWRCTL = common dso_local global i32 0, align 4
@LCNPHY_TX_PWR_CTRL_GAIN_OFFSET = common dso_local global i64 0, align 8
@LCNPHY_TX_PWR_CTRL_IQ_OFFSET = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.brcms_phy*, %struct.lcnphy_tx_gain_tbl_entry*)* @wlc_lcnphy_load_tx_gain_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wlc_lcnphy_load_tx_gain_table(%struct.brcms_phy* %0, %struct.lcnphy_tx_gain_tbl_entry* %1) #0 {
  %3 = alloca %struct.brcms_phy*, align 8
  %4 = alloca %struct.lcnphy_tx_gain_tbl_entry*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.phytbl_info, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.brcms_phy* %0, %struct.brcms_phy** %3, align 8
  store %struct.lcnphy_tx_gain_tbl_entry* %1, %struct.lcnphy_tx_gain_tbl_entry** %4, align 8
  %10 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %11 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @BFL_FEM, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  store i32 16, i32* %8, align 4
  br label %20

19:                                               ; preds = %2
  store i32 96, i32* %8, align 4
  br label %20

20:                                               ; preds = %19, %18
  %21 = load i32, i32* @LCNPHY_TBL_ID_TXPWRCTL, align 4
  %22 = getelementptr inbounds %struct.phytbl_info, %struct.phytbl_info* %6, i32 0, i32 4
  store i32 %21, i32* %22, align 8
  %23 = getelementptr inbounds %struct.phytbl_info, %struct.phytbl_info* %6, i32 0, i32 0
  store i32 32, i32* %23, align 8
  %24 = getelementptr inbounds %struct.phytbl_info, %struct.phytbl_info* %6, i32 0, i32 1
  store i32 1, i32* %24, align 4
  %25 = getelementptr inbounds %struct.phytbl_info, %struct.phytbl_info* %6, i32 0, i32 2
  store i32* %7, i32** %25, align 8
  store i32 15, i32* %9, align 4
  store i32 0, i32* %5, align 4
  br label %26

26:                                               ; preds = %95, %20
  %27 = load i32, i32* %5, align 4
  %28 = icmp slt i32 %27, 128
  br i1 %28, label %29, label %98

29:                                               ; preds = %26
  %30 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %31 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %30, i32 0, i32 0
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @BFL_FEM, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %45

38:                                               ; preds = %29
  %39 = load %struct.lcnphy_tx_gain_tbl_entry*, %struct.lcnphy_tx_gain_tbl_entry** %4, align 8
  %40 = load i32, i32* %5, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.lcnphy_tx_gain_tbl_entry, %struct.lcnphy_tx_gain_tbl_entry* %39, i64 %41
  %43 = getelementptr inbounds %struct.lcnphy_tx_gain_tbl_entry, %struct.lcnphy_tx_gain_tbl_entry* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* %9, align 4
  br label %45

45:                                               ; preds = %38, %29
  %46 = load i32, i32* %8, align 4
  %47 = shl i32 %46, 24
  %48 = load %struct.lcnphy_tx_gain_tbl_entry*, %struct.lcnphy_tx_gain_tbl_entry** %4, align 8
  %49 = load i32, i32* %5, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.lcnphy_tx_gain_tbl_entry, %struct.lcnphy_tx_gain_tbl_entry* %48, i64 %50
  %52 = getelementptr inbounds %struct.lcnphy_tx_gain_tbl_entry, %struct.lcnphy_tx_gain_tbl_entry* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = shl i32 %53, 16
  %55 = or i32 %47, %54
  %56 = load %struct.lcnphy_tx_gain_tbl_entry*, %struct.lcnphy_tx_gain_tbl_entry** %4, align 8
  %57 = load i32, i32* %5, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.lcnphy_tx_gain_tbl_entry, %struct.lcnphy_tx_gain_tbl_entry* %56, i64 %58
  %60 = getelementptr inbounds %struct.lcnphy_tx_gain_tbl_entry, %struct.lcnphy_tx_gain_tbl_entry* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = shl i32 %61, 8
  %63 = or i32 %55, %62
  %64 = load i32, i32* %9, align 4
  %65 = or i32 %63, %64
  store i32 %65, i32* %7, align 4
  %66 = load i64, i64* @LCNPHY_TX_PWR_CTRL_GAIN_OFFSET, align 8
  %67 = load i32, i32* %5, align 4
  %68 = sext i32 %67 to i64
  %69 = add nsw i64 %66, %68
  %70 = getelementptr inbounds %struct.phytbl_info, %struct.phytbl_info* %6, i32 0, i32 3
  store i64 %69, i64* %70, align 8
  %71 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %72 = call i32 @wlc_lcnphy_write_table(%struct.brcms_phy* %71, %struct.phytbl_info* %6)
  %73 = load %struct.lcnphy_tx_gain_tbl_entry*, %struct.lcnphy_tx_gain_tbl_entry** %4, align 8
  %74 = load i32, i32* %5, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.lcnphy_tx_gain_tbl_entry, %struct.lcnphy_tx_gain_tbl_entry* %73, i64 %75
  %77 = getelementptr inbounds %struct.lcnphy_tx_gain_tbl_entry, %struct.lcnphy_tx_gain_tbl_entry* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 4
  %79 = shl i32 %78, 28
  %80 = load %struct.lcnphy_tx_gain_tbl_entry*, %struct.lcnphy_tx_gain_tbl_entry** %4, align 8
  %81 = load i32, i32* %5, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.lcnphy_tx_gain_tbl_entry, %struct.lcnphy_tx_gain_tbl_entry* %80, i64 %82
  %84 = getelementptr inbounds %struct.lcnphy_tx_gain_tbl_entry, %struct.lcnphy_tx_gain_tbl_entry* %83, i32 0, i32 4
  %85 = load i32, i32* %84, align 4
  %86 = shl i32 %85, 20
  %87 = or i32 %79, %86
  store i32 %87, i32* %7, align 4
  %88 = load i64, i64* @LCNPHY_TX_PWR_CTRL_IQ_OFFSET, align 8
  %89 = load i32, i32* %5, align 4
  %90 = sext i32 %89 to i64
  %91 = add nsw i64 %88, %90
  %92 = getelementptr inbounds %struct.phytbl_info, %struct.phytbl_info* %6, i32 0, i32 3
  store i64 %91, i64* %92, align 8
  %93 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %94 = call i32 @wlc_lcnphy_write_table(%struct.brcms_phy* %93, %struct.phytbl_info* %6)
  br label %95

95:                                               ; preds = %45
  %96 = load i32, i32* %5, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %5, align 4
  br label %26

98:                                               ; preds = %26
  ret void
}

declare dso_local i32 @wlc_lcnphy_write_table(%struct.brcms_phy*, %struct.phytbl_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
