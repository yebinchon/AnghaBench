; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_hwif.c_stmmac_hwif_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_hwif.c_stmmac_hwif_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stmmac_hwif_entry = type { i32, i32, i32, i64, i32 (%struct.stmmac_priv*)*, i32, %struct.TYPE_4__, i64, i64, i64, i64, i64, i64, i64 }
%struct.stmmac_priv = type { i64, i32, i32, i64, i64, i64, %struct.mac_device_info*, %struct.TYPE_3__* }
%struct.mac_device_info = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.TYPE_3__ = type { i32, i32, i32, %struct.mac_device_info* (%struct.stmmac_priv*)* }
%struct.TYPE_4__ = type { i64, i64 }

@GMAC_VERSION = common dso_local global i32 0, align 4
@GMAC4_VERSION = common dso_local global i32 0, align 4
@PTP_GMAC4_OFFSET = common dso_local global i64 0, align 8
@PTP_GMAC3_X_OFFSET = common dso_local global i64 0, align 8
@MMC_GMAC4_OFFSET = common dso_local global i64 0, align 8
@MMC_GMAC3_X_OFFSET = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@stmmac_hw = common dso_local global %struct.stmmac_hwif_entry* null, align 8
@.str = private unnamed_addr constant [44 x i8] c"Failed to find HW IF (id=0x%x, gmac=%d/%d)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @stmmac_hwif_init(%struct.stmmac_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.stmmac_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.stmmac_hwif_entry*, align 8
  %8 = alloca %struct.mac_device_info*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.stmmac_priv* %0, %struct.stmmac_priv** %3, align 8
  %13 = load %struct.stmmac_priv*, %struct.stmmac_priv** %3, align 8
  %14 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %13, i32 0, i32 7
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %4, align 4
  %18 = load %struct.stmmac_priv*, %struct.stmmac_priv** %3, align 8
  %19 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %18, i32 0, i32 7
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %5, align 4
  %23 = load %struct.stmmac_priv*, %struct.stmmac_priv** %3, align 8
  %24 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %23, i32 0, i32 7
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  store i32 %27, i32* %6, align 4
  store i32 1, i32* %9, align 4
  %28 = load i32, i32* %6, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %1
  %31 = load %struct.stmmac_priv*, %struct.stmmac_priv** %3, align 8
  %32 = load i32, i32* @GMAC_VERSION, align 4
  %33 = call i64 @stmmac_get_id(%struct.stmmac_priv* %31, i32 %32)
  store i64 %33, i64* %12, align 8
  br label %46

34:                                               ; preds = %1
  %35 = load i32, i32* %5, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %34
  %38 = load i32, i32* %4, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %37, %34
  %41 = load %struct.stmmac_priv*, %struct.stmmac_priv** %3, align 8
  %42 = load i32, i32* @GMAC4_VERSION, align 4
  %43 = call i64 @stmmac_get_id(%struct.stmmac_priv* %41, i32 %42)
  store i64 %43, i64* %12, align 8
  br label %45

44:                                               ; preds = %37
  store i64 0, i64* %12, align 8
  br label %45

45:                                               ; preds = %44, %40
  br label %46

46:                                               ; preds = %45, %30
  %47 = load i64, i64* %12, align 8
  %48 = load %struct.stmmac_priv*, %struct.stmmac_priv** %3, align 8
  %49 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %48, i32 0, i32 0
  store i64 %47, i64* %49, align 8
  %50 = load %struct.stmmac_priv*, %struct.stmmac_priv** %3, align 8
  %51 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %50, i32 0, i32 3
  %52 = load i64, i64* %51, align 8
  %53 = load i32, i32* %5, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %46
  %56 = load i64, i64* @PTP_GMAC4_OFFSET, align 8
  br label %59

57:                                               ; preds = %46
  %58 = load i64, i64* @PTP_GMAC3_X_OFFSET, align 8
  br label %59

59:                                               ; preds = %57, %55
  %60 = phi i64 [ %56, %55 ], [ %58, %57 ]
  %61 = add nsw i64 %52, %60
  %62 = load %struct.stmmac_priv*, %struct.stmmac_priv** %3, align 8
  %63 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %62, i32 0, i32 5
  store i64 %61, i64* %63, align 8
  %64 = load %struct.stmmac_priv*, %struct.stmmac_priv** %3, align 8
  %65 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %64, i32 0, i32 3
  %66 = load i64, i64* %65, align 8
  %67 = load i32, i32* %5, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %59
  %70 = load i64, i64* @MMC_GMAC4_OFFSET, align 8
  br label %73

71:                                               ; preds = %59
  %72 = load i64, i64* @MMC_GMAC3_X_OFFSET, align 8
  br label %73

73:                                               ; preds = %71, %69
  %74 = phi i64 [ %70, %69 ], [ %72, %71 ]
  %75 = add nsw i64 %66, %74
  %76 = load %struct.stmmac_priv*, %struct.stmmac_priv** %3, align 8
  %77 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %76, i32 0, i32 4
  store i64 %75, i64* %77, align 8
  %78 = load %struct.stmmac_priv*, %struct.stmmac_priv** %3, align 8
  %79 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %78, i32 0, i32 7
  %80 = load %struct.TYPE_3__*, %struct.TYPE_3__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 3
  %82 = load %struct.mac_device_info* (%struct.stmmac_priv*)*, %struct.mac_device_info* (%struct.stmmac_priv*)** %81, align 8
  %83 = icmp ne %struct.mac_device_info* (%struct.stmmac_priv*)* %82, null
  br i1 %83, label %84, label %92

84:                                               ; preds = %73
  %85 = load %struct.stmmac_priv*, %struct.stmmac_priv** %3, align 8
  %86 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %85, i32 0, i32 7
  %87 = load %struct.TYPE_3__*, %struct.TYPE_3__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 3
  %89 = load %struct.mac_device_info* (%struct.stmmac_priv*)*, %struct.mac_device_info* (%struct.stmmac_priv*)** %88, align 8
  %90 = load %struct.stmmac_priv*, %struct.stmmac_priv** %3, align 8
  %91 = call %struct.mac_device_info* %89(%struct.stmmac_priv* %90)
  store %struct.mac_device_info* %91, %struct.mac_device_info** %8, align 8
  store i32 0, i32* %9, align 4
  br label %98

92:                                               ; preds = %73
  %93 = load %struct.stmmac_priv*, %struct.stmmac_priv** %3, align 8
  %94 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 8
  %96 = load i32, i32* @GFP_KERNEL, align 4
  %97 = call %struct.mac_device_info* @devm_kzalloc(i32 %95, i32 56, i32 %96)
  store %struct.mac_device_info* %97, %struct.mac_device_info** %8, align 8
  br label %98

98:                                               ; preds = %92, %84
  %99 = load %struct.mac_device_info*, %struct.mac_device_info** %8, align 8
  %100 = icmp ne %struct.mac_device_info* %99, null
  br i1 %100, label %104, label %101

101:                                              ; preds = %98
  %102 = load i32, i32* @ENOMEM, align 4
  %103 = sub nsw i32 0, %102
  store i32 %103, i32* %2, align 4
  br label %295

104:                                              ; preds = %98
  %105 = load %struct.stmmac_hwif_entry*, %struct.stmmac_hwif_entry** @stmmac_hw, align 8
  %106 = call i32 @ARRAY_SIZE(%struct.stmmac_hwif_entry* %105)
  %107 = sub nsw i32 %106, 1
  store i32 %107, i32* %10, align 4
  br label %108

108:                                              ; preds = %282, %104
  %109 = load i32, i32* %10, align 4
  %110 = icmp sge i32 %109, 0
  br i1 %110, label %111, label %285

111:                                              ; preds = %108
  %112 = load %struct.stmmac_hwif_entry*, %struct.stmmac_hwif_entry** @stmmac_hw, align 8
  %113 = load i32, i32* %10, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds %struct.stmmac_hwif_entry, %struct.stmmac_hwif_entry* %112, i64 %114
  store %struct.stmmac_hwif_entry* %115, %struct.stmmac_hwif_entry** %7, align 8
  %116 = load i32, i32* %6, align 4
  %117 = load %struct.stmmac_hwif_entry*, %struct.stmmac_hwif_entry** %7, align 8
  %118 = getelementptr inbounds %struct.stmmac_hwif_entry, %struct.stmmac_hwif_entry* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = xor i32 %116, %119
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %123

122:                                              ; preds = %111
  br label %282

123:                                              ; preds = %111
  %124 = load i32, i32* %5, align 4
  %125 = load %struct.stmmac_hwif_entry*, %struct.stmmac_hwif_entry** %7, align 8
  %126 = getelementptr inbounds %struct.stmmac_hwif_entry, %struct.stmmac_hwif_entry* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = xor i32 %124, %127
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %131

130:                                              ; preds = %123
  br label %282

131:                                              ; preds = %123
  %132 = load i32, i32* %4, align 4
  %133 = load %struct.stmmac_hwif_entry*, %struct.stmmac_hwif_entry** %7, align 8
  %134 = getelementptr inbounds %struct.stmmac_hwif_entry, %struct.stmmac_hwif_entry* %133, i32 0, i32 2
  %135 = load i32, i32* %134, align 8
  %136 = xor i32 %132, %135
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %139

138:                                              ; preds = %131
  br label %282

139:                                              ; preds = %131
  %140 = load %struct.stmmac_priv*, %struct.stmmac_priv** %3, align 8
  %141 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = load %struct.stmmac_hwif_entry*, %struct.stmmac_hwif_entry** %7, align 8
  %144 = getelementptr inbounds %struct.stmmac_hwif_entry, %struct.stmmac_hwif_entry* %143, i32 0, i32 3
  %145 = load i64, i64* %144, align 8
  %146 = icmp slt i64 %142, %145
  br i1 %146, label %147, label %148

147:                                              ; preds = %139
  br label %282

148:                                              ; preds = %139
  %149 = load %struct.mac_device_info*, %struct.mac_device_info** %8, align 8
  %150 = getelementptr inbounds %struct.mac_device_info, %struct.mac_device_info* %149, i32 0, i32 6
  %151 = load i64, i64* %150, align 8
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %154

153:                                              ; preds = %148
  br label %158

154:                                              ; preds = %148
  %155 = load %struct.stmmac_hwif_entry*, %struct.stmmac_hwif_entry** %7, align 8
  %156 = getelementptr inbounds %struct.stmmac_hwif_entry, %struct.stmmac_hwif_entry* %155, i32 0, i32 13
  %157 = load i64, i64* %156, align 8
  br label %158

158:                                              ; preds = %154, %153
  %159 = phi i64 [ %151, %153 ], [ %157, %154 ]
  %160 = load %struct.mac_device_info*, %struct.mac_device_info** %8, align 8
  %161 = getelementptr inbounds %struct.mac_device_info, %struct.mac_device_info* %160, i32 0, i32 6
  store i64 %159, i64* %161, align 8
  %162 = load %struct.mac_device_info*, %struct.mac_device_info** %8, align 8
  %163 = getelementptr inbounds %struct.mac_device_info, %struct.mac_device_info* %162, i32 0, i32 5
  %164 = load i64, i64* %163, align 8
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %167

166:                                              ; preds = %158
  br label %171

167:                                              ; preds = %158
  %168 = load %struct.stmmac_hwif_entry*, %struct.stmmac_hwif_entry** %7, align 8
  %169 = getelementptr inbounds %struct.stmmac_hwif_entry, %struct.stmmac_hwif_entry* %168, i32 0, i32 12
  %170 = load i64, i64* %169, align 8
  br label %171

171:                                              ; preds = %167, %166
  %172 = phi i64 [ %164, %166 ], [ %170, %167 ]
  %173 = load %struct.mac_device_info*, %struct.mac_device_info** %8, align 8
  %174 = getelementptr inbounds %struct.mac_device_info, %struct.mac_device_info* %173, i32 0, i32 5
  store i64 %172, i64* %174, align 8
  %175 = load %struct.mac_device_info*, %struct.mac_device_info** %8, align 8
  %176 = getelementptr inbounds %struct.mac_device_info, %struct.mac_device_info* %175, i32 0, i32 4
  %177 = load i64, i64* %176, align 8
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %179, label %180

179:                                              ; preds = %171
  br label %184

180:                                              ; preds = %171
  %181 = load %struct.stmmac_hwif_entry*, %struct.stmmac_hwif_entry** %7, align 8
  %182 = getelementptr inbounds %struct.stmmac_hwif_entry, %struct.stmmac_hwif_entry* %181, i32 0, i32 11
  %183 = load i64, i64* %182, align 8
  br label %184

184:                                              ; preds = %180, %179
  %185 = phi i64 [ %177, %179 ], [ %183, %180 ]
  %186 = load %struct.mac_device_info*, %struct.mac_device_info** %8, align 8
  %187 = getelementptr inbounds %struct.mac_device_info, %struct.mac_device_info* %186, i32 0, i32 4
  store i64 %185, i64* %187, align 8
  %188 = load %struct.mac_device_info*, %struct.mac_device_info** %8, align 8
  %189 = getelementptr inbounds %struct.mac_device_info, %struct.mac_device_info* %188, i32 0, i32 3
  %190 = load i64, i64* %189, align 8
  %191 = icmp ne i64 %190, 0
  br i1 %191, label %192, label %193

192:                                              ; preds = %184
  br label %197

193:                                              ; preds = %184
  %194 = load %struct.stmmac_hwif_entry*, %struct.stmmac_hwif_entry** %7, align 8
  %195 = getelementptr inbounds %struct.stmmac_hwif_entry, %struct.stmmac_hwif_entry* %194, i32 0, i32 10
  %196 = load i64, i64* %195, align 8
  br label %197

197:                                              ; preds = %193, %192
  %198 = phi i64 [ %190, %192 ], [ %196, %193 ]
  %199 = load %struct.mac_device_info*, %struct.mac_device_info** %8, align 8
  %200 = getelementptr inbounds %struct.mac_device_info, %struct.mac_device_info* %199, i32 0, i32 3
  store i64 %198, i64* %200, align 8
  %201 = load %struct.mac_device_info*, %struct.mac_device_info** %8, align 8
  %202 = getelementptr inbounds %struct.mac_device_info, %struct.mac_device_info* %201, i32 0, i32 2
  %203 = load i64, i64* %202, align 8
  %204 = icmp ne i64 %203, 0
  br i1 %204, label %205, label %206

205:                                              ; preds = %197
  br label %210

206:                                              ; preds = %197
  %207 = load %struct.stmmac_hwif_entry*, %struct.stmmac_hwif_entry** %7, align 8
  %208 = getelementptr inbounds %struct.stmmac_hwif_entry, %struct.stmmac_hwif_entry* %207, i32 0, i32 9
  %209 = load i64, i64* %208, align 8
  br label %210

210:                                              ; preds = %206, %205
  %211 = phi i64 [ %203, %205 ], [ %209, %206 ]
  %212 = load %struct.mac_device_info*, %struct.mac_device_info** %8, align 8
  %213 = getelementptr inbounds %struct.mac_device_info, %struct.mac_device_info* %212, i32 0, i32 2
  store i64 %211, i64* %213, align 8
  %214 = load %struct.mac_device_info*, %struct.mac_device_info** %8, align 8
  %215 = getelementptr inbounds %struct.mac_device_info, %struct.mac_device_info* %214, i32 0, i32 1
  %216 = load i64, i64* %215, align 8
  %217 = icmp ne i64 %216, 0
  br i1 %217, label %218, label %219

218:                                              ; preds = %210
  br label %223

219:                                              ; preds = %210
  %220 = load %struct.stmmac_hwif_entry*, %struct.stmmac_hwif_entry** %7, align 8
  %221 = getelementptr inbounds %struct.stmmac_hwif_entry, %struct.stmmac_hwif_entry* %220, i32 0, i32 8
  %222 = load i64, i64* %221, align 8
  br label %223

223:                                              ; preds = %219, %218
  %224 = phi i64 [ %216, %218 ], [ %222, %219 ]
  %225 = load %struct.mac_device_info*, %struct.mac_device_info** %8, align 8
  %226 = getelementptr inbounds %struct.mac_device_info, %struct.mac_device_info* %225, i32 0, i32 1
  store i64 %224, i64* %226, align 8
  %227 = load %struct.mac_device_info*, %struct.mac_device_info** %8, align 8
  %228 = getelementptr inbounds %struct.mac_device_info, %struct.mac_device_info* %227, i32 0, i32 0
  %229 = load i64, i64* %228, align 8
  %230 = icmp ne i64 %229, 0
  br i1 %230, label %231, label %232

231:                                              ; preds = %223
  br label %236

232:                                              ; preds = %223
  %233 = load %struct.stmmac_hwif_entry*, %struct.stmmac_hwif_entry** %7, align 8
  %234 = getelementptr inbounds %struct.stmmac_hwif_entry, %struct.stmmac_hwif_entry* %233, i32 0, i32 7
  %235 = load i64, i64* %234, align 8
  br label %236

236:                                              ; preds = %232, %231
  %237 = phi i64 [ %229, %231 ], [ %235, %232 ]
  %238 = load %struct.mac_device_info*, %struct.mac_device_info** %8, align 8
  %239 = getelementptr inbounds %struct.mac_device_info, %struct.mac_device_info* %238, i32 0, i32 0
  store i64 %237, i64* %239, align 8
  %240 = load %struct.mac_device_info*, %struct.mac_device_info** %8, align 8
  %241 = load %struct.stmmac_priv*, %struct.stmmac_priv** %3, align 8
  %242 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %241, i32 0, i32 6
  store %struct.mac_device_info* %240, %struct.mac_device_info** %242, align 8
  %243 = load %struct.stmmac_priv*, %struct.stmmac_priv** %3, align 8
  %244 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %243, i32 0, i32 3
  %245 = load i64, i64* %244, align 8
  %246 = load %struct.stmmac_hwif_entry*, %struct.stmmac_hwif_entry** %7, align 8
  %247 = getelementptr inbounds %struct.stmmac_hwif_entry, %struct.stmmac_hwif_entry* %246, i32 0, i32 6
  %248 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %247, i32 0, i32 1
  %249 = load i64, i64* %248, align 8
  %250 = add nsw i64 %245, %249
  %251 = load %struct.stmmac_priv*, %struct.stmmac_priv** %3, align 8
  %252 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %251, i32 0, i32 5
  store i64 %250, i64* %252, align 8
  %253 = load %struct.stmmac_priv*, %struct.stmmac_priv** %3, align 8
  %254 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %253, i32 0, i32 3
  %255 = load i64, i64* %254, align 8
  %256 = load %struct.stmmac_hwif_entry*, %struct.stmmac_hwif_entry** %7, align 8
  %257 = getelementptr inbounds %struct.stmmac_hwif_entry, %struct.stmmac_hwif_entry* %256, i32 0, i32 6
  %258 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %257, i32 0, i32 0
  %259 = load i64, i64* %258, align 8
  %260 = add nsw i64 %255, %259
  %261 = load %struct.stmmac_priv*, %struct.stmmac_priv** %3, align 8
  %262 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %261, i32 0, i32 4
  store i64 %260, i64* %262, align 8
  %263 = load i32, i32* %9, align 4
  %264 = icmp ne i32 %263, 0
  br i1 %264, label %265, label %276

265:                                              ; preds = %236
  %266 = load %struct.stmmac_hwif_entry*, %struct.stmmac_hwif_entry** %7, align 8
  %267 = getelementptr inbounds %struct.stmmac_hwif_entry, %struct.stmmac_hwif_entry* %266, i32 0, i32 4
  %268 = load i32 (%struct.stmmac_priv*)*, i32 (%struct.stmmac_priv*)** %267, align 8
  %269 = load %struct.stmmac_priv*, %struct.stmmac_priv** %3, align 8
  %270 = call i32 %268(%struct.stmmac_priv* %269)
  store i32 %270, i32* %11, align 4
  %271 = load i32, i32* %11, align 4
  %272 = icmp ne i32 %271, 0
  br i1 %272, label %273, label %275

273:                                              ; preds = %265
  %274 = load i32, i32* %11, align 4
  store i32 %274, i32* %2, align 4
  br label %295

275:                                              ; preds = %265
  br label %276

276:                                              ; preds = %275, %236
  %277 = load %struct.stmmac_hwif_entry*, %struct.stmmac_hwif_entry** %7, align 8
  %278 = getelementptr inbounds %struct.stmmac_hwif_entry, %struct.stmmac_hwif_entry* %277, i32 0, i32 5
  %279 = load i32, i32* %278, align 8
  %280 = load %struct.stmmac_priv*, %struct.stmmac_priv** %3, align 8
  %281 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %280, i32 0, i32 2
  store i32 %279, i32* %281, align 4
  store i32 0, i32* %2, align 4
  br label %295

282:                                              ; preds = %147, %138, %130, %122
  %283 = load i32, i32* %10, align 4
  %284 = add nsw i32 %283, -1
  store i32 %284, i32* %10, align 4
  br label %108

285:                                              ; preds = %108
  %286 = load %struct.stmmac_priv*, %struct.stmmac_priv** %3, align 8
  %287 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %286, i32 0, i32 1
  %288 = load i32, i32* %287, align 8
  %289 = load i64, i64* %12, align 8
  %290 = load i32, i32* %6, align 4
  %291 = load i32, i32* %5, align 4
  %292 = call i32 @dev_err(i32 %288, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i64 %289, i32 %290, i32 %291)
  %293 = load i32, i32* @EINVAL, align 4
  %294 = sub nsw i32 0, %293
  store i32 %294, i32* %2, align 4
  br label %295

295:                                              ; preds = %285, %276, %273, %101
  %296 = load i32, i32* %2, align 4
  ret i32 %296
}

declare dso_local i64 @stmmac_get_id(%struct.stmmac_priv*, i32) #1

declare dso_local %struct.mac_device_info* @devm_kzalloc(i32, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.stmmac_hwif_entry*) #1

declare dso_local i32 @dev_err(i32, i8*, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
