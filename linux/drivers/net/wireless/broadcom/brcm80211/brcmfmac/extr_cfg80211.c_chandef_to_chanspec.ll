; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_cfg80211.c_chandef_to_chanspec.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_cfg80211.c_chandef_to_chanspec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcmu_d11inf = type { i32 (%struct.brcmu_chan*)* }
%struct.brcmu_chan = type opaque
%struct.cfg80211_chan_def = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.brcmu_chan.0 = type { i32, i32, i32, i32, i32 }

@TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"chandef: control %d center %d width %d\0A\00", align 1
@BRCMU_CHAN_BW_20 = common dso_local global i32 0, align 4
@BRCMU_CHAN_BW_40 = common dso_local global i32 0, align 4
@BRCMU_CHAN_SB_U = common dso_local global i32 0, align 4
@BRCMU_CHAN_SB_L = common dso_local global i32 0, align 4
@BRCMU_CHAN_BW_80 = common dso_local global i32 0, align 4
@BRCMU_CHAN_SB_LL = common dso_local global i32 0, align 4
@BRCMU_CHAN_SB_LU = common dso_local global i32 0, align 4
@BRCMU_CHAN_SB_UL = common dso_local global i32 0, align 4
@BRCMU_CHAN_SB_UU = common dso_local global i32 0, align 4
@BRCMU_CHAN_BW_160 = common dso_local global i32 0, align 4
@BRCMU_CHAN_SB_LLL = common dso_local global i32 0, align 4
@BRCMU_CHAN_SB_LLU = common dso_local global i32 0, align 4
@BRCMU_CHAN_SB_LUL = common dso_local global i32 0, align 4
@BRCMU_CHAN_SB_LUU = common dso_local global i32 0, align 4
@BRCMU_CHAN_SB_ULL = common dso_local global i32 0, align 4
@BRCMU_CHAN_SB_ULU = common dso_local global i32 0, align 4
@BRCMU_CHAN_SB_UUL = common dso_local global i32 0, align 4
@BRCMU_CHAN_SB_UUU = common dso_local global i32 0, align 4
@BRCMU_CHAN_BAND_2G = common dso_local global i32 0, align 4
@BRCMU_CHAN_BAND_5G = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"chanspec: 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.brcmu_d11inf*, %struct.cfg80211_chan_def*)* @chandef_to_chanspec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @chandef_to_chanspec(%struct.brcmu_d11inf* %0, %struct.cfg80211_chan_def* %1) #0 {
  %3 = alloca %struct.brcmu_d11inf*, align 8
  %4 = alloca %struct.cfg80211_chan_def*, align 8
  %5 = alloca %struct.brcmu_chan.0, align 4
  %6 = alloca i32, align 4
  store %struct.brcmu_d11inf* %0, %struct.brcmu_d11inf** %3, align 8
  store %struct.cfg80211_chan_def* %1, %struct.cfg80211_chan_def** %4, align 8
  %7 = load i32, i32* @TRACE, align 4
  %8 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %4, align 8
  %9 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %8, i32 0, i32 2
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %4, align 8
  %14 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %4, align 8
  %17 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 (i32, i8*, i32, ...) @brcmf_dbg(i32 %7, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %12, i32 %15, i32 %18)
  %20 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %4, align 8
  %21 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @ieee80211_frequency_to_channel(i32 %22)
  %24 = getelementptr inbounds %struct.brcmu_chan.0, %struct.brcmu_chan.0* %5, i32 0, i32 4
  store i32 %23, i32* %24, align 4
  %25 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %4, align 8
  %26 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %25, i32 0, i32 2
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %4, align 8
  %31 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = sub nsw i32 %29, %32
  store i32 %33, i32* %6, align 4
  %34 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %4, align 8
  %35 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  switch i32 %36, label %137 [
    i32 133, label %37
    i32 132, label %37
    i32 131, label %44
    i32 129, label %56
    i32 134, label %82
    i32 128, label %136
    i32 130, label %136
    i32 135, label %136
  ]

37:                                               ; preds = %2, %2
  %38 = load i32, i32* @BRCMU_CHAN_BW_20, align 4
  %39 = getelementptr inbounds %struct.brcmu_chan.0, %struct.brcmu_chan.0* %5, i32 0, i32 3
  store i32 %38, i32* %39, align 4
  %40 = load i32, i32* %6, align 4
  %41 = icmp ne i32 %40, 0
  %42 = zext i1 %41 to i32
  %43 = call i32 @WARN_ON(i32 %42)
  br label %139

44:                                               ; preds = %2
  %45 = load i32, i32* @BRCMU_CHAN_BW_40, align 4
  %46 = getelementptr inbounds %struct.brcmu_chan.0, %struct.brcmu_chan.0* %5, i32 0, i32 3
  store i32 %45, i32* %46, align 4
  %47 = load i32, i32* %6, align 4
  %48 = icmp sgt i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %44
  %50 = load i32, i32* @BRCMU_CHAN_SB_U, align 4
  %51 = getelementptr inbounds %struct.brcmu_chan.0, %struct.brcmu_chan.0* %5, i32 0, i32 2
  store i32 %50, i32* %51, align 4
  br label %55

52:                                               ; preds = %44
  %53 = load i32, i32* @BRCMU_CHAN_SB_L, align 4
  %54 = getelementptr inbounds %struct.brcmu_chan.0, %struct.brcmu_chan.0* %5, i32 0, i32 2
  store i32 %53, i32* %54, align 4
  br label %55

55:                                               ; preds = %52, %49
  br label %139

56:                                               ; preds = %2
  %57 = load i32, i32* @BRCMU_CHAN_BW_80, align 4
  %58 = getelementptr inbounds %struct.brcmu_chan.0, %struct.brcmu_chan.0* %5, i32 0, i32 3
  store i32 %57, i32* %58, align 4
  %59 = load i32, i32* %6, align 4
  %60 = icmp eq i32 %59, -30
  br i1 %60, label %61, label %64

61:                                               ; preds = %56
  %62 = load i32, i32* @BRCMU_CHAN_SB_LL, align 4
  %63 = getelementptr inbounds %struct.brcmu_chan.0, %struct.brcmu_chan.0* %5, i32 0, i32 2
  store i32 %62, i32* %63, align 4
  br label %81

64:                                               ; preds = %56
  %65 = load i32, i32* %6, align 4
  %66 = icmp eq i32 %65, -10
  br i1 %66, label %67, label %70

67:                                               ; preds = %64
  %68 = load i32, i32* @BRCMU_CHAN_SB_LU, align 4
  %69 = getelementptr inbounds %struct.brcmu_chan.0, %struct.brcmu_chan.0* %5, i32 0, i32 2
  store i32 %68, i32* %69, align 4
  br label %80

70:                                               ; preds = %64
  %71 = load i32, i32* %6, align 4
  %72 = icmp eq i32 %71, 10
  br i1 %72, label %73, label %76

73:                                               ; preds = %70
  %74 = load i32, i32* @BRCMU_CHAN_SB_UL, align 4
  %75 = getelementptr inbounds %struct.brcmu_chan.0, %struct.brcmu_chan.0* %5, i32 0, i32 2
  store i32 %74, i32* %75, align 4
  br label %79

76:                                               ; preds = %70
  %77 = load i32, i32* @BRCMU_CHAN_SB_UU, align 4
  %78 = getelementptr inbounds %struct.brcmu_chan.0, %struct.brcmu_chan.0* %5, i32 0, i32 2
  store i32 %77, i32* %78, align 4
  br label %79

79:                                               ; preds = %76, %73
  br label %80

80:                                               ; preds = %79, %67
  br label %81

81:                                               ; preds = %80, %61
  br label %139

82:                                               ; preds = %2
  %83 = load i32, i32* @BRCMU_CHAN_BW_160, align 4
  %84 = getelementptr inbounds %struct.brcmu_chan.0, %struct.brcmu_chan.0* %5, i32 0, i32 3
  store i32 %83, i32* %84, align 4
  %85 = load i32, i32* %6, align 4
  %86 = icmp eq i32 %85, -70
  br i1 %86, label %87, label %90

87:                                               ; preds = %82
  %88 = load i32, i32* @BRCMU_CHAN_SB_LLL, align 4
  %89 = getelementptr inbounds %struct.brcmu_chan.0, %struct.brcmu_chan.0* %5, i32 0, i32 2
  store i32 %88, i32* %89, align 4
  br label %135

90:                                               ; preds = %82
  %91 = load i32, i32* %6, align 4
  %92 = icmp eq i32 %91, -50
  br i1 %92, label %93, label %96

93:                                               ; preds = %90
  %94 = load i32, i32* @BRCMU_CHAN_SB_LLU, align 4
  %95 = getelementptr inbounds %struct.brcmu_chan.0, %struct.brcmu_chan.0* %5, i32 0, i32 2
  store i32 %94, i32* %95, align 4
  br label %134

96:                                               ; preds = %90
  %97 = load i32, i32* %6, align 4
  %98 = icmp eq i32 %97, -30
  br i1 %98, label %99, label %102

99:                                               ; preds = %96
  %100 = load i32, i32* @BRCMU_CHAN_SB_LUL, align 4
  %101 = getelementptr inbounds %struct.brcmu_chan.0, %struct.brcmu_chan.0* %5, i32 0, i32 2
  store i32 %100, i32* %101, align 4
  br label %133

102:                                              ; preds = %96
  %103 = load i32, i32* %6, align 4
  %104 = icmp eq i32 %103, -10
  br i1 %104, label %105, label %108

105:                                              ; preds = %102
  %106 = load i32, i32* @BRCMU_CHAN_SB_LUU, align 4
  %107 = getelementptr inbounds %struct.brcmu_chan.0, %struct.brcmu_chan.0* %5, i32 0, i32 2
  store i32 %106, i32* %107, align 4
  br label %132

108:                                              ; preds = %102
  %109 = load i32, i32* %6, align 4
  %110 = icmp eq i32 %109, 10
  br i1 %110, label %111, label %114

111:                                              ; preds = %108
  %112 = load i32, i32* @BRCMU_CHAN_SB_ULL, align 4
  %113 = getelementptr inbounds %struct.brcmu_chan.0, %struct.brcmu_chan.0* %5, i32 0, i32 2
  store i32 %112, i32* %113, align 4
  br label %131

114:                                              ; preds = %108
  %115 = load i32, i32* %6, align 4
  %116 = icmp eq i32 %115, 30
  br i1 %116, label %117, label %120

117:                                              ; preds = %114
  %118 = load i32, i32* @BRCMU_CHAN_SB_ULU, align 4
  %119 = getelementptr inbounds %struct.brcmu_chan.0, %struct.brcmu_chan.0* %5, i32 0, i32 2
  store i32 %118, i32* %119, align 4
  br label %130

120:                                              ; preds = %114
  %121 = load i32, i32* %6, align 4
  %122 = icmp eq i32 %121, 50
  br i1 %122, label %123, label %126

123:                                              ; preds = %120
  %124 = load i32, i32* @BRCMU_CHAN_SB_UUL, align 4
  %125 = getelementptr inbounds %struct.brcmu_chan.0, %struct.brcmu_chan.0* %5, i32 0, i32 2
  store i32 %124, i32* %125, align 4
  br label %129

126:                                              ; preds = %120
  %127 = load i32, i32* @BRCMU_CHAN_SB_UUU, align 4
  %128 = getelementptr inbounds %struct.brcmu_chan.0, %struct.brcmu_chan.0* %5, i32 0, i32 2
  store i32 %127, i32* %128, align 4
  br label %129

129:                                              ; preds = %126, %123
  br label %130

130:                                              ; preds = %129, %117
  br label %131

131:                                              ; preds = %130, %111
  br label %132

132:                                              ; preds = %131, %105
  br label %133

133:                                              ; preds = %132, %99
  br label %134

134:                                              ; preds = %133, %93
  br label %135

135:                                              ; preds = %134, %87
  br label %139

136:                                              ; preds = %2, %2, %2
  br label %137

137:                                              ; preds = %2, %136
  %138 = call i32 @WARN_ON_ONCE(i32 1)
  br label %139

139:                                              ; preds = %137, %135, %81, %55, %37
  %140 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %4, align 8
  %141 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %140, i32 0, i32 2
  %142 = load %struct.TYPE_2__*, %struct.TYPE_2__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  switch i32 %144, label %152 [
    i32 138, label %145
    i32 137, label %148
    i32 136, label %151
  ]

145:                                              ; preds = %139
  %146 = load i32, i32* @BRCMU_CHAN_BAND_2G, align 4
  %147 = getelementptr inbounds %struct.brcmu_chan.0, %struct.brcmu_chan.0* %5, i32 0, i32 1
  store i32 %146, i32* %147, align 4
  br label %154

148:                                              ; preds = %139
  %149 = load i32, i32* @BRCMU_CHAN_BAND_5G, align 4
  %150 = getelementptr inbounds %struct.brcmu_chan.0, %struct.brcmu_chan.0* %5, i32 0, i32 1
  store i32 %149, i32* %150, align 4
  br label %154

151:                                              ; preds = %139
  br label %152

152:                                              ; preds = %139, %151
  %153 = call i32 @WARN_ON_ONCE(i32 1)
  br label %154

154:                                              ; preds = %152, %148, %145
  %155 = load %struct.brcmu_d11inf*, %struct.brcmu_d11inf** %3, align 8
  %156 = getelementptr inbounds %struct.brcmu_d11inf, %struct.brcmu_d11inf* %155, i32 0, i32 0
  %157 = load i32 (%struct.brcmu_chan*)*, i32 (%struct.brcmu_chan*)** %156, align 8
  %158 = bitcast %struct.brcmu_chan.0* %5 to %struct.brcmu_chan*
  %159 = call i32 %157(%struct.brcmu_chan* %158)
  %160 = load i32, i32* @TRACE, align 4
  %161 = getelementptr inbounds %struct.brcmu_chan.0, %struct.brcmu_chan.0* %5, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  %163 = call i32 (i32, i8*, i32, ...) @brcmf_dbg(i32 %160, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %162)
  %164 = getelementptr inbounds %struct.brcmu_chan.0, %struct.brcmu_chan.0* %5, i32 0, i32 0
  %165 = load i32, i32* %164, align 4
  ret i32 %165
}

declare dso_local i32 @brcmf_dbg(i32, i8*, i32, ...) #1

declare dso_local i32 @ieee80211_frequency_to_channel(i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
