; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/phy/extr_phy_lcn.c_wlc_lcnphy_radio_2064_channel_tune_4313.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/phy/extr_phy_lcn.c_wlc_lcnphy_radio_2064_channel_tune_4313.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.chan_info_2064_lcnphy = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.brcms_phy = type { i32, %struct.TYPE_4__*, %struct.TYPE_3__, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@chan_info_2064_lcnphy = common dso_local global %struct.chan_info_2064_lcnphy* null, align 8
@RADIO_2064_REG09D = common dso_local global i32 0, align 4
@RADIO_2064_REG09E = common dso_local global i32 0, align 4
@PLL_2064_LOOP_BW = common dso_local global i32 0, align 4
@PLL_2064_D30 = common dso_local global i32 0, align 4
@PLL_2064_LOOP_BW_DOUBLER = common dso_local global i32 0, align 4
@PLL_2064_D30_DOUBLER = common dso_local global i32 0, align 4
@RADIO_2064_REG02A = common dso_local global i32 0, align 4
@RADIO_2064_REG030 = common dso_local global i32 0, align 4
@RADIO_2064_REG091 = common dso_local global i32 0, align 4
@RADIO_2064_REG038 = common dso_local global i32 0, align 4
@RADIO_2064_REG05E = common dso_local global i32 0, align 4
@RADIO_2064_REG06C = common dso_local global i32 0, align 4
@RADIO_2064_REG044 = common dso_local global i32 0, align 4
@RADIO_2064_REG12B = common dso_local global i32 0, align 4
@PLL_2064_MHZ = common dso_local global i32 0, align 4
@RADIO_2064_REG04F = common dso_local global i32 0, align 4
@RADIO_2064_REG052 = common dso_local global i32 0, align 4
@RADIO_2064_REG053 = common dso_local global i32 0, align 4
@RADIO_2064_REG051 = common dso_local global i32 0, align 4
@RADIO_2064_REG054 = common dso_local global i32 0, align 4
@RADIO_2064_REG045 = common dso_local global i32 0, align 4
@RADIO_2064_REG046 = common dso_local global i32 0, align 4
@RADIO_2064_REG047 = common dso_local global i32 0, align 4
@RADIO_2064_REG048 = common dso_local global i32 0, align 4
@RADIO_2064_REG040 = common dso_local global i32 0, align 4
@RADIO_2064_REG041 = common dso_local global i32 0, align 4
@RADIO_2064_REG042 = common dso_local global i32 0, align 4
@RADIO_2064_REG043 = common dso_local global i32 0, align 4
@LCN_BW_LMT = common dso_local global i32 0, align 4
@PLL_2064_HIGH_END_KVCO = common dso_local global i32 0, align 4
@PLL_2064_LOW_END_KVCO = common dso_local global i32 0, align 4
@PLL_2064_LOW_END_VCO = common dso_local global i32 0, align 4
@PLL_2064_HIGH_END_VCO = common dso_local global i32 0, align 4
@LCN_VCO_DIV = common dso_local global i32 0, align 4
@LCN_OFFSET = common dso_local global i32 0, align 4
@LCN_FACT = common dso_local global i32 0, align 4
@LCN_CUR_DIV = common dso_local global i32 0, align 4
@LCN_CUR_LMT = common dso_local global i32 0, align 4
@LCN_MULT = common dso_local global i32 0, align 4
@RADIO_2064_REG03C = common dso_local global i32 0, align 4
@RADIO_2064_REG03D = common dso_local global i32 0, align 4
@BFL_FEM = common dso_local global i32 0, align 4
@wlc_lcnphy_radio_2064_channel_tune_4313.reg038 = internal constant [14 x i32] [i32 13, i32 14, i32 13, i32 13, i32 13, i32 12, i32 10, i32 11, i32 11, i32 3, i32 3, i32 2, i32 0, i32 0], align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.brcms_phy*, i32)* @wlc_lcnphy_radio_2064_channel_tune_4313 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wlc_lcnphy_radio_2064_channel_tune_4313(%struct.brcms_phy* %0, i32 %1) #0 {
  %3 = alloca %struct.brcms_phy*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.chan_info_2064_lcnphy*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  store %struct.brcms_phy* %0, %struct.brcms_phy** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %7, align 4
  %35 = load %struct.chan_info_2064_lcnphy*, %struct.chan_info_2064_lcnphy** @chan_info_2064_lcnphy, align 8
  %36 = getelementptr inbounds %struct.chan_info_2064_lcnphy, %struct.chan_info_2064_lcnphy* %35, i64 0
  store %struct.chan_info_2064_lcnphy* %36, %struct.chan_info_2064_lcnphy** %6, align 8
  store i32 1, i32* %7, align 4
  %37 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %38 = load i32, i32* @RADIO_2064_REG09D, align 4
  %39 = call i32 @mod_radio_reg(%struct.brcms_phy* %37, i32 %38, i32 4, i32 4)
  %40 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %41 = load i32, i32* @RADIO_2064_REG09E, align 4
  %42 = call i32 @write_radio_reg(%struct.brcms_phy* %40, i32 %41, i32 15)
  %43 = load i32, i32* %7, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %48, label %45

45:                                               ; preds = %2
  %46 = load i32, i32* @PLL_2064_LOOP_BW, align 4
  store i32 %46, i32* %25, align 4
  %47 = load i32, i32* @PLL_2064_D30, align 4
  store i32 %47, i32* %26, align 4
  br label %51

48:                                               ; preds = %2
  %49 = load i32, i32* @PLL_2064_LOOP_BW_DOUBLER, align 4
  store i32 %49, i32* %25, align 4
  %50 = load i32, i32* @PLL_2064_D30_DOUBLER, align 4
  store i32 %50, i32* %26, align 4
  br label %51

51:                                               ; preds = %48, %45
  %52 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %53 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 4
  %55 = call i64 @CHSPEC_IS2G(i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %86

57:                                               ; preds = %51
  store i64 0, i64* %5, align 8
  br label %58

58:                                               ; preds = %73, %57
  %59 = load i64, i64* %5, align 8
  %60 = load %struct.chan_info_2064_lcnphy*, %struct.chan_info_2064_lcnphy** @chan_info_2064_lcnphy, align 8
  %61 = call i64 @ARRAY_SIZE(%struct.chan_info_2064_lcnphy* %60)
  %62 = icmp ult i64 %59, %61
  br i1 %62, label %63, label %76

63:                                               ; preds = %58
  %64 = load %struct.chan_info_2064_lcnphy*, %struct.chan_info_2064_lcnphy** @chan_info_2064_lcnphy, align 8
  %65 = load i64, i64* %5, align 8
  %66 = getelementptr inbounds %struct.chan_info_2064_lcnphy, %struct.chan_info_2064_lcnphy* %64, i64 %65
  %67 = getelementptr inbounds %struct.chan_info_2064_lcnphy, %struct.chan_info_2064_lcnphy* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* %4, align 4
  %70 = icmp eq i32 %68, %69
  br i1 %70, label %71, label %72

71:                                               ; preds = %63
  br label %76

72:                                               ; preds = %63
  br label %73

73:                                               ; preds = %72
  %74 = load i64, i64* %5, align 8
  %75 = add i64 %74, 1
  store i64 %75, i64* %5, align 8
  br label %58

76:                                               ; preds = %71, %58
  %77 = load i64, i64* %5, align 8
  %78 = load %struct.chan_info_2064_lcnphy*, %struct.chan_info_2064_lcnphy** @chan_info_2064_lcnphy, align 8
  %79 = call i64 @ARRAY_SIZE(%struct.chan_info_2064_lcnphy* %78)
  %80 = icmp uge i64 %77, %79
  br i1 %80, label %81, label %82

81:                                               ; preds = %76
  br label %458

82:                                               ; preds = %76
  %83 = load %struct.chan_info_2064_lcnphy*, %struct.chan_info_2064_lcnphy** @chan_info_2064_lcnphy, align 8
  %84 = load i64, i64* %5, align 8
  %85 = getelementptr inbounds %struct.chan_info_2064_lcnphy, %struct.chan_info_2064_lcnphy* %83, i64 %84
  store %struct.chan_info_2064_lcnphy* %85, %struct.chan_info_2064_lcnphy** %6, align 8
  br label %86

86:                                               ; preds = %82, %51
  %87 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %88 = load i32, i32* @RADIO_2064_REG02A, align 4
  %89 = load %struct.chan_info_2064_lcnphy*, %struct.chan_info_2064_lcnphy** %6, align 8
  %90 = getelementptr inbounds %struct.chan_info_2064_lcnphy, %struct.chan_info_2064_lcnphy* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @write_radio_reg(%struct.brcms_phy* %87, i32 %88, i32 %91)
  %93 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %94 = load i32, i32* @RADIO_2064_REG030, align 4
  %95 = load %struct.chan_info_2064_lcnphy*, %struct.chan_info_2064_lcnphy** %6, align 8
  %96 = getelementptr inbounds %struct.chan_info_2064_lcnphy, %struct.chan_info_2064_lcnphy* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @mod_radio_reg(%struct.brcms_phy* %93, i32 %94, i32 3, i32 %97)
  %99 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %100 = load i32, i32* @RADIO_2064_REG091, align 4
  %101 = load %struct.chan_info_2064_lcnphy*, %struct.chan_info_2064_lcnphy** %6, align 8
  %102 = getelementptr inbounds %struct.chan_info_2064_lcnphy, %struct.chan_info_2064_lcnphy* %101, i32 0, i32 3
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @mod_radio_reg(%struct.brcms_phy* %99, i32 %100, i32 3, i32 %103)
  %105 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %106 = load i32, i32* @RADIO_2064_REG038, align 4
  %107 = load %struct.chan_info_2064_lcnphy*, %struct.chan_info_2064_lcnphy** %6, align 8
  %108 = getelementptr inbounds %struct.chan_info_2064_lcnphy, %struct.chan_info_2064_lcnphy* %107, i32 0, i32 4
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @mod_radio_reg(%struct.brcms_phy* %105, i32 %106, i32 15, i32 %109)
  %111 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %112 = load i32, i32* @RADIO_2064_REG030, align 4
  %113 = load %struct.chan_info_2064_lcnphy*, %struct.chan_info_2064_lcnphy** %6, align 8
  %114 = getelementptr inbounds %struct.chan_info_2064_lcnphy, %struct.chan_info_2064_lcnphy* %113, i32 0, i32 5
  %115 = load i32, i32* %114, align 4
  %116 = shl i32 %115, 2
  %117 = call i32 @mod_radio_reg(%struct.brcms_phy* %111, i32 %112, i32 12, i32 %116)
  %118 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %119 = load i32, i32* @RADIO_2064_REG05E, align 4
  %120 = load %struct.chan_info_2064_lcnphy*, %struct.chan_info_2064_lcnphy** %6, align 8
  %121 = getelementptr inbounds %struct.chan_info_2064_lcnphy, %struct.chan_info_2064_lcnphy* %120, i32 0, i32 6
  %122 = load i32, i32* %121, align 4
  %123 = call i32 @mod_radio_reg(%struct.brcms_phy* %118, i32 %119, i32 15, i32 %122)
  %124 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %125 = load i32, i32* @RADIO_2064_REG05E, align 4
  %126 = load %struct.chan_info_2064_lcnphy*, %struct.chan_info_2064_lcnphy** %6, align 8
  %127 = getelementptr inbounds %struct.chan_info_2064_lcnphy, %struct.chan_info_2064_lcnphy* %126, i32 0, i32 7
  %128 = load i32, i32* %127, align 4
  %129 = shl i32 %128, 4
  %130 = call i32 @mod_radio_reg(%struct.brcms_phy* %124, i32 %125, i32 240, i32 %129)
  %131 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %132 = load i32, i32* @RADIO_2064_REG06C, align 4
  %133 = load %struct.chan_info_2064_lcnphy*, %struct.chan_info_2064_lcnphy** %6, align 8
  %134 = getelementptr inbounds %struct.chan_info_2064_lcnphy, %struct.chan_info_2064_lcnphy* %133, i32 0, i32 8
  %135 = load i32, i32* %134, align 4
  %136 = call i32 @write_radio_reg(%struct.brcms_phy* %131, i32 %132, i32 %135)
  %137 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %138 = load i32, i32* @RADIO_2064_REG044, align 4
  %139 = call i64 @read_radio_reg(%struct.brcms_phy* %137, i32 %138)
  %140 = trunc i64 %139 to i32
  store i32 %140, i32* %8, align 4
  %141 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %142 = load i32, i32* @RADIO_2064_REG12B, align 4
  %143 = call i64 @read_radio_reg(%struct.brcms_phy* %141, i32 %142)
  %144 = trunc i64 %143 to i32
  store i32 %144, i32* %9, align 4
  %145 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %146 = load i32, i32* @RADIO_2064_REG044, align 4
  %147 = call i32 @or_radio_reg(%struct.brcms_phy* %145, i32 %146, i32 7)
  %148 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %149 = load i32, i32* @RADIO_2064_REG12B, align 4
  %150 = call i32 @or_radio_reg(%struct.brcms_phy* %148, i32 %149, i32 14)
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  %151 = load i32, i32* %7, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %158

153:                                              ; preds = %86
  %154 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %155 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = shl i32 %156, 1
  br label %162

158:                                              ; preds = %86
  %159 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %160 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  br label %162

162:                                              ; preds = %158, %153
  %163 = phi i32 [ %157, %153 ], [ %161, %158 ]
  store i32 %163, i32* %22, align 4
  %164 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %165 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 8
  %167 = icmp sgt i32 %166, 26000000
  br i1 %167, label %168, label %169

168:                                              ; preds = %162
  store i32 1, i32* %17, align 4
  br label %169

169:                                              ; preds = %168, %162
  %170 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %171 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 8
  %173 = icmp sgt i32 %172, 52000000
  br i1 %173, label %174, label %175

174:                                              ; preds = %169
  store i32 1, i32* %18, align 4
  br label %175

175:                                              ; preds = %174, %169
  %176 = load i32, i32* %17, align 4
  %177 = icmp eq i32 %176, 0
  br i1 %177, label %178, label %179

178:                                              ; preds = %175
  store i32 1, i32* %24, align 4
  br label %185

179:                                              ; preds = %175
  %180 = load i32, i32* %18, align 4
  %181 = icmp eq i32 %180, 0
  br i1 %181, label %182, label %183

182:                                              ; preds = %179
  store i32 2, i32* %24, align 4
  br label %184

183:                                              ; preds = %179
  store i32 4, i32* %24, align 4
  br label %184

184:                                              ; preds = %183, %182
  br label %185

185:                                              ; preds = %184, %178
  %186 = load %struct.chan_info_2064_lcnphy*, %struct.chan_info_2064_lcnphy** %6, align 8
  %187 = getelementptr inbounds %struct.chan_info_2064_lcnphy, %struct.chan_info_2064_lcnphy* %186, i32 0, i32 9
  %188 = load i32, i32* %187, align 4
  %189 = mul nsw i32 %188, 3
  store i32 %189, i32* %21, align 4
  %190 = load i32, i32* %22, align 4
  %191 = mul nsw i32 2, %190
  store i32 %191, i32* %23, align 4
  %192 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %193 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 8
  %195 = load i32, i32* @PLL_2064_MHZ, align 4
  %196 = call i32 @wlc_lcnphy_qdiv_roundup(i32 %194, i32 %195, i32 16)
  store i32 %196, i32* %10, align 4
  %197 = load i32, i32* %22, align 4
  %198 = load i32, i32* @PLL_2064_MHZ, align 4
  %199 = call i32 @wlc_lcnphy_qdiv_roundup(i32 %197, i32 %198, i32 16)
  store i32 %199, i32* %11, align 4
  %200 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %201 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 8
  %203 = load i32, i32* %24, align 4
  %204 = mul nsw i32 %202, %203
  %205 = load i32, i32* @PLL_2064_MHZ, align 4
  %206 = sdiv i32 %204, %205
  store i32 %206, i32* %13, align 4
  %207 = load i32, i32* %21, align 4
  %208 = call i32 @wlc_lcnphy_qdiv_roundup(i32 %207, i32 2, i32 16)
  store i32 %208, i32* %12, align 4
  %209 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %210 = load i32, i32* @RADIO_2064_REG04F, align 4
  %211 = call i32 @write_radio_reg(%struct.brcms_phy* %209, i32 %210, i32 2)
  %212 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %213 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %212, i32 0, i32 0
  %214 = load i32, i32* %213, align 8
  %215 = load i32, i32* %24, align 4
  %216 = mul nsw i32 %214, %215
  %217 = mul nsw i32 %216, 4
  %218 = sdiv i32 %217, 5
  %219 = load i32, i32* @PLL_2064_MHZ, align 4
  %220 = sdiv i32 %218, %219
  %221 = sub nsw i32 %220, 1
  store i32 %221, i32* %14, align 4
  %222 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %223 = load i32, i32* @RADIO_2064_REG052, align 4
  %224 = load i32, i32* %14, align 4
  %225 = ashr i32 %224, 2
  %226 = and i32 7, %225
  %227 = call i32 @write_radio_reg(%struct.brcms_phy* %222, i32 %223, i32 %226)
  %228 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %229 = load i32, i32* @RADIO_2064_REG053, align 4
  %230 = load i32, i32* %14, align 4
  %231 = and i32 %230, 3
  %232 = shl i32 %231, 5
  %233 = call i32 @write_radio_reg(%struct.brcms_phy* %228, i32 %229, i32 %232)
  %234 = load i32, i32* %13, align 4
  %235 = mul nsw i32 %234, 8
  %236 = load i32, i32* %14, align 4
  %237 = add nsw i32 %236, 1
  %238 = sdiv i32 %235, %237
  %239 = sub nsw i32 %238, 1
  store i32 %239, i32* %15, align 4
  %240 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %241 = load i32, i32* @RADIO_2064_REG051, align 4
  %242 = load i32, i32* %15, align 4
  %243 = call i32 @write_radio_reg(%struct.brcms_phy* %240, i32 %241, i32 %242)
  %244 = load i32, i32* %15, align 4
  %245 = add nsw i32 %244, 1
  %246 = load i32, i32* %14, align 4
  %247 = add nsw i32 %246, 1
  %248 = mul nsw i32 %245, %247
  %249 = load i32, i32* %13, align 4
  %250 = sdiv i32 %248, %249
  store i32 %250, i32* %16, align 4
  %251 = load i32, i32* %16, align 4
  %252 = mul nsw i32 %251, 3
  %253 = load %struct.chan_info_2064_lcnphy*, %struct.chan_info_2064_lcnphy** %6, align 8
  %254 = getelementptr inbounds %struct.chan_info_2064_lcnphy, %struct.chan_info_2064_lcnphy* %253, i32 0, i32 9
  %255 = load i32, i32* %254, align 4
  %256 = mul nsw i32 %252, %255
  %257 = sdiv i32 %256, 32
  %258 = sub nsw i32 %257, 1
  store i32 %258, i32* %27, align 4
  %259 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %260 = load i32, i32* @RADIO_2064_REG053, align 4
  %261 = load i32, i32* %27, align 4
  %262 = ashr i32 %261, 8
  %263 = call i32 @mod_radio_reg(%struct.brcms_phy* %259, i32 %260, i32 15, i32 %262)
  %264 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %265 = load i32, i32* @RADIO_2064_REG053, align 4
  %266 = call i32 @or_radio_reg(%struct.brcms_phy* %264, i32 %265, i32 16)
  %267 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %268 = load i32, i32* @RADIO_2064_REG054, align 4
  %269 = load i32, i32* %27, align 4
  %270 = and i32 %269, 255
  %271 = call i32 @write_radio_reg(%struct.brcms_phy* %267, i32 %268, i32 %270)
  %272 = load i32, i32* %21, align 4
  %273 = load i32, i32* @PLL_2064_MHZ, align 4
  %274 = ashr i32 %273, 4
  %275 = mul nsw i32 %272, %274
  %276 = load i32, i32* %23, align 4
  %277 = sdiv i32 %275, %276
  %278 = shl i32 %277, 4
  store i32 %278, i32* %19, align 4
  %279 = load i32, i32* %21, align 4
  %280 = load i32, i32* @PLL_2064_MHZ, align 4
  %281 = ashr i32 %280, 4
  %282 = mul nsw i32 %279, %281
  %283 = load i32, i32* %23, align 4
  %284 = srem i32 %282, %283
  %285 = shl i32 %284, 4
  store i32 %285, i32* %20, align 4
  br label %286

286:                                              ; preds = %290, %185
  %287 = load i32, i32* %20, align 4
  %288 = load i32, i32* %23, align 4
  %289 = icmp sge i32 %287, %288
  br i1 %289, label %290, label %296

290:                                              ; preds = %286
  %291 = load i32, i32* %19, align 4
  %292 = add nsw i32 %291, 1
  store i32 %292, i32* %19, align 4
  %293 = load i32, i32* %23, align 4
  %294 = load i32, i32* %20, align 4
  %295 = sub nsw i32 %294, %293
  store i32 %295, i32* %20, align 4
  br label %286

296:                                              ; preds = %286
  %297 = load i32, i32* %20, align 4
  %298 = load i32, i32* %23, align 4
  %299 = call i32 @wlc_lcnphy_qdiv_roundup(i32 %297, i32 %298, i32 20)
  store i32 %299, i32* %20, align 4
  %300 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %301 = load i32, i32* @RADIO_2064_REG045, align 4
  %302 = load i32, i32* %19, align 4
  %303 = ashr i32 %302, 4
  %304 = call i32 @mod_radio_reg(%struct.brcms_phy* %300, i32 %301, i32 31, i32 %303)
  %305 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %306 = load i32, i32* @RADIO_2064_REG046, align 4
  %307 = load i32, i32* %19, align 4
  %308 = shl i32 %307, 4
  %309 = call i32 @mod_radio_reg(%struct.brcms_phy* %305, i32 %306, i32 496, i32 %308)
  %310 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %311 = load i32, i32* @RADIO_2064_REG046, align 4
  %312 = load i32, i32* %20, align 4
  %313 = ashr i32 %312, 16
  %314 = call i32 @mod_radio_reg(%struct.brcms_phy* %310, i32 %311, i32 15, i32 %313)
  %315 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %316 = load i32, i32* @RADIO_2064_REG047, align 4
  %317 = load i32, i32* %20, align 4
  %318 = ashr i32 %317, 8
  %319 = and i32 %318, 255
  %320 = call i32 @write_radio_reg(%struct.brcms_phy* %315, i32 %316, i32 %319)
  %321 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %322 = load i32, i32* @RADIO_2064_REG048, align 4
  %323 = load i32, i32* %20, align 4
  %324 = and i32 %323, 255
  %325 = call i32 @write_radio_reg(%struct.brcms_phy* %321, i32 %322, i32 %324)
  %326 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %327 = load i32, i32* @RADIO_2064_REG040, align 4
  %328 = call i32 @write_radio_reg(%struct.brcms_phy* %326, i32 %327, i32 251)
  %329 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %330 = load i32, i32* @RADIO_2064_REG041, align 4
  %331 = call i32 @write_radio_reg(%struct.brcms_phy* %329, i32 %330, i32 154)
  %332 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %333 = load i32, i32* @RADIO_2064_REG042, align 4
  %334 = call i32 @write_radio_reg(%struct.brcms_phy* %332, i32 %333, i32 163)
  %335 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %336 = load i32, i32* @RADIO_2064_REG043, align 4
  %337 = call i32 @write_radio_reg(%struct.brcms_phy* %335, i32 %336, i32 12)
  %338 = load i32, i32* @LCN_BW_LMT, align 4
  %339 = load i32, i32* %25, align 4
  %340 = sdiv i32 %338, %339
  store i32 %340, i32* %28, align 4
  %341 = load i32, i32* @PLL_2064_HIGH_END_KVCO, align 4
  %342 = load i32, i32* @PLL_2064_LOW_END_KVCO, align 4
  %343 = sub nsw i32 %341, %342
  %344 = load i32, i32* %21, align 4
  %345 = sdiv i32 %344, 2
  %346 = load i32, i32* @PLL_2064_LOW_END_VCO, align 4
  %347 = sub nsw i32 %345, %346
  %348 = mul nsw i32 %343, %347
  %349 = load i32, i32* @PLL_2064_HIGH_END_VCO, align 4
  %350 = load i32, i32* @PLL_2064_LOW_END_VCO, align 4
  %351 = sub nsw i32 %349, %350
  %352 = sdiv i32 %348, %351
  %353 = load i32, i32* @PLL_2064_LOW_END_KVCO, align 4
  %354 = add nsw i32 %352, %353
  store i32 %354, i32* %34, align 4
  %355 = load i32, i32* %34, align 4
  %356 = mul nsw i32 %355, 10
  %357 = load i32, i32* @LCN_VCO_DIV, align 4
  %358 = sdiv i32 %356, %357
  store i32 %358, i32* %29, align 4
  %359 = load i32, i32* %26, align 4
  %360 = load i32, i32* @LCN_OFFSET, align 4
  %361 = sub nsw i32 %359, %360
  %362 = load i32, i32* @LCN_FACT, align 4
  %363 = sdiv i32 %361, %362
  store i32 %363, i32* %30, align 4
  %364 = load i32, i32* @LCN_OFFSET, align 4
  %365 = load i32, i32* %30, align 4
  %366 = load i32, i32* @LCN_FACT, align 4
  %367 = mul nsw i32 %365, %366
  %368 = add nsw i32 %364, %367
  store i32 %368, i32* %33, align 4
  %369 = load i32, i32* %33, align 4
  %370 = mul nsw i32 %369, 10
  %371 = load i32, i32* @LCN_CUR_DIV, align 4
  %372 = sdiv i32 %370, %371
  store i32 %372, i32* %31, align 4
  %373 = load i32, i32* @LCN_CUR_LMT, align 4
  %374 = load i32, i32* %28, align 4
  %375 = mul nsw i32 %373, %374
  %376 = load i32, i32* @LCN_MULT, align 4
  %377 = mul nsw i32 %375, %376
  %378 = mul nsw i32 %377, 100
  %379 = load i32, i32* %29, align 4
  %380 = sdiv i32 %378, %379
  %381 = load i32, i32* %31, align 4
  %382 = sdiv i32 %380, %381
  store i32 %382, i32* %32, align 4
  %383 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %384 = load i32, i32* @RADIO_2064_REG03C, align 4
  %385 = load i32, i32* %32, align 4
  %386 = call i32 @mod_radio_reg(%struct.brcms_phy* %383, i32 %384, i32 63, i32 %385)
  %387 = load i32, i32* %4, align 4
  %388 = icmp sge i32 %387, 1
  br i1 %388, label %389, label %396

389:                                              ; preds = %296
  %390 = load i32, i32* %4, align 4
  %391 = icmp sle i32 %390, 5
  br i1 %391, label %392, label %396

392:                                              ; preds = %389
  %393 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %394 = load i32, i32* @RADIO_2064_REG03C, align 4
  %395 = call i32 @write_radio_reg(%struct.brcms_phy* %393, i32 %394, i32 8)
  br label %400

396:                                              ; preds = %389, %296
  %397 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %398 = load i32, i32* @RADIO_2064_REG03C, align 4
  %399 = call i32 @write_radio_reg(%struct.brcms_phy* %397, i32 %398, i32 7)
  br label %400

400:                                              ; preds = %396, %392
  %401 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %402 = load i32, i32* @RADIO_2064_REG03D, align 4
  %403 = call i32 @write_radio_reg(%struct.brcms_phy* %401, i32 %402, i32 3)
  %404 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %405 = load i32, i32* @RADIO_2064_REG044, align 4
  %406 = call i32 @mod_radio_reg(%struct.brcms_phy* %404, i32 %405, i32 12, i32 12)
  %407 = call i32 @udelay(i32 1)
  %408 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %409 = call i32 @wlc_2064_vco_cal(%struct.brcms_phy* %408)
  %410 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %411 = load i32, i32* @RADIO_2064_REG044, align 4
  %412 = load i32, i32* %8, align 4
  %413 = call i32 @write_radio_reg(%struct.brcms_phy* %410, i32 %411, i32 %412)
  %414 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %415 = load i32, i32* @RADIO_2064_REG12B, align 4
  %416 = load i32, i32* %9, align 4
  %417 = call i32 @write_radio_reg(%struct.brcms_phy* %414, i32 %415, i32 %416)
  %418 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %419 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %418, i32 0, i32 2
  %420 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %419, i32 0, i32 0
  %421 = load i32, i32* %420, align 8
  %422 = call i64 @LCNREV_IS(i32 %421, i32 1)
  %423 = icmp ne i64 %422, 0
  br i1 %423, label %424, label %431

424:                                              ; preds = %400
  %425 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %426 = load i32, i32* @RADIO_2064_REG038, align 4
  %427 = call i32 @write_radio_reg(%struct.brcms_phy* %425, i32 %426, i32 3)
  %428 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %429 = load i32, i32* @RADIO_2064_REG091, align 4
  %430 = call i32 @write_radio_reg(%struct.brcms_phy* %428, i32 %429, i32 7)
  br label %431

431:                                              ; preds = %424, %400
  %432 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %433 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %432, i32 0, i32 1
  %434 = load %struct.TYPE_4__*, %struct.TYPE_4__** %433, align 8
  %435 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %434, i32 0, i32 0
  %436 = load i32, i32* %435, align 4
  %437 = load i32, i32* @BFL_FEM, align 4
  %438 = and i32 %436, %437
  %439 = icmp ne i32 %438, 0
  br i1 %439, label %458, label %440

440:                                              ; preds = %431
  %441 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %442 = load i32, i32* @RADIO_2064_REG02A, align 4
  %443 = call i32 @write_radio_reg(%struct.brcms_phy* %441, i32 %442, i32 15)
  %444 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %445 = load i32, i32* @RADIO_2064_REG091, align 4
  %446 = call i32 @write_radio_reg(%struct.brcms_phy* %444, i32 %445, i32 3)
  %447 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %448 = load i32, i32* @RADIO_2064_REG038, align 4
  %449 = call i32 @write_radio_reg(%struct.brcms_phy* %447, i32 %448, i32 3)
  %450 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %451 = load i32, i32* @RADIO_2064_REG038, align 4
  %452 = load i32, i32* %4, align 4
  %453 = sub nsw i32 %452, 1
  %454 = sext i32 %453 to i64
  %455 = getelementptr inbounds [14 x i32], [14 x i32]* @wlc_lcnphy_radio_2064_channel_tune_4313.reg038, i64 0, i64 %454
  %456 = load i32, i32* %455, align 4
  %457 = call i32 @write_radio_reg(%struct.brcms_phy* %450, i32 %451, i32 %456)
  br label %458

458:                                              ; preds = %81, %440, %431
  ret void
}

declare dso_local i32 @mod_radio_reg(%struct.brcms_phy*, i32, i32, i32) #1

declare dso_local i32 @write_radio_reg(%struct.brcms_phy*, i32, i32) #1

declare dso_local i64 @CHSPEC_IS2G(i32) #1

declare dso_local i64 @ARRAY_SIZE(%struct.chan_info_2064_lcnphy*) #1

declare dso_local i64 @read_radio_reg(%struct.brcms_phy*, i32) #1

declare dso_local i32 @or_radio_reg(%struct.brcms_phy*, i32, i32) #1

declare dso_local i32 @wlc_lcnphy_qdiv_roundup(i32, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @wlc_2064_vco_cal(%struct.brcms_phy*) #1

declare dso_local i64 @LCNREV_IS(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
