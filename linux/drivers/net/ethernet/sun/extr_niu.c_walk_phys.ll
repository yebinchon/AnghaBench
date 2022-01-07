; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_niu.c_walk_phys.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_niu.c_walk_phys.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.niu = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.niu_parent = type { i64, i32, i32, %struct.phy_probe_info }
%struct.phy_probe_info = type { i32 }

@NIU_ALONSO_MDL_STR = common dso_local global i32 0, align 4
@NIU_KIMI_MDL_STR = common dso_local global i32 0, align 4
@PLAT_TYPE_ATCA_CP3220 = common dso_local global i64 0, align 8
@PORT_TYPE_1G = common dso_local global i32 0, align 4
@NIU_FOXXY_MDL_STR = common dso_local global i32 0, align 4
@PORT_TYPE_10G = common dso_local global i32 0, align 4
@NIU_FLAGS_XCVR_SERDES = common dso_local global i32 0, align 4
@PLAT_TYPE_NIU = common dso_local global i64 0, align 8
@NIU_FLAGS_10G = common dso_local global i32 0, align 4
@PLAT_TYPE_VF_P0 = common dso_local global i8* null, align 8
@PLAT_TYPE_VF_P1 = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [40 x i8] c"Unsupported port config 10G[%d] 1G[%d]\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"Cannot identify platform type, 1gport=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.niu*, %struct.niu_parent*)* @walk_phys to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @walk_phys(%struct.niu* %0, %struct.niu_parent* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.niu*, align 8
  %5 = alloca %struct.niu_parent*, align 8
  %6 = alloca %struct.phy_probe_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.niu* %0, %struct.niu** %4, align 8
  store %struct.niu_parent* %1, %struct.niu_parent** %5, align 8
  %13 = load %struct.niu_parent*, %struct.niu_parent** %5, align 8
  %14 = getelementptr inbounds %struct.niu_parent, %struct.niu_parent* %13, i32 0, i32 3
  store %struct.phy_probe_info* %14, %struct.phy_probe_info** %6, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %9, align 4
  %15 = load %struct.niu*, %struct.niu** %4, align 8
  %16 = getelementptr inbounds %struct.niu, %struct.niu* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @NIU_ALONSO_MDL_STR, align 4
  %20 = call i32 @strcmp(i32 %18, i32 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %30

22:                                               ; preds = %2
  %23 = load %struct.niu*, %struct.niu** %4, align 8
  %24 = getelementptr inbounds %struct.niu, %struct.niu* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @NIU_KIMI_MDL_STR, align 4
  %28 = call i32 @strcmp(i32 %26, i32 %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %47, label %30

30:                                               ; preds = %22, %2
  store i32 0, i32* %9, align 4
  store i32 2, i32* %10, align 4
  %31 = load i64, i64* @PLAT_TYPE_ATCA_CP3220, align 8
  %32 = load %struct.niu_parent*, %struct.niu_parent** %5, align 8
  %33 = getelementptr inbounds %struct.niu_parent, %struct.niu_parent* %32, i32 0, i32 0
  store i64 %31, i64* %33, align 8
  %34 = load %struct.niu_parent*, %struct.niu_parent** %5, align 8
  %35 = getelementptr inbounds %struct.niu_parent, %struct.niu_parent* %34, i32 0, i32 1
  store i32 4, i32* %35, align 8
  %36 = load i32, i32* @PORT_TYPE_1G, align 4
  %37 = call i32 @phy_encode(i32 %36, i32 0)
  %38 = load i32, i32* @PORT_TYPE_1G, align 4
  %39 = call i32 @phy_encode(i32 %38, i32 1)
  %40 = or i32 %37, %39
  %41 = load i32, i32* @PORT_TYPE_1G, align 4
  %42 = call i32 @phy_encode(i32 %41, i32 2)
  %43 = or i32 %40, %42
  %44 = load i32, i32* @PORT_TYPE_1G, align 4
  %45 = call i32 @phy_encode(i32 %44, i32 3)
  %46 = or i32 %43, %45
  store i32 %46, i32* %11, align 4
  br label %244

47:                                               ; preds = %22
  %48 = load %struct.niu*, %struct.niu** %4, align 8
  %49 = getelementptr inbounds %struct.niu, %struct.niu* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @NIU_FOXXY_MDL_STR, align 4
  %53 = call i32 @strcmp(i32 %51, i32 %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %63, label %55

55:                                               ; preds = %47
  store i32 2, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %56 = load %struct.niu_parent*, %struct.niu_parent** %5, align 8
  %57 = getelementptr inbounds %struct.niu_parent, %struct.niu_parent* %56, i32 0, i32 1
  store i32 2, i32* %57, align 8
  %58 = load i32, i32* @PORT_TYPE_10G, align 4
  %59 = call i32 @phy_encode(i32 %58, i32 0)
  %60 = load i32, i32* @PORT_TYPE_10G, align 4
  %61 = call i32 @phy_encode(i32 %60, i32 1)
  %62 = or i32 %59, %61
  store i32 %62, i32* %11, align 4
  br label %243

63:                                               ; preds = %47
  %64 = load %struct.niu*, %struct.niu** %4, align 8
  %65 = getelementptr inbounds %struct.niu, %struct.niu* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @NIU_FLAGS_XCVR_SERDES, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %96

70:                                               ; preds = %63
  %71 = load %struct.niu_parent*, %struct.niu_parent** %5, align 8
  %72 = getelementptr inbounds %struct.niu_parent, %struct.niu_parent* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @PLAT_TYPE_NIU, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %96

76:                                               ; preds = %70
  %77 = load %struct.niu*, %struct.niu** %4, align 8
  %78 = getelementptr inbounds %struct.niu, %struct.niu* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @NIU_FLAGS_10G, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %89

83:                                               ; preds = %76
  %84 = load i32, i32* @PORT_TYPE_10G, align 4
  %85 = call i32 @phy_encode(i32 %84, i32 0)
  %86 = load i32, i32* @PORT_TYPE_10G, align 4
  %87 = call i32 @phy_encode(i32 %86, i32 1)
  %88 = or i32 %85, %87
  store i32 %88, i32* %11, align 4
  br label %95

89:                                               ; preds = %76
  %90 = load i32, i32* @PORT_TYPE_1G, align 4
  %91 = call i32 @phy_encode(i32 %90, i32 0)
  %92 = load i32, i32* @PORT_TYPE_1G, align 4
  %93 = call i32 @phy_encode(i32 %92, i32 1)
  %94 = or i32 %91, %93
  store i32 %94, i32* %11, align 4
  br label %95

95:                                               ; preds = %89, %83
  br label %242

96:                                               ; preds = %70, %63
  %97 = load %struct.niu*, %struct.niu** %4, align 8
  %98 = load %struct.niu_parent*, %struct.niu_parent** %5, align 8
  %99 = load %struct.phy_probe_info*, %struct.phy_probe_info** %6, align 8
  %100 = call i32 @fill_phy_probe_info(%struct.niu* %97, %struct.niu_parent* %98, %struct.phy_probe_info* %99)
  store i32 %100, i32* %12, align 4
  %101 = load i32, i32* %12, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %105

103:                                              ; preds = %96
  %104 = load i32, i32* %12, align 4
  store i32 %104, i32* %3, align 4
  br label %271

105:                                              ; preds = %96
  %106 = load %struct.phy_probe_info*, %struct.phy_probe_info** %6, align 8
  %107 = call i32 @count_10g_ports(%struct.phy_probe_info* %106, i32* %7)
  store i32 %107, i32* %9, align 4
  %108 = load %struct.phy_probe_info*, %struct.phy_probe_info** %6, align 8
  %109 = call i32 @count_1g_ports(%struct.phy_probe_info* %108, i32* %8)
  store i32 %109, i32* %10, align 4
  %110 = load i32, i32* %9, align 4
  %111 = shl i32 %110, 4
  %112 = load i32, i32* %10, align 4
  %113 = or i32 %111, %112
  switch i32 %113, label %235 [
    i32 36, label %114
    i32 34, label %133
    i32 32, label %145
    i32 16, label %151
    i32 20, label %157
    i32 19, label %176
    i32 4, label %205
  ]

114:                                              ; preds = %105
  %115 = load i32, i32* %8, align 4
  %116 = icmp eq i32 %115, 10
  br i1 %116, label %117, label %122

117:                                              ; preds = %114
  %118 = load i8*, i8** @PLAT_TYPE_VF_P0, align 8
  %119 = ptrtoint i8* %118 to i64
  %120 = load %struct.niu_parent*, %struct.niu_parent** %5, align 8
  %121 = getelementptr inbounds %struct.niu_parent, %struct.niu_parent* %120, i32 0, i32 0
  store i64 %119, i64* %121, align 8
  br label %132

122:                                              ; preds = %114
  %123 = load i32, i32* %8, align 4
  %124 = icmp eq i32 %123, 26
  br i1 %124, label %125, label %130

125:                                              ; preds = %122
  %126 = load i8*, i8** @PLAT_TYPE_VF_P1, align 8
  %127 = ptrtoint i8* %126 to i64
  %128 = load %struct.niu_parent*, %struct.niu_parent** %5, align 8
  %129 = getelementptr inbounds %struct.niu_parent, %struct.niu_parent* %128, i32 0, i32 0
  store i64 %127, i64* %129, align 8
  br label %131

130:                                              ; preds = %122
  br label %266

131:                                              ; preds = %125
  br label %132

132:                                              ; preds = %131, %117
  br label %133

133:                                              ; preds = %105, %132
  %134 = load i32, i32* @PORT_TYPE_10G, align 4
  %135 = call i32 @phy_encode(i32 %134, i32 0)
  %136 = load i32, i32* @PORT_TYPE_10G, align 4
  %137 = call i32 @phy_encode(i32 %136, i32 1)
  %138 = or i32 %135, %137
  %139 = load i32, i32* @PORT_TYPE_1G, align 4
  %140 = call i32 @phy_encode(i32 %139, i32 2)
  %141 = or i32 %138, %140
  %142 = load i32, i32* @PORT_TYPE_1G, align 4
  %143 = call i32 @phy_encode(i32 %142, i32 3)
  %144 = or i32 %141, %143
  store i32 %144, i32* %11, align 4
  br label %241

145:                                              ; preds = %105
  %146 = load i32, i32* @PORT_TYPE_10G, align 4
  %147 = call i32 @phy_encode(i32 %146, i32 0)
  %148 = load i32, i32* @PORT_TYPE_10G, align 4
  %149 = call i32 @phy_encode(i32 %148, i32 1)
  %150 = or i32 %147, %149
  store i32 %150, i32* %11, align 4
  br label %241

151:                                              ; preds = %105
  %152 = load i32, i32* @PORT_TYPE_10G, align 4
  %153 = load %struct.niu*, %struct.niu** %4, align 8
  %154 = getelementptr inbounds %struct.niu, %struct.niu* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 4
  %156 = call i32 @phy_encode(i32 %152, i32 %155)
  store i32 %156, i32* %11, align 4
  br label %241

157:                                              ; preds = %105
  %158 = load i32, i32* %8, align 4
  %159 = icmp eq i32 %158, 10
  br i1 %159, label %160, label %165

160:                                              ; preds = %157
  %161 = load i8*, i8** @PLAT_TYPE_VF_P0, align 8
  %162 = ptrtoint i8* %161 to i64
  %163 = load %struct.niu_parent*, %struct.niu_parent** %5, align 8
  %164 = getelementptr inbounds %struct.niu_parent, %struct.niu_parent* %163, i32 0, i32 0
  store i64 %162, i64* %164, align 8
  br label %175

165:                                              ; preds = %157
  %166 = load i32, i32* %8, align 4
  %167 = icmp eq i32 %166, 26
  br i1 %167, label %168, label %173

168:                                              ; preds = %165
  %169 = load i8*, i8** @PLAT_TYPE_VF_P1, align 8
  %170 = ptrtoint i8* %169 to i64
  %171 = load %struct.niu_parent*, %struct.niu_parent** %5, align 8
  %172 = getelementptr inbounds %struct.niu_parent, %struct.niu_parent* %171, i32 0, i32 0
  store i64 %170, i64* %172, align 8
  br label %174

173:                                              ; preds = %165
  br label %266

174:                                              ; preds = %168
  br label %175

175:                                              ; preds = %174, %160
  br label %176

176:                                              ; preds = %105, %175
  %177 = load i32, i32* %7, align 4
  %178 = and i32 %177, 7
  %179 = icmp eq i32 %178, 0
  br i1 %179, label %180, label %192

180:                                              ; preds = %176
  %181 = load i32, i32* @PORT_TYPE_10G, align 4
  %182 = call i32 @phy_encode(i32 %181, i32 0)
  %183 = load i32, i32* @PORT_TYPE_1G, align 4
  %184 = call i32 @phy_encode(i32 %183, i32 1)
  %185 = or i32 %182, %184
  %186 = load i32, i32* @PORT_TYPE_1G, align 4
  %187 = call i32 @phy_encode(i32 %186, i32 2)
  %188 = or i32 %185, %187
  %189 = load i32, i32* @PORT_TYPE_1G, align 4
  %190 = call i32 @phy_encode(i32 %189, i32 3)
  %191 = or i32 %188, %190
  store i32 %191, i32* %11, align 4
  br label %204

192:                                              ; preds = %176
  %193 = load i32, i32* @PORT_TYPE_1G, align 4
  %194 = call i32 @phy_encode(i32 %193, i32 0)
  %195 = load i32, i32* @PORT_TYPE_10G, align 4
  %196 = call i32 @phy_encode(i32 %195, i32 1)
  %197 = or i32 %194, %196
  %198 = load i32, i32* @PORT_TYPE_1G, align 4
  %199 = call i32 @phy_encode(i32 %198, i32 2)
  %200 = or i32 %197, %199
  %201 = load i32, i32* @PORT_TYPE_1G, align 4
  %202 = call i32 @phy_encode(i32 %201, i32 3)
  %203 = or i32 %200, %202
  store i32 %203, i32* %11, align 4
  br label %204

204:                                              ; preds = %192, %180
  br label %241

205:                                              ; preds = %105
  %206 = load i32, i32* %8, align 4
  %207 = icmp eq i32 %206, 10
  br i1 %207, label %208, label %213

208:                                              ; preds = %205
  %209 = load i8*, i8** @PLAT_TYPE_VF_P0, align 8
  %210 = ptrtoint i8* %209 to i64
  %211 = load %struct.niu_parent*, %struct.niu_parent** %5, align 8
  %212 = getelementptr inbounds %struct.niu_parent, %struct.niu_parent* %211, i32 0, i32 0
  store i64 %210, i64* %212, align 8
  br label %223

213:                                              ; preds = %205
  %214 = load i32, i32* %8, align 4
  %215 = icmp eq i32 %214, 26
  br i1 %215, label %216, label %221

216:                                              ; preds = %213
  %217 = load i8*, i8** @PLAT_TYPE_VF_P1, align 8
  %218 = ptrtoint i8* %217 to i64
  %219 = load %struct.niu_parent*, %struct.niu_parent** %5, align 8
  %220 = getelementptr inbounds %struct.niu_parent, %struct.niu_parent* %219, i32 0, i32 0
  store i64 %218, i64* %220, align 8
  br label %222

221:                                              ; preds = %213
  br label %266

222:                                              ; preds = %216
  br label %223

223:                                              ; preds = %222, %208
  %224 = load i32, i32* @PORT_TYPE_1G, align 4
  %225 = call i32 @phy_encode(i32 %224, i32 0)
  %226 = load i32, i32* @PORT_TYPE_1G, align 4
  %227 = call i32 @phy_encode(i32 %226, i32 1)
  %228 = or i32 %225, %227
  %229 = load i32, i32* @PORT_TYPE_1G, align 4
  %230 = call i32 @phy_encode(i32 %229, i32 2)
  %231 = or i32 %228, %230
  %232 = load i32, i32* @PORT_TYPE_1G, align 4
  %233 = call i32 @phy_encode(i32 %232, i32 3)
  %234 = or i32 %231, %233
  store i32 %234, i32* %11, align 4
  br label %241

235:                                              ; preds = %105
  %236 = load i32, i32* %9, align 4
  %237 = load i32, i32* %10, align 4
  %238 = call i32 (i8*, i32, ...) @pr_err(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %236, i32 %237)
  %239 = load i32, i32* @EINVAL, align 4
  %240 = sub nsw i32 0, %239
  store i32 %240, i32* %3, align 4
  br label %271

241:                                              ; preds = %223, %204, %151, %145, %133
  br label %242

242:                                              ; preds = %241, %95
  br label %243

243:                                              ; preds = %242, %55
  br label %244

244:                                              ; preds = %243, %30
  %245 = load i32, i32* %11, align 4
  %246 = load %struct.niu_parent*, %struct.niu_parent** %5, align 8
  %247 = getelementptr inbounds %struct.niu_parent, %struct.niu_parent* %246, i32 0, i32 2
  store i32 %245, i32* %247, align 4
  %248 = load %struct.niu_parent*, %struct.niu_parent** %5, align 8
  %249 = getelementptr inbounds %struct.niu_parent, %struct.niu_parent* %248, i32 0, i32 0
  %250 = load i64, i64* %249, align 8
  %251 = load i64, i64* @PLAT_TYPE_NIU, align 8
  %252 = icmp eq i64 %250, %251
  br i1 %252, label %253, label %256

253:                                              ; preds = %244
  %254 = load %struct.niu_parent*, %struct.niu_parent** %5, align 8
  %255 = call i32 @niu_n2_divide_channels(%struct.niu_parent* %254)
  br label %261

256:                                              ; preds = %244
  %257 = load %struct.niu_parent*, %struct.niu_parent** %5, align 8
  %258 = load i32, i32* %9, align 4
  %259 = load i32, i32* %10, align 4
  %260 = call i32 @niu_divide_channels(%struct.niu_parent* %257, i32 %258, i32 %259)
  br label %261

261:                                              ; preds = %256, %253
  %262 = load %struct.niu_parent*, %struct.niu_parent** %5, align 8
  %263 = load i32, i32* %9, align 4
  %264 = load i32, i32* %10, align 4
  %265 = call i32 @niu_divide_rdc_groups(%struct.niu_parent* %262, i32 %263, i32 %264)
  store i32 0, i32* %3, align 4
  br label %271

266:                                              ; preds = %221, %173, %130
  %267 = load i32, i32* %8, align 4
  %268 = call i32 (i8*, i32, ...) @pr_err(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %267)
  %269 = load i32, i32* @EINVAL, align 4
  %270 = sub nsw i32 0, %269
  store i32 %270, i32* %3, align 4
  br label %271

271:                                              ; preds = %266, %261, %235, %103
  %272 = load i32, i32* %3, align 4
  ret i32 %272
}

declare dso_local i32 @strcmp(i32, i32) #1

declare dso_local i32 @phy_encode(i32, i32) #1

declare dso_local i32 @fill_phy_probe_info(%struct.niu*, %struct.niu_parent*, %struct.phy_probe_info*) #1

declare dso_local i32 @count_10g_ports(%struct.phy_probe_info*, i32*) #1

declare dso_local i32 @count_1g_ports(%struct.phy_probe_info*, i32*) #1

declare dso_local i32 @pr_err(i8*, i32, ...) #1

declare dso_local i32 @niu_n2_divide_channels(%struct.niu_parent*) #1

declare dso_local i32 @niu_divide_channels(%struct.niu_parent*, i32, i32) #1

declare dso_local i32 @niu_divide_rdc_groups(%struct.niu_parent*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
