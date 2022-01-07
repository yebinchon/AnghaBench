; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/extr_fealnx.c_getlinktype.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/extr_fealnx.c_getlinktype.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.netdev_private = type { i64, i32, i32, i32, i32*, i64 }

@MysonPHY = common dso_local global i64 0, align 8
@TCRRCR = common dso_local global i64 0, align 8
@CR_R_FD = common dso_local global i32 0, align 4
@CR_R_PS10 = common dso_local global i32 0, align 4
@SeeqPHY = common dso_local global i64 0, align 8
@MIIRegister18 = common dso_local global i32 0, align 4
@SPD_DET_100 = common dso_local global i32 0, align 4
@DPLX_DET_FULL = common dso_local global i32 0, align 4
@AhdocPHY = common dso_local global i64 0, align 8
@DiagnosticReg = common dso_local global i32 0, align 4
@Speed_100 = common dso_local global i32 0, align 4
@DPLX_FULL = common dso_local global i32 0, align 4
@MarvellPHY = common dso_local global i64 0, align 8
@SpecificReg = common dso_local global i32 0, align 4
@Full_Duplex = common dso_local global i32 0, align 4
@SpeedMask = common dso_local global i32 0, align 4
@Speed_1000M = common dso_local global i32 0, align 4
@Speed_100M = common dso_local global i32 0, align 4
@Myson981 = common dso_local global i64 0, align 8
@StatusRegister = common dso_local global i32 0, align 4
@SPEED100 = common dso_local global i32 0, align 4
@FULLMODE = common dso_local global i32 0, align 4
@LevelOnePHY = common dso_local global i64 0, align 8
@LXT1000_Full = common dso_local global i32 0, align 4
@LXT1000_1000M = common dso_local global i32 0, align 4
@LXT1000_100M = common dso_local global i32 0, align 4
@CR_W_PS10 = common dso_local global i32 0, align 4
@CR_W_FD = common dso_local global i32 0, align 4
@CR_W_PS1000 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @getlinktype to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @getlinktype(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.netdev_private*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %9 = load %struct.net_device*, %struct.net_device** %2, align 8
  %10 = call %struct.netdev_private* @netdev_priv(%struct.net_device* %9)
  store %struct.netdev_private* %10, %struct.netdev_private** %3, align 8
  %11 = load %struct.netdev_private*, %struct.netdev_private** %3, align 8
  %12 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @MysonPHY, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %49

16:                                               ; preds = %1
  %17 = load %struct.netdev_private*, %struct.netdev_private** %3, align 8
  %18 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %17, i32 0, i32 5
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @TCRRCR, align 8
  %21 = add nsw i64 %19, %20
  %22 = call i32 @ioread32(i64 %21)
  %23 = load i32, i32* @CR_R_FD, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %16
  %27 = load %struct.netdev_private*, %struct.netdev_private** %3, align 8
  %28 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %27, i32 0, i32 1
  store i32 2, i32* %28, align 8
  br label %32

29:                                               ; preds = %16
  %30 = load %struct.netdev_private*, %struct.netdev_private** %3, align 8
  %31 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %30, i32 0, i32 1
  store i32 1, i32* %31, align 8
  br label %32

32:                                               ; preds = %29, %26
  %33 = load %struct.netdev_private*, %struct.netdev_private** %3, align 8
  %34 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %33, i32 0, i32 5
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @TCRRCR, align 8
  %37 = add nsw i64 %35, %36
  %38 = call i32 @ioread32(i64 %37)
  %39 = load i32, i32* @CR_R_PS10, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %32
  %43 = load %struct.netdev_private*, %struct.netdev_private** %3, align 8
  %44 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %43, i32 0, i32 2
  store i32 1, i32* %44, align 4
  br label %48

45:                                               ; preds = %32
  %46 = load %struct.netdev_private*, %struct.netdev_private** %3, align 8
  %47 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %46, i32 0, i32 2
  store i32 2, i32* %47, align 4
  br label %48

48:                                               ; preds = %45, %42
  br label %305

49:                                               ; preds = %1
  %50 = load %struct.netdev_private*, %struct.netdev_private** %3, align 8
  %51 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @SeeqPHY, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %86

55:                                               ; preds = %49
  %56 = load %struct.net_device*, %struct.net_device** %2, align 8
  %57 = load %struct.netdev_private*, %struct.netdev_private** %3, align 8
  %58 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %57, i32 0, i32 4
  %59 = load i32*, i32** %58, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @MIIRegister18, align 4
  %63 = call i32 @mdio_read(%struct.net_device* %56, i32 %61, i32 %62)
  store i32 %63, i32* %4, align 4
  %64 = load i32, i32* %4, align 4
  %65 = load i32, i32* @SPD_DET_100, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %55
  %69 = load %struct.netdev_private*, %struct.netdev_private** %3, align 8
  %70 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %69, i32 0, i32 2
  store i32 2, i32* %70, align 4
  br label %74

71:                                               ; preds = %55
  %72 = load %struct.netdev_private*, %struct.netdev_private** %3, align 8
  %73 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %72, i32 0, i32 2
  store i32 1, i32* %73, align 4
  br label %74

74:                                               ; preds = %71, %68
  %75 = load i32, i32* %4, align 4
  %76 = load i32, i32* @DPLX_DET_FULL, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %74
  %80 = load %struct.netdev_private*, %struct.netdev_private** %3, align 8
  %81 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %80, i32 0, i32 1
  store i32 2, i32* %81, align 8
  br label %85

82:                                               ; preds = %74
  %83 = load %struct.netdev_private*, %struct.netdev_private** %3, align 8
  %84 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %83, i32 0, i32 1
  store i32 1, i32* %84, align 8
  br label %85

85:                                               ; preds = %82, %79
  br label %258

86:                                               ; preds = %49
  %87 = load %struct.netdev_private*, %struct.netdev_private** %3, align 8
  %88 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @AhdocPHY, align 8
  %91 = icmp eq i64 %89, %90
  br i1 %91, label %92, label %123

92:                                               ; preds = %86
  %93 = load %struct.net_device*, %struct.net_device** %2, align 8
  %94 = load %struct.netdev_private*, %struct.netdev_private** %3, align 8
  %95 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %94, i32 0, i32 4
  %96 = load i32*, i32** %95, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 0
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* @DiagnosticReg, align 4
  %100 = call i32 @mdio_read(%struct.net_device* %93, i32 %98, i32 %99)
  store i32 %100, i32* %5, align 4
  %101 = load i32, i32* %5, align 4
  %102 = load i32, i32* @Speed_100, align 4
  %103 = and i32 %101, %102
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %108

105:                                              ; preds = %92
  %106 = load %struct.netdev_private*, %struct.netdev_private** %3, align 8
  %107 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %106, i32 0, i32 2
  store i32 2, i32* %107, align 4
  br label %111

108:                                              ; preds = %92
  %109 = load %struct.netdev_private*, %struct.netdev_private** %3, align 8
  %110 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %109, i32 0, i32 2
  store i32 1, i32* %110, align 4
  br label %111

111:                                              ; preds = %108, %105
  %112 = load i32, i32* %5, align 4
  %113 = load i32, i32* @DPLX_FULL, align 4
  %114 = and i32 %112, %113
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %119

116:                                              ; preds = %111
  %117 = load %struct.netdev_private*, %struct.netdev_private** %3, align 8
  %118 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %117, i32 0, i32 1
  store i32 2, i32* %118, align 8
  br label %122

119:                                              ; preds = %111
  %120 = load %struct.netdev_private*, %struct.netdev_private** %3, align 8
  %121 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %120, i32 0, i32 1
  store i32 1, i32* %121, align 8
  br label %122

122:                                              ; preds = %119, %116
  br label %257

123:                                              ; preds = %86
  %124 = load %struct.netdev_private*, %struct.netdev_private** %3, align 8
  %125 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = load i64, i64* @MarvellPHY, align 8
  %128 = icmp eq i64 %126, %127
  br i1 %128, label %129, label %170

129:                                              ; preds = %123
  %130 = load %struct.net_device*, %struct.net_device** %2, align 8
  %131 = load %struct.netdev_private*, %struct.netdev_private** %3, align 8
  %132 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %131, i32 0, i32 4
  %133 = load i32*, i32** %132, align 8
  %134 = getelementptr inbounds i32, i32* %133, i64 0
  %135 = load i32, i32* %134, align 4
  %136 = load i32, i32* @SpecificReg, align 4
  %137 = call i32 @mdio_read(%struct.net_device* %130, i32 %135, i32 %136)
  store i32 %137, i32* %6, align 4
  %138 = load i32, i32* %6, align 4
  %139 = load i32, i32* @Full_Duplex, align 4
  %140 = and i32 %138, %139
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %145

142:                                              ; preds = %129
  %143 = load %struct.netdev_private*, %struct.netdev_private** %3, align 8
  %144 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %143, i32 0, i32 1
  store i32 2, i32* %144, align 8
  br label %148

145:                                              ; preds = %129
  %146 = load %struct.netdev_private*, %struct.netdev_private** %3, align 8
  %147 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %146, i32 0, i32 1
  store i32 1, i32* %147, align 8
  br label %148

148:                                              ; preds = %145, %142
  %149 = load i32, i32* @SpeedMask, align 4
  %150 = load i32, i32* %6, align 4
  %151 = and i32 %150, %149
  store i32 %151, i32* %6, align 4
  %152 = load i32, i32* %6, align 4
  %153 = load i32, i32* @Speed_1000M, align 4
  %154 = icmp eq i32 %152, %153
  br i1 %154, label %155, label %158

155:                                              ; preds = %148
  %156 = load %struct.netdev_private*, %struct.netdev_private** %3, align 8
  %157 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %156, i32 0, i32 2
  store i32 3, i32* %157, align 4
  br label %169

158:                                              ; preds = %148
  %159 = load i32, i32* %6, align 4
  %160 = load i32, i32* @Speed_100M, align 4
  %161 = icmp eq i32 %159, %160
  br i1 %161, label %162, label %165

162:                                              ; preds = %158
  %163 = load %struct.netdev_private*, %struct.netdev_private** %3, align 8
  %164 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %163, i32 0, i32 2
  store i32 2, i32* %164, align 4
  br label %168

165:                                              ; preds = %158
  %166 = load %struct.netdev_private*, %struct.netdev_private** %3, align 8
  %167 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %166, i32 0, i32 2
  store i32 1, i32* %167, align 4
  br label %168

168:                                              ; preds = %165, %162
  br label %169

169:                                              ; preds = %168, %155
  br label %256

170:                                              ; preds = %123
  %171 = load %struct.netdev_private*, %struct.netdev_private** %3, align 8
  %172 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %171, i32 0, i32 0
  %173 = load i64, i64* %172, align 8
  %174 = load i64, i64* @Myson981, align 8
  %175 = icmp eq i64 %173, %174
  br i1 %175, label %176, label %207

176:                                              ; preds = %170
  %177 = load %struct.net_device*, %struct.net_device** %2, align 8
  %178 = load %struct.netdev_private*, %struct.netdev_private** %3, align 8
  %179 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %178, i32 0, i32 4
  %180 = load i32*, i32** %179, align 8
  %181 = getelementptr inbounds i32, i32* %180, i64 0
  %182 = load i32, i32* %181, align 4
  %183 = load i32, i32* @StatusRegister, align 4
  %184 = call i32 @mdio_read(%struct.net_device* %177, i32 %182, i32 %183)
  store i32 %184, i32* %7, align 4
  %185 = load i32, i32* %7, align 4
  %186 = load i32, i32* @SPEED100, align 4
  %187 = and i32 %185, %186
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %192

189:                                              ; preds = %176
  %190 = load %struct.netdev_private*, %struct.netdev_private** %3, align 8
  %191 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %190, i32 0, i32 2
  store i32 2, i32* %191, align 4
  br label %195

192:                                              ; preds = %176
  %193 = load %struct.netdev_private*, %struct.netdev_private** %3, align 8
  %194 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %193, i32 0, i32 2
  store i32 1, i32* %194, align 4
  br label %195

195:                                              ; preds = %192, %189
  %196 = load i32, i32* %7, align 4
  %197 = load i32, i32* @FULLMODE, align 4
  %198 = and i32 %196, %197
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %200, label %203

200:                                              ; preds = %195
  %201 = load %struct.netdev_private*, %struct.netdev_private** %3, align 8
  %202 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %201, i32 0, i32 1
  store i32 2, i32* %202, align 8
  br label %206

203:                                              ; preds = %195
  %204 = load %struct.netdev_private*, %struct.netdev_private** %3, align 8
  %205 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %204, i32 0, i32 1
  store i32 1, i32* %205, align 8
  br label %206

206:                                              ; preds = %203, %200
  br label %255

207:                                              ; preds = %170
  %208 = load %struct.netdev_private*, %struct.netdev_private** %3, align 8
  %209 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %208, i32 0, i32 0
  %210 = load i64, i64* %209, align 8
  %211 = load i64, i64* @LevelOnePHY, align 8
  %212 = icmp eq i64 %210, %211
  br i1 %212, label %213, label %254

213:                                              ; preds = %207
  %214 = load %struct.net_device*, %struct.net_device** %2, align 8
  %215 = load %struct.netdev_private*, %struct.netdev_private** %3, align 8
  %216 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %215, i32 0, i32 4
  %217 = load i32*, i32** %216, align 8
  %218 = getelementptr inbounds i32, i32* %217, i64 0
  %219 = load i32, i32* %218, align 4
  %220 = load i32, i32* @SpecificReg, align 4
  %221 = call i32 @mdio_read(%struct.net_device* %214, i32 %219, i32 %220)
  store i32 %221, i32* %8, align 4
  %222 = load i32, i32* %8, align 4
  %223 = load i32, i32* @LXT1000_Full, align 4
  %224 = and i32 %222, %223
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %226, label %229

226:                                              ; preds = %213
  %227 = load %struct.netdev_private*, %struct.netdev_private** %3, align 8
  %228 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %227, i32 0, i32 1
  store i32 2, i32* %228, align 8
  br label %232

229:                                              ; preds = %213
  %230 = load %struct.netdev_private*, %struct.netdev_private** %3, align 8
  %231 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %230, i32 0, i32 1
  store i32 1, i32* %231, align 8
  br label %232

232:                                              ; preds = %229, %226
  %233 = load i32, i32* @SpeedMask, align 4
  %234 = load i32, i32* %8, align 4
  %235 = and i32 %234, %233
  store i32 %235, i32* %8, align 4
  %236 = load i32, i32* %8, align 4
  %237 = load i32, i32* @LXT1000_1000M, align 4
  %238 = icmp eq i32 %236, %237
  br i1 %238, label %239, label %242

239:                                              ; preds = %232
  %240 = load %struct.netdev_private*, %struct.netdev_private** %3, align 8
  %241 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %240, i32 0, i32 2
  store i32 3, i32* %241, align 4
  br label %253

242:                                              ; preds = %232
  %243 = load i32, i32* %8, align 4
  %244 = load i32, i32* @LXT1000_100M, align 4
  %245 = icmp eq i32 %243, %244
  br i1 %245, label %246, label %249

246:                                              ; preds = %242
  %247 = load %struct.netdev_private*, %struct.netdev_private** %3, align 8
  %248 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %247, i32 0, i32 2
  store i32 2, i32* %248, align 4
  br label %252

249:                                              ; preds = %242
  %250 = load %struct.netdev_private*, %struct.netdev_private** %3, align 8
  %251 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %250, i32 0, i32 2
  store i32 1, i32* %251, align 4
  br label %252

252:                                              ; preds = %249, %246
  br label %253

253:                                              ; preds = %252, %239
  br label %254

254:                                              ; preds = %253, %207
  br label %255

255:                                              ; preds = %254, %206
  br label %256

256:                                              ; preds = %255, %169
  br label %257

257:                                              ; preds = %256, %122
  br label %258

258:                                              ; preds = %257, %85
  %259 = load i32, i32* @CR_W_PS10, align 4
  %260 = xor i32 %259, -1
  %261 = load i32, i32* @CR_W_FD, align 4
  %262 = xor i32 %261, -1
  %263 = and i32 %260, %262
  %264 = load i32, i32* @CR_W_PS1000, align 4
  %265 = xor i32 %264, -1
  %266 = and i32 %263, %265
  %267 = load %struct.netdev_private*, %struct.netdev_private** %3, align 8
  %268 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %267, i32 0, i32 3
  %269 = load i32, i32* %268, align 8
  %270 = and i32 %269, %266
  store i32 %270, i32* %268, align 8
  %271 = load %struct.netdev_private*, %struct.netdev_private** %3, align 8
  %272 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %271, i32 0, i32 2
  %273 = load i32, i32* %272, align 4
  %274 = icmp eq i32 %273, 1
  br i1 %274, label %275, label %281

275:                                              ; preds = %258
  %276 = load i32, i32* @CR_W_PS10, align 4
  %277 = load %struct.netdev_private*, %struct.netdev_private** %3, align 8
  %278 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %277, i32 0, i32 3
  %279 = load i32, i32* %278, align 8
  %280 = or i32 %279, %276
  store i32 %280, i32* %278, align 8
  br label %293

281:                                              ; preds = %258
  %282 = load %struct.netdev_private*, %struct.netdev_private** %3, align 8
  %283 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %282, i32 0, i32 2
  %284 = load i32, i32* %283, align 4
  %285 = icmp eq i32 %284, 3
  br i1 %285, label %286, label %292

286:                                              ; preds = %281
  %287 = load i32, i32* @CR_W_PS1000, align 4
  %288 = load %struct.netdev_private*, %struct.netdev_private** %3, align 8
  %289 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %288, i32 0, i32 3
  %290 = load i32, i32* %289, align 8
  %291 = or i32 %290, %287
  store i32 %291, i32* %289, align 8
  br label %292

292:                                              ; preds = %286, %281
  br label %293

293:                                              ; preds = %292, %275
  %294 = load %struct.netdev_private*, %struct.netdev_private** %3, align 8
  %295 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %294, i32 0, i32 1
  %296 = load i32, i32* %295, align 8
  %297 = icmp eq i32 %296, 2
  br i1 %297, label %298, label %304

298:                                              ; preds = %293
  %299 = load i32, i32* @CR_W_FD, align 4
  %300 = load %struct.netdev_private*, %struct.netdev_private** %3, align 8
  %301 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %300, i32 0, i32 3
  %302 = load i32, i32* %301, align 8
  %303 = or i32 %302, %299
  store i32 %303, i32* %301, align 8
  br label %304

304:                                              ; preds = %298, %293
  br label %305

305:                                              ; preds = %304, %48
  ret void
}

declare dso_local %struct.netdev_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @ioread32(i64) #1

declare dso_local i32 @mdio_read(%struct.net_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
