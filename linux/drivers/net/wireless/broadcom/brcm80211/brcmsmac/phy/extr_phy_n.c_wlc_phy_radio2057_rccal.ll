; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/phy/extr_phy_n.c_wlc_phy_radio2057_rccal.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/phy/extr_phy_n.c_wlc_phy_radio2057_rccal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcms_phy = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@RADIO_2057_RCCAL_MASTER = common dso_local global i32 0, align 4
@RADIO_2057_RCCAL_TRC0 = common dso_local global i32 0, align 4
@RADIO_2057v7_RCCAL_MASTER = common dso_local global i32 0, align 4
@RADIO_2057_RCCAL_X1 = common dso_local global i32 0, align 4
@RADIO_2057_RCCAL_START_R1_Q1_P1 = common dso_local global i32 0, align 4
@MAX_205x_RCAL_WAITLOOPS = common dso_local global i32 0, align 4
@RADIO_2057_RCCAL_DONE_OSCCAP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"HW error: radio calib4\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.brcms_phy*)* @wlc_phy_radio2057_rccal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wlc_phy_radio2057_rccal(%struct.brcms_phy* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.brcms_phy*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.brcms_phy* %0, %struct.brcms_phy** %3, align 8
  %7 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %8 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = icmp eq i32 %10, 3
  br i1 %11, label %24, label %12

12:                                               ; preds = %1
  %13 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %14 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp eq i32 %16, 4
  br i1 %17, label %24, label %18

18:                                               ; preds = %12
  %19 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %20 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp eq i32 %22, 6
  br label %24

24:                                               ; preds = %18, %12, %1
  %25 = phi i1 [ true, %12 ], [ true, %1 ], [ %23, %18 ]
  %26 = zext i1 %25 to i32
  store i32 %26, i32* %6, align 4
  store i32 0, i32* %4, align 4
  %27 = load i32, i32* %6, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %36

29:                                               ; preds = %24
  %30 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %31 = load i32, i32* @RADIO_2057_RCCAL_MASTER, align 4
  %32 = call i32 @write_radio_reg(%struct.brcms_phy* %30, i32 %31, i32 97)
  %33 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %34 = load i32, i32* @RADIO_2057_RCCAL_TRC0, align 4
  %35 = call i32 @write_radio_reg(%struct.brcms_phy* %33, i32 %34, i32 192)
  br label %43

36:                                               ; preds = %24
  %37 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %38 = load i32, i32* @RADIO_2057v7_RCCAL_MASTER, align 4
  %39 = call i32 @write_radio_reg(%struct.brcms_phy* %37, i32 %38, i32 97)
  %40 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %41 = load i32, i32* @RADIO_2057_RCCAL_TRC0, align 4
  %42 = call i32 @write_radio_reg(%struct.brcms_phy* %40, i32 %41, i32 233)
  br label %43

43:                                               ; preds = %36, %29
  %44 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %45 = load i32, i32* @RADIO_2057_RCCAL_X1, align 4
  %46 = call i32 @write_radio_reg(%struct.brcms_phy* %44, i32 %45, i32 110)
  %47 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %48 = load i32, i32* @RADIO_2057_RCCAL_START_R1_Q1_P1, align 4
  %49 = call i32 @write_radio_reg(%struct.brcms_phy* %47, i32 %48, i32 85)
  store i32 0, i32* %5, align 4
  br label %50

50:                                               ; preds = %64, %43
  %51 = load i32, i32* %5, align 4
  %52 = load i32, i32* @MAX_205x_RCAL_WAITLOOPS, align 4
  %53 = icmp slt i32 %51, %52
  br i1 %53, label %54, label %67

54:                                               ; preds = %50
  %55 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %56 = load i32, i32* @RADIO_2057_RCCAL_DONE_OSCCAP, align 4
  %57 = call i32 @read_radio_reg(%struct.brcms_phy* %55, i32 %56)
  store i32 %57, i32* %4, align 4
  %58 = load i32, i32* %4, align 4
  %59 = and i32 %58, 2
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %54
  br label %67

62:                                               ; preds = %54
  %63 = call i32 @udelay(i32 500)
  br label %64

64:                                               ; preds = %62
  %65 = load i32, i32* %5, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %5, align 4
  br label %50

67:                                               ; preds = %61, %50
  %68 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %69 = load i32, i32* @RADIO_2057_RCCAL_START_R1_Q1_P1, align 4
  %70 = call i32 @write_radio_reg(%struct.brcms_phy* %68, i32 %69, i32 21)
  store i32 0, i32* %4, align 4
  %71 = load i32, i32* %6, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %80

73:                                               ; preds = %67
  %74 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %75 = load i32, i32* @RADIO_2057_RCCAL_MASTER, align 4
  %76 = call i32 @write_radio_reg(%struct.brcms_phy* %74, i32 %75, i32 105)
  %77 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %78 = load i32, i32* @RADIO_2057_RCCAL_TRC0, align 4
  %79 = call i32 @write_radio_reg(%struct.brcms_phy* %77, i32 %78, i32 176)
  br label %87

80:                                               ; preds = %67
  %81 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %82 = load i32, i32* @RADIO_2057v7_RCCAL_MASTER, align 4
  %83 = call i32 @write_radio_reg(%struct.brcms_phy* %81, i32 %82, i32 105)
  %84 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %85 = load i32, i32* @RADIO_2057_RCCAL_TRC0, align 4
  %86 = call i32 @write_radio_reg(%struct.brcms_phy* %84, i32 %85, i32 213)
  br label %87

87:                                               ; preds = %80, %73
  %88 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %89 = load i32, i32* @RADIO_2057_RCCAL_X1, align 4
  %90 = call i32 @write_radio_reg(%struct.brcms_phy* %88, i32 %89, i32 110)
  %91 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %92 = load i32, i32* @RADIO_2057_RCCAL_START_R1_Q1_P1, align 4
  %93 = call i32 @write_radio_reg(%struct.brcms_phy* %91, i32 %92, i32 85)
  store i32 0, i32* %5, align 4
  br label %94

94:                                               ; preds = %108, %87
  %95 = load i32, i32* %5, align 4
  %96 = load i32, i32* @MAX_205x_RCAL_WAITLOOPS, align 4
  %97 = icmp slt i32 %95, %96
  br i1 %97, label %98, label %111

98:                                               ; preds = %94
  %99 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %100 = load i32, i32* @RADIO_2057_RCCAL_DONE_OSCCAP, align 4
  %101 = call i32 @read_radio_reg(%struct.brcms_phy* %99, i32 %100)
  store i32 %101, i32* %4, align 4
  %102 = load i32, i32* %4, align 4
  %103 = and i32 %102, 2
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %98
  br label %111

106:                                              ; preds = %98
  %107 = call i32 @udelay(i32 500)
  br label %108

108:                                              ; preds = %106
  %109 = load i32, i32* %5, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %5, align 4
  br label %94

111:                                              ; preds = %105, %94
  %112 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %113 = load i32, i32* @RADIO_2057_RCCAL_START_R1_Q1_P1, align 4
  %114 = call i32 @write_radio_reg(%struct.brcms_phy* %112, i32 %113, i32 21)
  store i32 0, i32* %4, align 4
  %115 = load i32, i32* %6, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %127

117:                                              ; preds = %111
  %118 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %119 = load i32, i32* @RADIO_2057_RCCAL_MASTER, align 4
  %120 = call i32 @write_radio_reg(%struct.brcms_phy* %118, i32 %119, i32 115)
  %121 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %122 = load i32, i32* @RADIO_2057_RCCAL_X1, align 4
  %123 = call i32 @write_radio_reg(%struct.brcms_phy* %121, i32 %122, i32 40)
  %124 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %125 = load i32, i32* @RADIO_2057_RCCAL_TRC0, align 4
  %126 = call i32 @write_radio_reg(%struct.brcms_phy* %124, i32 %125, i32 176)
  br label %137

127:                                              ; preds = %111
  %128 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %129 = load i32, i32* @RADIO_2057v7_RCCAL_MASTER, align 4
  %130 = call i32 @write_radio_reg(%struct.brcms_phy* %128, i32 %129, i32 115)
  %131 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %132 = load i32, i32* @RADIO_2057_RCCAL_X1, align 4
  %133 = call i32 @write_radio_reg(%struct.brcms_phy* %131, i32 %132, i32 110)
  %134 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %135 = load i32, i32* @RADIO_2057_RCCAL_TRC0, align 4
  %136 = call i32 @write_radio_reg(%struct.brcms_phy* %134, i32 %135, i32 153)
  br label %137

137:                                              ; preds = %127, %117
  %138 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %139 = load i32, i32* @RADIO_2057_RCCAL_START_R1_Q1_P1, align 4
  %140 = call i32 @write_radio_reg(%struct.brcms_phy* %138, i32 %139, i32 85)
  store i32 0, i32* %5, align 4
  br label %141

141:                                              ; preds = %155, %137
  %142 = load i32, i32* %5, align 4
  %143 = load i32, i32* @MAX_205x_RCAL_WAITLOOPS, align 4
  %144 = icmp slt i32 %142, %143
  br i1 %144, label %145, label %158

145:                                              ; preds = %141
  %146 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %147 = load i32, i32* @RADIO_2057_RCCAL_DONE_OSCCAP, align 4
  %148 = call i32 @read_radio_reg(%struct.brcms_phy* %146, i32 %147)
  store i32 %148, i32* %4, align 4
  %149 = load i32, i32* %4, align 4
  %150 = and i32 %149, 2
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %153

152:                                              ; preds = %145
  br label %158

153:                                              ; preds = %145
  %154 = call i32 @udelay(i32 500)
  br label %155

155:                                              ; preds = %153
  %156 = load i32, i32* %5, align 4
  %157 = add nsw i32 %156, 1
  store i32 %157, i32* %5, align 4
  br label %141

158:                                              ; preds = %152, %141
  %159 = load i32, i32* %4, align 4
  %160 = and i32 %159, 2
  %161 = icmp ne i32 %160, 0
  %162 = xor i1 %161, true
  %163 = zext i1 %162 to i32
  %164 = call i64 @WARN(i32 %163, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %167

166:                                              ; preds = %158
  store i32 0, i32* %2, align 4
  br label %172

167:                                              ; preds = %158
  %168 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %169 = load i32, i32* @RADIO_2057_RCCAL_START_R1_Q1_P1, align 4
  %170 = call i32 @write_radio_reg(%struct.brcms_phy* %168, i32 %169, i32 21)
  %171 = load i32, i32* %4, align 4
  store i32 %171, i32* %2, align 4
  br label %172

172:                                              ; preds = %167, %166
  %173 = load i32, i32* %2, align 4
  ret i32 %173
}

declare dso_local i32 @write_radio_reg(%struct.brcms_phy*, i32, i32) #1

declare dso_local i32 @read_radio_reg(%struct.brcms_phy*, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i64 @WARN(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
