; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/phy/extr_phy_n.c_wlc_phy_rfctrl_override_nphy_rev7.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/phy/extr_phy_n.c_wlc_phy_rfctrl_override_nphy_rev7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcms_phy = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@NPHY_REV7_RFCTRLOVERRIDE_ID0 = common dso_local global i32 0, align 4
@NPHY_REV7_RFCTRLOVERRIDE_ID1 = common dso_local global i32 0, align 4
@NPHY_REV7_RFCTRLOVERRIDE_ID2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.brcms_phy*, i32, i32, i32, i32, i32)* @wlc_phy_rfctrl_override_nphy_rev7 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wlc_phy_rfctrl_override_nphy_rev7(%struct.brcms_phy* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.brcms_phy*, align 8
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
  store %struct.brcms_phy* %0, %struct.brcms_phy** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  store i32 0, i32* %19, align 4
  %20 = load %struct.brcms_phy*, %struct.brcms_phy** %7, align 8
  %21 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i64 @NREV_GE(i32 %23, i32 7)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %354

26:                                               ; preds = %6
  %27 = load i32, i32* %8, align 4
  store i32 %27, i32* %17, align 4
  store i32 0, i32* %13, align 4
  br label %28

28:                                               ; preds = %350, %26
  %29 = load i32, i32* %13, align 4
  %30 = icmp slt i32 %29, 2
  br i1 %30, label %31, label %353

31:                                               ; preds = %28
  %32 = load i32, i32* %12, align 4
  %33 = load i32, i32* @NPHY_REV7_RFCTRLOVERRIDE_ID0, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %138

35:                                               ; preds = %31
  %36 = load i32, i32* %8, align 4
  switch i32 %36, label %136 [
    i32 4, label %37
    i32 8, label %46
    i32 16, label %55
    i32 32, label %64
    i32 64, label %73
    i32 128, label %82
    i32 1024, label %91
    i32 2048, label %100
    i32 4096, label %109
    i32 24576, label %118
    i32 8192, label %127
  ]

37:                                               ; preds = %35
  %38 = load i32, i32* %13, align 4
  %39 = icmp eq i32 %38, 0
  %40 = zext i1 %39 to i64
  %41 = select i1 %39, i32 231, i32 236
  store i32 %41, i32* %15, align 4
  %42 = load i32, i32* %13, align 4
  %43 = icmp eq i32 %42, 0
  %44 = zext i1 %43 to i64
  %45 = select i1 %43, i32 122, i32 125
  store i32 %45, i32* %16, align 4
  store i32 2, i32* %18, align 4
  store i32 1, i32* %19, align 4
  br label %137

46:                                               ; preds = %35
  %47 = load i32, i32* %13, align 4
  %48 = icmp eq i32 %47, 0
  %49 = zext i1 %48 to i64
  %50 = select i1 %48, i32 231, i32 236
  store i32 %50, i32* %15, align 4
  %51 = load i32, i32* %13, align 4
  %52 = icmp eq i32 %51, 0
  %53 = zext i1 %52 to i64
  %54 = select i1 %52, i32 122, i32 125
  store i32 %54, i32* %16, align 4
  store i32 4, i32* %18, align 4
  store i32 2, i32* %19, align 4
  br label %137

55:                                               ; preds = %35
  %56 = load i32, i32* %13, align 4
  %57 = icmp eq i32 %56, 0
  %58 = zext i1 %57 to i64
  %59 = select i1 %57, i32 231, i32 236
  store i32 %59, i32* %15, align 4
  %60 = load i32, i32* %13, align 4
  %61 = icmp eq i32 %60, 0
  %62 = zext i1 %61 to i64
  %63 = select i1 %61, i32 122, i32 125
  store i32 %63, i32* %16, align 4
  store i32 16, i32* %18, align 4
  store i32 4, i32* %19, align 4
  br label %137

64:                                               ; preds = %35
  %65 = load i32, i32* %13, align 4
  %66 = icmp eq i32 %65, 0
  %67 = zext i1 %66 to i64
  %68 = select i1 %66, i32 231, i32 236
  store i32 %68, i32* %15, align 4
  %69 = load i32, i32* %13, align 4
  %70 = icmp eq i32 %69, 0
  %71 = zext i1 %70 to i64
  %72 = select i1 %70, i32 122, i32 125
  store i32 %72, i32* %16, align 4
  store i32 32, i32* %18, align 4
  store i32 5, i32* %19, align 4
  br label %137

73:                                               ; preds = %35
  %74 = load i32, i32* %13, align 4
  %75 = icmp eq i32 %74, 0
  %76 = zext i1 %75 to i64
  %77 = select i1 %75, i32 231, i32 236
  store i32 %77, i32* %15, align 4
  %78 = load i32, i32* %13, align 4
  %79 = icmp eq i32 %78, 0
  %80 = zext i1 %79 to i64
  %81 = select i1 %79, i32 122, i32 125
  store i32 %81, i32* %16, align 4
  store i32 64, i32* %18, align 4
  store i32 6, i32* %19, align 4
  br label %137

82:                                               ; preds = %35
  %83 = load i32, i32* %13, align 4
  %84 = icmp eq i32 %83, 0
  %85 = zext i1 %84 to i64
  %86 = select i1 %84, i32 231, i32 236
  store i32 %86, i32* %15, align 4
  %87 = load i32, i32* %13, align 4
  %88 = icmp eq i32 %87, 0
  %89 = zext i1 %88 to i64
  %90 = select i1 %88, i32 122, i32 125
  store i32 %90, i32* %16, align 4
  store i32 128, i32* %18, align 4
  store i32 7, i32* %19, align 4
  br label %137

91:                                               ; preds = %35
  %92 = load i32, i32* %13, align 4
  %93 = icmp eq i32 %92, 0
  %94 = zext i1 %93 to i64
  %95 = select i1 %93, i32 231, i32 236
  store i32 %95, i32* %15, align 4
  %96 = load i32, i32* %13, align 4
  %97 = icmp eq i32 %96, 0
  %98 = zext i1 %97 to i64
  %99 = select i1 %97, i32 248, i32 250
  store i32 %99, i32* %16, align 4
  store i32 112, i32* %18, align 4
  store i32 4, i32* %19, align 4
  br label %137

100:                                              ; preds = %35
  %101 = load i32, i32* %13, align 4
  %102 = icmp eq i32 %101, 0
  %103 = zext i1 %102 to i64
  %104 = select i1 %102, i32 231, i32 236
  store i32 %104, i32* %15, align 4
  %105 = load i32, i32* %13, align 4
  %106 = icmp eq i32 %105, 0
  %107 = zext i1 %106 to i64
  %108 = select i1 %106, i32 123, i32 126
  store i32 %108, i32* %16, align 4
  store i32 65535, i32* %18, align 4
  store i32 0, i32* %19, align 4
  br label %137

109:                                              ; preds = %35
  %110 = load i32, i32* %13, align 4
  %111 = icmp eq i32 %110, 0
  %112 = zext i1 %111 to i64
  %113 = select i1 %111, i32 231, i32 236
  store i32 %113, i32* %15, align 4
  %114 = load i32, i32* %13, align 4
  %115 = icmp eq i32 %114, 0
  %116 = zext i1 %115 to i64
  %117 = select i1 %115, i32 124, i32 127
  store i32 %117, i32* %16, align 4
  store i32 65535, i32* %18, align 4
  store i32 0, i32* %19, align 4
  br label %137

118:                                              ; preds = %35
  %119 = load i32, i32* %13, align 4
  %120 = icmp eq i32 %119, 0
  %121 = zext i1 %120 to i64
  %122 = select i1 %120, i32 231, i32 236
  store i32 %122, i32* %15, align 4
  %123 = load i32, i32* %13, align 4
  %124 = icmp eq i32 %123, 0
  %125 = zext i1 %124 to i64
  %126 = select i1 %124, i32 840, i32 841
  store i32 %126, i32* %16, align 4
  store i32 255, i32* %18, align 4
  store i32 0, i32* %19, align 4
  br label %137

127:                                              ; preds = %35
  %128 = load i32, i32* %13, align 4
  %129 = icmp eq i32 %128, 0
  %130 = zext i1 %129 to i64
  %131 = select i1 %129, i32 231, i32 236
  store i32 %131, i32* %15, align 4
  %132 = load i32, i32* %13, align 4
  %133 = icmp eq i32 %132, 0
  %134 = zext i1 %133 to i64
  %135 = select i1 %133, i32 840, i32 841
  store i32 %135, i32* %16, align 4
  store i32 15, i32* %18, align 4
  store i32 0, i32* %19, align 4
  br label %137

136:                                              ; preds = %35
  store i32 65535, i32* %14, align 4
  br label %137

137:                                              ; preds = %136, %127, %118, %109, %100, %91, %82, %73, %64, %55, %46, %37
  br label %309

138:                                              ; preds = %31
  %139 = load i32, i32* %12, align 4
  %140 = load i32, i32* @NPHY_REV7_RFCTRLOVERRIDE_ID1, align 4
  %141 = icmp eq i32 %139, %140
  br i1 %141, label %142, label %254

142:                                              ; preds = %138
  %143 = load i32, i32* %8, align 4
  switch i32 %143, label %252 [
    i32 2, label %144
    i32 8, label %153
    i32 32, label %162
    i32 16, label %171
    i32 4, label %180
    i32 128, label %189
    i32 2048, label %198
    i32 1024, label %207
    i32 512, label %216
    i32 256, label %225
    i32 64, label %234
    i32 1, label %243
  ]

144:                                              ; preds = %142
  %145 = load i32, i32* %13, align 4
  %146 = icmp eq i32 %145, 0
  %147 = zext i1 %146 to i64
  %148 = select i1 %146, i32 834, i32 835
  store i32 %148, i32* %15, align 4
  %149 = load i32, i32* %13, align 4
  %150 = icmp eq i32 %149, 0
  %151 = zext i1 %150 to i64
  %152 = select i1 %150, i32 832, i32 833
  store i32 %152, i32* %16, align 4
  store i32 2, i32* %18, align 4
  store i32 1, i32* %19, align 4
  br label %253

153:                                              ; preds = %142
  %154 = load i32, i32* %13, align 4
  %155 = icmp eq i32 %154, 0
  %156 = zext i1 %155 to i64
  %157 = select i1 %155, i32 834, i32 835
  store i32 %157, i32* %15, align 4
  %158 = load i32, i32* %13, align 4
  %159 = icmp eq i32 %158, 0
  %160 = zext i1 %159 to i64
  %161 = select i1 %159, i32 832, i32 833
  store i32 %161, i32* %16, align 4
  store i32 8, i32* %18, align 4
  store i32 3, i32* %19, align 4
  br label %253

162:                                              ; preds = %142
  %163 = load i32, i32* %13, align 4
  %164 = icmp eq i32 %163, 0
  %165 = zext i1 %164 to i64
  %166 = select i1 %164, i32 834, i32 835
  store i32 %166, i32* %15, align 4
  %167 = load i32, i32* %13, align 4
  %168 = icmp eq i32 %167, 0
  %169 = zext i1 %168 to i64
  %170 = select i1 %168, i32 832, i32 833
  store i32 %170, i32* %16, align 4
  store i32 32, i32* %18, align 4
  store i32 5, i32* %19, align 4
  br label %253

171:                                              ; preds = %142
  %172 = load i32, i32* %13, align 4
  %173 = icmp eq i32 %172, 0
  %174 = zext i1 %173 to i64
  %175 = select i1 %173, i32 834, i32 835
  store i32 %175, i32* %15, align 4
  %176 = load i32, i32* %13, align 4
  %177 = icmp eq i32 %176, 0
  %178 = zext i1 %177 to i64
  %179 = select i1 %177, i32 832, i32 833
  store i32 %179, i32* %16, align 4
  store i32 16, i32* %18, align 4
  store i32 4, i32* %19, align 4
  br label %253

180:                                              ; preds = %142
  %181 = load i32, i32* %13, align 4
  %182 = icmp eq i32 %181, 0
  %183 = zext i1 %182 to i64
  %184 = select i1 %182, i32 834, i32 835
  store i32 %184, i32* %15, align 4
  %185 = load i32, i32* %13, align 4
  %186 = icmp eq i32 %185, 0
  %187 = zext i1 %186 to i64
  %188 = select i1 %186, i32 832, i32 833
  store i32 %188, i32* %16, align 4
  store i32 4, i32* %18, align 4
  store i32 2, i32* %19, align 4
  br label %253

189:                                              ; preds = %142
  %190 = load i32, i32* %13, align 4
  %191 = icmp eq i32 %190, 0
  %192 = zext i1 %191 to i64
  %193 = select i1 %191, i32 834, i32 835
  store i32 %193, i32* %15, align 4
  %194 = load i32, i32* %13, align 4
  %195 = icmp eq i32 %194, 0
  %196 = zext i1 %195 to i64
  %197 = select i1 %195, i32 832, i32 833
  store i32 %197, i32* %16, align 4
  store i32 1792, i32* %18, align 4
  store i32 8, i32* %19, align 4
  br label %253

198:                                              ; preds = %142
  %199 = load i32, i32* %13, align 4
  %200 = icmp eq i32 %199, 0
  %201 = zext i1 %200 to i64
  %202 = select i1 %200, i32 834, i32 835
  store i32 %202, i32* %15, align 4
  %203 = load i32, i32* %13, align 4
  %204 = icmp eq i32 %203, 0
  %205 = zext i1 %204 to i64
  %206 = select i1 %204, i32 832, i32 833
  store i32 %206, i32* %16, align 4
  store i32 16384, i32* %18, align 4
  store i32 14, i32* %19, align 4
  br label %253

207:                                              ; preds = %142
  %208 = load i32, i32* %13, align 4
  %209 = icmp eq i32 %208, 0
  %210 = zext i1 %209 to i64
  %211 = select i1 %209, i32 834, i32 835
  store i32 %211, i32* %15, align 4
  %212 = load i32, i32* %13, align 4
  %213 = icmp eq i32 %212, 0
  %214 = zext i1 %213 to i64
  %215 = select i1 %213, i32 832, i32 833
  store i32 %215, i32* %16, align 4
  store i32 8192, i32* %18, align 4
  store i32 13, i32* %19, align 4
  br label %253

216:                                              ; preds = %142
  %217 = load i32, i32* %13, align 4
  %218 = icmp eq i32 %217, 0
  %219 = zext i1 %218 to i64
  %220 = select i1 %218, i32 834, i32 835
  store i32 %220, i32* %15, align 4
  %221 = load i32, i32* %13, align 4
  %222 = icmp eq i32 %221, 0
  %223 = zext i1 %222 to i64
  %224 = select i1 %222, i32 832, i32 833
  store i32 %224, i32* %16, align 4
  store i32 4096, i32* %18, align 4
  store i32 12, i32* %19, align 4
  br label %253

225:                                              ; preds = %142
  %226 = load i32, i32* %13, align 4
  %227 = icmp eq i32 %226, 0
  %228 = zext i1 %227 to i64
  %229 = select i1 %227, i32 834, i32 835
  store i32 %229, i32* %15, align 4
  %230 = load i32, i32* %13, align 4
  %231 = icmp eq i32 %230, 0
  %232 = zext i1 %231 to i64
  %233 = select i1 %231, i32 832, i32 833
  store i32 %233, i32* %16, align 4
  store i32 2048, i32* %18, align 4
  store i32 11, i32* %19, align 4
  br label %253

234:                                              ; preds = %142
  %235 = load i32, i32* %13, align 4
  %236 = icmp eq i32 %235, 0
  %237 = zext i1 %236 to i64
  %238 = select i1 %236, i32 834, i32 835
  store i32 %238, i32* %15, align 4
  %239 = load i32, i32* %13, align 4
  %240 = icmp eq i32 %239, 0
  %241 = zext i1 %240 to i64
  %242 = select i1 %240, i32 832, i32 833
  store i32 %242, i32* %16, align 4
  store i32 64, i32* %18, align 4
  store i32 6, i32* %19, align 4
  br label %253

243:                                              ; preds = %142
  %244 = load i32, i32* %13, align 4
  %245 = icmp eq i32 %244, 0
  %246 = zext i1 %245 to i64
  %247 = select i1 %245, i32 834, i32 835
  store i32 %247, i32* %15, align 4
  %248 = load i32, i32* %13, align 4
  %249 = icmp eq i32 %248, 0
  %250 = zext i1 %249 to i64
  %251 = select i1 %249, i32 832, i32 833
  store i32 %251, i32* %16, align 4
  store i32 1, i32* %18, align 4
  store i32 0, i32* %19, align 4
  br label %253

252:                                              ; preds = %142
  store i32 65535, i32* %14, align 4
  br label %253

253:                                              ; preds = %252, %243, %234, %225, %216, %207, %198, %189, %180, %171, %162, %153, %144
  br label %308

254:                                              ; preds = %138
  %255 = load i32, i32* %12, align 4
  %256 = load i32, i32* @NPHY_REV7_RFCTRLOVERRIDE_ID2, align 4
  %257 = icmp eq i32 %255, %256
  br i1 %257, label %258, label %307

258:                                              ; preds = %254
  %259 = load i32, i32* %8, align 4
  switch i32 %259, label %305 [
    i32 8, label %260
    i32 2, label %269
    i32 1, label %278
    i32 4, label %287
    i32 16, label %296
  ]

260:                                              ; preds = %258
  %261 = load i32, i32* %13, align 4
  %262 = icmp eq i32 %261, 0
  %263 = zext i1 %262 to i64
  %264 = select i1 %262, i32 838, i32 839
  store i32 %264, i32* %15, align 4
  %265 = load i32, i32* %13, align 4
  %266 = icmp eq i32 %265, 0
  %267 = zext i1 %266 to i64
  %268 = select i1 %266, i32 836, i32 837
  store i32 %268, i32* %16, align 4
  store i32 8, i32* %18, align 4
  store i32 3, i32* %19, align 4
  br label %306

269:                                              ; preds = %258
  %270 = load i32, i32* %13, align 4
  %271 = icmp eq i32 %270, 0
  %272 = zext i1 %271 to i64
  %273 = select i1 %271, i32 838, i32 839
  store i32 %273, i32* %15, align 4
  %274 = load i32, i32* %13, align 4
  %275 = icmp eq i32 %274, 0
  %276 = zext i1 %275 to i64
  %277 = select i1 %275, i32 836, i32 837
  store i32 %277, i32* %16, align 4
  store i32 2, i32* %18, align 4
  store i32 1, i32* %19, align 4
  br label %306

278:                                              ; preds = %258
  %279 = load i32, i32* %13, align 4
  %280 = icmp eq i32 %279, 0
  %281 = zext i1 %280 to i64
  %282 = select i1 %280, i32 838, i32 839
  store i32 %282, i32* %15, align 4
  %283 = load i32, i32* %13, align 4
  %284 = icmp eq i32 %283, 0
  %285 = zext i1 %284 to i64
  %286 = select i1 %284, i32 836, i32 837
  store i32 %286, i32* %16, align 4
  store i32 1, i32* %18, align 4
  store i32 0, i32* %19, align 4
  br label %306

287:                                              ; preds = %258
  %288 = load i32, i32* %13, align 4
  %289 = icmp eq i32 %288, 0
  %290 = zext i1 %289 to i64
  %291 = select i1 %289, i32 838, i32 839
  store i32 %291, i32* %15, align 4
  %292 = load i32, i32* %13, align 4
  %293 = icmp eq i32 %292, 0
  %294 = zext i1 %293 to i64
  %295 = select i1 %293, i32 836, i32 837
  store i32 %295, i32* %16, align 4
  store i32 4, i32* %18, align 4
  store i32 2, i32* %19, align 4
  br label %306

296:                                              ; preds = %258
  %297 = load i32, i32* %13, align 4
  %298 = icmp eq i32 %297, 0
  %299 = zext i1 %298 to i64
  %300 = select i1 %298, i32 838, i32 839
  store i32 %300, i32* %15, align 4
  %301 = load i32, i32* %13, align 4
  %302 = icmp eq i32 %301, 0
  %303 = zext i1 %302 to i64
  %304 = select i1 %302, i32 836, i32 837
  store i32 %304, i32* %16, align 4
  store i32 16, i32* %18, align 4
  store i32 4, i32* %19, align 4
  br label %306

305:                                              ; preds = %258
  store i32 65535, i32* %14, align 4
  br label %306

306:                                              ; preds = %305, %296, %287, %278, %269, %260
  br label %307

307:                                              ; preds = %306, %254
  br label %308

308:                                              ; preds = %307, %253
  br label %309

309:                                              ; preds = %308, %137
  %310 = load i32, i32* %11, align 4
  %311 = icmp ne i32 %310, 0
  br i1 %311, label %312, label %323

312:                                              ; preds = %309
  %313 = load %struct.brcms_phy*, %struct.brcms_phy** %7, align 8
  %314 = load i32, i32* %15, align 4
  %315 = load i32, i32* %17, align 4
  %316 = xor i32 %315, -1
  %317 = call i32 @and_phy_reg(%struct.brcms_phy* %313, i32 %314, i32 %316)
  %318 = load %struct.brcms_phy*, %struct.brcms_phy** %7, align 8
  %319 = load i32, i32* %16, align 4
  %320 = load i32, i32* %18, align 4
  %321 = xor i32 %320, -1
  %322 = call i32 @and_phy_reg(%struct.brcms_phy* %318, i32 %319, i32 %321)
  br label %349

323:                                              ; preds = %309
  %324 = load i32, i32* %10, align 4
  %325 = icmp eq i32 %324, 0
  br i1 %325, label %332, label %326

326:                                              ; preds = %323
  %327 = load i32, i32* %10, align 4
  %328 = load i32, i32* %13, align 4
  %329 = shl i32 1, %328
  %330 = and i32 %327, %329
  %331 = icmp ne i32 %330, 0
  br i1 %331, label %332, label %348

332:                                              ; preds = %326, %323
  %333 = load %struct.brcms_phy*, %struct.brcms_phy** %7, align 8
  %334 = load i32, i32* %15, align 4
  %335 = load i32, i32* %17, align 4
  %336 = call i32 @or_phy_reg(%struct.brcms_phy* %333, i32 %334, i32 %335)
  %337 = load i32, i32* %14, align 4
  %338 = icmp ne i32 %337, 65535
  br i1 %338, label %339, label %347

339:                                              ; preds = %332
  %340 = load %struct.brcms_phy*, %struct.brcms_phy** %7, align 8
  %341 = load i32, i32* %16, align 4
  %342 = load i32, i32* %18, align 4
  %343 = load i32, i32* %9, align 4
  %344 = load i32, i32* %19, align 4
  %345 = shl i32 %343, %344
  %346 = call i32 @mod_phy_reg(%struct.brcms_phy* %340, i32 %341, i32 %342, i32 %345)
  br label %347

347:                                              ; preds = %339, %332
  br label %348

348:                                              ; preds = %347, %326
  br label %349

349:                                              ; preds = %348, %312
  br label %350

350:                                              ; preds = %349
  %351 = load i32, i32* %13, align 4
  %352 = add nsw i32 %351, 1
  store i32 %352, i32* %13, align 4
  br label %28

353:                                              ; preds = %28
  br label %354

354:                                              ; preds = %353, %6
  ret void
}

declare dso_local i64 @NREV_GE(i32, i32) #1

declare dso_local i32 @and_phy_reg(%struct.brcms_phy*, i32, i32) #1

declare dso_local i32 @or_phy_reg(%struct.brcms_phy*, i32, i32) #1

declare dso_local i32 @mod_phy_reg(%struct.brcms_phy*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
