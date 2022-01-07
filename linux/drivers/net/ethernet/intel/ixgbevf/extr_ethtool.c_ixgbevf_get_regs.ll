; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbevf/extr_ethtool.c_ixgbevf_get_regs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbevf/extr_ethtool.c_ixgbevf_get_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_regs = type { i32 }
%struct.ixgbevf_adapter = type { %struct.ixgbe_hw }
%struct.ixgbe_hw = type { i32, i32 }

@IXGBE_VFCTRL = common dso_local global i32 0, align 4
@IXGBE_VFSTATUS = common dso_local global i32 0, align 4
@IXGBE_VFLINKS = common dso_local global i32 0, align 4
@IXGBE_VFRXMEMWRAP = common dso_local global i32 0, align 4
@IXGBE_VFFRTIMER = common dso_local global i32 0, align 4
@IXGBE_VTEICS = common dso_local global i32 0, align 4
@IXGBE_VTEIMS = common dso_local global i32 0, align 4
@IXGBE_VTEIMC = common dso_local global i32 0, align 4
@IXGBE_VTEIAC = common dso_local global i32 0, align 4
@IXGBE_VTEIAM = common dso_local global i32 0, align 4
@IXGBE_VTIVAR_MISC = common dso_local global i32 0, align 4
@IXGBE_VFPSRTYPE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.ethtool_regs*, i8*)* @ixgbevf_get_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ixgbevf_get_regs(%struct.net_device* %0, %struct.ethtool_regs* %1, i8* %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_regs*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.ixgbevf_adapter*, align 8
  %8 = alloca %struct.ixgbe_hw*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_regs* %1, %struct.ethtool_regs** %5, align 8
  store i8* %2, i8** %6, align 8
  %12 = load %struct.net_device*, %struct.net_device** %4, align 8
  %13 = call %struct.ixgbevf_adapter* @netdev_priv(%struct.net_device* %12)
  store %struct.ixgbevf_adapter* %13, %struct.ixgbevf_adapter** %7, align 8
  %14 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %7, align 8
  %15 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %14, i32 0, i32 0
  store %struct.ixgbe_hw* %15, %struct.ixgbe_hw** %8, align 8
  %16 = load i8*, i8** %6, align 8
  %17 = bitcast i8* %16 to i32*
  store i32* %17, i32** %9, align 8
  %18 = load %struct.net_device*, %struct.net_device** %4, align 8
  %19 = call i32 @ixgbevf_get_regs_len(%struct.net_device* %18)
  store i32 %19, i32* %10, align 4
  %20 = load i8*, i8** %6, align 8
  %21 = load i32, i32* %10, align 4
  %22 = call i32 @memset(i8* %20, i32 0, i32 %21)
  %23 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %8, align 8
  %24 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = shl i32 %25, 16
  %27 = or i32 16777216, %26
  %28 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %8, align 8
  %29 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = or i32 %27, %30
  %32 = load %struct.ethtool_regs*, %struct.ethtool_regs** %5, align 8
  %33 = getelementptr inbounds %struct.ethtool_regs, %struct.ethtool_regs* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 4
  %34 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %8, align 8
  %35 = load i32, i32* @IXGBE_VFCTRL, align 4
  %36 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %34, i32 %35)
  %37 = load i32*, i32** %9, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 0
  store i32 %36, i32* %38, align 4
  %39 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %8, align 8
  %40 = load i32, i32* @IXGBE_VFSTATUS, align 4
  %41 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %39, i32 %40)
  %42 = load i32*, i32** %9, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 1
  store i32 %41, i32* %43, align 4
  %44 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %8, align 8
  %45 = load i32, i32* @IXGBE_VFLINKS, align 4
  %46 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %44, i32 %45)
  %47 = load i32*, i32** %9, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 2
  store i32 %46, i32* %48, align 4
  %49 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %8, align 8
  %50 = load i32, i32* @IXGBE_VFRXMEMWRAP, align 4
  %51 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %49, i32 %50)
  %52 = load i32*, i32** %9, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 3
  store i32 %51, i32* %53, align 4
  %54 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %8, align 8
  %55 = load i32, i32* @IXGBE_VFFRTIMER, align 4
  %56 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %54, i32 %55)
  %57 = load i32*, i32** %9, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 4
  store i32 %56, i32* %58, align 4
  %59 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %8, align 8
  %60 = load i32, i32* @IXGBE_VTEICS, align 4
  %61 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %59, i32 %60)
  %62 = load i32*, i32** %9, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 5
  store i32 %61, i32* %63, align 4
  %64 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %8, align 8
  %65 = load i32, i32* @IXGBE_VTEICS, align 4
  %66 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %64, i32 %65)
  %67 = load i32*, i32** %9, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 6
  store i32 %66, i32* %68, align 4
  %69 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %8, align 8
  %70 = load i32, i32* @IXGBE_VTEIMS, align 4
  %71 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %69, i32 %70)
  %72 = load i32*, i32** %9, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 7
  store i32 %71, i32* %73, align 4
  %74 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %8, align 8
  %75 = load i32, i32* @IXGBE_VTEIMC, align 4
  %76 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %74, i32 %75)
  %77 = load i32*, i32** %9, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 8
  store i32 %76, i32* %78, align 4
  %79 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %8, align 8
  %80 = load i32, i32* @IXGBE_VTEIAC, align 4
  %81 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %79, i32 %80)
  %82 = load i32*, i32** %9, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 9
  store i32 %81, i32* %83, align 4
  %84 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %8, align 8
  %85 = load i32, i32* @IXGBE_VTEIAM, align 4
  %86 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %84, i32 %85)
  %87 = load i32*, i32** %9, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 10
  store i32 %86, i32* %88, align 4
  %89 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %8, align 8
  %90 = call i32 @IXGBE_VTEITR(i32 0)
  %91 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %89, i32 %90)
  %92 = load i32*, i32** %9, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 11
  store i32 %91, i32* %93, align 4
  %94 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %8, align 8
  %95 = call i32 @IXGBE_VTIVAR(i32 0)
  %96 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %94, i32 %95)
  %97 = load i32*, i32** %9, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 12
  store i32 %96, i32* %98, align 4
  %99 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %8, align 8
  %100 = load i32, i32* @IXGBE_VTIVAR_MISC, align 4
  %101 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %99, i32 %100)
  %102 = load i32*, i32** %9, align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 13
  store i32 %101, i32* %103, align 4
  store i32 0, i32* %11, align 4
  br label %104

104:                                              ; preds = %117, %3
  %105 = load i32, i32* %11, align 4
  %106 = icmp slt i32 %105, 2
  br i1 %106, label %107, label %120

107:                                              ; preds = %104
  %108 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %8, align 8
  %109 = load i32, i32* %11, align 4
  %110 = call i32 @IXGBE_VFRDBAL(i32 %109)
  %111 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %108, i32 %110)
  %112 = load i32*, i32** %9, align 8
  %113 = load i32, i32* %11, align 4
  %114 = add nsw i32 14, %113
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i32, i32* %112, i64 %115
  store i32 %111, i32* %116, align 4
  br label %117

117:                                              ; preds = %107
  %118 = load i32, i32* %11, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %11, align 4
  br label %104

120:                                              ; preds = %104
  store i32 0, i32* %11, align 4
  br label %121

121:                                              ; preds = %134, %120
  %122 = load i32, i32* %11, align 4
  %123 = icmp slt i32 %122, 2
  br i1 %123, label %124, label %137

124:                                              ; preds = %121
  %125 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %8, align 8
  %126 = load i32, i32* %11, align 4
  %127 = call i32 @IXGBE_VFRDBAH(i32 %126)
  %128 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %125, i32 %127)
  %129 = load i32*, i32** %9, align 8
  %130 = load i32, i32* %11, align 4
  %131 = add nsw i32 16, %130
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i32, i32* %129, i64 %132
  store i32 %128, i32* %133, align 4
  br label %134

134:                                              ; preds = %124
  %135 = load i32, i32* %11, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %11, align 4
  br label %121

137:                                              ; preds = %121
  store i32 0, i32* %11, align 4
  br label %138

138:                                              ; preds = %151, %137
  %139 = load i32, i32* %11, align 4
  %140 = icmp slt i32 %139, 2
  br i1 %140, label %141, label %154

141:                                              ; preds = %138
  %142 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %8, align 8
  %143 = load i32, i32* %11, align 4
  %144 = call i32 @IXGBE_VFRDLEN(i32 %143)
  %145 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %142, i32 %144)
  %146 = load i32*, i32** %9, align 8
  %147 = load i32, i32* %11, align 4
  %148 = add nsw i32 18, %147
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i32, i32* %146, i64 %149
  store i32 %145, i32* %150, align 4
  br label %151

151:                                              ; preds = %141
  %152 = load i32, i32* %11, align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %11, align 4
  br label %138

154:                                              ; preds = %138
  store i32 0, i32* %11, align 4
  br label %155

155:                                              ; preds = %168, %154
  %156 = load i32, i32* %11, align 4
  %157 = icmp slt i32 %156, 2
  br i1 %157, label %158, label %171

158:                                              ; preds = %155
  %159 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %8, align 8
  %160 = load i32, i32* %11, align 4
  %161 = call i32 @IXGBE_VFRDH(i32 %160)
  %162 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %159, i32 %161)
  %163 = load i32*, i32** %9, align 8
  %164 = load i32, i32* %11, align 4
  %165 = add nsw i32 20, %164
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds i32, i32* %163, i64 %166
  store i32 %162, i32* %167, align 4
  br label %168

168:                                              ; preds = %158
  %169 = load i32, i32* %11, align 4
  %170 = add nsw i32 %169, 1
  store i32 %170, i32* %11, align 4
  br label %155

171:                                              ; preds = %155
  store i32 0, i32* %11, align 4
  br label %172

172:                                              ; preds = %185, %171
  %173 = load i32, i32* %11, align 4
  %174 = icmp slt i32 %173, 2
  br i1 %174, label %175, label %188

175:                                              ; preds = %172
  %176 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %8, align 8
  %177 = load i32, i32* %11, align 4
  %178 = call i32 @IXGBE_VFRDT(i32 %177)
  %179 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %176, i32 %178)
  %180 = load i32*, i32** %9, align 8
  %181 = load i32, i32* %11, align 4
  %182 = add nsw i32 22, %181
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds i32, i32* %180, i64 %183
  store i32 %179, i32* %184, align 4
  br label %185

185:                                              ; preds = %175
  %186 = load i32, i32* %11, align 4
  %187 = add nsw i32 %186, 1
  store i32 %187, i32* %11, align 4
  br label %172

188:                                              ; preds = %172
  store i32 0, i32* %11, align 4
  br label %189

189:                                              ; preds = %202, %188
  %190 = load i32, i32* %11, align 4
  %191 = icmp slt i32 %190, 2
  br i1 %191, label %192, label %205

192:                                              ; preds = %189
  %193 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %8, align 8
  %194 = load i32, i32* %11, align 4
  %195 = call i32 @IXGBE_VFRXDCTL(i32 %194)
  %196 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %193, i32 %195)
  %197 = load i32*, i32** %9, align 8
  %198 = load i32, i32* %11, align 4
  %199 = add nsw i32 24, %198
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds i32, i32* %197, i64 %200
  store i32 %196, i32* %201, align 4
  br label %202

202:                                              ; preds = %192
  %203 = load i32, i32* %11, align 4
  %204 = add nsw i32 %203, 1
  store i32 %204, i32* %11, align 4
  br label %189

205:                                              ; preds = %189
  store i32 0, i32* %11, align 4
  br label %206

206:                                              ; preds = %219, %205
  %207 = load i32, i32* %11, align 4
  %208 = icmp slt i32 %207, 2
  br i1 %208, label %209, label %222

209:                                              ; preds = %206
  %210 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %8, align 8
  %211 = load i32, i32* %11, align 4
  %212 = call i32 @IXGBE_VFSRRCTL(i32 %211)
  %213 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %210, i32 %212)
  %214 = load i32*, i32** %9, align 8
  %215 = load i32, i32* %11, align 4
  %216 = add nsw i32 26, %215
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds i32, i32* %214, i64 %217
  store i32 %213, i32* %218, align 4
  br label %219

219:                                              ; preds = %209
  %220 = load i32, i32* %11, align 4
  %221 = add nsw i32 %220, 1
  store i32 %221, i32* %11, align 4
  br label %206

222:                                              ; preds = %206
  %223 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %8, align 8
  %224 = load i32, i32* @IXGBE_VFPSRTYPE, align 4
  %225 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %223, i32 %224)
  %226 = load i32*, i32** %9, align 8
  %227 = getelementptr inbounds i32, i32* %226, i64 28
  store i32 %225, i32* %227, align 4
  store i32 0, i32* %11, align 4
  br label %228

228:                                              ; preds = %241, %222
  %229 = load i32, i32* %11, align 4
  %230 = icmp slt i32 %229, 2
  br i1 %230, label %231, label %244

231:                                              ; preds = %228
  %232 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %8, align 8
  %233 = load i32, i32* %11, align 4
  %234 = call i32 @IXGBE_VFTDBAL(i32 %233)
  %235 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %232, i32 %234)
  %236 = load i32*, i32** %9, align 8
  %237 = load i32, i32* %11, align 4
  %238 = add nsw i32 29, %237
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds i32, i32* %236, i64 %239
  store i32 %235, i32* %240, align 4
  br label %241

241:                                              ; preds = %231
  %242 = load i32, i32* %11, align 4
  %243 = add nsw i32 %242, 1
  store i32 %243, i32* %11, align 4
  br label %228

244:                                              ; preds = %228
  store i32 0, i32* %11, align 4
  br label %245

245:                                              ; preds = %258, %244
  %246 = load i32, i32* %11, align 4
  %247 = icmp slt i32 %246, 2
  br i1 %247, label %248, label %261

248:                                              ; preds = %245
  %249 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %8, align 8
  %250 = load i32, i32* %11, align 4
  %251 = call i32 @IXGBE_VFTDBAH(i32 %250)
  %252 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %249, i32 %251)
  %253 = load i32*, i32** %9, align 8
  %254 = load i32, i32* %11, align 4
  %255 = add nsw i32 31, %254
  %256 = sext i32 %255 to i64
  %257 = getelementptr inbounds i32, i32* %253, i64 %256
  store i32 %252, i32* %257, align 4
  br label %258

258:                                              ; preds = %248
  %259 = load i32, i32* %11, align 4
  %260 = add nsw i32 %259, 1
  store i32 %260, i32* %11, align 4
  br label %245

261:                                              ; preds = %245
  store i32 0, i32* %11, align 4
  br label %262

262:                                              ; preds = %275, %261
  %263 = load i32, i32* %11, align 4
  %264 = icmp slt i32 %263, 2
  br i1 %264, label %265, label %278

265:                                              ; preds = %262
  %266 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %8, align 8
  %267 = load i32, i32* %11, align 4
  %268 = call i32 @IXGBE_VFTDLEN(i32 %267)
  %269 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %266, i32 %268)
  %270 = load i32*, i32** %9, align 8
  %271 = load i32, i32* %11, align 4
  %272 = add nsw i32 33, %271
  %273 = sext i32 %272 to i64
  %274 = getelementptr inbounds i32, i32* %270, i64 %273
  store i32 %269, i32* %274, align 4
  br label %275

275:                                              ; preds = %265
  %276 = load i32, i32* %11, align 4
  %277 = add nsw i32 %276, 1
  store i32 %277, i32* %11, align 4
  br label %262

278:                                              ; preds = %262
  store i32 0, i32* %11, align 4
  br label %279

279:                                              ; preds = %292, %278
  %280 = load i32, i32* %11, align 4
  %281 = icmp slt i32 %280, 2
  br i1 %281, label %282, label %295

282:                                              ; preds = %279
  %283 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %8, align 8
  %284 = load i32, i32* %11, align 4
  %285 = call i32 @IXGBE_VFTDH(i32 %284)
  %286 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %283, i32 %285)
  %287 = load i32*, i32** %9, align 8
  %288 = load i32, i32* %11, align 4
  %289 = add nsw i32 35, %288
  %290 = sext i32 %289 to i64
  %291 = getelementptr inbounds i32, i32* %287, i64 %290
  store i32 %286, i32* %291, align 4
  br label %292

292:                                              ; preds = %282
  %293 = load i32, i32* %11, align 4
  %294 = add nsw i32 %293, 1
  store i32 %294, i32* %11, align 4
  br label %279

295:                                              ; preds = %279
  store i32 0, i32* %11, align 4
  br label %296

296:                                              ; preds = %309, %295
  %297 = load i32, i32* %11, align 4
  %298 = icmp slt i32 %297, 2
  br i1 %298, label %299, label %312

299:                                              ; preds = %296
  %300 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %8, align 8
  %301 = load i32, i32* %11, align 4
  %302 = call i32 @IXGBE_VFTDT(i32 %301)
  %303 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %300, i32 %302)
  %304 = load i32*, i32** %9, align 8
  %305 = load i32, i32* %11, align 4
  %306 = add nsw i32 37, %305
  %307 = sext i32 %306 to i64
  %308 = getelementptr inbounds i32, i32* %304, i64 %307
  store i32 %303, i32* %308, align 4
  br label %309

309:                                              ; preds = %299
  %310 = load i32, i32* %11, align 4
  %311 = add nsw i32 %310, 1
  store i32 %311, i32* %11, align 4
  br label %296

312:                                              ; preds = %296
  store i32 0, i32* %11, align 4
  br label %313

313:                                              ; preds = %326, %312
  %314 = load i32, i32* %11, align 4
  %315 = icmp slt i32 %314, 2
  br i1 %315, label %316, label %329

316:                                              ; preds = %313
  %317 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %8, align 8
  %318 = load i32, i32* %11, align 4
  %319 = call i32 @IXGBE_VFTXDCTL(i32 %318)
  %320 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %317, i32 %319)
  %321 = load i32*, i32** %9, align 8
  %322 = load i32, i32* %11, align 4
  %323 = add nsw i32 39, %322
  %324 = sext i32 %323 to i64
  %325 = getelementptr inbounds i32, i32* %321, i64 %324
  store i32 %320, i32* %325, align 4
  br label %326

326:                                              ; preds = %316
  %327 = load i32, i32* %11, align 4
  %328 = add nsw i32 %327, 1
  store i32 %328, i32* %11, align 4
  br label %313

329:                                              ; preds = %313
  store i32 0, i32* %11, align 4
  br label %330

330:                                              ; preds = %343, %329
  %331 = load i32, i32* %11, align 4
  %332 = icmp slt i32 %331, 2
  br i1 %332, label %333, label %346

333:                                              ; preds = %330
  %334 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %8, align 8
  %335 = load i32, i32* %11, align 4
  %336 = call i32 @IXGBE_VFTDWBAL(i32 %335)
  %337 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %334, i32 %336)
  %338 = load i32*, i32** %9, align 8
  %339 = load i32, i32* %11, align 4
  %340 = add nsw i32 41, %339
  %341 = sext i32 %340 to i64
  %342 = getelementptr inbounds i32, i32* %338, i64 %341
  store i32 %337, i32* %342, align 4
  br label %343

343:                                              ; preds = %333
  %344 = load i32, i32* %11, align 4
  %345 = add nsw i32 %344, 1
  store i32 %345, i32* %11, align 4
  br label %330

346:                                              ; preds = %330
  store i32 0, i32* %11, align 4
  br label %347

347:                                              ; preds = %360, %346
  %348 = load i32, i32* %11, align 4
  %349 = icmp slt i32 %348, 2
  br i1 %349, label %350, label %363

350:                                              ; preds = %347
  %351 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %8, align 8
  %352 = load i32, i32* %11, align 4
  %353 = call i32 @IXGBE_VFTDWBAH(i32 %352)
  %354 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %351, i32 %353)
  %355 = load i32*, i32** %9, align 8
  %356 = load i32, i32* %11, align 4
  %357 = add nsw i32 43, %356
  %358 = sext i32 %357 to i64
  %359 = getelementptr inbounds i32, i32* %355, i64 %358
  store i32 %354, i32* %359, align 4
  br label %360

360:                                              ; preds = %350
  %361 = load i32, i32* %11, align 4
  %362 = add nsw i32 %361, 1
  store i32 %362, i32* %11, align 4
  br label %347

363:                                              ; preds = %347
  ret void
}

declare dso_local %struct.ixgbevf_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @ixgbevf_get_regs_len(%struct.net_device*) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @IXGBE_READ_REG(%struct.ixgbe_hw*, i32) #1

declare dso_local i32 @IXGBE_VTEITR(i32) #1

declare dso_local i32 @IXGBE_VTIVAR(i32) #1

declare dso_local i32 @IXGBE_VFRDBAL(i32) #1

declare dso_local i32 @IXGBE_VFRDBAH(i32) #1

declare dso_local i32 @IXGBE_VFRDLEN(i32) #1

declare dso_local i32 @IXGBE_VFRDH(i32) #1

declare dso_local i32 @IXGBE_VFRDT(i32) #1

declare dso_local i32 @IXGBE_VFRXDCTL(i32) #1

declare dso_local i32 @IXGBE_VFSRRCTL(i32) #1

declare dso_local i32 @IXGBE_VFTDBAL(i32) #1

declare dso_local i32 @IXGBE_VFTDBAH(i32) #1

declare dso_local i32 @IXGBE_VFTDLEN(i32) #1

declare dso_local i32 @IXGBE_VFTDH(i32) #1

declare dso_local i32 @IXGBE_VFTDT(i32) #1

declare dso_local i32 @IXGBE_VFTXDCTL(i32) #1

declare dso_local i32 @IXGBE_VFTDWBAL(i32) #1

declare dso_local i32 @IXGBE_VFTDWBAH(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
