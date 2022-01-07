; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_main.c_b43_phy_versioning.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_main.c_b43_phy_versioning.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_wldev = type { i32, %struct.TYPE_2__*, %struct.b43_phy }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.b43_phy = type { i32, i32, i32, i32, i32, i32 }

@B43_MMIO_PHY_VER = common dso_local global i32 0, align 4
@B43_PHYVER_ANALOG = common dso_local global i32 0, align 4
@B43_PHYVER_ANALOG_SHIFT = common dso_local global i32 0, align 4
@B43_PHYVER_TYPE = common dso_local global i32 0, align 4
@B43_PHYVER_TYPE_SHIFT = common dso_local global i32 0, align 4
@B43_PHYVER_VERSION = common dso_local global i32 0, align 4
@B43_PHYTYPE_LCNXN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [62 x i8] c"FOUND UNSUPPORTED PHY (Analog %u, Type %d (%s), Revision %u)\0A\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [49 x i8] c"Found PHY: Analog %u, Type %d (%s), Revision %u\0A\00", align 1
@B43_MMIO_RADIO24_CONTROL = common dso_local global i32 0, align 4
@B43_MMIO_RADIO24_DATA = common dso_local global i32 0, align 4
@B43_MMIO_RADIO_CONTROL = common dso_local global i32 0, align 4
@B43_RADIOCTL_ID = common dso_local global i32 0, align 4
@B43_MMIO_RADIO_DATA_LOW = common dso_local global i32 0, align 4
@B43_MMIO_RADIO_DATA_HIGH = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [72 x i8] c"FOUND UNSUPPORTED RADIO (Manuf 0x%X, ID 0x%X, Revision %u, Version %u)\0A\00", align 1
@.str.3 = private unnamed_addr constant [59 x i8] c"Found Radio: Manuf 0x%X, ID 0x%X, Revision %u, Version %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.b43_wldev*)* @b43_phy_versioning to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @b43_phy_versioning(%struct.b43_wldev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.b43_wldev*, align 8
  %4 = alloca %struct.b43_phy*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca [3 x i32], align 4
  store %struct.b43_wldev* %0, %struct.b43_wldev** %3, align 8
  %16 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %17 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %16, i32 0, i32 2
  store %struct.b43_phy* %17, %struct.b43_phy** %4, align 8
  %18 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %19 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %18, i32 0, i32 1
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %5, align 4
  store i32 0, i32* %14, align 4
  %23 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %24 = load i32, i32* @B43_MMIO_PHY_VER, align 4
  %25 = call i32 @b43_read16(%struct.b43_wldev* %23, i32 %24)
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* @B43_PHYVER_ANALOG, align 4
  %28 = and i32 %26, %27
  %29 = load i32, i32* @B43_PHYVER_ANALOG_SHIFT, align 4
  %30 = ashr i32 %28, %29
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* @B43_PHYVER_TYPE, align 4
  %33 = and i32 %31, %32
  %34 = load i32, i32* @B43_PHYVER_TYPE_SHIFT, align 4
  %35 = ashr i32 %33, %34
  store i32 %35, i32* %8, align 4
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* @B43_PHYVER_VERSION, align 4
  %38 = and i32 %36, %37
  store i32 %38, i32* %9, align 4
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* @B43_PHYTYPE_LCNXN, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %1
  store i32 128, i32* %8, align 4
  %43 = load i32, i32* %9, align 4
  %44 = add nsw i32 %43, 16
  store i32 %44, i32* %9, align 4
  br label %45

45:                                               ; preds = %42, %1
  %46 = load i32, i32* %8, align 4
  switch i32 %46, label %47 [
  ]

47:                                               ; preds = %45
  store i32 1, i32* %14, align 4
  br label %48

48:                                               ; preds = %47
  %49 = load i32, i32* %14, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %64

51:                                               ; preds = %48
  %52 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %53 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* %7, align 4
  %56 = load i32, i32* %8, align 4
  %57 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %58 = load i32, i32* %8, align 4
  %59 = call i32 @b43_phy_name(%struct.b43_wldev* %57, i32 %58)
  %60 = load i32, i32* %9, align 4
  %61 = call i32 @b43err(i32 %54, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0), i32 %55, i32 %56, i32 %59, i32 %60)
  %62 = load i32, i32* @EOPNOTSUPP, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %2, align 4
  br label %286

64:                                               ; preds = %48
  %65 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %66 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* %7, align 4
  %69 = load i32, i32* %8, align 4
  %70 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %71 = load i32, i32* %8, align 4
  %72 = call i32 @b43_phy_name(%struct.b43_wldev* %70, i32 %71)
  %73 = load i32, i32* %9, align 4
  %74 = call i32 @b43info(i32 %67, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i32 %68, i32 %69, i32 %72, i32 %73)
  %75 = load i32, i32* %5, align 4
  %76 = icmp eq i32 %75, 40
  br i1 %76, label %80, label %77

77:                                               ; preds = %64
  %78 = load i32, i32* %5, align 4
  %79 = icmp eq i32 %78, 42
  br i1 %79, label %80, label %93

80:                                               ; preds = %77, %64
  store i32 383, i32* %10, align 4
  %81 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %82 = load i32, i32* @B43_MMIO_RADIO24_CONTROL, align 4
  %83 = call i32 @b43_write16f(%struct.b43_wldev* %81, i32 %82, i32 0)
  %84 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %85 = load i32, i32* @B43_MMIO_RADIO24_DATA, align 4
  %86 = call i32 @b43_read16(%struct.b43_wldev* %84, i32 %85)
  store i32 %86, i32* %12, align 4
  %87 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %88 = load i32, i32* @B43_MMIO_RADIO24_CONTROL, align 4
  %89 = call i32 @b43_write16f(%struct.b43_wldev* %87, i32 %88, i32 1)
  %90 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %91 = load i32, i32* @B43_MMIO_RADIO24_DATA, align 4
  %92 = call i32 @b43_read16(%struct.b43_wldev* %90, i32 %91)
  store i32 %92, i32* %11, align 4
  store i32 0, i32* %13, align 4
  br label %182

93:                                               ; preds = %77
  %94 = load i32, i32* %5, align 4
  %95 = icmp sge i32 %94, 24
  br i1 %95, label %96, label %128

96:                                               ; preds = %93
  store i32 0, i32* %6, align 4
  br label %97

97:                                               ; preds = %111, %96
  %98 = load i32, i32* %6, align 4
  %99 = icmp slt i32 %98, 3
  br i1 %99, label %100, label %114

100:                                              ; preds = %97
  %101 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %102 = load i32, i32* @B43_MMIO_RADIO24_CONTROL, align 4
  %103 = load i32, i32* %6, align 4
  %104 = call i32 @b43_write16f(%struct.b43_wldev* %101, i32 %102, i32 %103)
  %105 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %106 = load i32, i32* @B43_MMIO_RADIO24_DATA, align 4
  %107 = call i32 @b43_read16(%struct.b43_wldev* %105, i32 %106)
  %108 = load i32, i32* %6, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds [3 x i32], [3 x i32]* %15, i64 0, i64 %109
  store i32 %107, i32* %110, align 4
  br label %111

111:                                              ; preds = %100
  %112 = load i32, i32* %6, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %6, align 4
  br label %97

114:                                              ; preds = %97
  store i32 383, i32* %10, align 4
  %115 = getelementptr inbounds [3 x i32], [3 x i32]* %15, i64 0, i64 2
  %116 = load i32, i32* %115, align 4
  %117 = shl i32 %116, 8
  %118 = getelementptr inbounds [3 x i32], [3 x i32]* %15, i64 0, i64 1
  %119 = load i32, i32* %118, align 4
  %120 = or i32 %117, %119
  store i32 %120, i32* %11, align 4
  %121 = getelementptr inbounds [3 x i32], [3 x i32]* %15, i64 0, i64 0
  %122 = load i32, i32* %121, align 4
  %123 = and i32 %122, 15
  store i32 %123, i32* %12, align 4
  %124 = getelementptr inbounds [3 x i32], [3 x i32]* %15, i64 0, i64 0
  %125 = load i32, i32* %124, align 4
  %126 = and i32 %125, 240
  %127 = ashr i32 %126, 4
  store i32 %127, i32* %13, align 4
  br label %181

128:                                              ; preds = %93
  %129 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %130 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %129, i32 0, i32 1
  %131 = load %struct.TYPE_2__*, %struct.TYPE_2__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = icmp eq i32 %133, 17175
  br i1 %134, label %135, label %154

135:                                              ; preds = %128
  %136 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %137 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %136, i32 0, i32 1
  %138 = load %struct.TYPE_2__*, %struct.TYPE_2__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %138, i32 0, i32 2
  %140 = load i32, i32* %139, align 4
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %142, label %143

142:                                              ; preds = %135
  store i32 839188863, i32* %6, align 4
  br label %153

143:                                              ; preds = %135
  %144 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %145 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %144, i32 0, i32 1
  %146 = load %struct.TYPE_2__*, %struct.TYPE_2__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %146, i32 0, i32 2
  %148 = load i32, i32* %147, align 4
  %149 = icmp eq i32 %148, 1
  br i1 %149, label %150, label %151

150:                                              ; preds = %143
  store i32 1107624319, i32* %6, align 4
  br label %152

151:                                              ; preds = %143
  store i32 1376059775, i32* %6, align 4
  br label %152

152:                                              ; preds = %151, %150
  br label %153

153:                                              ; preds = %152, %142
  br label %172

154:                                              ; preds = %128
  %155 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %156 = load i32, i32* @B43_MMIO_RADIO_CONTROL, align 4
  %157 = load i32, i32* @B43_RADIOCTL_ID, align 4
  %158 = call i32 @b43_write16f(%struct.b43_wldev* %155, i32 %156, i32 %157)
  %159 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %160 = load i32, i32* @B43_MMIO_RADIO_DATA_LOW, align 4
  %161 = call i32 @b43_read16(%struct.b43_wldev* %159, i32 %160)
  store i32 %161, i32* %6, align 4
  %162 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %163 = load i32, i32* @B43_MMIO_RADIO_CONTROL, align 4
  %164 = load i32, i32* @B43_RADIOCTL_ID, align 4
  %165 = call i32 @b43_write16f(%struct.b43_wldev* %162, i32 %163, i32 %164)
  %166 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %167 = load i32, i32* @B43_MMIO_RADIO_DATA_HIGH, align 4
  %168 = call i32 @b43_read16(%struct.b43_wldev* %166, i32 %167)
  %169 = shl i32 %168, 16
  %170 = load i32, i32* %6, align 4
  %171 = or i32 %170, %169
  store i32 %171, i32* %6, align 4
  br label %172

172:                                              ; preds = %154, %153
  %173 = load i32, i32* %6, align 4
  %174 = and i32 %173, 4095
  store i32 %174, i32* %10, align 4
  %175 = load i32, i32* %6, align 4
  %176 = and i32 %175, 268431360
  %177 = ashr i32 %176, 12
  store i32 %177, i32* %11, align 4
  %178 = load i32, i32* %6, align 4
  %179 = and i32 %178, -268435456
  %180 = lshr i32 %179, 28
  store i32 %180, i32* %12, align 4
  store i32 0, i32* %13, align 4
  br label %181

181:                                              ; preds = %172, %114
  br label %182

182:                                              ; preds = %181, %80
  %183 = load i32, i32* %10, align 4
  %184 = icmp ne i32 %183, 383
  br i1 %184, label %185, label %186

185:                                              ; preds = %182
  store i32 1, i32* %14, align 4
  br label %186

186:                                              ; preds = %185, %182
  %187 = load i32, i32* %8, align 4
  switch i32 %187, label %243 [
    i32 133, label %188
    i32 132, label %194
    i32 128, label %199
    i32 129, label %220
    i32 131, label %228
    i32 130, label %233
    i32 134, label %238
  ]

188:                                              ; preds = %186
  %189 = load i32, i32* %11, align 4
  %190 = and i32 %189, 65520
  %191 = icmp ne i32 %190, 8272
  br i1 %191, label %192, label %193

192:                                              ; preds = %188
  store i32 1, i32* %14, align 4
  br label %193

193:                                              ; preds = %192, %188
  br label %245

194:                                              ; preds = %186
  %195 = load i32, i32* %11, align 4
  %196 = icmp ne i32 %195, 8272
  br i1 %196, label %197, label %198

197:                                              ; preds = %194
  store i32 1, i32* %14, align 4
  br label %198

198:                                              ; preds = %197, %194
  br label %245

199:                                              ; preds = %186
  %200 = load i32, i32* %11, align 4
  %201 = icmp ne i32 %200, 8277
  br i1 %201, label %202, label %209

202:                                              ; preds = %199
  %203 = load i32, i32* %11, align 4
  %204 = icmp ne i32 %203, 8278
  br i1 %204, label %205, label %209

205:                                              ; preds = %202
  %206 = load i32, i32* %11, align 4
  %207 = icmp ne i32 %206, 8279
  br i1 %207, label %208, label %209

208:                                              ; preds = %205
  store i32 1, i32* %14, align 4
  br label %209

209:                                              ; preds = %208, %205, %202, %199
  %210 = load i32, i32* %11, align 4
  %211 = icmp eq i32 %210, 8279
  br i1 %211, label %212, label %219

212:                                              ; preds = %209
  %213 = load i32, i32* %12, align 4
  %214 = icmp eq i32 %213, 9
  br i1 %214, label %219, label %215

215:                                              ; preds = %212
  %216 = load i32, i32* %12, align 4
  %217 = icmp eq i32 %216, 14
  br i1 %217, label %219, label %218

218:                                              ; preds = %215
  store i32 1, i32* %14, align 4
  br label %219

219:                                              ; preds = %218, %215, %212, %209
  br label %245

220:                                              ; preds = %186
  %221 = load i32, i32* %11, align 4
  %222 = icmp ne i32 %221, 8290
  br i1 %222, label %223, label %227

223:                                              ; preds = %220
  %224 = load i32, i32* %11, align 4
  %225 = icmp ne i32 %224, 8291
  br i1 %225, label %226, label %227

226:                                              ; preds = %223
  store i32 1, i32* %14, align 4
  br label %227

227:                                              ; preds = %226, %223, %220
  br label %245

228:                                              ; preds = %186
  %229 = load i32, i32* %11, align 4
  %230 = icmp ne i32 %229, 8281
  br i1 %230, label %231, label %232

231:                                              ; preds = %228
  store i32 1, i32* %14, align 4
  br label %232

232:                                              ; preds = %231, %228
  br label %245

233:                                              ; preds = %186
  %234 = load i32, i32* %11, align 4
  %235 = icmp ne i32 %234, 8292
  br i1 %235, label %236, label %237

236:                                              ; preds = %233
  store i32 1, i32* %14, align 4
  br label %237

237:                                              ; preds = %236, %233
  br label %245

238:                                              ; preds = %186
  %239 = load i32, i32* %11, align 4
  %240 = icmp ne i32 %239, 8297
  br i1 %240, label %241, label %242

241:                                              ; preds = %238
  store i32 1, i32* %14, align 4
  br label %242

242:                                              ; preds = %241, %238
  br label %245

243:                                              ; preds = %186
  %244 = call i32 @B43_WARN_ON(i32 1)
  br label %245

245:                                              ; preds = %243, %242, %237, %232, %227, %219, %198, %193
  %246 = load i32, i32* %14, align 4
  %247 = icmp ne i32 %246, 0
  br i1 %247, label %248, label %259

248:                                              ; preds = %245
  %249 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %250 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %249, i32 0, i32 0
  %251 = load i32, i32* %250, align 8
  %252 = load i32, i32* %10, align 4
  %253 = load i32, i32* %11, align 4
  %254 = load i32, i32* %12, align 4
  %255 = load i32, i32* %13, align 4
  %256 = call i32 @b43err(i32 %251, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.2, i64 0, i64 0), i32 %252, i32 %253, i32 %254, i32 %255)
  %257 = load i32, i32* @EOPNOTSUPP, align 4
  %258 = sub nsw i32 0, %257
  store i32 %258, i32* %2, align 4
  br label %286

259:                                              ; preds = %245
  %260 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %261 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %260, i32 0, i32 0
  %262 = load i32, i32* %261, align 8
  %263 = load i32, i32* %10, align 4
  %264 = load i32, i32* %11, align 4
  %265 = load i32, i32* %12, align 4
  %266 = load i32, i32* %13, align 4
  %267 = call i32 @b43info(i32 %262, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.3, i64 0, i64 0), i32 %263, i32 %264, i32 %265, i32 %266)
  %268 = load i32, i32* %10, align 4
  %269 = load %struct.b43_phy*, %struct.b43_phy** %4, align 8
  %270 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %269, i32 0, i32 0
  store i32 %268, i32* %270, align 4
  %271 = load i32, i32* %11, align 4
  %272 = load %struct.b43_phy*, %struct.b43_phy** %4, align 8
  %273 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %272, i32 0, i32 1
  store i32 %271, i32* %273, align 4
  %274 = load i32, i32* %12, align 4
  %275 = load %struct.b43_phy*, %struct.b43_phy** %4, align 8
  %276 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %275, i32 0, i32 2
  store i32 %274, i32* %276, align 4
  %277 = load i32, i32* %7, align 4
  %278 = load %struct.b43_phy*, %struct.b43_phy** %4, align 8
  %279 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %278, i32 0, i32 3
  store i32 %277, i32* %279, align 4
  %280 = load i32, i32* %8, align 4
  %281 = load %struct.b43_phy*, %struct.b43_phy** %4, align 8
  %282 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %281, i32 0, i32 4
  store i32 %280, i32* %282, align 4
  %283 = load i32, i32* %9, align 4
  %284 = load %struct.b43_phy*, %struct.b43_phy** %4, align 8
  %285 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %284, i32 0, i32 5
  store i32 %283, i32* %285, align 4
  store i32 0, i32* %2, align 4
  br label %286

286:                                              ; preds = %259, %248, %51
  %287 = load i32, i32* %2, align 4
  ret i32 %287
}

declare dso_local i32 @b43_read16(%struct.b43_wldev*, i32) #1

declare dso_local i32 @b43err(i32, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @b43_phy_name(%struct.b43_wldev*, i32) #1

declare dso_local i32 @b43info(i32, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @b43_write16f(%struct.b43_wldev*, i32, i32) #1

declare dso_local i32 @B43_WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
