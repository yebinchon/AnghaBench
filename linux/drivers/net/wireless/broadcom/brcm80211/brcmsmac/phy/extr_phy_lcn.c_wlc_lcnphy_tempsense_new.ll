; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/phy/extr_phy_lcn.c_wlc_lcnphy_tempsense_new.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/phy/extr_phy_lcn.c_wlc_lcnphy_tempsense_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcms_phy = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@maccontrol = common dso_local global i32 0, align 4
@MCTL_EN_MAC = common dso_local global i32 0, align 4
@TEMPSENSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wlc_lcnphy_tempsense_new(%struct.brcms_phy* %0, i32 %1) #0 {
  %3 = alloca %struct.brcms_phy*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.brcms_phy* %0, %struct.brcms_phy** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp eq i32 %9, 1
  br i1 %10, label %11, label %35

11:                                               ; preds = %2
  %12 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %13 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @maccontrol, align 4
  %16 = call i32 @D11REGOFFS(i32 %15)
  %17 = call i32 @bcma_read32(i32 %14, i32 %16)
  %18 = load i32, i32* @MCTL_EN_MAC, align 4
  %19 = and i32 %17, %18
  %20 = icmp eq i32 0, %19
  %21 = zext i1 %20 to i32
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %8, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %31, label %24

24:                                               ; preds = %11
  %25 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %26 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @wlapi_suspend_mac_and_wait(i32 %29)
  br label %31

31:                                               ; preds = %24, %11
  %32 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %33 = load i32, i32* @TEMPSENSE, align 4
  %34 = call i32 @wlc_lcnphy_vbat_temp_sense_setup(%struct.brcms_phy* %32, i32 %33)
  br label %35

35:                                               ; preds = %31, %2
  %36 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %37 = call i32 @read_phy_reg(%struct.brcms_phy* %36, i32 1142)
  %38 = and i32 %37, 511
  store i32 %38, i32* %5, align 4
  %39 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %40 = call i32 @read_phy_reg(%struct.brcms_phy* %39, i32 1143)
  %41 = and i32 %40, 511
  store i32 %41, i32* %6, align 4
  %42 = load i32, i32* %5, align 4
  %43 = icmp sgt i32 %42, 255
  br i1 %43, label %44, label %47

44:                                               ; preds = %35
  %45 = load i32, i32* %5, align 4
  %46 = sub nsw i32 %45, 512
  store i32 %46, i32* %7, align 4
  br label %49

47:                                               ; preds = %35
  %48 = load i32, i32* %5, align 4
  store i32 %48, i32* %7, align 4
  br label %49

49:                                               ; preds = %47, %44
  %50 = load i32, i32* %6, align 4
  %51 = icmp sgt i32 %50, 255
  br i1 %51, label %52, label %57

52:                                               ; preds = %49
  %53 = load i32, i32* %6, align 4
  %54 = sub nsw i32 %53, 512
  %55 = load i32, i32* %7, align 4
  %56 = add nsw i32 %55, %54
  store i32 %56, i32* %7, align 4
  br label %61

57:                                               ; preds = %49
  %58 = load i32, i32* %6, align 4
  %59 = load i32, i32* %7, align 4
  %60 = add nsw i32 %59, %58
  store i32 %60, i32* %7, align 4
  br label %61

61:                                               ; preds = %57, %52
  %62 = load i32, i32* %7, align 4
  %63 = sdiv i32 %62, 2
  store i32 %63, i32* %7, align 4
  %64 = load i32, i32* %4, align 4
  %65 = icmp eq i32 %64, 1
  br i1 %65, label %66, label %82

66:                                               ; preds = %61
  %67 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %68 = call i32 @mod_phy_reg(%struct.brcms_phy* %67, i32 1096, i32 16384, i32 16384)
  %69 = call i32 @udelay(i32 100)
  %70 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %71 = call i32 @mod_phy_reg(%struct.brcms_phy* %70, i32 1096, i32 16384, i32 0)
  %72 = load i32, i32* %8, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %81, label %74

74:                                               ; preds = %66
  %75 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %76 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %75, i32 0, i32 0
  %77 = load %struct.TYPE_2__*, %struct.TYPE_2__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @wlapi_enable_mac(i32 %79)
  br label %81

81:                                               ; preds = %74, %66
  br label %82

82:                                               ; preds = %81, %61
  %83 = load i32, i32* %7, align 4
  ret i32 %83
}

declare dso_local i32 @bcma_read32(i32, i32) #1

declare dso_local i32 @D11REGOFFS(i32) #1

declare dso_local i32 @wlapi_suspend_mac_and_wait(i32) #1

declare dso_local i32 @wlc_lcnphy_vbat_temp_sense_setup(%struct.brcms_phy*, i32) #1

declare dso_local i32 @read_phy_reg(%struct.brcms_phy*, i32) #1

declare dso_local i32 @mod_phy_reg(%struct.brcms_phy*, i32, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @wlapi_enable_mac(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
