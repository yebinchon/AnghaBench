; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/phy/extr_phy_n.c_wlc_phy_chan2freq_nphy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/phy/extr_phy_n.c_wlc_phy_chan2freq_nphy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.chan_info_nphy_radio205x = type { i64, i32 }
%struct.brcms_phy = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.chan_info_nphy_radio2057 = type { i64, i32 }
%struct.chan_info_nphy_radio2057_rev5 = type { i64, i32 }
%struct.chan_info_nphy_2055 = type { i64, i32 }

@chan_info_nphyrev7_2057_rev4 = common dso_local global %struct.chan_info_nphy_radio205x* null, align 8
@chan_info_nphyrev8_2057_rev5 = common dso_local global %struct.chan_info_nphy_radio205x* null, align 8
@chan_info_nphyrev9_2057_rev5v1 = common dso_local global %struct.chan_info_nphy_radio205x* null, align 8
@chan_info_nphyrev8_2057_rev7 = common dso_local global %struct.chan_info_nphy_radio205x* null, align 8
@chan_info_nphyrev8_2057_rev8 = common dso_local global %struct.chan_info_nphy_radio205x* null, align 8
@chan_info_nphyrev3_2056 = common dso_local global %struct.chan_info_nphy_radio205x* null, align 8
@chan_info_nphyrev4_2056_A1 = common dso_local global %struct.chan_info_nphy_radio205x* null, align 8
@chan_info_nphyrev5_2056v5 = common dso_local global %struct.chan_info_nphy_radio205x* null, align 8
@chan_info_nphyrev6_2056v6 = common dso_local global %struct.chan_info_nphy_radio205x* null, align 8
@chan_info_nphyrev5n6_2056v7 = common dso_local global %struct.chan_info_nphy_radio205x* null, align 8
@chan_info_nphyrev6_2056v8 = common dso_local global %struct.chan_info_nphy_radio205x* null, align 8
@chan_info_nphyrev6_2056v11 = common dso_local global %struct.chan_info_nphy_radio205x* null, align 8
@chan_info_nphy_2055 = common dso_local global %struct.chan_info_nphy_radio205x* null, align 8
@WL_CHAN_FREQ_RANGE_2G = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.brcms_phy*, i64, i32*, %struct.chan_info_nphy_radio2057**, %struct.chan_info_nphy_radio205x**, %struct.chan_info_nphy_radio2057_rev5**, %struct.chan_info_nphy_2055**)* @wlc_phy_chan2freq_nphy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wlc_phy_chan2freq_nphy(%struct.brcms_phy* %0, i64 %1, i32* %2, %struct.chan_info_nphy_radio2057** %3, %struct.chan_info_nphy_radio205x** %4, %struct.chan_info_nphy_radio2057_rev5** %5, %struct.chan_info_nphy_2055** %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.brcms_phy*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.chan_info_nphy_radio2057**, align 8
  %13 = alloca %struct.chan_info_nphy_radio205x**, align 8
  %14 = alloca %struct.chan_info_nphy_radio2057_rev5**, align 8
  %15 = alloca %struct.chan_info_nphy_2055**, align 8
  %16 = alloca i64, align 8
  %17 = alloca %struct.chan_info_nphy_radio2057*, align 8
  %18 = alloca %struct.chan_info_nphy_radio205x*, align 8
  %19 = alloca %struct.chan_info_nphy_radio2057_rev5*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  store %struct.brcms_phy* %0, %struct.brcms_phy** %9, align 8
  store i64 %1, i64* %10, align 8
  store i32* %2, i32** %11, align 8
  store %struct.chan_info_nphy_radio2057** %3, %struct.chan_info_nphy_radio2057*** %12, align 8
  store %struct.chan_info_nphy_radio205x** %4, %struct.chan_info_nphy_radio205x*** %13, align 8
  store %struct.chan_info_nphy_radio2057_rev5** %5, %struct.chan_info_nphy_radio2057_rev5*** %14, align 8
  store %struct.chan_info_nphy_2055** %6, %struct.chan_info_nphy_2055*** %15, align 8
  store %struct.chan_info_nphy_radio2057* null, %struct.chan_info_nphy_radio2057** %17, align 8
  store %struct.chan_info_nphy_radio205x* null, %struct.chan_info_nphy_radio205x** %18, align 8
  store %struct.chan_info_nphy_radio2057_rev5* null, %struct.chan_info_nphy_radio2057_rev5** %19, align 8
  store i64 0, i64* %20, align 8
  store i32 0, i32* %21, align 4
  %22 = load %struct.brcms_phy*, %struct.brcms_phy** %9, align 8
  %23 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = call i64 @NREV_GE(i32 %25, i32 7)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %177

28:                                               ; preds = %7
  %29 = load %struct.brcms_phy*, %struct.brcms_phy** %9, align 8
  %30 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = call i64 @NREV_IS(i32 %32, i32 7)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %28
  %36 = load %struct.chan_info_nphy_radio205x*, %struct.chan_info_nphy_radio205x** @chan_info_nphyrev7_2057_rev4, align 8
  %37 = bitcast %struct.chan_info_nphy_radio205x* %36 to %struct.chan_info_nphy_radio2057*
  store %struct.chan_info_nphy_radio2057* %37, %struct.chan_info_nphy_radio2057** %17, align 8
  %38 = load %struct.chan_info_nphy_radio205x*, %struct.chan_info_nphy_radio205x** @chan_info_nphyrev7_2057_rev4, align 8
  %39 = call i64 @ARRAY_SIZE(%struct.chan_info_nphy_radio205x* %38)
  store i64 %39, i64* %20, align 8
  br label %110

40:                                               ; preds = %28
  %41 = load %struct.brcms_phy*, %struct.brcms_phy** %9, align 8
  %42 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = call i64 @NREV_IS(i32 %44, i32 8)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %54, label %47

47:                                               ; preds = %40
  %48 = load %struct.brcms_phy*, %struct.brcms_phy** %9, align 8
  %49 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = call i64 @NREV_IS(i32 %51, i32 9)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %95

54:                                               ; preds = %47, %40
  %55 = load %struct.brcms_phy*, %struct.brcms_phy** %9, align 8
  %56 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  switch i32 %58, label %93 [
    i32 5, label %59
    i32 7, label %83
    i32 8, label %88
  ]

59:                                               ; preds = %54
  %60 = load %struct.brcms_phy*, %struct.brcms_phy** %9, align 8
  %61 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %59
  %66 = load %struct.chan_info_nphy_radio205x*, %struct.chan_info_nphy_radio205x** @chan_info_nphyrev8_2057_rev5, align 8
  %67 = bitcast %struct.chan_info_nphy_radio205x* %66 to %struct.chan_info_nphy_radio2057_rev5*
  store %struct.chan_info_nphy_radio2057_rev5* %67, %struct.chan_info_nphy_radio2057_rev5** %19, align 8
  %68 = load %struct.chan_info_nphy_radio205x*, %struct.chan_info_nphy_radio205x** @chan_info_nphyrev8_2057_rev5, align 8
  %69 = call i64 @ARRAY_SIZE(%struct.chan_info_nphy_radio205x* %68)
  store i64 %69, i64* %20, align 8
  br label %82

70:                                               ; preds = %59
  %71 = load %struct.brcms_phy*, %struct.brcms_phy** %9, align 8
  %72 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = icmp eq i32 %74, 1
  br i1 %75, label %76, label %81

76:                                               ; preds = %70
  %77 = load %struct.chan_info_nphy_radio205x*, %struct.chan_info_nphy_radio205x** @chan_info_nphyrev9_2057_rev5v1, align 8
  %78 = bitcast %struct.chan_info_nphy_radio205x* %77 to %struct.chan_info_nphy_radio2057_rev5*
  store %struct.chan_info_nphy_radio2057_rev5* %78, %struct.chan_info_nphy_radio2057_rev5** %19, align 8
  %79 = load %struct.chan_info_nphy_radio205x*, %struct.chan_info_nphy_radio205x** @chan_info_nphyrev9_2057_rev5v1, align 8
  %80 = call i64 @ARRAY_SIZE(%struct.chan_info_nphy_radio205x* %79)
  store i64 %80, i64* %20, align 8
  br label %81

81:                                               ; preds = %76, %70
  br label %82

82:                                               ; preds = %81, %65
  br label %94

83:                                               ; preds = %54
  %84 = load %struct.chan_info_nphy_radio205x*, %struct.chan_info_nphy_radio205x** @chan_info_nphyrev8_2057_rev7, align 8
  %85 = bitcast %struct.chan_info_nphy_radio205x* %84 to %struct.chan_info_nphy_radio2057*
  store %struct.chan_info_nphy_radio2057* %85, %struct.chan_info_nphy_radio2057** %17, align 8
  %86 = load %struct.chan_info_nphy_radio205x*, %struct.chan_info_nphy_radio205x** @chan_info_nphyrev8_2057_rev7, align 8
  %87 = call i64 @ARRAY_SIZE(%struct.chan_info_nphy_radio205x* %86)
  store i64 %87, i64* %20, align 8
  br label %94

88:                                               ; preds = %54
  %89 = load %struct.chan_info_nphy_radio205x*, %struct.chan_info_nphy_radio205x** @chan_info_nphyrev8_2057_rev8, align 8
  %90 = bitcast %struct.chan_info_nphy_radio205x* %89 to %struct.chan_info_nphy_radio2057*
  store %struct.chan_info_nphy_radio2057* %90, %struct.chan_info_nphy_radio2057** %17, align 8
  %91 = load %struct.chan_info_nphy_radio205x*, %struct.chan_info_nphy_radio205x** @chan_info_nphyrev8_2057_rev8, align 8
  %92 = call i64 @ARRAY_SIZE(%struct.chan_info_nphy_radio205x* %91)
  store i64 %92, i64* %20, align 8
  br label %94

93:                                               ; preds = %54
  br label %94

94:                                               ; preds = %93, %88, %83, %82
  br label %109

95:                                               ; preds = %47
  %96 = load %struct.brcms_phy*, %struct.brcms_phy** %9, align 8
  %97 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 4
  %100 = call i64 @NREV_IS(i32 %99, i32 16)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %107

102:                                              ; preds = %95
  %103 = load %struct.chan_info_nphy_radio205x*, %struct.chan_info_nphy_radio205x** @chan_info_nphyrev8_2057_rev8, align 8
  %104 = bitcast %struct.chan_info_nphy_radio205x* %103 to %struct.chan_info_nphy_radio2057*
  store %struct.chan_info_nphy_radio2057* %104, %struct.chan_info_nphy_radio2057** %17, align 8
  %105 = load %struct.chan_info_nphy_radio205x*, %struct.chan_info_nphy_radio205x** @chan_info_nphyrev8_2057_rev8, align 8
  %106 = call i64 @ARRAY_SIZE(%struct.chan_info_nphy_radio205x* %105)
  store i64 %106, i64* %20, align 8
  br label %108

107:                                              ; preds = %95
  br label %322

108:                                              ; preds = %102
  br label %109

109:                                              ; preds = %108, %94
  br label %110

110:                                              ; preds = %109, %35
  store i64 0, i64* %16, align 8
  br label %111

111:                                              ; preds = %142, %110
  %112 = load i64, i64* %16, align 8
  %113 = load i64, i64* %20, align 8
  %114 = icmp ult i64 %112, %113
  br i1 %114, label %115, label %145

115:                                              ; preds = %111
  %116 = load %struct.brcms_phy*, %struct.brcms_phy** %9, align 8
  %117 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = icmp eq i32 %119, 5
  br i1 %120, label %121, label %131

121:                                              ; preds = %115
  %122 = load %struct.chan_info_nphy_radio2057_rev5*, %struct.chan_info_nphy_radio2057_rev5** %19, align 8
  %123 = load i64, i64* %16, align 8
  %124 = getelementptr inbounds %struct.chan_info_nphy_radio2057_rev5, %struct.chan_info_nphy_radio2057_rev5* %122, i64 %123
  %125 = getelementptr inbounds %struct.chan_info_nphy_radio2057_rev5, %struct.chan_info_nphy_radio2057_rev5* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = load i64, i64* %10, align 8
  %128 = icmp eq i64 %126, %127
  br i1 %128, label %129, label %130

129:                                              ; preds = %121
  br label %145

130:                                              ; preds = %121
  br label %141

131:                                              ; preds = %115
  %132 = load %struct.chan_info_nphy_radio2057*, %struct.chan_info_nphy_radio2057** %17, align 8
  %133 = load i64, i64* %16, align 8
  %134 = getelementptr inbounds %struct.chan_info_nphy_radio2057, %struct.chan_info_nphy_radio2057* %132, i64 %133
  %135 = getelementptr inbounds %struct.chan_info_nphy_radio2057, %struct.chan_info_nphy_radio2057* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = load i64, i64* %10, align 8
  %138 = icmp eq i64 %136, %137
  br i1 %138, label %139, label %140

139:                                              ; preds = %131
  br label %145

140:                                              ; preds = %131
  br label %141

141:                                              ; preds = %140, %130
  br label %142

142:                                              ; preds = %141
  %143 = load i64, i64* %16, align 8
  %144 = add i64 %143, 1
  store i64 %144, i64* %16, align 8
  br label %111

145:                                              ; preds = %139, %129, %111
  %146 = load i64, i64* %16, align 8
  %147 = load i64, i64* %20, align 8
  %148 = icmp uge i64 %146, %147
  br i1 %148, label %149, label %150

149:                                              ; preds = %145
  br label %322

150:                                              ; preds = %145
  %151 = load %struct.brcms_phy*, %struct.brcms_phy** %9, align 8
  %152 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 4
  %155 = icmp eq i32 %154, 5
  br i1 %155, label %156, label %166

156:                                              ; preds = %150
  %157 = load %struct.chan_info_nphy_radio2057_rev5*, %struct.chan_info_nphy_radio2057_rev5** %19, align 8
  %158 = load i64, i64* %16, align 8
  %159 = getelementptr inbounds %struct.chan_info_nphy_radio2057_rev5, %struct.chan_info_nphy_radio2057_rev5* %157, i64 %158
  %160 = load %struct.chan_info_nphy_radio2057_rev5**, %struct.chan_info_nphy_radio2057_rev5*** %14, align 8
  store %struct.chan_info_nphy_radio2057_rev5* %159, %struct.chan_info_nphy_radio2057_rev5** %160, align 8
  %161 = load %struct.chan_info_nphy_radio2057_rev5*, %struct.chan_info_nphy_radio2057_rev5** %19, align 8
  %162 = load i64, i64* %16, align 8
  %163 = getelementptr inbounds %struct.chan_info_nphy_radio2057_rev5, %struct.chan_info_nphy_radio2057_rev5* %161, i64 %162
  %164 = getelementptr inbounds %struct.chan_info_nphy_radio2057_rev5, %struct.chan_info_nphy_radio2057_rev5* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 8
  store i32 %165, i32* %21, align 4
  br label %176

166:                                              ; preds = %150
  %167 = load %struct.chan_info_nphy_radio2057*, %struct.chan_info_nphy_radio2057** %17, align 8
  %168 = load i64, i64* %16, align 8
  %169 = getelementptr inbounds %struct.chan_info_nphy_radio2057, %struct.chan_info_nphy_radio2057* %167, i64 %168
  %170 = load %struct.chan_info_nphy_radio2057**, %struct.chan_info_nphy_radio2057*** %12, align 8
  store %struct.chan_info_nphy_radio2057* %169, %struct.chan_info_nphy_radio2057** %170, align 8
  %171 = load %struct.chan_info_nphy_radio2057*, %struct.chan_info_nphy_radio2057** %17, align 8
  %172 = load i64, i64* %16, align 8
  %173 = getelementptr inbounds %struct.chan_info_nphy_radio2057, %struct.chan_info_nphy_radio2057* %171, i64 %172
  %174 = getelementptr inbounds %struct.chan_info_nphy_radio2057, %struct.chan_info_nphy_radio2057* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 8
  store i32 %175, i32* %21, align 4
  br label %176

176:                                              ; preds = %166, %156
  br label %319

177:                                              ; preds = %7
  %178 = load %struct.brcms_phy*, %struct.brcms_phy** %9, align 8
  %179 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %178, i32 0, i32 0
  %180 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %179, i32 0, i32 2
  %181 = load i32, i32* %180, align 4
  %182 = call i64 @NREV_GE(i32 %181, i32 3)
  %183 = icmp ne i64 %182, 0
  br i1 %183, label %184, label %282

184:                                              ; preds = %177
  %185 = load %struct.brcms_phy*, %struct.brcms_phy** %9, align 8
  %186 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %185, i32 0, i32 0
  %187 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %186, i32 0, i32 2
  %188 = load i32, i32* %187, align 4
  %189 = call i64 @NREV_IS(i32 %188, i32 3)
  %190 = icmp ne i64 %189, 0
  br i1 %190, label %191, label %195

191:                                              ; preds = %184
  %192 = load %struct.chan_info_nphy_radio205x*, %struct.chan_info_nphy_radio205x** @chan_info_nphyrev3_2056, align 8
  store %struct.chan_info_nphy_radio205x* %192, %struct.chan_info_nphy_radio205x** %18, align 8
  %193 = load %struct.chan_info_nphy_radio205x*, %struct.chan_info_nphy_radio205x** @chan_info_nphyrev3_2056, align 8
  %194 = call i64 @ARRAY_SIZE(%struct.chan_info_nphy_radio205x* %193)
  store i64 %194, i64* %20, align 8
  br label %249

195:                                              ; preds = %184
  %196 = load %struct.brcms_phy*, %struct.brcms_phy** %9, align 8
  %197 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %196, i32 0, i32 0
  %198 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %197, i32 0, i32 2
  %199 = load i32, i32* %198, align 4
  %200 = call i64 @NREV_IS(i32 %199, i32 4)
  %201 = icmp ne i64 %200, 0
  br i1 %201, label %202, label %206

202:                                              ; preds = %195
  %203 = load %struct.chan_info_nphy_radio205x*, %struct.chan_info_nphy_radio205x** @chan_info_nphyrev4_2056_A1, align 8
  store %struct.chan_info_nphy_radio205x* %203, %struct.chan_info_nphy_radio205x** %18, align 8
  %204 = load %struct.chan_info_nphy_radio205x*, %struct.chan_info_nphy_radio205x** @chan_info_nphyrev4_2056_A1, align 8
  %205 = call i64 @ARRAY_SIZE(%struct.chan_info_nphy_radio205x* %204)
  store i64 %205, i64* %20, align 8
  br label %248

206:                                              ; preds = %195
  %207 = load %struct.brcms_phy*, %struct.brcms_phy** %9, align 8
  %208 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %207, i32 0, i32 0
  %209 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %208, i32 0, i32 2
  %210 = load i32, i32* %209, align 4
  %211 = call i64 @NREV_IS(i32 %210, i32 5)
  %212 = icmp ne i64 %211, 0
  br i1 %212, label %220, label %213

213:                                              ; preds = %206
  %214 = load %struct.brcms_phy*, %struct.brcms_phy** %9, align 8
  %215 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %214, i32 0, i32 0
  %216 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %215, i32 0, i32 2
  %217 = load i32, i32* %216, align 4
  %218 = call i64 @NREV_IS(i32 %217, i32 6)
  %219 = icmp ne i64 %218, 0
  br i1 %219, label %220, label %247

220:                                              ; preds = %213, %206
  %221 = load %struct.brcms_phy*, %struct.brcms_phy** %9, align 8
  %222 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %221, i32 0, i32 0
  %223 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %222, i32 0, i32 0
  %224 = load i32, i32* %223, align 4
  switch i32 %224, label %245 [
    i32 5, label %225
    i32 6, label %229
    i32 7, label %233
    i32 9, label %233
    i32 8, label %237
    i32 11, label %241
  ]

225:                                              ; preds = %220
  %226 = load %struct.chan_info_nphy_radio205x*, %struct.chan_info_nphy_radio205x** @chan_info_nphyrev5_2056v5, align 8
  store %struct.chan_info_nphy_radio205x* %226, %struct.chan_info_nphy_radio205x** %18, align 8
  %227 = load %struct.chan_info_nphy_radio205x*, %struct.chan_info_nphy_radio205x** @chan_info_nphyrev5_2056v5, align 8
  %228 = call i64 @ARRAY_SIZE(%struct.chan_info_nphy_radio205x* %227)
  store i64 %228, i64* %20, align 8
  br label %246

229:                                              ; preds = %220
  %230 = load %struct.chan_info_nphy_radio205x*, %struct.chan_info_nphy_radio205x** @chan_info_nphyrev6_2056v6, align 8
  store %struct.chan_info_nphy_radio205x* %230, %struct.chan_info_nphy_radio205x** %18, align 8
  %231 = load %struct.chan_info_nphy_radio205x*, %struct.chan_info_nphy_radio205x** @chan_info_nphyrev6_2056v6, align 8
  %232 = call i64 @ARRAY_SIZE(%struct.chan_info_nphy_radio205x* %231)
  store i64 %232, i64* %20, align 8
  br label %246

233:                                              ; preds = %220, %220
  %234 = load %struct.chan_info_nphy_radio205x*, %struct.chan_info_nphy_radio205x** @chan_info_nphyrev5n6_2056v7, align 8
  store %struct.chan_info_nphy_radio205x* %234, %struct.chan_info_nphy_radio205x** %18, align 8
  %235 = load %struct.chan_info_nphy_radio205x*, %struct.chan_info_nphy_radio205x** @chan_info_nphyrev5n6_2056v7, align 8
  %236 = call i64 @ARRAY_SIZE(%struct.chan_info_nphy_radio205x* %235)
  store i64 %236, i64* %20, align 8
  br label %246

237:                                              ; preds = %220
  %238 = load %struct.chan_info_nphy_radio205x*, %struct.chan_info_nphy_radio205x** @chan_info_nphyrev6_2056v8, align 8
  store %struct.chan_info_nphy_radio205x* %238, %struct.chan_info_nphy_radio205x** %18, align 8
  %239 = load %struct.chan_info_nphy_radio205x*, %struct.chan_info_nphy_radio205x** @chan_info_nphyrev6_2056v8, align 8
  %240 = call i64 @ARRAY_SIZE(%struct.chan_info_nphy_radio205x* %239)
  store i64 %240, i64* %20, align 8
  br label %246

241:                                              ; preds = %220
  %242 = load %struct.chan_info_nphy_radio205x*, %struct.chan_info_nphy_radio205x** @chan_info_nphyrev6_2056v11, align 8
  store %struct.chan_info_nphy_radio205x* %242, %struct.chan_info_nphy_radio205x** %18, align 8
  %243 = load %struct.chan_info_nphy_radio205x*, %struct.chan_info_nphy_radio205x** @chan_info_nphyrev6_2056v11, align 8
  %244 = call i64 @ARRAY_SIZE(%struct.chan_info_nphy_radio205x* %243)
  store i64 %244, i64* %20, align 8
  br label %246

245:                                              ; preds = %220
  br label %246

246:                                              ; preds = %245, %241, %237, %233, %229, %225
  br label %247

247:                                              ; preds = %246, %213
  br label %248

248:                                              ; preds = %247, %202
  br label %249

249:                                              ; preds = %248, %191
  store i64 0, i64* %16, align 8
  br label %250

250:                                              ; preds = %264, %249
  %251 = load i64, i64* %16, align 8
  %252 = load i64, i64* %20, align 8
  %253 = icmp ult i64 %251, %252
  br i1 %253, label %254, label %267

254:                                              ; preds = %250
  %255 = load %struct.chan_info_nphy_radio205x*, %struct.chan_info_nphy_radio205x** %18, align 8
  %256 = load i64, i64* %16, align 8
  %257 = getelementptr inbounds %struct.chan_info_nphy_radio205x, %struct.chan_info_nphy_radio205x* %255, i64 %256
  %258 = getelementptr inbounds %struct.chan_info_nphy_radio205x, %struct.chan_info_nphy_radio205x* %257, i32 0, i32 0
  %259 = load i64, i64* %258, align 8
  %260 = load i64, i64* %10, align 8
  %261 = icmp eq i64 %259, %260
  br i1 %261, label %262, label %263

262:                                              ; preds = %254
  br label %267

263:                                              ; preds = %254
  br label %264

264:                                              ; preds = %263
  %265 = load i64, i64* %16, align 8
  %266 = add i64 %265, 1
  store i64 %266, i64* %16, align 8
  br label %250

267:                                              ; preds = %262, %250
  %268 = load i64, i64* %16, align 8
  %269 = load i64, i64* %20, align 8
  %270 = icmp uge i64 %268, %269
  br i1 %270, label %271, label %272

271:                                              ; preds = %267
  br label %322

272:                                              ; preds = %267
  %273 = load %struct.chan_info_nphy_radio205x*, %struct.chan_info_nphy_radio205x** %18, align 8
  %274 = load i64, i64* %16, align 8
  %275 = getelementptr inbounds %struct.chan_info_nphy_radio205x, %struct.chan_info_nphy_radio205x* %273, i64 %274
  %276 = load %struct.chan_info_nphy_radio205x**, %struct.chan_info_nphy_radio205x*** %13, align 8
  store %struct.chan_info_nphy_radio205x* %275, %struct.chan_info_nphy_radio205x** %276, align 8
  %277 = load %struct.chan_info_nphy_radio205x*, %struct.chan_info_nphy_radio205x** %18, align 8
  %278 = load i64, i64* %16, align 8
  %279 = getelementptr inbounds %struct.chan_info_nphy_radio205x, %struct.chan_info_nphy_radio205x* %277, i64 %278
  %280 = getelementptr inbounds %struct.chan_info_nphy_radio205x, %struct.chan_info_nphy_radio205x* %279, i32 0, i32 1
  %281 = load i32, i32* %280, align 8
  store i32 %281, i32* %21, align 4
  br label %318

282:                                              ; preds = %177
  store i64 0, i64* %16, align 8
  br label %283

283:                                              ; preds = %298, %282
  %284 = load i64, i64* %16, align 8
  %285 = load %struct.chan_info_nphy_radio205x*, %struct.chan_info_nphy_radio205x** @chan_info_nphy_2055, align 8
  %286 = call i64 @ARRAY_SIZE(%struct.chan_info_nphy_radio205x* %285)
  %287 = icmp ult i64 %284, %286
  br i1 %287, label %288, label %301

288:                                              ; preds = %283
  %289 = load %struct.chan_info_nphy_radio205x*, %struct.chan_info_nphy_radio205x** @chan_info_nphy_2055, align 8
  %290 = load i64, i64* %16, align 8
  %291 = getelementptr inbounds %struct.chan_info_nphy_radio205x, %struct.chan_info_nphy_radio205x* %289, i64 %290
  %292 = getelementptr inbounds %struct.chan_info_nphy_radio205x, %struct.chan_info_nphy_radio205x* %291, i32 0, i32 0
  %293 = load i64, i64* %292, align 8
  %294 = load i64, i64* %10, align 8
  %295 = icmp eq i64 %293, %294
  br i1 %295, label %296, label %297

296:                                              ; preds = %288
  br label %301

297:                                              ; preds = %288
  br label %298

298:                                              ; preds = %297
  %299 = load i64, i64* %16, align 8
  %300 = add i64 %299, 1
  store i64 %300, i64* %16, align 8
  br label %283

301:                                              ; preds = %296, %283
  %302 = load i64, i64* %16, align 8
  %303 = load %struct.chan_info_nphy_radio205x*, %struct.chan_info_nphy_radio205x** @chan_info_nphy_2055, align 8
  %304 = call i64 @ARRAY_SIZE(%struct.chan_info_nphy_radio205x* %303)
  %305 = icmp uge i64 %302, %304
  br i1 %305, label %306, label %307

306:                                              ; preds = %301
  br label %322

307:                                              ; preds = %301
  %308 = load %struct.chan_info_nphy_radio205x*, %struct.chan_info_nphy_radio205x** @chan_info_nphy_2055, align 8
  %309 = load i64, i64* %16, align 8
  %310 = getelementptr inbounds %struct.chan_info_nphy_radio205x, %struct.chan_info_nphy_radio205x* %308, i64 %309
  %311 = bitcast %struct.chan_info_nphy_radio205x* %310 to %struct.chan_info_nphy_2055*
  %312 = load %struct.chan_info_nphy_2055**, %struct.chan_info_nphy_2055*** %15, align 8
  store %struct.chan_info_nphy_2055* %311, %struct.chan_info_nphy_2055** %312, align 8
  %313 = load %struct.chan_info_nphy_radio205x*, %struct.chan_info_nphy_radio205x** @chan_info_nphy_2055, align 8
  %314 = load i64, i64* %16, align 8
  %315 = getelementptr inbounds %struct.chan_info_nphy_radio205x, %struct.chan_info_nphy_radio205x* %313, i64 %314
  %316 = getelementptr inbounds %struct.chan_info_nphy_radio205x, %struct.chan_info_nphy_radio205x* %315, i32 0, i32 1
  %317 = load i32, i32* %316, align 8
  store i32 %317, i32* %21, align 4
  br label %318

318:                                              ; preds = %307, %272
  br label %319

319:                                              ; preds = %318, %176
  %320 = load i32, i32* %21, align 4
  %321 = load i32*, i32** %11, align 8
  store i32 %320, i32* %321, align 4
  store i32 1, i32* %8, align 4
  br label %325

322:                                              ; preds = %306, %271, %149, %107
  %323 = load i32, i32* @WL_CHAN_FREQ_RANGE_2G, align 4
  %324 = load i32*, i32** %11, align 8
  store i32 %323, i32* %324, align 4
  store i32 0, i32* %8, align 4
  br label %325

325:                                              ; preds = %322, %319
  %326 = load i32, i32* %8, align 4
  ret i32 %326
}

declare dso_local i64 @NREV_GE(i32, i32) #1

declare dso_local i64 @NREV_IS(i32, i32) #1

declare dso_local i64 @ARRAY_SIZE(%struct.chan_info_nphy_radio205x*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
