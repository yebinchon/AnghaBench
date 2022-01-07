; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/phy/extr_phy_n.c_wlc_phy_ipa_internal_tssi_setup_nphy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/phy/extr_phy_n.c_wlc_phy_ipa_internal_tssi_setup_nphy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcms_phy = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64, i32, i32 }

@RADIO_2057 = common dso_local global i32 0, align 4
@TX = common dso_local global i32 0, align 4
@TX_SSI_MASTER = common dso_local global i32 0, align 4
@TX_SSI_MUX = common dso_local global i32 0, align 4
@TSSIA = common dso_local global i32 0, align 4
@TSSIG = common dso_local global i32 0, align 4
@IQCAL_VCM_HG = common dso_local global i32 0, align 4
@IQCAL_IDAC = common dso_local global i32 0, align 4
@TSSI_VCM = common dso_local global i32 0, align 4
@TSSI_MISC1 = common dso_local global i32 0, align 4
@RADIO_2056 = common dso_local global i32 0, align 4
@RESERVED_ADDR31 = common dso_local global i32 0, align 4
@RESERVED_ADDR30 = common dso_local global i32 0, align 4
@GPIO_MASTER1 = common dso_local global i32 0, align 4
@TX_AMP_DET = common dso_local global i32 0, align 4
@TSSI_MISC2 = common dso_local global i32 0, align 4
@TSSI_MISC3 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.brcms_phy*)* @wlc_phy_ipa_internal_tssi_setup_nphy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wlc_phy_ipa_internal_tssi_setup_nphy(%struct.brcms_phy* %0) #0 {
  %2 = alloca %struct.brcms_phy*, align 8
  %3 = alloca i64, align 8
  store %struct.brcms_phy* %0, %struct.brcms_phy** %2, align 8
  %4 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %5 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 2
  %7 = load i32, i32* %6, align 4
  %8 = call i64 @NREV_GE(i32 %7, i32 7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %147

10:                                               ; preds = %1
  store i64 0, i64* %3, align 8
  br label %11

11:                                               ; preds = %143, %10
  %12 = load i64, i64* %3, align 8
  %13 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %14 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp slt i64 %12, %16
  br i1 %17, label %18, label %146

18:                                               ; preds = %11
  %19 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %20 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = call i64 @CHSPEC_IS2G(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %71

24:                                               ; preds = %18
  %25 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %26 = load i32, i32* @RADIO_2057, align 4
  %27 = load i32, i32* @TX, align 4
  %28 = load i64, i64* %3, align 8
  %29 = load i32, i32* @TX_SSI_MASTER, align 4
  %30 = call i32 @WRITE_RADIO_REG3(%struct.brcms_phy* %25, i32 %26, i32 %27, i64 %28, i32 %29, i32 5)
  %31 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %32 = load i32, i32* @RADIO_2057, align 4
  %33 = load i32, i32* @TX, align 4
  %34 = load i64, i64* %3, align 8
  %35 = load i32, i32* @TX_SSI_MUX, align 4
  %36 = call i32 @WRITE_RADIO_REG3(%struct.brcms_phy* %31, i32 %32, i32 %33, i64 %34, i32 %35, i32 14)
  %37 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %38 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = icmp ne i32 %40, 5
  br i1 %41, label %42, label %49

42:                                               ; preds = %24
  %43 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %44 = load i32, i32* @RADIO_2057, align 4
  %45 = load i32, i32* @TX, align 4
  %46 = load i64, i64* %3, align 8
  %47 = load i32, i32* @TSSIA, align 4
  %48 = call i32 @WRITE_RADIO_REG3(%struct.brcms_phy* %43, i32 %44, i32 %45, i64 %46, i32 %47, i32 0)
  br label %49

49:                                               ; preds = %42, %24
  %50 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %51 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @NREV_IS(i32 %53, i32 7)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %63, label %56

56:                                               ; preds = %49
  %57 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %58 = load i32, i32* @RADIO_2057, align 4
  %59 = load i32, i32* @TX, align 4
  %60 = load i64, i64* %3, align 8
  %61 = load i32, i32* @TSSIG, align 4
  %62 = call i32 @WRITE_RADIO_REG3(%struct.brcms_phy* %57, i32 %58, i32 %59, i64 %60, i32 %61, i32 1)
  br label %70

63:                                               ; preds = %49
  %64 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %65 = load i32, i32* @RADIO_2057, align 4
  %66 = load i32, i32* @TX, align 4
  %67 = load i64, i64* %3, align 8
  %68 = load i32, i32* @TSSIG, align 4
  %69 = call i32 @WRITE_RADIO_REG3(%struct.brcms_phy* %64, i32 %65, i32 %66, i64 %67, i32 %68, i32 49)
  br label %70

70:                                               ; preds = %63, %56
  br label %118

71:                                               ; preds = %18
  %72 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %73 = load i32, i32* @RADIO_2057, align 4
  %74 = load i32, i32* @TX, align 4
  %75 = load i64, i64* %3, align 8
  %76 = load i32, i32* @TX_SSI_MASTER, align 4
  %77 = call i32 @WRITE_RADIO_REG3(%struct.brcms_phy* %72, i32 %73, i32 %74, i64 %75, i32 %76, i32 9)
  %78 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %79 = load i32, i32* @RADIO_2057, align 4
  %80 = load i32, i32* @TX, align 4
  %81 = load i64, i64* %3, align 8
  %82 = load i32, i32* @TX_SSI_MUX, align 4
  %83 = call i32 @WRITE_RADIO_REG3(%struct.brcms_phy* %78, i32 %79, i32 %80, i64 %81, i32 %82, i32 12)
  %84 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %85 = load i32, i32* @RADIO_2057, align 4
  %86 = load i32, i32* @TX, align 4
  %87 = load i64, i64* %3, align 8
  %88 = load i32, i32* @TSSIG, align 4
  %89 = call i32 @WRITE_RADIO_REG3(%struct.brcms_phy* %84, i32 %85, i32 %86, i64 %87, i32 %88, i32 0)
  %90 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %91 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 8
  %94 = icmp ne i32 %93, 5
  br i1 %94, label %95, label %117

95:                                               ; preds = %71
  %96 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %97 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @NREV_IS(i32 %99, i32 7)
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %109, label %102

102:                                              ; preds = %95
  %103 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %104 = load i32, i32* @RADIO_2057, align 4
  %105 = load i32, i32* @TX, align 4
  %106 = load i64, i64* %3, align 8
  %107 = load i32, i32* @TSSIA, align 4
  %108 = call i32 @WRITE_RADIO_REG3(%struct.brcms_phy* %103, i32 %104, i32 %105, i64 %106, i32 %107, i32 1)
  br label %116

109:                                              ; preds = %95
  %110 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %111 = load i32, i32* @RADIO_2057, align 4
  %112 = load i32, i32* @TX, align 4
  %113 = load i64, i64* %3, align 8
  %114 = load i32, i32* @TSSIA, align 4
  %115 = call i32 @WRITE_RADIO_REG3(%struct.brcms_phy* %110, i32 %111, i32 %112, i64 %113, i32 %114, i32 49)
  br label %116

116:                                              ; preds = %109, %102
  br label %117

117:                                              ; preds = %116, %71
  br label %118

118:                                              ; preds = %117, %70
  %119 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %120 = load i32, i32* @RADIO_2057, align 4
  %121 = load i32, i32* @TX, align 4
  %122 = load i64, i64* %3, align 8
  %123 = load i32, i32* @IQCAL_VCM_HG, align 4
  %124 = call i32 @WRITE_RADIO_REG3(%struct.brcms_phy* %119, i32 %120, i32 %121, i64 %122, i32 %123, i32 0)
  %125 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %126 = load i32, i32* @RADIO_2057, align 4
  %127 = load i32, i32* @TX, align 4
  %128 = load i64, i64* %3, align 8
  %129 = load i32, i32* @IQCAL_IDAC, align 4
  %130 = call i32 @WRITE_RADIO_REG3(%struct.brcms_phy* %125, i32 %126, i32 %127, i64 %128, i32 %129, i32 0)
  %131 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %132 = load i32, i32* @RADIO_2057, align 4
  %133 = load i32, i32* @TX, align 4
  %134 = load i64, i64* %3, align 8
  %135 = load i32, i32* @TSSI_VCM, align 4
  %136 = call i32 @WRITE_RADIO_REG3(%struct.brcms_phy* %131, i32 %132, i32 %133, i64 %134, i32 %135, i32 3)
  %137 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %138 = load i32, i32* @RADIO_2057, align 4
  %139 = load i32, i32* @TX, align 4
  %140 = load i64, i64* %3, align 8
  %141 = load i32, i32* @TSSI_MISC1, align 4
  %142 = call i32 @WRITE_RADIO_REG3(%struct.brcms_phy* %137, i32 %138, i32 %139, i64 %140, i32 %141, i32 0)
  br label %143

143:                                              ; preds = %118
  %144 = load i64, i64* %3, align 8
  %145 = add nsw i64 %144, 1
  store i64 %145, i64* %3, align 8
  br label %11

146:                                              ; preds = %11
  br label %299

147:                                              ; preds = %1
  %148 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %149 = load i32, i32* @RADIO_2056, align 4
  %150 = load i32, i32* @RESERVED_ADDR31, align 4
  %151 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %152 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 8
  %154 = call i64 @CHSPEC_IS2G(i32 %153)
  %155 = icmp ne i64 %154, 0
  %156 = zext i1 %155 to i64
  %157 = select i1 %155, i32 296, i32 128
  %158 = call i32 @WRITE_RADIO_SYN(%struct.brcms_phy* %148, i32 %149, i32 %150, i32 %157)
  %159 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %160 = load i32, i32* @RADIO_2056, align 4
  %161 = load i32, i32* @RESERVED_ADDR30, align 4
  %162 = call i32 @WRITE_RADIO_SYN(%struct.brcms_phy* %159, i32 %160, i32 %161, i32 0)
  %163 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %164 = load i32, i32* @RADIO_2056, align 4
  %165 = load i32, i32* @GPIO_MASTER1, align 4
  %166 = call i32 @WRITE_RADIO_SYN(%struct.brcms_phy* %163, i32 %164, i32 %165, i32 41)
  store i64 0, i64* %3, align 8
  br label %167

167:                                              ; preds = %295, %147
  %168 = load i64, i64* %3, align 8
  %169 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %170 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %169, i32 0, i32 0
  %171 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %170, i32 0, i32 0
  %172 = load i64, i64* %171, align 8
  %173 = icmp slt i64 %168, %172
  br i1 %173, label %174, label %298

174:                                              ; preds = %167
  %175 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %176 = load i32, i32* @RADIO_2056, align 4
  %177 = load i32, i32* @TX, align 4
  %178 = load i64, i64* %3, align 8
  %179 = load i32, i32* @IQCAL_VCM_HG, align 4
  %180 = call i32 @WRITE_RADIO_REG2(%struct.brcms_phy* %175, i32 %176, i32 %177, i64 %178, i32 %179, i32 0)
  %181 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %182 = load i32, i32* @RADIO_2056, align 4
  %183 = load i32, i32* @TX, align 4
  %184 = load i64, i64* %3, align 8
  %185 = load i32, i32* @IQCAL_IDAC, align 4
  %186 = call i32 @WRITE_RADIO_REG2(%struct.brcms_phy* %181, i32 %182, i32 %183, i64 %184, i32 %185, i32 0)
  %187 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %188 = load i32, i32* @RADIO_2056, align 4
  %189 = load i32, i32* @TX, align 4
  %190 = load i64, i64* %3, align 8
  %191 = load i32, i32* @TSSI_VCM, align 4
  %192 = call i32 @WRITE_RADIO_REG2(%struct.brcms_phy* %187, i32 %188, i32 %189, i64 %190, i32 %191, i32 3)
  %193 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %194 = load i32, i32* @RADIO_2056, align 4
  %195 = load i32, i32* @TX, align 4
  %196 = load i64, i64* %3, align 8
  %197 = load i32, i32* @TX_AMP_DET, align 4
  %198 = call i32 @WRITE_RADIO_REG2(%struct.brcms_phy* %193, i32 %194, i32 %195, i64 %196, i32 %197, i32 0)
  %199 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %200 = load i32, i32* @RADIO_2056, align 4
  %201 = load i32, i32* @TX, align 4
  %202 = load i64, i64* %3, align 8
  %203 = load i32, i32* @TSSI_MISC1, align 4
  %204 = call i32 @WRITE_RADIO_REG2(%struct.brcms_phy* %199, i32 %200, i32 %201, i64 %202, i32 %203, i32 8)
  %205 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %206 = load i32, i32* @RADIO_2056, align 4
  %207 = load i32, i32* @TX, align 4
  %208 = load i64, i64* %3, align 8
  %209 = load i32, i32* @TSSI_MISC2, align 4
  %210 = call i32 @WRITE_RADIO_REG2(%struct.brcms_phy* %205, i32 %206, i32 %207, i64 %208, i32 %209, i32 0)
  %211 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %212 = load i32, i32* @RADIO_2056, align 4
  %213 = load i32, i32* @TX, align 4
  %214 = load i64, i64* %3, align 8
  %215 = load i32, i32* @TSSI_MISC3, align 4
  %216 = call i32 @WRITE_RADIO_REG2(%struct.brcms_phy* %211, i32 %212, i32 %213, i64 %214, i32 %215, i32 0)
  %217 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %218 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %217, i32 0, i32 1
  %219 = load i32, i32* %218, align 8
  %220 = call i64 @CHSPEC_IS2G(i32 %219)
  %221 = icmp ne i64 %220, 0
  br i1 %221, label %222, label %269

222:                                              ; preds = %174
  %223 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %224 = load i32, i32* @RADIO_2056, align 4
  %225 = load i32, i32* @TX, align 4
  %226 = load i64, i64* %3, align 8
  %227 = load i32, i32* @TX_SSI_MASTER, align 4
  %228 = call i32 @WRITE_RADIO_REG2(%struct.brcms_phy* %223, i32 %224, i32 %225, i64 %226, i32 %227, i32 5)
  %229 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %230 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %229, i32 0, i32 0
  %231 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %230, i32 0, i32 1
  %232 = load i32, i32* %231, align 8
  %233 = icmp ne i32 %232, 5
  br i1 %233, label %234, label %241

234:                                              ; preds = %222
  %235 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %236 = load i32, i32* @RADIO_2056, align 4
  %237 = load i32, i32* @TX, align 4
  %238 = load i64, i64* %3, align 8
  %239 = load i32, i32* @TSSIA, align 4
  %240 = call i32 @WRITE_RADIO_REG2(%struct.brcms_phy* %235, i32 %236, i32 %237, i64 %238, i32 %239, i32 0)
  br label %241

241:                                              ; preds = %234, %222
  %242 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %243 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %242, i32 0, i32 0
  %244 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %243, i32 0, i32 2
  %245 = load i32, i32* %244, align 4
  %246 = call i64 @NREV_GE(i32 %245, i32 5)
  %247 = icmp ne i64 %246, 0
  br i1 %247, label %248, label %255

248:                                              ; preds = %241
  %249 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %250 = load i32, i32* @RADIO_2056, align 4
  %251 = load i32, i32* @TX, align 4
  %252 = load i64, i64* %3, align 8
  %253 = load i32, i32* @TSSIG, align 4
  %254 = call i32 @WRITE_RADIO_REG2(%struct.brcms_phy* %249, i32 %250, i32 %251, i64 %252, i32 %253, i32 49)
  br label %262

255:                                              ; preds = %241
  %256 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %257 = load i32, i32* @RADIO_2056, align 4
  %258 = load i32, i32* @TX, align 4
  %259 = load i64, i64* %3, align 8
  %260 = load i32, i32* @TSSIG, align 4
  %261 = call i32 @WRITE_RADIO_REG2(%struct.brcms_phy* %256, i32 %257, i32 %258, i64 %259, i32 %260, i32 17)
  br label %262

262:                                              ; preds = %255, %248
  %263 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %264 = load i32, i32* @RADIO_2056, align 4
  %265 = load i32, i32* @TX, align 4
  %266 = load i64, i64* %3, align 8
  %267 = load i32, i32* @TX_SSI_MUX, align 4
  %268 = call i32 @WRITE_RADIO_REG2(%struct.brcms_phy* %263, i32 %264, i32 %265, i64 %266, i32 %267, i32 14)
  br label %294

269:                                              ; preds = %174
  %270 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %271 = load i32, i32* @RADIO_2056, align 4
  %272 = load i32, i32* @TX, align 4
  %273 = load i64, i64* %3, align 8
  %274 = load i32, i32* @TX_SSI_MASTER, align 4
  %275 = call i32 @WRITE_RADIO_REG2(%struct.brcms_phy* %270, i32 %271, i32 %272, i64 %273, i32 %274, i32 9)
  %276 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %277 = load i32, i32* @RADIO_2056, align 4
  %278 = load i32, i32* @TX, align 4
  %279 = load i64, i64* %3, align 8
  %280 = load i32, i32* @TSSIA, align 4
  %281 = call i32 @WRITE_RADIO_REG2(%struct.brcms_phy* %276, i32 %277, i32 %278, i64 %279, i32 %280, i32 49)
  %282 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %283 = load i32, i32* @RADIO_2056, align 4
  %284 = load i32, i32* @TX, align 4
  %285 = load i64, i64* %3, align 8
  %286 = load i32, i32* @TSSIG, align 4
  %287 = call i32 @WRITE_RADIO_REG2(%struct.brcms_phy* %282, i32 %283, i32 %284, i64 %285, i32 %286, i32 0)
  %288 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %289 = load i32, i32* @RADIO_2056, align 4
  %290 = load i32, i32* @TX, align 4
  %291 = load i64, i64* %3, align 8
  %292 = load i32, i32* @TX_SSI_MUX, align 4
  %293 = call i32 @WRITE_RADIO_REG2(%struct.brcms_phy* %288, i32 %289, i32 %290, i64 %291, i32 %292, i32 12)
  br label %294

294:                                              ; preds = %269, %262
  br label %295

295:                                              ; preds = %294
  %296 = load i64, i64* %3, align 8
  %297 = add nsw i64 %296, 1
  store i64 %297, i64* %3, align 8
  br label %167

298:                                              ; preds = %167
  br label %299

299:                                              ; preds = %298, %146
  ret void
}

declare dso_local i64 @NREV_GE(i32, i32) #1

declare dso_local i64 @CHSPEC_IS2G(i32) #1

declare dso_local i32 @WRITE_RADIO_REG3(%struct.brcms_phy*, i32, i32, i64, i32, i32) #1

declare dso_local i32 @NREV_IS(i32, i32) #1

declare dso_local i32 @WRITE_RADIO_SYN(%struct.brcms_phy*, i32, i32, i32) #1

declare dso_local i32 @WRITE_RADIO_REG2(%struct.brcms_phy*, i32, i32, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
