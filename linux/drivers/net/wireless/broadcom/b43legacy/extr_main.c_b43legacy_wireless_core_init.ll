; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43legacy/extr_main.c_b43legacy_wireless_core_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43legacy/extr_main.c_b43legacy_wireless_core_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43legacy_wldev = type { %struct.b43legacy_wl*, %struct.TYPE_5__*, %struct.b43legacy_phy }
%struct.b43legacy_wl = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__, %struct.ssb_bus* }
%struct.TYPE_4__ = type { i32 }
%struct.ssb_bus = type { i32, %struct.ssb_sprom }
%struct.ssb_sprom = type { i32 }
%struct.b43legacy_phy = type { i64, i32, i32, i32*, i32*, i64, i32, i64 }

@B43legacy_STAT_UNINIT = common dso_local global i64 0, align 8
@B43legacy_TMSLOW_GMODE = common dso_local global i32 0, align 4
@B43legacy_PHYTYPE_B = common dso_local global i64 0, align 8
@B43legacy_PHYTYPE_G = common dso_local global i64 0, align 8
@B43legacy_LO_COUNT = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@B43legacy_SHM_SHARED = common dso_local global i32 0, align 4
@B43legacy_SHM_SH_WLCOREREV = common dso_local global i32 0, align 4
@B43legacy_HF_SYMW = common dso_local global i32 0, align 4
@B43legacy_HF_GDCW = common dso_local global i32 0, align 4
@B43legacy_BFL_PACTRL = common dso_local global i32 0, align 4
@B43legacy_HF_OFDMPABOOST = common dso_local global i32 0, align 4
@B43legacy_DEFAULT_SHORT_RETRY_LIMIT = common dso_local global i32 0, align 4
@B43legacy_DEFAULT_LONG_RETRY_LIMIT = common dso_local global i32 0, align 4
@B43legacy_SHM_SH_PRMAXTIME = common dso_local global i32 0, align 4
@B43legacy_SHM_WIRELESS = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@B43legacy_STAT_INITIALIZED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.b43legacy_wldev*)* @b43legacy_wireless_core_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @b43legacy_wireless_core_init(%struct.b43legacy_wldev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.b43legacy_wldev*, align 8
  %4 = alloca %struct.b43legacy_wl*, align 8
  %5 = alloca %struct.ssb_bus*, align 8
  %6 = alloca %struct.b43legacy_phy*, align 8
  %7 = alloca %struct.ssb_sprom*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.b43legacy_wldev* %0, %struct.b43legacy_wldev** %3, align 8
  %11 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %12 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %11, i32 0, i32 0
  %13 = load %struct.b43legacy_wl*, %struct.b43legacy_wl** %12, align 8
  store %struct.b43legacy_wl* %13, %struct.b43legacy_wl** %4, align 8
  %14 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %15 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %14, i32 0, i32 1
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 1
  %18 = load %struct.ssb_bus*, %struct.ssb_bus** %17, align 8
  store %struct.ssb_bus* %18, %struct.ssb_bus** %5, align 8
  %19 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %20 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %19, i32 0, i32 2
  store %struct.b43legacy_phy* %20, %struct.b43legacy_phy** %6, align 8
  %21 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %22 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %21, i32 0, i32 1
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 1
  %25 = load %struct.ssb_bus*, %struct.ssb_bus** %24, align 8
  %26 = getelementptr inbounds %struct.ssb_bus, %struct.ssb_bus* %25, i32 0, i32 1
  store %struct.ssb_sprom* %26, %struct.ssb_sprom** %7, align 8
  %27 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %28 = call i64 @b43legacy_status(%struct.b43legacy_wldev* %27)
  %29 = load i64, i64* @B43legacy_STAT_UNINIT, align 8
  %30 = icmp ne i64 %28, %29
  %31 = zext i1 %30 to i32
  %32 = call i32 @B43legacy_WARN_ON(i32 %31)
  %33 = load %struct.ssb_bus*, %struct.ssb_bus** %5, align 8
  %34 = call i32 @ssb_bus_powerup(%struct.ssb_bus* %33, i32 0)
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* %8, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %1
  br label %260

38:                                               ; preds = %1
  %39 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %40 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %39, i32 0, i32 1
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %40, align 8
  %42 = call i32 @ssb_device_is_enabled(%struct.TYPE_5__* %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %57, label %44

44:                                               ; preds = %38
  %45 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %6, align 8
  %46 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %45, i32 0, i32 7
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %44
  %50 = load i32, i32* @B43legacy_TMSLOW_GMODE, align 4
  br label %52

51:                                               ; preds = %44
  br label %52

52:                                               ; preds = %51, %49
  %53 = phi i32 [ %50, %49 ], [ 0, %51 ]
  store i32 %53, i32* %10, align 4
  %54 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %55 = load i32, i32* %10, align 4
  %56 = call i32 @b43legacy_wireless_core_reset(%struct.b43legacy_wldev* %54, i32 %55)
  br label %57

57:                                               ; preds = %52, %38
  %58 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %6, align 8
  %59 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @B43legacy_PHYTYPE_B, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %69, label %63

63:                                               ; preds = %57
  %64 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %6, align 8
  %65 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @B43legacy_PHYTYPE_G, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %83

69:                                               ; preds = %63, %57
  %70 = load i32, i32* @B43legacy_LO_COUNT, align 4
  %71 = load i32, i32* @GFP_KERNEL, align 4
  %72 = call i32 @kcalloc(i32 %70, i32 4, i32 %71)
  %73 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %6, align 8
  %74 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %73, i32 0, i32 6
  store i32 %72, i32* %74, align 8
  %75 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %6, align 8
  %76 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %75, i32 0, i32 6
  %77 = load i32, i32* %76, align 8
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %82, label %79

79:                                               ; preds = %69
  %80 = load i32, i32* @ENOMEM, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %2, align 4
  br label %292

82:                                               ; preds = %69
  br label %83

83:                                               ; preds = %82, %63
  %84 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %85 = call i32 @setup_struct_wldev_for_init(%struct.b43legacy_wldev* %84)
  %86 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %87 = call i32 @b43legacy_phy_init_tssi2dbm_table(%struct.b43legacy_wldev* %86)
  store i32 %87, i32* %8, align 4
  %88 = load i32, i32* %8, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %83
  br label %276

91:                                               ; preds = %83
  %92 = load %struct.ssb_bus*, %struct.ssb_bus** %5, align 8
  %93 = getelementptr inbounds %struct.ssb_bus, %struct.ssb_bus* %92, i32 0, i32 0
  %94 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %95 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %94, i32 0, i32 1
  %96 = load %struct.TYPE_5__*, %struct.TYPE_5__** %95, align 8
  %97 = call i32 @ssb_pcicore_dev_irqvecs_enable(i32* %93, %struct.TYPE_5__* %96)
  %98 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %99 = call i32 @prepare_phy_data_for_init(%struct.b43legacy_wldev* %98)
  %100 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %101 = call i32 @b43legacy_phy_calibrate(%struct.b43legacy_wldev* %100)
  %102 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %103 = call i32 @b43legacy_chip_init(%struct.b43legacy_wldev* %102)
  store i32 %103, i32* %8, align 4
  %104 = load i32, i32* %8, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %91
  br label %265

107:                                              ; preds = %91
  %108 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %109 = load i32, i32* @B43legacy_SHM_SHARED, align 4
  %110 = load i32, i32* @B43legacy_SHM_SH_WLCOREREV, align 4
  %111 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %112 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %111, i32 0, i32 1
  %113 = load %struct.TYPE_5__*, %struct.TYPE_5__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = call i32 @b43legacy_shm_write16(%struct.b43legacy_wldev* %108, i32 %109, i32 %110, i32 %116)
  %118 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %119 = call i32 @b43legacy_hf_read(%struct.b43legacy_wldev* %118)
  store i32 %119, i32* %9, align 4
  %120 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %6, align 8
  %121 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = load i64, i64* @B43legacy_PHYTYPE_G, align 8
  %124 = icmp eq i64 %122, %123
  br i1 %124, label %125, label %149

125:                                              ; preds = %107
  %126 = load i32, i32* @B43legacy_HF_SYMW, align 4
  %127 = load i32, i32* %9, align 4
  %128 = or i32 %127, %126
  store i32 %128, i32* %9, align 4
  %129 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %6, align 8
  %130 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 8
  %132 = icmp eq i32 %131, 1
  br i1 %132, label %133, label %137

133:                                              ; preds = %125
  %134 = load i32, i32* @B43legacy_HF_GDCW, align 4
  %135 = load i32, i32* %9, align 4
  %136 = or i32 %135, %134
  store i32 %136, i32* %9, align 4
  br label %137

137:                                              ; preds = %133, %125
  %138 = load %struct.ssb_sprom*, %struct.ssb_sprom** %7, align 8
  %139 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = load i32, i32* @B43legacy_BFL_PACTRL, align 4
  %142 = and i32 %140, %141
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %148

144:                                              ; preds = %137
  %145 = load i32, i32* @B43legacy_HF_OFDMPABOOST, align 4
  %146 = load i32, i32* %9, align 4
  %147 = or i32 %146, %145
  store i32 %147, i32* %9, align 4
  br label %148

148:                                              ; preds = %144, %137
  br label %175

149:                                              ; preds = %107
  %150 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %6, align 8
  %151 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %150, i32 0, i32 0
  %152 = load i64, i64* %151, align 8
  %153 = load i64, i64* @B43legacy_PHYTYPE_B, align 8
  %154 = icmp eq i64 %152, %153
  br i1 %154, label %155, label %174

155:                                              ; preds = %149
  %156 = load i32, i32* @B43legacy_HF_SYMW, align 4
  %157 = load i32, i32* %9, align 4
  %158 = or i32 %157, %156
  store i32 %158, i32* %9, align 4
  %159 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %6, align 8
  %160 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 8
  %162 = icmp sge i32 %161, 2
  br i1 %162, label %163, label %173

163:                                              ; preds = %155
  %164 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %6, align 8
  %165 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %164, i32 0, i32 2
  %166 = load i32, i32* %165, align 4
  %167 = icmp eq i32 %166, 8272
  br i1 %167, label %168, label %173

168:                                              ; preds = %163
  %169 = load i32, i32* @B43legacy_HF_GDCW, align 4
  %170 = xor i32 %169, -1
  %171 = load i32, i32* %9, align 4
  %172 = and i32 %171, %170
  store i32 %172, i32* %9, align 4
  br label %173

173:                                              ; preds = %168, %163, %155
  br label %174

174:                                              ; preds = %173, %149
  br label %175

175:                                              ; preds = %174, %148
  %176 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %177 = load i32, i32* %9, align 4
  %178 = call i32 @b43legacy_hf_write(%struct.b43legacy_wldev* %176, i32 %177)
  %179 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %180 = load i32, i32* @B43legacy_DEFAULT_SHORT_RETRY_LIMIT, align 4
  %181 = load i32, i32* @B43legacy_DEFAULT_LONG_RETRY_LIMIT, align 4
  %182 = call i32 @b43legacy_set_retry_limits(%struct.b43legacy_wldev* %179, i32 %180, i32 %181)
  %183 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %184 = load i32, i32* @B43legacy_SHM_SHARED, align 4
  %185 = call i32 @b43legacy_shm_write16(%struct.b43legacy_wldev* %183, i32 %184, i32 68, i32 3)
  %186 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %187 = load i32, i32* @B43legacy_SHM_SHARED, align 4
  %188 = call i32 @b43legacy_shm_write16(%struct.b43legacy_wldev* %186, i32 %187, i32 70, i32 2)
  %189 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %190 = load i32, i32* @B43legacy_SHM_SHARED, align 4
  %191 = load i32, i32* @B43legacy_SHM_SH_PRMAXTIME, align 4
  %192 = call i32 @b43legacy_shm_write16(%struct.b43legacy_wldev* %189, i32 %190, i32 %191, i32 1)
  %193 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %194 = call i32 @b43legacy_rate_memory_init(%struct.b43legacy_wldev* %193)
  %195 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %6, align 8
  %196 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %195, i32 0, i32 0
  %197 = load i64, i64* %196, align 8
  %198 = load i64, i64* @B43legacy_PHYTYPE_B, align 8
  %199 = icmp eq i64 %197, %198
  br i1 %199, label %200, label %204

200:                                              ; preds = %175
  %201 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %202 = load i32, i32* @B43legacy_SHM_WIRELESS, align 4
  %203 = call i32 @b43legacy_shm_write16(%struct.b43legacy_wldev* %201, i32 %202, i32 3, i32 31)
  br label %208

204:                                              ; preds = %175
  %205 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %206 = load i32, i32* @B43legacy_SHM_WIRELESS, align 4
  %207 = call i32 @b43legacy_shm_write16(%struct.b43legacy_wldev* %205, i32 %206, i32 3, i32 15)
  br label %208

208:                                              ; preds = %204, %200
  %209 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %210 = load i32, i32* @B43legacy_SHM_WIRELESS, align 4
  %211 = call i32 @b43legacy_shm_write16(%struct.b43legacy_wldev* %209, i32 %210, i32 4, i32 1023)
  br label %212

212:                                              ; preds = %229, %208
  %213 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %214 = call i64 @b43legacy_using_pio(%struct.b43legacy_wldev* %213)
  %215 = icmp ne i64 %214, 0
  br i1 %215, label %216, label %219

216:                                              ; preds = %212
  %217 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %218 = call i32 @b43legacy_pio_init(%struct.b43legacy_wldev* %217)
  store i32 %218, i32* %8, align 4
  br label %228

219:                                              ; preds = %212
  %220 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %221 = call i32 @b43legacy_dma_init(%struct.b43legacy_wldev* %220)
  store i32 %221, i32* %8, align 4
  %222 = load i32, i32* %8, align 4
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %227, label %224

224:                                              ; preds = %219
  %225 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %226 = call i32 @b43legacy_qos_init(%struct.b43legacy_wldev* %225)
  br label %227

227:                                              ; preds = %224, %219
  br label %228

228:                                              ; preds = %227, %216
  br label %229

229:                                              ; preds = %228
  %230 = load i32, i32* %8, align 4
  %231 = load i32, i32* @EAGAIN, align 4
  %232 = sub nsw i32 0, %231
  %233 = icmp eq i32 %230, %232
  br i1 %233, label %212, label %234

234:                                              ; preds = %229
  %235 = load i32, i32* %8, align 4
  %236 = icmp ne i32 %235, 0
  br i1 %236, label %237, label %238

237:                                              ; preds = %234
  br label %262

238:                                              ; preds = %234
  %239 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %240 = call i32 @b43legacy_set_synth_pu_delay(%struct.b43legacy_wldev* %239, i32 1)
  %241 = load %struct.ssb_bus*, %struct.ssb_bus** %5, align 8
  %242 = call i32 @ssb_bus_powerup(%struct.ssb_bus* %241, i32 1)
  %243 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %244 = call i32 @b43legacy_upload_card_macaddress(%struct.b43legacy_wldev* %243)
  %245 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %246 = call i32 @b43legacy_security_init(%struct.b43legacy_wldev* %245)
  %247 = load %struct.b43legacy_wl*, %struct.b43legacy_wl** %4, align 8
  %248 = call i32 @b43legacy_rng_init(%struct.b43legacy_wl* %247)
  %249 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %250 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %249, i32 0, i32 0
  %251 = load %struct.b43legacy_wl*, %struct.b43legacy_wl** %250, align 8
  %252 = getelementptr inbounds %struct.b43legacy_wl, %struct.b43legacy_wl* %251, i32 0, i32 0
  %253 = load i32, i32* %252, align 4
  %254 = call i32 @ieee80211_wake_queues(i32 %253)
  %255 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %256 = load i32, i32* @B43legacy_STAT_INITIALIZED, align 4
  %257 = call i32 @b43legacy_set_status(%struct.b43legacy_wldev* %255, i32 %256)
  %258 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %259 = call i32 @b43legacy_leds_init(%struct.b43legacy_wldev* %258)
  br label %260

260:                                              ; preds = %238, %37
  %261 = load i32, i32* %8, align 4
  store i32 %261, i32* %2, align 4
  br label %292

262:                                              ; preds = %237
  %263 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %264 = call i32 @b43legacy_chip_exit(%struct.b43legacy_wldev* %263)
  br label %265

265:                                              ; preds = %262, %106
  %266 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %6, align 8
  %267 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %266, i32 0, i32 5
  %268 = load i64, i64* %267, align 8
  %269 = icmp ne i64 %268, 0
  br i1 %269, label %270, label %275

270:                                              ; preds = %265
  %271 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %6, align 8
  %272 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %271, i32 0, i32 4
  %273 = load i32*, i32** %272, align 8
  %274 = call i32 @kfree(i32* %273)
  br label %275

275:                                              ; preds = %270, %265
  br label %276

276:                                              ; preds = %275, %90
  %277 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %6, align 8
  %278 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %277, i32 0, i32 3
  %279 = load i32*, i32** %278, align 8
  %280 = call i32 @kfree(i32* %279)
  %281 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %6, align 8
  %282 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %281, i32 0, i32 3
  store i32* null, i32** %282, align 8
  %283 = load %struct.ssb_bus*, %struct.ssb_bus** %5, align 8
  %284 = call i32 @ssb_bus_may_powerdown(%struct.ssb_bus* %283)
  %285 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %286 = call i64 @b43legacy_status(%struct.b43legacy_wldev* %285)
  %287 = load i64, i64* @B43legacy_STAT_UNINIT, align 8
  %288 = icmp ne i64 %286, %287
  %289 = zext i1 %288 to i32
  %290 = call i32 @B43legacy_WARN_ON(i32 %289)
  %291 = load i32, i32* %8, align 4
  store i32 %291, i32* %2, align 4
  br label %292

292:                                              ; preds = %276, %260, %79
  %293 = load i32, i32* %2, align 4
  ret i32 %293
}

declare dso_local i32 @B43legacy_WARN_ON(i32) #1

declare dso_local i64 @b43legacy_status(%struct.b43legacy_wldev*) #1

declare dso_local i32 @ssb_bus_powerup(%struct.ssb_bus*, i32) #1

declare dso_local i32 @ssb_device_is_enabled(%struct.TYPE_5__*) #1

declare dso_local i32 @b43legacy_wireless_core_reset(%struct.b43legacy_wldev*, i32) #1

declare dso_local i32 @kcalloc(i32, i32, i32) #1

declare dso_local i32 @setup_struct_wldev_for_init(%struct.b43legacy_wldev*) #1

declare dso_local i32 @b43legacy_phy_init_tssi2dbm_table(%struct.b43legacy_wldev*) #1

declare dso_local i32 @ssb_pcicore_dev_irqvecs_enable(i32*, %struct.TYPE_5__*) #1

declare dso_local i32 @prepare_phy_data_for_init(%struct.b43legacy_wldev*) #1

declare dso_local i32 @b43legacy_phy_calibrate(%struct.b43legacy_wldev*) #1

declare dso_local i32 @b43legacy_chip_init(%struct.b43legacy_wldev*) #1

declare dso_local i32 @b43legacy_shm_write16(%struct.b43legacy_wldev*, i32, i32, i32) #1

declare dso_local i32 @b43legacy_hf_read(%struct.b43legacy_wldev*) #1

declare dso_local i32 @b43legacy_hf_write(%struct.b43legacy_wldev*, i32) #1

declare dso_local i32 @b43legacy_set_retry_limits(%struct.b43legacy_wldev*, i32, i32) #1

declare dso_local i32 @b43legacy_rate_memory_init(%struct.b43legacy_wldev*) #1

declare dso_local i64 @b43legacy_using_pio(%struct.b43legacy_wldev*) #1

declare dso_local i32 @b43legacy_pio_init(%struct.b43legacy_wldev*) #1

declare dso_local i32 @b43legacy_dma_init(%struct.b43legacy_wldev*) #1

declare dso_local i32 @b43legacy_qos_init(%struct.b43legacy_wldev*) #1

declare dso_local i32 @b43legacy_set_synth_pu_delay(%struct.b43legacy_wldev*, i32) #1

declare dso_local i32 @b43legacy_upload_card_macaddress(%struct.b43legacy_wldev*) #1

declare dso_local i32 @b43legacy_security_init(%struct.b43legacy_wldev*) #1

declare dso_local i32 @b43legacy_rng_init(%struct.b43legacy_wl*) #1

declare dso_local i32 @ieee80211_wake_queues(i32) #1

declare dso_local i32 @b43legacy_set_status(%struct.b43legacy_wldev*, i32) #1

declare dso_local i32 @b43legacy_leds_init(%struct.b43legacy_wldev*) #1

declare dso_local i32 @b43legacy_chip_exit(%struct.b43legacy_wldev*) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @ssb_bus_may_powerdown(%struct.ssb_bus*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
