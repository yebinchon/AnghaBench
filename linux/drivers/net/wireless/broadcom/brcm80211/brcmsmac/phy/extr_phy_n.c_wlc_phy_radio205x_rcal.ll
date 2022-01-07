; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/phy/extr_phy_n.c_wlc_phy_radio205x_rcal.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/phy/extr_phy_n.c_wlc_phy_radio205x_rcal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcms_phy = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@RADIO_2057_IQTEST_SEL_PU = common dso_local global i32 0, align 4
@RADIO_2057v7_IQTEST_SEL_PU2 = common dso_local global i32 0, align 4
@RADIO_2057_RCAL_CONFIG = common dso_local global i32 0, align 4
@MAX_205x_RCAL_WAITLOOPS = common dso_local global i32 0, align 4
@RADIO_2057_RCAL_STATUS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"HW error: radio calib2\00", align 1
@RADIO_2057_TEMPSENSE_CONFIG = common dso_local global i32 0, align 4
@RADIO_2057_BANDGAP_RCAL_TRIM = common dso_local global i32 0, align 4
@RADIO_2056_SYN_PLL_MAST2 = common dso_local global i32 0, align 4
@RADIO_2056_SYN = common dso_local global i32 0, align 4
@RADIO_2056_SYN_RCAL_MASTER = common dso_local global i32 0, align 4
@RADIO_2056_SYN_RCAL_CODE_OUT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"HW error: radio calib3\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.brcms_phy*)* @wlc_phy_radio205x_rcal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wlc_phy_radio205x_rcal(%struct.brcms_phy* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.brcms_phy*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.brcms_phy* %0, %struct.brcms_phy** %3, align 8
  store i32 0, i32* %4, align 4
  %7 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %8 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = call i64 @NREV_GE(i32 %10, i32 7)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %108

13:                                               ; preds = %1
  %14 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %15 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp eq i32 %17, 5
  br i1 %18, label %19, label %29

19:                                               ; preds = %13
  %20 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %21 = call i32 @and_phy_reg(%struct.brcms_phy* %20, i32 834, i32 -3)
  %22 = call i32 @udelay(i32 10)
  %23 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %24 = load i32, i32* @RADIO_2057_IQTEST_SEL_PU, align 4
  %25 = call i32 @mod_radio_reg(%struct.brcms_phy* %23, i32 %24, i32 1, i32 1)
  %26 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %27 = load i32, i32* @RADIO_2057v7_IQTEST_SEL_PU2, align 4
  %28 = call i32 @mod_radio_reg(%struct.brcms_phy* %26, i32 %27, i32 2, i32 1)
  br label %29

29:                                               ; preds = %19, %13
  %30 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %31 = load i32, i32* @RADIO_2057_RCAL_CONFIG, align 4
  %32 = call i32 @mod_radio_reg(%struct.brcms_phy* %30, i32 %31, i32 1, i32 1)
  %33 = call i32 @udelay(i32 10)
  %34 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %35 = load i32, i32* @RADIO_2057_RCAL_CONFIG, align 4
  %36 = call i32 @mod_radio_reg(%struct.brcms_phy* %34, i32 %35, i32 3, i32 3)
  store i32 0, i32* %5, align 4
  br label %37

37:                                               ; preds = %51, %29
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* @MAX_205x_RCAL_WAITLOOPS, align 4
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %41, label %54

41:                                               ; preds = %37
  %42 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %43 = load i32, i32* @RADIO_2057_RCAL_STATUS, align 4
  %44 = call i32 @read_radio_reg(%struct.brcms_phy* %42, i32 %43)
  store i32 %44, i32* %4, align 4
  %45 = load i32, i32* %4, align 4
  %46 = and i32 %45, 1
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %41
  br label %54

49:                                               ; preds = %41
  %50 = call i32 @udelay(i32 100)
  br label %51

51:                                               ; preds = %49
  %52 = load i32, i32* %5, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %5, align 4
  br label %37

54:                                               ; preds = %48, %37
  %55 = load i32, i32* %5, align 4
  %56 = load i32, i32* @MAX_205x_RCAL_WAITLOOPS, align 4
  %57 = icmp eq i32 %55, %56
  %58 = zext i1 %57 to i32
  %59 = call i64 @WARN(i32 %58, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %54
  store i32 0, i32* %2, align 4
  br label %195

62:                                               ; preds = %54
  %63 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %64 = load i32, i32* @RADIO_2057_RCAL_CONFIG, align 4
  %65 = call i32 @mod_radio_reg(%struct.brcms_phy* %63, i32 %64, i32 2, i32 0)
  %66 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %67 = load i32, i32* @RADIO_2057_RCAL_STATUS, align 4
  %68 = call i32 @read_radio_reg(%struct.brcms_phy* %66, i32 %67)
  %69 = and i32 %68, 62
  store i32 %69, i32* %4, align 4
  %70 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %71 = load i32, i32* @RADIO_2057_RCAL_CONFIG, align 4
  %72 = call i32 @mod_radio_reg(%struct.brcms_phy* %70, i32 %71, i32 1, i32 0)
  %73 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %74 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = icmp eq i32 %76, 5
  br i1 %77, label %78, label %85

78:                                               ; preds = %62
  %79 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %80 = load i32, i32* @RADIO_2057_IQTEST_SEL_PU, align 4
  %81 = call i32 @mod_radio_reg(%struct.brcms_phy* %79, i32 %80, i32 1, i32 0)
  %82 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %83 = load i32, i32* @RADIO_2057v7_IQTEST_SEL_PU2, align 4
  %84 = call i32 @mod_radio_reg(%struct.brcms_phy* %82, i32 %83, i32 2, i32 0)
  br label %85

85:                                               ; preds = %78, %62
  %86 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %87 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = icmp sle i32 %89, 4
  br i1 %90, label %97, label %91

91:                                               ; preds = %85
  %92 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %93 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = icmp eq i32 %95, 6
  br i1 %96, label %97, label %107

97:                                               ; preds = %91, %85
  %98 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %99 = load i32, i32* @RADIO_2057_TEMPSENSE_CONFIG, align 4
  %100 = load i32, i32* %4, align 4
  %101 = call i32 @mod_radio_reg(%struct.brcms_phy* %98, i32 %99, i32 60, i32 %100)
  %102 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %103 = load i32, i32* @RADIO_2057_BANDGAP_RCAL_TRIM, align 4
  %104 = load i32, i32* %4, align 4
  %105 = shl i32 %104, 2
  %106 = call i32 @mod_radio_reg(%struct.brcms_phy* %102, i32 %103, i32 240, i32 %105)
  br label %107

107:                                              ; preds = %97, %91
  br label %192

108:                                              ; preds = %1
  %109 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %110 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = call i64 @NREV_IS(i32 %112, i32 3)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %191

115:                                              ; preds = %108
  %116 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %117 = load i32, i32* @RADIO_2056_SYN_PLL_MAST2, align 4
  %118 = load i32, i32* @RADIO_2056_SYN, align 4
  %119 = or i32 %117, %118
  %120 = call i32 @read_radio_reg(%struct.brcms_phy* %116, i32 %119)
  store i32 %120, i32* %6, align 4
  %121 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %122 = load i32, i32* @RADIO_2056_SYN_PLL_MAST2, align 4
  %123 = load i32, i32* @RADIO_2056_SYN, align 4
  %124 = or i32 %122, %123
  %125 = load i32, i32* %6, align 4
  %126 = or i32 %125, 7
  %127 = call i32 @write_radio_reg(%struct.brcms_phy* %121, i32 %124, i32 %126)
  %128 = call i32 @udelay(i32 10)
  %129 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %130 = load i32, i32* @RADIO_2056_SYN_RCAL_MASTER, align 4
  %131 = load i32, i32* @RADIO_2056_SYN, align 4
  %132 = or i32 %130, %131
  %133 = call i32 @write_radio_reg(%struct.brcms_phy* %129, i32 %132, i32 1)
  %134 = call i32 @udelay(i32 10)
  %135 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %136 = load i32, i32* @RADIO_2056_SYN_RCAL_MASTER, align 4
  %137 = load i32, i32* @RADIO_2056_SYN, align 4
  %138 = or i32 %136, %137
  %139 = call i32 @write_radio_reg(%struct.brcms_phy* %135, i32 %138, i32 9)
  store i32 0, i32* %5, align 4
  br label %140

140:                                              ; preds = %156, %115
  %141 = load i32, i32* %5, align 4
  %142 = load i32, i32* @MAX_205x_RCAL_WAITLOOPS, align 4
  %143 = icmp slt i32 %141, %142
  br i1 %143, label %144, label %159

144:                                              ; preds = %140
  %145 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %146 = load i32, i32* @RADIO_2056_SYN_RCAL_CODE_OUT, align 4
  %147 = load i32, i32* @RADIO_2056_SYN, align 4
  %148 = or i32 %146, %147
  %149 = call i32 @read_radio_reg(%struct.brcms_phy* %145, i32 %148)
  store i32 %149, i32* %4, align 4
  %150 = load i32, i32* %4, align 4
  %151 = and i32 %150, 128
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %154

153:                                              ; preds = %144
  br label %159

154:                                              ; preds = %144
  %155 = call i32 @udelay(i32 100)
  br label %156

156:                                              ; preds = %154
  %157 = load i32, i32* %5, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %5, align 4
  br label %140

159:                                              ; preds = %153, %140
  %160 = load i32, i32* %5, align 4
  %161 = load i32, i32* @MAX_205x_RCAL_WAITLOOPS, align 4
  %162 = icmp eq i32 %160, %161
  %163 = zext i1 %162 to i32
  %164 = call i64 @WARN(i32 %163, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %167

166:                                              ; preds = %159
  store i32 0, i32* %2, align 4
  br label %195

167:                                              ; preds = %159
  %168 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %169 = load i32, i32* @RADIO_2056_SYN_RCAL_MASTER, align 4
  %170 = load i32, i32* @RADIO_2056_SYN, align 4
  %171 = or i32 %169, %170
  %172 = call i32 @write_radio_reg(%struct.brcms_phy* %168, i32 %171, i32 1)
  %173 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %174 = load i32, i32* @RADIO_2056_SYN_RCAL_CODE_OUT, align 4
  %175 = load i32, i32* @RADIO_2056_SYN, align 4
  %176 = or i32 %174, %175
  %177 = call i32 @read_radio_reg(%struct.brcms_phy* %173, i32 %176)
  store i32 %177, i32* %4, align 4
  %178 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %179 = load i32, i32* @RADIO_2056_SYN_RCAL_MASTER, align 4
  %180 = load i32, i32* @RADIO_2056_SYN, align 4
  %181 = or i32 %179, %180
  %182 = call i32 @write_radio_reg(%struct.brcms_phy* %178, i32 %181, i32 0)
  %183 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %184 = load i32, i32* @RADIO_2056_SYN_PLL_MAST2, align 4
  %185 = load i32, i32* @RADIO_2056_SYN, align 4
  %186 = or i32 %184, %185
  %187 = load i32, i32* %6, align 4
  %188 = call i32 @write_radio_reg(%struct.brcms_phy* %183, i32 %186, i32 %187)
  %189 = load i32, i32* %4, align 4
  %190 = and i32 %189, 31
  store i32 %190, i32* %2, align 4
  br label %195

191:                                              ; preds = %108
  br label %192

192:                                              ; preds = %191, %107
  %193 = load i32, i32* %4, align 4
  %194 = and i32 %193, 62
  store i32 %194, i32* %2, align 4
  br label %195

195:                                              ; preds = %192, %167, %166, %61
  %196 = load i32, i32* %2, align 4
  ret i32 %196
}

declare dso_local i64 @NREV_GE(i32, i32) #1

declare dso_local i32 @and_phy_reg(%struct.brcms_phy*, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @mod_radio_reg(%struct.brcms_phy*, i32, i32, i32) #1

declare dso_local i32 @read_radio_reg(%struct.brcms_phy*, i32) #1

declare dso_local i64 @WARN(i32, i8*) #1

declare dso_local i64 @NREV_IS(i32, i32) #1

declare dso_local i32 @write_radio_reg(%struct.brcms_phy*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
