; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_82599.c_ixgbe_setup_mac_link_82599.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_82599.c_ixgbe_setup_mac_link_82599.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { %struct.TYPE_6__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__, i64 }
%struct.TYPE_5__ = type { i64 (%struct.ixgbe_hw.0*, i32, i32)*, i64 (%struct.ixgbe_hw.1*, i32*, i32*)* }
%struct.ixgbe_hw.0 = type opaque
%struct.ixgbe_hw.1 = type opaque
%struct.TYPE_4__ = type { i32 }

@IXGBE_AUTOC2 = common dso_local global i32 0, align 4
@IXGBE_AUTOC2_10G_SERIAL_PMA_PMD_MASK = common dso_local global i32 0, align 4
@IXGBE_LINK_SPEED_UNKNOWN = common dso_local global i32 0, align 4
@IXGBE_AUTOC = common dso_local global i32 0, align 4
@IXGBE_ERR_LINK_SETUP = common dso_local global i64 0, align 8
@IXGBE_AUTOC_LMS_MASK = common dso_local global i32 0, align 4
@IXGBE_AUTOC_1G_PMA_PMD_MASK = common dso_local global i32 0, align 4
@IXGBE_AUTOC_LMS_KX4_KX_KR = common dso_local global i32 0, align 4
@IXGBE_AUTOC_LMS_KX4_KX_KR_1G_AN = common dso_local global i32 0, align 4
@IXGBE_AUTOC_LMS_KX4_KX_KR_SGMII = common dso_local global i32 0, align 4
@IXGBE_AUTOC_KX4_KX_SUPP_MASK = common dso_local global i32 0, align 4
@IXGBE_AUTOC_KR_SUPP = common dso_local global i32 0, align 4
@IXGBE_LINK_SPEED_10GB_FULL = common dso_local global i32 0, align 4
@IXGBE_AUTOC_KX4_SUPP = common dso_local global i32 0, align 4
@IXGBE_LINK_SPEED_1GB_FULL = common dso_local global i32 0, align 4
@IXGBE_AUTOC_KX_SUPP = common dso_local global i32 0, align 4
@IXGBE_AUTOC_1G_SFI = common dso_local global i32 0, align 4
@IXGBE_AUTOC_LMS_1G_LINK_NO_AN = common dso_local global i32 0, align 4
@IXGBE_AUTOC_LMS_1G_AN = common dso_local global i32 0, align 4
@IXGBE_AUTOC2_10G_SFI = common dso_local global i32 0, align 4
@IXGBE_AUTOC_LMS_10G_SERIAL = common dso_local global i32 0, align 4
@IXGBE_AUTO_NEG_TIME = common dso_local global i32 0, align 4
@IXGBE_LINKS = common dso_local global i32 0, align 4
@IXGBE_LINKS_KX_AN_COMP = common dso_local global i32 0, align 4
@IXGBE_ERR_AUTONEG_NOT_COMPLETE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [27 x i8] c"Autoneg did not complete.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.ixgbe_hw*, i32, i32)* @ixgbe_setup_mac_link_82599 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ixgbe_setup_mac_link_82599(%struct.ixgbe_hw* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.ixgbe_hw*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
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
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %20 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %21 = load i32, i32* @IXGBE_AUTOC2, align 4
  %22 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %20, i32 %21)
  store i32 %22, i32* %14, align 4
  %23 = load i32, i32* %14, align 4
  %24 = load i32, i32* @IXGBE_AUTOC2_10G_SERIAL_PMA_PMD_MASK, align 4
  %25 = and i32 %23, %24
  store i32 %25, i32* %15, align 4
  %26 = load i32, i32* @IXGBE_LINK_SPEED_UNKNOWN, align 4
  store i32 %26, i32* %16, align 4
  %27 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %28 = load i32, i32* @IXGBE_AUTOC, align 4
  %29 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %27, i32 %28)
  store i32 %29, i32* %17, align 4
  store i32 0, i32* %18, align 4
  %30 = load i32, i32* %17, align 4
  store i32 %30, i32* %19, align 4
  %31 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %32 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 1
  %35 = load i64 (%struct.ixgbe_hw.1*, i32*, i32*)*, i64 (%struct.ixgbe_hw.1*, i32*, i32*)** %34, align 8
  %36 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %37 = bitcast %struct.ixgbe_hw* %36 to %struct.ixgbe_hw.1*
  %38 = call i64 %35(%struct.ixgbe_hw.1* %37, i32* %16, i32* %8)
  store i64 %38, i64* %9, align 8
  %39 = load i64, i64* %9, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %3
  %42 = load i64, i64* %9, align 8
  store i64 %42, i64* %4, align 8
  br label %260

43:                                               ; preds = %3
  %44 = load i32, i32* %16, align 4
  %45 = load i32, i32* %6, align 4
  %46 = and i32 %45, %44
  store i32 %46, i32* %6, align 4
  %47 = load i32, i32* %6, align 4
  %48 = load i32, i32* @IXGBE_LINK_SPEED_UNKNOWN, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %52

50:                                               ; preds = %43
  %51 = load i64, i64* @IXGBE_ERR_LINK_SETUP, align 8
  store i64 %51, i64* %4, align 8
  br label %260

52:                                               ; preds = %43
  %53 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %54 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %52
  %59 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %60 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  store i32 %62, i32* %18, align 4
  br label %65

63:                                               ; preds = %52
  %64 = load i32, i32* %19, align 4
  store i32 %64, i32* %18, align 4
  br label %65

65:                                               ; preds = %63, %58
  %66 = load i32, i32* %19, align 4
  %67 = load i32, i32* @IXGBE_AUTOC_LMS_MASK, align 4
  %68 = and i32 %66, %67
  store i32 %68, i32* %11, align 4
  %69 = load i32, i32* %19, align 4
  %70 = load i32, i32* @IXGBE_AUTOC_1G_PMA_PMD_MASK, align 4
  %71 = and i32 %69, %70
  store i32 %71, i32* %10, align 4
  %72 = load i32, i32* %11, align 4
  %73 = load i32, i32* @IXGBE_AUTOC_LMS_KX4_KX_KR, align 4
  %74 = icmp eq i32 %72, %73
  br i1 %74, label %83, label %75

75:                                               ; preds = %65
  %76 = load i32, i32* %11, align 4
  %77 = load i32, i32* @IXGBE_AUTOC_LMS_KX4_KX_KR_1G_AN, align 4
  %78 = icmp eq i32 %76, %77
  br i1 %78, label %83, label %79

79:                                               ; preds = %75
  %80 = load i32, i32* %11, align 4
  %81 = load i32, i32* @IXGBE_AUTOC_LMS_KX4_KX_KR_SGMII, align 4
  %82 = icmp eq i32 %80, %81
  br i1 %82, label %83, label %129

83:                                               ; preds = %79, %75, %65
  %84 = load i32, i32* @IXGBE_AUTOC_KX4_KX_SUPP_MASK, align 4
  %85 = load i32, i32* @IXGBE_AUTOC_KR_SUPP, align 4
  %86 = or i32 %84, %85
  %87 = xor i32 %86, -1
  %88 = load i32, i32* %19, align 4
  %89 = and i32 %88, %87
  store i32 %89, i32* %19, align 4
  %90 = load i32, i32* %6, align 4
  %91 = load i32, i32* @IXGBE_LINK_SPEED_10GB_FULL, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %119

94:                                               ; preds = %83
  %95 = load i32, i32* %18, align 4
  %96 = load i32, i32* @IXGBE_AUTOC_KX4_SUPP, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %103

99:                                               ; preds = %94
  %100 = load i32, i32* @IXGBE_AUTOC_KX4_SUPP, align 4
  %101 = load i32, i32* %19, align 4
  %102 = or i32 %101, %100
  store i32 %102, i32* %19, align 4
  br label %103

103:                                              ; preds = %99, %94
  %104 = load i32, i32* %18, align 4
  %105 = load i32, i32* @IXGBE_AUTOC_KR_SUPP, align 4
  %106 = and i32 %104, %105
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %118

108:                                              ; preds = %103
  %109 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %110 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %114, label %118

114:                                              ; preds = %108
  %115 = load i32, i32* @IXGBE_AUTOC_KR_SUPP, align 4
  %116 = load i32, i32* %19, align 4
  %117 = or i32 %116, %115
  store i32 %117, i32* %19, align 4
  br label %118

118:                                              ; preds = %114, %108, %103
  br label %119

119:                                              ; preds = %118, %83
  %120 = load i32, i32* %6, align 4
  %121 = load i32, i32* @IXGBE_LINK_SPEED_1GB_FULL, align 4
  %122 = and i32 %120, %121
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %128

124:                                              ; preds = %119
  %125 = load i32, i32* @IXGBE_AUTOC_KX_SUPP, align 4
  %126 = load i32, i32* %19, align 4
  %127 = or i32 %126, %125
  store i32 %127, i32* %19, align 4
  br label %128

128:                                              ; preds = %124, %119
  br label %193

129:                                              ; preds = %79
  %130 = load i32, i32* %10, align 4
  %131 = load i32, i32* @IXGBE_AUTOC_1G_SFI, align 4
  %132 = icmp eq i32 %130, %131
  br i1 %132, label %133, label %158

133:                                              ; preds = %129
  %134 = load i32, i32* %11, align 4
  %135 = load i32, i32* @IXGBE_AUTOC_LMS_1G_LINK_NO_AN, align 4
  %136 = icmp eq i32 %134, %135
  br i1 %136, label %141, label %137

137:                                              ; preds = %133
  %138 = load i32, i32* %11, align 4
  %139 = load i32, i32* @IXGBE_AUTOC_LMS_1G_AN, align 4
  %140 = icmp eq i32 %138, %139
  br i1 %140, label %141, label %158

141:                                              ; preds = %137, %133
  %142 = load i32, i32* %6, align 4
  %143 = load i32, i32* @IXGBE_LINK_SPEED_10GB_FULL, align 4
  %144 = icmp eq i32 %142, %143
  br i1 %144, label %145, label %157

145:                                              ; preds = %141
  %146 = load i32, i32* %15, align 4
  %147 = load i32, i32* @IXGBE_AUTOC2_10G_SFI, align 4
  %148 = icmp eq i32 %146, %147
  br i1 %148, label %149, label %157

149:                                              ; preds = %145
  %150 = load i32, i32* @IXGBE_AUTOC_LMS_MASK, align 4
  %151 = xor i32 %150, -1
  %152 = load i32, i32* %19, align 4
  %153 = and i32 %152, %151
  store i32 %153, i32* %19, align 4
  %154 = load i32, i32* @IXGBE_AUTOC_LMS_10G_SERIAL, align 4
  %155 = load i32, i32* %19, align 4
  %156 = or i32 %155, %154
  store i32 %156, i32* %19, align 4
  br label %157

157:                                              ; preds = %149, %145, %141
  br label %192

158:                                              ; preds = %137, %129
  %159 = load i32, i32* %15, align 4
  %160 = load i32, i32* @IXGBE_AUTOC2_10G_SFI, align 4
  %161 = icmp eq i32 %159, %160
  br i1 %161, label %162, label %191

162:                                              ; preds = %158
  %163 = load i32, i32* %11, align 4
  %164 = load i32, i32* @IXGBE_AUTOC_LMS_10G_SERIAL, align 4
  %165 = icmp eq i32 %163, %164
  br i1 %165, label %166, label %191

166:                                              ; preds = %162
  %167 = load i32, i32* %6, align 4
  %168 = load i32, i32* @IXGBE_LINK_SPEED_1GB_FULL, align 4
  %169 = icmp eq i32 %167, %168
  br i1 %169, label %170, label %190

170:                                              ; preds = %166
  %171 = load i32, i32* %10, align 4
  %172 = load i32, i32* @IXGBE_AUTOC_1G_SFI, align 4
  %173 = icmp eq i32 %171, %172
  br i1 %173, label %174, label %190

174:                                              ; preds = %170
  %175 = load i32, i32* @IXGBE_AUTOC_LMS_MASK, align 4
  %176 = xor i32 %175, -1
  %177 = load i32, i32* %19, align 4
  %178 = and i32 %177, %176
  store i32 %178, i32* %19, align 4
  %179 = load i32, i32* %8, align 4
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %185

181:                                              ; preds = %174
  %182 = load i32, i32* @IXGBE_AUTOC_LMS_1G_AN, align 4
  %183 = load i32, i32* %19, align 4
  %184 = or i32 %183, %182
  store i32 %184, i32* %19, align 4
  br label %189

185:                                              ; preds = %174
  %186 = load i32, i32* @IXGBE_AUTOC_LMS_1G_LINK_NO_AN, align 4
  %187 = load i32, i32* %19, align 4
  %188 = or i32 %187, %186
  store i32 %188, i32* %19, align 4
  br label %189

189:                                              ; preds = %185, %181
  br label %190

190:                                              ; preds = %189, %170, %166
  br label %191

191:                                              ; preds = %190, %162, %158
  br label %192

192:                                              ; preds = %191, %157
  br label %193

193:                                              ; preds = %192, %128
  %194 = load i32, i32* %19, align 4
  %195 = load i32, i32* %17, align 4
  %196 = icmp ne i32 %194, %195
  br i1 %196, label %197, label %258

197:                                              ; preds = %193
  %198 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %199 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %198, i32 0, i32 0
  %200 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %199, i32 0, i32 1
  %201 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %200, i32 0, i32 0
  %202 = load i64 (%struct.ixgbe_hw.0*, i32, i32)*, i64 (%struct.ixgbe_hw.0*, i32, i32)** %201, align 8
  %203 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %204 = bitcast %struct.ixgbe_hw* %203 to %struct.ixgbe_hw.0*
  %205 = load i32, i32* %19, align 4
  %206 = call i64 %202(%struct.ixgbe_hw.0* %204, i32 %205, i32 0)
  store i64 %206, i64* %9, align 8
  %207 = load i64, i64* %9, align 8
  %208 = icmp ne i64 %207, 0
  br i1 %208, label %209, label %211

209:                                              ; preds = %197
  %210 = load i64, i64* %9, align 8
  store i64 %210, i64* %4, align 8
  br label %260

211:                                              ; preds = %197
  %212 = load i32, i32* %7, align 4
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %214, label %256

214:                                              ; preds = %211
  %215 = load i32, i32* %11, align 4
  %216 = load i32, i32* @IXGBE_AUTOC_LMS_KX4_KX_KR, align 4
  %217 = icmp eq i32 %215, %216
  br i1 %217, label %226, label %218

218:                                              ; preds = %214
  %219 = load i32, i32* %11, align 4
  %220 = load i32, i32* @IXGBE_AUTOC_LMS_KX4_KX_KR_1G_AN, align 4
  %221 = icmp eq i32 %219, %220
  br i1 %221, label %226, label %222

222:                                              ; preds = %218
  %223 = load i32, i32* %11, align 4
  %224 = load i32, i32* @IXGBE_AUTOC_LMS_KX4_KX_KR_SGMII, align 4
  %225 = icmp eq i32 %223, %224
  br i1 %225, label %226, label %255

226:                                              ; preds = %222, %218, %214
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  br label %227

227:                                              ; preds = %242, %226
  %228 = load i32, i32* %13, align 4
  %229 = load i32, i32* @IXGBE_AUTO_NEG_TIME, align 4
  %230 = icmp slt i32 %228, %229
  br i1 %230, label %231, label %245

231:                                              ; preds = %227
  %232 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %233 = load i32, i32* @IXGBE_LINKS, align 4
  %234 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %232, i32 %233)
  store i32 %234, i32* %12, align 4
  %235 = load i32, i32* %12, align 4
  %236 = load i32, i32* @IXGBE_LINKS_KX_AN_COMP, align 4
  %237 = and i32 %235, %236
  %238 = icmp ne i32 %237, 0
  br i1 %238, label %239, label %240

239:                                              ; preds = %231
  br label %245

240:                                              ; preds = %231
  %241 = call i32 @msleep(i32 100)
  br label %242

242:                                              ; preds = %240
  %243 = load i32, i32* %13, align 4
  %244 = add nsw i32 %243, 1
  store i32 %244, i32* %13, align 4
  br label %227

245:                                              ; preds = %239, %227
  %246 = load i32, i32* %12, align 4
  %247 = load i32, i32* @IXGBE_LINKS_KX_AN_COMP, align 4
  %248 = and i32 %246, %247
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %254, label %250

250:                                              ; preds = %245
  %251 = load i64, i64* @IXGBE_ERR_AUTONEG_NOT_COMPLETE, align 8
  store i64 %251, i64* %9, align 8
  %252 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %253 = call i32 @hw_dbg(%struct.ixgbe_hw* %252, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %254

254:                                              ; preds = %250, %245
  br label %255

255:                                              ; preds = %254, %222
  br label %256

256:                                              ; preds = %255, %211
  %257 = call i32 @msleep(i32 50)
  br label %258

258:                                              ; preds = %256, %193
  %259 = load i64, i64* %9, align 8
  store i64 %259, i64* %4, align 8
  br label %260

260:                                              ; preds = %258, %209, %50, %41
  %261 = load i64, i64* %4, align 8
  ret i64 %261
}

declare dso_local i32 @IXGBE_READ_REG(%struct.ixgbe_hw*, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @hw_dbg(%struct.ixgbe_hw*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
