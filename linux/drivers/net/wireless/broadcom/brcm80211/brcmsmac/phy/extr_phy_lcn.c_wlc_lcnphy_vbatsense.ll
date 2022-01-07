; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/phy/extr_phy_lcn.c_wlc_lcnphy_vbatsense.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/phy/extr_phy_lcn.c_wlc_lcnphy_vbatsense.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcms_phy = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@maccontrol = common dso_local global i32 0, align 4
@MCTL_EN_MAC = common dso_local global i32 0, align 4
@VBATSENSE = common dso_local global i32 0, align 4
@LCN_VBAT_SCALE_NOM = common dso_local global i32 0, align 4
@LCN_VBAT_SCALE_DEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wlc_lcnphy_vbatsense(%struct.brcms_phy* %0, i32 %1) #0 {
  %3 = alloca %struct.brcms_phy*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.brcms_phy* %0, %struct.brcms_phy** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp eq i32 %8, 1
  br i1 %9, label %10, label %34

10:                                               ; preds = %2
  %11 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %12 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @maccontrol, align 4
  %15 = call i32 @D11REGOFFS(i32 %14)
  %16 = call i32 @bcma_read32(i32 %13, i32 %15)
  %17 = load i32, i32* @MCTL_EN_MAC, align 4
  %18 = and i32 %16, %17
  %19 = icmp eq i32 0, %18
  %20 = zext i1 %19 to i32
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %7, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %30, label %23

23:                                               ; preds = %10
  %24 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %25 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @wlapi_suspend_mac_and_wait(i32 %28)
  br label %30

30:                                               ; preds = %23, %10
  %31 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %32 = load i32, i32* @VBATSENSE, align 4
  %33 = call i32 @wlc_lcnphy_vbat_temp_sense_setup(%struct.brcms_phy* %31, i32 %32)
  br label %34

34:                                               ; preds = %30, %2
  %35 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %36 = call i32 @read_phy_reg(%struct.brcms_phy* %35, i32 1141)
  %37 = and i32 %36, 511
  store i32 %37, i32* %5, align 4
  %38 = load i32, i32* %5, align 4
  %39 = icmp sgt i32 %38, 255
  br i1 %39, label %40, label %43

40:                                               ; preds = %34
  %41 = load i32, i32* %5, align 4
  %42 = sub nsw i32 %41, 512
  store i32 %42, i32* %6, align 4
  br label %45

43:                                               ; preds = %34
  %44 = load i32, i32* %5, align 4
  store i32 %44, i32* %6, align 4
  br label %45

45:                                               ; preds = %43, %40
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* @LCN_VBAT_SCALE_NOM, align 4
  %48 = mul nsw i32 %46, %47
  %49 = load i32, i32* @LCN_VBAT_SCALE_DEN, align 4
  %50 = ashr i32 %49, 1
  %51 = add nsw i32 %48, %50
  %52 = load i32, i32* @LCN_VBAT_SCALE_DEN, align 4
  %53 = sdiv i32 %51, %52
  store i32 %53, i32* %6, align 4
  %54 = load i32, i32* %4, align 4
  %55 = icmp eq i32 %54, 1
  br i1 %55, label %56, label %67

56:                                               ; preds = %45
  %57 = load i32, i32* %7, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %66, label %59

59:                                               ; preds = %56
  %60 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %61 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %60, i32 0, i32 0
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @wlapi_enable_mac(i32 %64)
  br label %66

66:                                               ; preds = %59, %56
  br label %67

67:                                               ; preds = %66, %45
  %68 = load i32, i32* %6, align 4
  ret i32 %68
}

declare dso_local i32 @bcma_read32(i32, i32) #1

declare dso_local i32 @D11REGOFFS(i32) #1

declare dso_local i32 @wlapi_suspend_mac_and_wait(i32) #1

declare dso_local i32 @wlc_lcnphy_vbat_temp_sense_setup(%struct.brcms_phy*, i32) #1

declare dso_local i32 @read_phy_reg(%struct.brcms_phy*, i32) #1

declare dso_local i32 @wlapi_enable_mac(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
