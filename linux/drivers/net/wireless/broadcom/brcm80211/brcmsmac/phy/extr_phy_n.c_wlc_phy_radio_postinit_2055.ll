; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/phy/extr_phy_n.c_wlc_phy_radio_postinit_2055.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/phy/extr_phy_n.c_wlc_phy_radio_postinit_2055.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcms_phy = type { i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.brcms_phy_pub = type { i32 }

@RADIO_2055_MASTER_CNTRL1 = common dso_local global i32 0, align 4
@RADIO_2055_JTAGCTRL_MASK = common dso_local global i32 0, align 4
@RADIO_2055_JTAGSYNC_MASK = common dso_local global i32 0, align 4
@BFL2_RXBB_INT_REG_DIS = common dso_local global i32 0, align 4
@RADIO_2055_CORE1_RXBB_REGULATOR = common dso_local global i32 0, align 4
@RADIO_2055_CORE2_RXBB_REGULATOR = common dso_local global i32 0, align 4
@RADIO_2055_RRCCAL_N_OPT_SEL = common dso_local global i32 0, align 4
@RADIO_2055_CAL_MISC = common dso_local global i32 0, align 4
@RADIO_2055_RRCAL_START = common dso_local global i32 0, align 4
@RADIO_2055_RRCAL_RST_N = common dso_local global i32 0, align 4
@RADIO_2055_CAL_LPO_CNTRL = common dso_local global i32 0, align 4
@RADIO_2055_CAL_LPO_ENABLE = common dso_local global i32 0, align 4
@RADIO_2055_CAL_COUNTER_OUT2 = common dso_local global i32 0, align 4
@RADIO_2055_RCAL_DONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"HW error: radio calibration1\0A\00", align 1
@RADIO_2055_CORE1_RXBB_LPF = common dso_local global i32 0, align 4
@RADIO_2055_CORE2_RXBB_LPF = common dso_local global i32 0, align 4
@RADIO_2055_CORE1_RXBB_MIDAC_HIPAS = common dso_local global i32 0, align 4
@RADIO_2055_CORE2_RXBB_MIDAC_HIPAS = common dso_local global i32 0, align 4
@RADIO_2055_CORE1_LNA_GAINBST = common dso_local global i32 0, align 4
@RADIO_2055_GAINBST_VAL_MASK = common dso_local global i32 0, align 4
@RADIO_2055_GAINBST_CODE = common dso_local global i32 0, align 4
@RADIO_2055_CORE2_LNA_GAINBST = common dso_local global i32 0, align 4
@RADIO_2055_CORE1_RXRF_SPC1 = common dso_local global i32 0, align 4
@RADIO_2055_GAINBST_DISABLE = common dso_local global i32 0, align 4
@RADIO_2055_CORE2_RXRF_SPC1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.brcms_phy*)* @wlc_phy_radio_postinit_2055 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wlc_phy_radio_postinit_2055(%struct.brcms_phy* %0) #0 {
  %2 = alloca %struct.brcms_phy*, align 8
  store %struct.brcms_phy* %0, %struct.brcms_phy** %2, align 8
  %3 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %4 = load i32, i32* @RADIO_2055_MASTER_CNTRL1, align 4
  %5 = load i32, i32* @RADIO_2055_JTAGCTRL_MASK, align 4
  %6 = load i32, i32* @RADIO_2055_JTAGSYNC_MASK, align 4
  %7 = or i32 %5, %6
  %8 = xor i32 %7, -1
  %9 = call i32 @and_radio_reg(%struct.brcms_phy* %3, i32 %4, i32 %8)
  %10 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %11 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %10, i32 0, i32 2
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp sge i32 %14, 4
  br i1 %15, label %16, label %25

16:                                               ; preds = %1
  %17 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %18 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %17, i32 0, i32 2
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @BFL2_RXBB_INT_REG_DIS, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %16, %1
  %26 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %27 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %26, i32 0, i32 2
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp slt i32 %30, 4
  br i1 %31, label %32, label %39

32:                                               ; preds = %25, %16
  %33 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %34 = load i32, i32* @RADIO_2055_CORE1_RXBB_REGULATOR, align 4
  %35 = call i32 @and_radio_reg(%struct.brcms_phy* %33, i32 %34, i32 127)
  %36 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %37 = load i32, i32* @RADIO_2055_CORE2_RXBB_REGULATOR, align 4
  %38 = call i32 @and_radio_reg(%struct.brcms_phy* %36, i32 %37, i32 127)
  br label %39

39:                                               ; preds = %32, %25
  %40 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %41 = load i32, i32* @RADIO_2055_RRCCAL_N_OPT_SEL, align 4
  %42 = call i32 @mod_radio_reg(%struct.brcms_phy* %40, i32 %41, i32 63, i32 44)
  %43 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %44 = load i32, i32* @RADIO_2055_CAL_MISC, align 4
  %45 = call i32 @write_radio_reg(%struct.brcms_phy* %43, i32 %44, i32 60)
  %46 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %47 = load i32, i32* @RADIO_2055_CAL_MISC, align 4
  %48 = load i32, i32* @RADIO_2055_RRCAL_START, align 4
  %49 = load i32, i32* @RADIO_2055_RRCAL_RST_N, align 4
  %50 = or i32 %48, %49
  %51 = xor i32 %50, -1
  %52 = call i32 @and_radio_reg(%struct.brcms_phy* %46, i32 %47, i32 %51)
  %53 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %54 = load i32, i32* @RADIO_2055_CAL_LPO_CNTRL, align 4
  %55 = load i32, i32* @RADIO_2055_CAL_LPO_ENABLE, align 4
  %56 = call i32 @or_radio_reg(%struct.brcms_phy* %53, i32 %54, i32 %55)
  %57 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %58 = load i32, i32* @RADIO_2055_CAL_MISC, align 4
  %59 = load i32, i32* @RADIO_2055_RRCAL_RST_N, align 4
  %60 = call i32 @or_radio_reg(%struct.brcms_phy* %57, i32 %58, i32 %59)
  %61 = call i32 @udelay(i32 1000)
  %62 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %63 = load i32, i32* @RADIO_2055_CAL_MISC, align 4
  %64 = load i32, i32* @RADIO_2055_RRCAL_START, align 4
  %65 = call i32 @or_radio_reg(%struct.brcms_phy* %62, i32 %63, i32 %64)
  %66 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %67 = load i32, i32* @RADIO_2055_CAL_COUNTER_OUT2, align 4
  %68 = call i32 @read_radio_reg(%struct.brcms_phy* %66, i32 %67)
  %69 = load i32, i32* @RADIO_2055_RCAL_DONE, align 4
  %70 = and i32 %68, %69
  %71 = load i32, i32* @RADIO_2055_RCAL_DONE, align 4
  %72 = icmp ne i32 %70, %71
  %73 = zext i1 %72 to i32
  %74 = call i32 @SPINWAIT(i32 %73, i32 2000)
  %75 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %76 = load i32, i32* @RADIO_2055_CAL_COUNTER_OUT2, align 4
  %77 = call i32 @read_radio_reg(%struct.brcms_phy* %75, i32 %76)
  %78 = load i32, i32* @RADIO_2055_RCAL_DONE, align 4
  %79 = and i32 %77, %78
  %80 = load i32, i32* @RADIO_2055_RCAL_DONE, align 4
  %81 = icmp ne i32 %79, %80
  %82 = zext i1 %81 to i32
  %83 = call i64 @WARN(i32 %82, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %39
  br label %146

86:                                               ; preds = %39
  %87 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %88 = load i32, i32* @RADIO_2055_CAL_LPO_CNTRL, align 4
  %89 = load i32, i32* @RADIO_2055_CAL_LPO_ENABLE, align 4
  %90 = xor i32 %89, -1
  %91 = call i32 @and_radio_reg(%struct.brcms_phy* %87, i32 %88, i32 %90)
  %92 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %93 = bitcast %struct.brcms_phy* %92 to %struct.brcms_phy_pub*
  %94 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %95 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 8
  %97 = call i32 @wlc_phy_chanspec_set(%struct.brcms_phy_pub* %93, i32 %96)
  %98 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %99 = load i32, i32* @RADIO_2055_CORE1_RXBB_LPF, align 4
  %100 = call i32 @write_radio_reg(%struct.brcms_phy* %98, i32 %99, i32 9)
  %101 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %102 = load i32, i32* @RADIO_2055_CORE2_RXBB_LPF, align 4
  %103 = call i32 @write_radio_reg(%struct.brcms_phy* %101, i32 %102, i32 9)
  %104 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %105 = load i32, i32* @RADIO_2055_CORE1_RXBB_MIDAC_HIPAS, align 4
  %106 = call i32 @write_radio_reg(%struct.brcms_phy* %104, i32 %105, i32 131)
  %107 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %108 = load i32, i32* @RADIO_2055_CORE2_RXBB_MIDAC_HIPAS, align 4
  %109 = call i32 @write_radio_reg(%struct.brcms_phy* %107, i32 %108, i32 131)
  %110 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %111 = load i32, i32* @RADIO_2055_CORE1_LNA_GAINBST, align 4
  %112 = load i32, i32* @RADIO_2055_GAINBST_VAL_MASK, align 4
  %113 = load i32, i32* @RADIO_2055_GAINBST_CODE, align 4
  %114 = call i32 @mod_radio_reg(%struct.brcms_phy* %110, i32 %111, i32 %112, i32 %113)
  %115 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %116 = load i32, i32* @RADIO_2055_CORE2_LNA_GAINBST, align 4
  %117 = load i32, i32* @RADIO_2055_GAINBST_VAL_MASK, align 4
  %118 = load i32, i32* @RADIO_2055_GAINBST_CODE, align 4
  %119 = call i32 @mod_radio_reg(%struct.brcms_phy* %115, i32 %116, i32 %117, i32 %118)
  %120 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %121 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %135

124:                                              ; preds = %86
  %125 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %126 = load i32, i32* @RADIO_2055_CORE1_RXRF_SPC1, align 4
  %127 = load i32, i32* @RADIO_2055_GAINBST_DISABLE, align 4
  %128 = xor i32 %127, -1
  %129 = call i32 @and_radio_reg(%struct.brcms_phy* %125, i32 %126, i32 %128)
  %130 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %131 = load i32, i32* @RADIO_2055_CORE2_RXRF_SPC1, align 4
  %132 = load i32, i32* @RADIO_2055_GAINBST_DISABLE, align 4
  %133 = xor i32 %132, -1
  %134 = call i32 @and_radio_reg(%struct.brcms_phy* %130, i32 %131, i32 %133)
  br label %144

135:                                              ; preds = %86
  %136 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %137 = load i32, i32* @RADIO_2055_CORE1_RXRF_SPC1, align 4
  %138 = load i32, i32* @RADIO_2055_GAINBST_DISABLE, align 4
  %139 = call i32 @or_radio_reg(%struct.brcms_phy* %136, i32 %137, i32 %138)
  %140 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %141 = load i32, i32* @RADIO_2055_CORE2_RXRF_SPC1, align 4
  %142 = load i32, i32* @RADIO_2055_GAINBST_DISABLE, align 4
  %143 = call i32 @or_radio_reg(%struct.brcms_phy* %140, i32 %141, i32 %142)
  br label %144

144:                                              ; preds = %135, %124
  %145 = call i32 @udelay(i32 2)
  br label %146

146:                                              ; preds = %144, %85
  ret void
}

declare dso_local i32 @and_radio_reg(%struct.brcms_phy*, i32, i32) #1

declare dso_local i32 @mod_radio_reg(%struct.brcms_phy*, i32, i32, i32) #1

declare dso_local i32 @write_radio_reg(%struct.brcms_phy*, i32, i32) #1

declare dso_local i32 @or_radio_reg(%struct.brcms_phy*, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @SPINWAIT(i32, i32) #1

declare dso_local i32 @read_radio_reg(%struct.brcms_phy*, i32) #1

declare dso_local i64 @WARN(i32, i8*) #1

declare dso_local i32 @wlc_phy_chanspec_set(%struct.brcms_phy_pub*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
