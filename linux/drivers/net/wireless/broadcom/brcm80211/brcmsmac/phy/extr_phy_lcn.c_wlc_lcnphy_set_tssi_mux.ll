; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/phy/extr_phy_lcn.c_wlc_lcnphy_set_tssi_mux.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/phy/extr_phy_lcn.c_wlc_lcnphy_set_tssi_mux.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcms_phy = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@LCNPHY_TSSI_POST_PA = common dso_local global i32 0, align 4
@RADIO_2064_REG086 = common dso_local global i32 0, align 4
@RADIO_2064_REG03A = common dso_local global i32 0, align 4
@RADIO_2064_REG11A = common dso_local global i32 0, align 4
@RADIO_2064_REG028 = common dso_local global i32 0, align 4
@RADIO_2064_REG036 = common dso_local global i32 0, align 4
@RADIO_2064_REG035 = common dso_local global i32 0, align 4
@RADIO_2064_REG112 = common dso_local global i32 0, align 4
@RADIO_2064_REG005 = common dso_local global i32 0, align 4
@RADIO_2064_REG029 = common dso_local global i32 0, align 4
@LCNPHY_TSSI_EXT = common dso_local global i32 0, align 4
@RADIO_2064_REG07F = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.brcms_phy*, i32)* @wlc_lcnphy_set_tssi_mux to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wlc_lcnphy_set_tssi_mux(%struct.brcms_phy* %0, i32 %1) #0 {
  %3 = alloca %struct.brcms_phy*, align 8
  %4 = alloca i32, align 4
  store %struct.brcms_phy* %0, %struct.brcms_phy** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %6 = call i32 @mod_phy_reg(%struct.brcms_phy* %5, i32 1239, i32 1, i32 1)
  %7 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %8 = call i32 @mod_phy_reg(%struct.brcms_phy* %7, i32 1239, i32 64, i32 64)
  %9 = load i32, i32* @LCNPHY_TSSI_POST_PA, align 4
  %10 = load i32, i32* %4, align 4
  %11 = icmp eq i32 %9, %10
  br i1 %11, label %12, label %65

12:                                               ; preds = %2
  %13 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %14 = call i32 @mod_phy_reg(%struct.brcms_phy* %13, i32 1241, i32 4, i32 0)
  %15 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %16 = call i32 @mod_phy_reg(%struct.brcms_phy* %15, i32 1241, i32 8, i32 8)
  %17 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %18 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i64 @LCNREV_IS(i32 %20, i32 2)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %12
  %24 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %25 = load i32, i32* @RADIO_2064_REG086, align 4
  %26 = call i32 @mod_radio_reg(%struct.brcms_phy* %24, i32 %25, i32 4, i32 4)
  br label %64

27:                                               ; preds = %12
  %28 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %29 = load i32, i32* @RADIO_2064_REG03A, align 4
  %30 = call i32 @mod_radio_reg(%struct.brcms_phy* %28, i32 %29, i32 1, i32 1)
  %31 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %32 = load i32, i32* @RADIO_2064_REG11A, align 4
  %33 = call i32 @mod_radio_reg(%struct.brcms_phy* %31, i32 %32, i32 8, i32 8)
  %34 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %35 = load i32, i32* @RADIO_2064_REG028, align 4
  %36 = call i32 @mod_radio_reg(%struct.brcms_phy* %34, i32 %35, i32 1, i32 0)
  %37 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %38 = load i32, i32* @RADIO_2064_REG11A, align 4
  %39 = call i32 @mod_radio_reg(%struct.brcms_phy* %37, i32 %38, i32 4, i32 4)
  %40 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %41 = load i32, i32* @RADIO_2064_REG036, align 4
  %42 = call i32 @mod_radio_reg(%struct.brcms_phy* %40, i32 %41, i32 16, i32 0)
  %43 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %44 = load i32, i32* @RADIO_2064_REG11A, align 4
  %45 = call i32 @mod_radio_reg(%struct.brcms_phy* %43, i32 %44, i32 16, i32 16)
  %46 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %47 = load i32, i32* @RADIO_2064_REG036, align 4
  %48 = call i32 @mod_radio_reg(%struct.brcms_phy* %46, i32 %47, i32 3, i32 0)
  %49 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %50 = load i32, i32* @RADIO_2064_REG035, align 4
  %51 = call i32 @mod_radio_reg(%struct.brcms_phy* %49, i32 %50, i32 255, i32 119)
  %52 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %53 = load i32, i32* @RADIO_2064_REG028, align 4
  %54 = call i32 @mod_radio_reg(%struct.brcms_phy* %52, i32 %53, i32 30, i32 28)
  %55 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %56 = load i32, i32* @RADIO_2064_REG112, align 4
  %57 = call i32 @mod_radio_reg(%struct.brcms_phy* %55, i32 %56, i32 128, i32 128)
  %58 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %59 = load i32, i32* @RADIO_2064_REG005, align 4
  %60 = call i32 @mod_radio_reg(%struct.brcms_phy* %58, i32 %59, i32 7, i32 2)
  %61 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %62 = load i32, i32* @RADIO_2064_REG029, align 4
  %63 = call i32 @mod_radio_reg(%struct.brcms_phy* %61, i32 %62, i32 240, i32 0)
  br label %64

64:                                               ; preds = %27, %23
  br label %88

65:                                               ; preds = %2
  %66 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %67 = call i32 @mod_phy_reg(%struct.brcms_phy* %66, i32 1241, i32 4, i32 4)
  %68 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %69 = call i32 @mod_phy_reg(%struct.brcms_phy* %68, i32 1241, i32 8, i32 0)
  %70 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %71 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i64 @LCNREV_IS(i32 %73, i32 2)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %65
  %77 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %78 = load i32, i32* @RADIO_2064_REG086, align 4
  %79 = call i32 @mod_radio_reg(%struct.brcms_phy* %77, i32 %78, i32 4, i32 4)
  br label %87

80:                                               ; preds = %65
  %81 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %82 = load i32, i32* @RADIO_2064_REG03A, align 4
  %83 = call i32 @mod_radio_reg(%struct.brcms_phy* %81, i32 %82, i32 1, i32 0)
  %84 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %85 = load i32, i32* @RADIO_2064_REG11A, align 4
  %86 = call i32 @mod_radio_reg(%struct.brcms_phy* %84, i32 %85, i32 8, i32 8)
  br label %87

87:                                               ; preds = %80, %76
  br label %88

88:                                               ; preds = %87, %64
  %89 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %90 = call i32 @mod_phy_reg(%struct.brcms_phy* %89, i32 1591, i32 49152, i32 0)
  %91 = load i32, i32* @LCNPHY_TSSI_EXT, align 4
  %92 = load i32, i32* %4, align 4
  %93 = icmp eq i32 %91, %92
  br i1 %93, label %94, label %107

94:                                               ; preds = %88
  %95 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %96 = load i32, i32* @RADIO_2064_REG07F, align 4
  %97 = call i32 @write_radio_reg(%struct.brcms_phy* %95, i32 %96, i32 1)
  %98 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %99 = load i32, i32* @RADIO_2064_REG005, align 4
  %100 = call i32 @mod_radio_reg(%struct.brcms_phy* %98, i32 %99, i32 7, i32 2)
  %101 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %102 = load i32, i32* @RADIO_2064_REG112, align 4
  %103 = call i32 @mod_radio_reg(%struct.brcms_phy* %101, i32 %102, i32 128, i32 128)
  %104 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %105 = load i32, i32* @RADIO_2064_REG028, align 4
  %106 = call i32 @mod_radio_reg(%struct.brcms_phy* %104, i32 %105, i32 31, i32 3)
  br label %107

107:                                              ; preds = %94, %88
  ret void
}

declare dso_local i32 @mod_phy_reg(%struct.brcms_phy*, i32, i32, i32) #1

declare dso_local i64 @LCNREV_IS(i32, i32) #1

declare dso_local i32 @mod_radio_reg(%struct.brcms_phy*, i32, i32, i32) #1

declare dso_local i32 @write_radio_reg(%struct.brcms_phy*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
