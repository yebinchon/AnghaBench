; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/phy/extr_phy_lcn.c_wlc_lcnphy_tempsense.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/phy/extr_phy_lcn.c_wlc_lcnphy_tempsense.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcms_phy = type { %struct.TYPE_4__*, i64, i32, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { %struct.brcms_phy_lcnphy* }
%struct.brcms_phy_lcnphy = type { i32 }

@maccontrol = common dso_local global i32 0, align 4
@MCTL_EN_MAC = common dso_local global i32 0, align 4
@TEMPSENSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wlc_lcnphy_tempsense(%struct.brcms_phy* %0, i32 %1) #0 {
  %3 = alloca %struct.brcms_phy*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.brcms_phy_lcnphy*, align 8
  store %struct.brcms_phy* %0, %struct.brcms_phy** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %11 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %12 = call i32 @wlc_lcnphy_get_tx_pwr_ctrl(%struct.brcms_phy* %11)
  store i32 %12, i32* %9, align 4
  %13 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %14 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %13, i32 0, i32 3
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load %struct.brcms_phy_lcnphy*, %struct.brcms_phy_lcnphy** %15, align 8
  store %struct.brcms_phy_lcnphy* %16, %struct.brcms_phy_lcnphy** %10, align 8
  %17 = load i32, i32* %4, align 4
  %18 = icmp eq i32 %17, 1
  br i1 %18, label %19, label %43

19:                                               ; preds = %2
  %20 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %21 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @maccontrol, align 4
  %24 = call i32 @D11REGOFFS(i32 %23)
  %25 = call i32 @bcma_read32(i32 %22, i32 %24)
  %26 = load i32, i32* @MCTL_EN_MAC, align 4
  %27 = and i32 %25, %26
  %28 = icmp eq i32 0, %27
  %29 = zext i1 %28 to i32
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* %8, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %39, label %32

32:                                               ; preds = %19
  %33 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %34 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %33, i32 0, i32 0
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @wlapi_suspend_mac_and_wait(i32 %37)
  br label %39

39:                                               ; preds = %32, %19
  %40 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %41 = load i32, i32* @TEMPSENSE, align 4
  %42 = call i32 @wlc_lcnphy_vbat_temp_sense_setup(%struct.brcms_phy* %40, i32 %41)
  br label %43

43:                                               ; preds = %39, %2
  %44 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %45 = call i32 @read_phy_reg(%struct.brcms_phy* %44, i32 1142)
  %46 = and i32 %45, 511
  store i32 %46, i32* %5, align 4
  %47 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %48 = call i32 @read_phy_reg(%struct.brcms_phy* %47, i32 1143)
  %49 = and i32 %48, 511
  store i32 %49, i32* %6, align 4
  %50 = load i32, i32* %5, align 4
  %51 = icmp sgt i32 %50, 255
  br i1 %51, label %52, label %55

52:                                               ; preds = %43
  %53 = load i32, i32* %5, align 4
  %54 = sub nsw i32 %53, 512
  store i32 %54, i32* %7, align 4
  br label %57

55:                                               ; preds = %43
  %56 = load i32, i32* %5, align 4
  store i32 %56, i32* %7, align 4
  br label %57

57:                                               ; preds = %55, %52
  %58 = load %struct.brcms_phy_lcnphy*, %struct.brcms_phy_lcnphy** %10, align 8
  %59 = getelementptr inbounds %struct.brcms_phy_lcnphy, %struct.brcms_phy_lcnphy* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = icmp eq i32 %60, 1
  br i1 %61, label %67, label %62

62:                                               ; preds = %57
  %63 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %64 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %80

67:                                               ; preds = %62, %57
  %68 = load i32, i32* %6, align 4
  %69 = icmp sgt i32 %68, 255
  br i1 %69, label %70, label %75

70:                                               ; preds = %67
  %71 = load i32, i32* %7, align 4
  %72 = load i32, i32* %6, align 4
  %73 = sub nsw i32 %71, %72
  %74 = add nsw i32 %73, 512
  store i32 %74, i32* %7, align 4
  br label %79

75:                                               ; preds = %67
  %76 = load i32, i32* %7, align 4
  %77 = load i32, i32* %6, align 4
  %78 = sub nsw i32 %76, %77
  store i32 %78, i32* %7, align 4
  br label %79

79:                                               ; preds = %75, %70
  br label %95

80:                                               ; preds = %62
  %81 = load i32, i32* %6, align 4
  %82 = icmp sgt i32 %81, 255
  br i1 %82, label %83, label %88

83:                                               ; preds = %80
  %84 = load i32, i32* %7, align 4
  %85 = load i32, i32* %6, align 4
  %86 = add nsw i32 %84, %85
  %87 = sub nsw i32 %86, 512
  store i32 %87, i32* %7, align 4
  br label %92

88:                                               ; preds = %80
  %89 = load i32, i32* %7, align 4
  %90 = load i32, i32* %6, align 4
  %91 = add nsw i32 %89, %90
  store i32 %91, i32* %7, align 4
  br label %92

92:                                               ; preds = %88, %83
  %93 = load i32, i32* %7, align 4
  %94 = sdiv i32 %93, 2
  store i32 %94, i32* %7, align 4
  br label %95

95:                                               ; preds = %92, %79
  %96 = load i32, i32* %7, align 4
  %97 = icmp slt i32 %96, 0
  br i1 %97, label %98, label %101

98:                                               ; preds = %95
  %99 = load i32, i32* %7, align 4
  %100 = add nsw i32 %99, 512
  store i32 %100, i32* %7, align 4
  br label %101

101:                                              ; preds = %98, %95
  %102 = load %struct.brcms_phy_lcnphy*, %struct.brcms_phy_lcnphy** %10, align 8
  %103 = getelementptr inbounds %struct.brcms_phy_lcnphy, %struct.brcms_phy_lcnphy* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = icmp eq i32 %104, 2
  br i1 %105, label %106, label %108

106:                                              ; preds = %101
  %107 = load i32, i32* %5, align 4
  store i32 %107, i32* %7, align 4
  br label %108

108:                                              ; preds = %106, %101
  %109 = load i32, i32* %4, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %115

111:                                              ; preds = %108
  %112 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %113 = load i32, i32* %9, align 4
  %114 = call i32 @wlc_lcnphy_set_tx_pwr_ctrl(%struct.brcms_phy* %112, i32 %113)
  br label %115

115:                                              ; preds = %111, %108
  %116 = load i32, i32* %4, align 4
  %117 = icmp eq i32 %116, 1
  br i1 %117, label %118, label %134

118:                                              ; preds = %115
  %119 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %120 = call i32 @mod_phy_reg(%struct.brcms_phy* %119, i32 1096, i32 16384, i32 16384)
  %121 = call i32 @udelay(i32 100)
  %122 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %123 = call i32 @mod_phy_reg(%struct.brcms_phy* %122, i32 1096, i32 16384, i32 0)
  %124 = load i32, i32* %8, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %133, label %126

126:                                              ; preds = %118
  %127 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %128 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %127, i32 0, i32 0
  %129 = load %struct.TYPE_4__*, %struct.TYPE_4__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = call i32 @wlapi_enable_mac(i32 %131)
  br label %133

133:                                              ; preds = %126, %118
  br label %134

134:                                              ; preds = %133, %115
  %135 = load i32, i32* %7, align 4
  ret i32 %135
}

declare dso_local i32 @wlc_lcnphy_get_tx_pwr_ctrl(%struct.brcms_phy*) #1

declare dso_local i32 @bcma_read32(i32, i32) #1

declare dso_local i32 @D11REGOFFS(i32) #1

declare dso_local i32 @wlapi_suspend_mac_and_wait(i32) #1

declare dso_local i32 @wlc_lcnphy_vbat_temp_sense_setup(%struct.brcms_phy*, i32) #1

declare dso_local i32 @read_phy_reg(%struct.brcms_phy*, i32) #1

declare dso_local i32 @wlc_lcnphy_set_tx_pwr_ctrl(%struct.brcms_phy*, i32) #1

declare dso_local i32 @mod_phy_reg(%struct.brcms_phy*, i32, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @wlapi_enable_mac(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
