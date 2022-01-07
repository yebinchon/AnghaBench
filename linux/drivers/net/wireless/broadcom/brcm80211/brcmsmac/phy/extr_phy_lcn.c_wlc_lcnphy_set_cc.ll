; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/phy/extr_phy_lcn.c_wlc_lcnphy_set_cc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/phy/extr_phy_lcn.c_wlc_lcnphy_set_cc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcms_phy = type { i32 }

@RADIO_2064_REG089 = common dso_local global i32 0, align 4
@RADIO_2064_REG08A = common dso_local global i32 0, align 4
@RADIO_2064_REG08B = common dso_local global i32 0, align 4
@RADIO_2064_REG08C = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.brcms_phy*, i32, i32, i32)* @wlc_lcnphy_set_cc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wlc_lcnphy_set_cc(%struct.brcms_phy* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.brcms_phy*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.brcms_phy* %0, %struct.brcms_phy** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %14 = load i32, i32* %6, align 4
  switch i32 %14, label %96 [
    i32 0, label %15
    i32 2, label %20
    i32 3, label %30
    i32 4, label %63
  ]

15:                                               ; preds = %4
  %16 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* %8, align 4
  %19 = call i32 @wlc_lcnphy_set_tx_iqcc(%struct.brcms_phy* %16, i32 %17, i32 %18)
  br label %96

20:                                               ; preds = %4
  %21 = load i32, i32* %7, align 4
  %22 = and i32 %21, 255
  %23 = shl i32 %22, 8
  %24 = load i32, i32* %8, align 4
  %25 = and i32 %24, 255
  %26 = or i32 %23, %25
  store i32 %26, i32* %9, align 4
  %27 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %28 = load i32, i32* %9, align 4
  %29 = call i32 @wlc_lcnphy_set_tx_locc(%struct.brcms_phy* %27, i32 %28)
  br label %96

30:                                               ; preds = %4
  %31 = load i32, i32* %7, align 4
  %32 = call i32 @wlc_lcnphy_calc_floor(i32 %31, i32 0)
  store i32 %32, i32* %13, align 4
  %33 = load i32, i32* %13, align 4
  %34 = add nsw i32 8, %33
  store i32 %34, i32* %11, align 4
  %35 = load i32, i32* %7, align 4
  %36 = call i32 @wlc_lcnphy_calc_floor(i32 %35, i32 1)
  store i32 %36, i32* %13, align 4
  %37 = load i32, i32* %13, align 4
  %38 = sub nsw i32 8, %37
  store i32 %38, i32* %10, align 4
  %39 = load i32, i32* %10, align 4
  %40 = mul nsw i32 %39, 16
  %41 = load i32, i32* %11, align 4
  %42 = add nsw i32 %40, %41
  store i32 %42, i32* %12, align 4
  %43 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %44 = load i32, i32* @RADIO_2064_REG089, align 4
  %45 = load i32, i32* %12, align 4
  %46 = call i32 @write_radio_reg(%struct.brcms_phy* %43, i32 %44, i32 %45)
  %47 = load i32, i32* %8, align 4
  %48 = call i32 @wlc_lcnphy_calc_floor(i32 %47, i32 0)
  store i32 %48, i32* %13, align 4
  %49 = load i32, i32* %13, align 4
  %50 = add nsw i32 8, %49
  store i32 %50, i32* %11, align 4
  %51 = load i32, i32* %8, align 4
  %52 = call i32 @wlc_lcnphy_calc_floor(i32 %51, i32 1)
  store i32 %52, i32* %13, align 4
  %53 = load i32, i32* %13, align 4
  %54 = sub nsw i32 8, %53
  store i32 %54, i32* %10, align 4
  %55 = load i32, i32* %10, align 4
  %56 = mul nsw i32 %55, 16
  %57 = load i32, i32* %11, align 4
  %58 = add nsw i32 %56, %57
  store i32 %58, i32* %12, align 4
  %59 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %60 = load i32, i32* @RADIO_2064_REG08A, align 4
  %61 = load i32, i32* %12, align 4
  %62 = call i32 @write_radio_reg(%struct.brcms_phy* %59, i32 %60, i32 %61)
  br label %96

63:                                               ; preds = %4
  %64 = load i32, i32* %7, align 4
  %65 = call i32 @wlc_lcnphy_calc_floor(i32 %64, i32 0)
  store i32 %65, i32* %13, align 4
  %66 = load i32, i32* %13, align 4
  %67 = add nsw i32 8, %66
  store i32 %67, i32* %11, align 4
  %68 = load i32, i32* %7, align 4
  %69 = call i32 @wlc_lcnphy_calc_floor(i32 %68, i32 1)
  store i32 %69, i32* %13, align 4
  %70 = load i32, i32* %13, align 4
  %71 = sub nsw i32 8, %70
  store i32 %71, i32* %10, align 4
  %72 = load i32, i32* %10, align 4
  %73 = mul nsw i32 %72, 16
  %74 = load i32, i32* %11, align 4
  %75 = add nsw i32 %73, %74
  store i32 %75, i32* %12, align 4
  %76 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %77 = load i32, i32* @RADIO_2064_REG08B, align 4
  %78 = load i32, i32* %12, align 4
  %79 = call i32 @write_radio_reg(%struct.brcms_phy* %76, i32 %77, i32 %78)
  %80 = load i32, i32* %8, align 4
  %81 = call i32 @wlc_lcnphy_calc_floor(i32 %80, i32 0)
  store i32 %81, i32* %13, align 4
  %82 = load i32, i32* %13, align 4
  %83 = add nsw i32 8, %82
  store i32 %83, i32* %11, align 4
  %84 = load i32, i32* %8, align 4
  %85 = call i32 @wlc_lcnphy_calc_floor(i32 %84, i32 1)
  store i32 %85, i32* %13, align 4
  %86 = load i32, i32* %13, align 4
  %87 = sub nsw i32 8, %86
  store i32 %87, i32* %10, align 4
  %88 = load i32, i32* %10, align 4
  %89 = mul nsw i32 %88, 16
  %90 = load i32, i32* %11, align 4
  %91 = add nsw i32 %89, %90
  store i32 %91, i32* %12, align 4
  %92 = load %struct.brcms_phy*, %struct.brcms_phy** %5, align 8
  %93 = load i32, i32* @RADIO_2064_REG08C, align 4
  %94 = load i32, i32* %12, align 4
  %95 = call i32 @write_radio_reg(%struct.brcms_phy* %92, i32 %93, i32 %94)
  br label %96

96:                                               ; preds = %4, %63, %30, %20, %15
  ret void
}

declare dso_local i32 @wlc_lcnphy_set_tx_iqcc(%struct.brcms_phy*, i32, i32) #1

declare dso_local i32 @wlc_lcnphy_set_tx_locc(%struct.brcms_phy*, i32) #1

declare dso_local i32 @wlc_lcnphy_calc_floor(i32, i32) #1

declare dso_local i32 @write_radio_reg(%struct.brcms_phy*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
