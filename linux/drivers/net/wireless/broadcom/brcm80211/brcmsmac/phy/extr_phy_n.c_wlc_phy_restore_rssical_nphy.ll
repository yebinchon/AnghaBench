; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/phy/extr_phy_n.c_wlc_phy_restore_rssical_nphy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/phy/extr_phy_n.c_wlc_phy_restore_rssical_nphy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcms_phy = type { i64, i64, %struct.TYPE_4__, %struct.TYPE_3__, i32 }
%struct.TYPE_4__ = type { i32*, i32*, i32*, i32* }
%struct.TYPE_3__ = type { i32 }

@RADIO_2057_NB_MASTER_CORE0 = common dso_local global i32 0, align 4
@RADIO_2057_VCM_MASK = common dso_local global i32 0, align 4
@RADIO_2057_NB_MASTER_CORE1 = common dso_local global i32 0, align 4
@RADIO_2056_RX_RSSI_MISC = common dso_local global i32 0, align 4
@RADIO_2056_RX0 = common dso_local global i32 0, align 4
@RADIO_2056_VCM_MASK = common dso_local global i32 0, align 4
@RADIO_2056_RX1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.brcms_phy*)* @wlc_phy_restore_rssical_nphy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wlc_phy_restore_rssical_nphy(%struct.brcms_phy* %0) #0 {
  %2 = alloca %struct.brcms_phy*, align 8
  store %struct.brcms_phy* %0, %struct.brcms_phy** %2, align 8
  %3 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %4 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %3, i32 0, i32 4
  %5 = load i32, i32* %4, align 4
  %6 = call i64 @CHSPEC_IS2G(i32 %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %164

8:                                                ; preds = %1
  %9 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %10 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %8
  br label %320

14:                                               ; preds = %8
  %15 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %16 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %15, i32 0, i32 3
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = call i64 @NREV_GE(i32 %18, i32 7)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %42

21:                                               ; preds = %14
  %22 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %23 = load i32, i32* @RADIO_2057_NB_MASTER_CORE0, align 4
  %24 = load i32, i32* @RADIO_2057_VCM_MASK, align 4
  %25 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %26 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 3
  %28 = load i32*, i32** %27, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @mod_radio_reg(%struct.brcms_phy* %22, i32 %23, i32 %24, i32 %30)
  %32 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %33 = load i32, i32* @RADIO_2057_NB_MASTER_CORE1, align 4
  %34 = load i32, i32* @RADIO_2057_VCM_MASK, align 4
  %35 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %36 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 3
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 1
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @mod_radio_reg(%struct.brcms_phy* %32, i32 %33, i32 %34, i32 %40)
  br label %67

42:                                               ; preds = %14
  %43 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %44 = load i32, i32* @RADIO_2056_RX_RSSI_MISC, align 4
  %45 = load i32, i32* @RADIO_2056_RX0, align 4
  %46 = or i32 %44, %45
  %47 = load i32, i32* @RADIO_2056_VCM_MASK, align 4
  %48 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %49 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 3
  %51 = load i32*, i32** %50, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @mod_radio_reg(%struct.brcms_phy* %43, i32 %46, i32 %47, i32 %53)
  %55 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %56 = load i32, i32* @RADIO_2056_RX_RSSI_MISC, align 4
  %57 = load i32, i32* @RADIO_2056_RX1, align 4
  %58 = or i32 %56, %57
  %59 = load i32, i32* @RADIO_2056_VCM_MASK, align 4
  %60 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %61 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %60, i32 0, i32 2
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 3
  %63 = load i32*, i32** %62, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 1
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @mod_radio_reg(%struct.brcms_phy* %55, i32 %58, i32 %59, i32 %65)
  br label %67

67:                                               ; preds = %42, %21
  %68 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %69 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %70 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %69, i32 0, i32 2
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 2
  %72 = load i32*, i32** %71, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @write_phy_reg(%struct.brcms_phy* %68, i32 422, i32 %74)
  %76 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %77 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %78 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %77, i32 0, i32 2
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 2
  %80 = load i32*, i32** %79, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 1
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @write_phy_reg(%struct.brcms_phy* %76, i32 428, i32 %82)
  %84 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %85 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %86 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %85, i32 0, i32 2
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 2
  %88 = load i32*, i32** %87, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 2
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @write_phy_reg(%struct.brcms_phy* %84, i32 434, i32 %90)
  %92 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %93 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %94 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %93, i32 0, i32 2
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 2
  %96 = load i32*, i32** %95, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 3
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @write_phy_reg(%struct.brcms_phy* %92, i32 440, i32 %98)
  %100 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %101 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %102 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %101, i32 0, i32 2
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 2
  %104 = load i32*, i32** %103, align 8
  %105 = getelementptr inbounds i32, i32* %104, i64 4
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @write_phy_reg(%struct.brcms_phy* %100, i32 420, i32 %106)
  %108 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %109 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %110 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %109, i32 0, i32 2
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 2
  %112 = load i32*, i32** %111, align 8
  %113 = getelementptr inbounds i32, i32* %112, i64 5
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @write_phy_reg(%struct.brcms_phy* %108, i32 426, i32 %114)
  %116 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %117 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %118 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %117, i32 0, i32 2
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 2
  %120 = load i32*, i32** %119, align 8
  %121 = getelementptr inbounds i32, i32* %120, i64 6
  %122 = load i32, i32* %121, align 4
  %123 = call i32 @write_phy_reg(%struct.brcms_phy* %116, i32 432, i32 %122)
  %124 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %125 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %126 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %125, i32 0, i32 2
  %127 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %126, i32 0, i32 2
  %128 = load i32*, i32** %127, align 8
  %129 = getelementptr inbounds i32, i32* %128, i64 7
  %130 = load i32, i32* %129, align 4
  %131 = call i32 @write_phy_reg(%struct.brcms_phy* %124, i32 438, i32 %130)
  %132 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %133 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %134 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %133, i32 0, i32 2
  %135 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %134, i32 0, i32 2
  %136 = load i32*, i32** %135, align 8
  %137 = getelementptr inbounds i32, i32* %136, i64 8
  %138 = load i32, i32* %137, align 4
  %139 = call i32 @write_phy_reg(%struct.brcms_phy* %132, i32 421, i32 %138)
  %140 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %141 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %142 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %141, i32 0, i32 2
  %143 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %142, i32 0, i32 2
  %144 = load i32*, i32** %143, align 8
  %145 = getelementptr inbounds i32, i32* %144, i64 9
  %146 = load i32, i32* %145, align 4
  %147 = call i32 @write_phy_reg(%struct.brcms_phy* %140, i32 427, i32 %146)
  %148 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %149 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %150 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %149, i32 0, i32 2
  %151 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %150, i32 0, i32 2
  %152 = load i32*, i32** %151, align 8
  %153 = getelementptr inbounds i32, i32* %152, i64 10
  %154 = load i32, i32* %153, align 4
  %155 = call i32 @write_phy_reg(%struct.brcms_phy* %148, i32 433, i32 %154)
  %156 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %157 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %158 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %157, i32 0, i32 2
  %159 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %158, i32 0, i32 2
  %160 = load i32*, i32** %159, align 8
  %161 = getelementptr inbounds i32, i32* %160, i64 11
  %162 = load i32, i32* %161, align 4
  %163 = call i32 @write_phy_reg(%struct.brcms_phy* %156, i32 439, i32 %162)
  br label %320

164:                                              ; preds = %1
  %165 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %166 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %165, i32 0, i32 1
  %167 = load i64, i64* %166, align 8
  %168 = icmp eq i64 %167, 0
  br i1 %168, label %169, label %170

169:                                              ; preds = %164
  br label %320

170:                                              ; preds = %164
  %171 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %172 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %171, i32 0, i32 3
  %173 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 8
  %175 = call i64 @NREV_GE(i32 %174, i32 7)
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %177, label %198

177:                                              ; preds = %170
  %178 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %179 = load i32, i32* @RADIO_2057_NB_MASTER_CORE0, align 4
  %180 = load i32, i32* @RADIO_2057_VCM_MASK, align 4
  %181 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %182 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %181, i32 0, i32 2
  %183 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %182, i32 0, i32 1
  %184 = load i32*, i32** %183, align 8
  %185 = getelementptr inbounds i32, i32* %184, i64 0
  %186 = load i32, i32* %185, align 4
  %187 = call i32 @mod_radio_reg(%struct.brcms_phy* %178, i32 %179, i32 %180, i32 %186)
  %188 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %189 = load i32, i32* @RADIO_2057_NB_MASTER_CORE1, align 4
  %190 = load i32, i32* @RADIO_2057_VCM_MASK, align 4
  %191 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %192 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %191, i32 0, i32 2
  %193 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %192, i32 0, i32 1
  %194 = load i32*, i32** %193, align 8
  %195 = getelementptr inbounds i32, i32* %194, i64 1
  %196 = load i32, i32* %195, align 4
  %197 = call i32 @mod_radio_reg(%struct.brcms_phy* %188, i32 %189, i32 %190, i32 %196)
  br label %223

198:                                              ; preds = %170
  %199 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %200 = load i32, i32* @RADIO_2056_RX_RSSI_MISC, align 4
  %201 = load i32, i32* @RADIO_2056_RX0, align 4
  %202 = or i32 %200, %201
  %203 = load i32, i32* @RADIO_2056_VCM_MASK, align 4
  %204 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %205 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %204, i32 0, i32 2
  %206 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %205, i32 0, i32 1
  %207 = load i32*, i32** %206, align 8
  %208 = getelementptr inbounds i32, i32* %207, i64 0
  %209 = load i32, i32* %208, align 4
  %210 = call i32 @mod_radio_reg(%struct.brcms_phy* %199, i32 %202, i32 %203, i32 %209)
  %211 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %212 = load i32, i32* @RADIO_2056_RX_RSSI_MISC, align 4
  %213 = load i32, i32* @RADIO_2056_RX1, align 4
  %214 = or i32 %212, %213
  %215 = load i32, i32* @RADIO_2056_VCM_MASK, align 4
  %216 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %217 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %216, i32 0, i32 2
  %218 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %217, i32 0, i32 1
  %219 = load i32*, i32** %218, align 8
  %220 = getelementptr inbounds i32, i32* %219, i64 1
  %221 = load i32, i32* %220, align 4
  %222 = call i32 @mod_radio_reg(%struct.brcms_phy* %211, i32 %214, i32 %215, i32 %221)
  br label %223

223:                                              ; preds = %198, %177
  %224 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %225 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %226 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %225, i32 0, i32 2
  %227 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %226, i32 0, i32 0
  %228 = load i32*, i32** %227, align 8
  %229 = getelementptr inbounds i32, i32* %228, i64 0
  %230 = load i32, i32* %229, align 4
  %231 = call i32 @write_phy_reg(%struct.brcms_phy* %224, i32 422, i32 %230)
  %232 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %233 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %234 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %233, i32 0, i32 2
  %235 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %234, i32 0, i32 0
  %236 = load i32*, i32** %235, align 8
  %237 = getelementptr inbounds i32, i32* %236, i64 1
  %238 = load i32, i32* %237, align 4
  %239 = call i32 @write_phy_reg(%struct.brcms_phy* %232, i32 428, i32 %238)
  %240 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %241 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %242 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %241, i32 0, i32 2
  %243 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %242, i32 0, i32 0
  %244 = load i32*, i32** %243, align 8
  %245 = getelementptr inbounds i32, i32* %244, i64 2
  %246 = load i32, i32* %245, align 4
  %247 = call i32 @write_phy_reg(%struct.brcms_phy* %240, i32 434, i32 %246)
  %248 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %249 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %250 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %249, i32 0, i32 2
  %251 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %250, i32 0, i32 0
  %252 = load i32*, i32** %251, align 8
  %253 = getelementptr inbounds i32, i32* %252, i64 3
  %254 = load i32, i32* %253, align 4
  %255 = call i32 @write_phy_reg(%struct.brcms_phy* %248, i32 440, i32 %254)
  %256 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %257 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %258 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %257, i32 0, i32 2
  %259 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %258, i32 0, i32 0
  %260 = load i32*, i32** %259, align 8
  %261 = getelementptr inbounds i32, i32* %260, i64 4
  %262 = load i32, i32* %261, align 4
  %263 = call i32 @write_phy_reg(%struct.brcms_phy* %256, i32 420, i32 %262)
  %264 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %265 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %266 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %265, i32 0, i32 2
  %267 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %266, i32 0, i32 0
  %268 = load i32*, i32** %267, align 8
  %269 = getelementptr inbounds i32, i32* %268, i64 5
  %270 = load i32, i32* %269, align 4
  %271 = call i32 @write_phy_reg(%struct.brcms_phy* %264, i32 426, i32 %270)
  %272 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %273 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %274 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %273, i32 0, i32 2
  %275 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %274, i32 0, i32 0
  %276 = load i32*, i32** %275, align 8
  %277 = getelementptr inbounds i32, i32* %276, i64 6
  %278 = load i32, i32* %277, align 4
  %279 = call i32 @write_phy_reg(%struct.brcms_phy* %272, i32 432, i32 %278)
  %280 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %281 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %282 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %281, i32 0, i32 2
  %283 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %282, i32 0, i32 0
  %284 = load i32*, i32** %283, align 8
  %285 = getelementptr inbounds i32, i32* %284, i64 7
  %286 = load i32, i32* %285, align 4
  %287 = call i32 @write_phy_reg(%struct.brcms_phy* %280, i32 438, i32 %286)
  %288 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %289 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %290 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %289, i32 0, i32 2
  %291 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %290, i32 0, i32 0
  %292 = load i32*, i32** %291, align 8
  %293 = getelementptr inbounds i32, i32* %292, i64 8
  %294 = load i32, i32* %293, align 4
  %295 = call i32 @write_phy_reg(%struct.brcms_phy* %288, i32 421, i32 %294)
  %296 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %297 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %298 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %297, i32 0, i32 2
  %299 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %298, i32 0, i32 0
  %300 = load i32*, i32** %299, align 8
  %301 = getelementptr inbounds i32, i32* %300, i64 9
  %302 = load i32, i32* %301, align 4
  %303 = call i32 @write_phy_reg(%struct.brcms_phy* %296, i32 427, i32 %302)
  %304 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %305 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %306 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %305, i32 0, i32 2
  %307 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %306, i32 0, i32 0
  %308 = load i32*, i32** %307, align 8
  %309 = getelementptr inbounds i32, i32* %308, i64 10
  %310 = load i32, i32* %309, align 4
  %311 = call i32 @write_phy_reg(%struct.brcms_phy* %304, i32 433, i32 %310)
  %312 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %313 = load %struct.brcms_phy*, %struct.brcms_phy** %2, align 8
  %314 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %313, i32 0, i32 2
  %315 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %314, i32 0, i32 0
  %316 = load i32*, i32** %315, align 8
  %317 = getelementptr inbounds i32, i32* %316, i64 11
  %318 = load i32, i32* %317, align 4
  %319 = call i32 @write_phy_reg(%struct.brcms_phy* %312, i32 439, i32 %318)
  br label %320

320:                                              ; preds = %13, %169, %223, %67
  ret void
}

declare dso_local i64 @CHSPEC_IS2G(i32) #1

declare dso_local i64 @NREV_GE(i32, i32) #1

declare dso_local i32 @mod_radio_reg(%struct.brcms_phy*, i32, i32, i32) #1

declare dso_local i32 @write_phy_reg(%struct.brcms_phy*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
