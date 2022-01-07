; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_tda18271c2dd.c_FixedContentsI2CUpdate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_tda18271c2dd.c_FixedContentsI2CUpdate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tda_state = type { i32* }

@FixedContentsI2CUpdate.InitRegs = internal global [38 x i32] [i32 8, i32 128, i32 198, i32 223, i32 22, i32 96, i32 128, i32 128, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 252, i32 1, i32 132, i32 65, i32 1, i32 132, i32 64, i32 7, i32 0, i32 0, i32 150, i32 63, i32 193, i32 0, i32 143, i32 0, i32 0, i32 140, i32 0, i32 32, i32 179, i32 72, i32 176], align 16
@TM = common dso_local global i64 0, align 8
@EB23 = common dso_local global i64 0, align 8
@EB17 = common dso_local global i64 0, align 8
@EP3 = common dso_local global i64 0, align 8
@EP4 = common dso_local global i64 0, align 8
@EP5 = common dso_local global i64 0, align 8
@CPD = common dso_local global i64 0, align 8
@CD1 = common dso_local global i64 0, align 8
@CD2 = common dso_local global i64 0, align 8
@CD3 = common dso_local global i64 0, align 8
@MPD = common dso_local global i64 0, align 8
@MD1 = common dso_local global i64 0, align 8
@MD2 = common dso_local global i64 0, align 8
@MD3 = common dso_local global i64 0, align 8
@EP2 = common dso_local global i64 0, align 8
@EP1 = common dso_local global i64 0, align 8
@EB4 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tda_state*)* @FixedContentsI2CUpdate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @FixedContentsI2CUpdate(%struct.tda_state* %0) #0 {
  %2 = alloca %struct.tda_state*, align 8
  %3 = alloca i32, align 4
  store %struct.tda_state* %0, %struct.tda_state** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load %struct.tda_state*, %struct.tda_state** %2, align 8
  %5 = getelementptr inbounds %struct.tda_state, %struct.tda_state* %4, i32 0, i32 0
  %6 = load i32*, i32** %5, align 8
  %7 = load i64, i64* @TM, align 8
  %8 = getelementptr inbounds i32, i32* %6, i64 %7
  %9 = load i64, i64* @EB23, align 8
  %10 = load i64, i64* @TM, align 8
  %11 = sub i64 %9, %10
  %12 = add i64 %11, 1
  %13 = call i32 @memcpy(i32* %8, i32* getelementptr inbounds ([38 x i32], [38 x i32]* @FixedContentsI2CUpdate.InitRegs, i64 0, i64 0), i64 %12)
  br label %14

14:                                               ; preds = %1
  %15 = load %struct.tda_state*, %struct.tda_state** %2, align 8
  %16 = load i64, i64* @TM, align 8
  %17 = load i64, i64* @EB23, align 8
  %18 = call i32 @UpdateRegs(%struct.tda_state* %15, i64 %16, i64 %17)
  store i32 %18, i32* %3, align 4
  %19 = load i32, i32* %3, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %14
  br label %367

22:                                               ; preds = %14
  %23 = load %struct.tda_state*, %struct.tda_state** %2, align 8
  %24 = getelementptr inbounds %struct.tda_state, %struct.tda_state* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = load i64, i64* @EB17, align 8
  %27 = getelementptr inbounds i32, i32* %25, i64 %26
  store i32 0, i32* %27, align 4
  %28 = load %struct.tda_state*, %struct.tda_state** %2, align 8
  %29 = load i64, i64* @EB17, align 8
  %30 = call i32 @UpdateReg(%struct.tda_state* %28, i64 %29)
  store i32 %30, i32* %3, align 4
  %31 = load i32, i32* %3, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %22
  br label %367

34:                                               ; preds = %22
  %35 = load %struct.tda_state*, %struct.tda_state** %2, align 8
  %36 = getelementptr inbounds %struct.tda_state, %struct.tda_state* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = load i64, i64* @EB17, align 8
  %39 = getelementptr inbounds i32, i32* %37, i64 %38
  store i32 3, i32* %39, align 4
  %40 = load %struct.tda_state*, %struct.tda_state** %2, align 8
  %41 = load i64, i64* @EB17, align 8
  %42 = call i32 @UpdateReg(%struct.tda_state* %40, i64 %41)
  store i32 %42, i32* %3, align 4
  %43 = load i32, i32* %3, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %34
  br label %367

46:                                               ; preds = %34
  %47 = load %struct.tda_state*, %struct.tda_state** %2, align 8
  %48 = getelementptr inbounds %struct.tda_state, %struct.tda_state* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = load i64, i64* @EB17, align 8
  %51 = getelementptr inbounds i32, i32* %49, i64 %50
  store i32 67, i32* %51, align 4
  %52 = load %struct.tda_state*, %struct.tda_state** %2, align 8
  %53 = load i64, i64* @EB17, align 8
  %54 = call i32 @UpdateReg(%struct.tda_state* %52, i64 %53)
  store i32 %54, i32* %3, align 4
  %55 = load i32, i32* %3, align 4
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %46
  br label %367

58:                                               ; preds = %46
  %59 = load %struct.tda_state*, %struct.tda_state** %2, align 8
  %60 = getelementptr inbounds %struct.tda_state, %struct.tda_state* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = load i64, i64* @EB17, align 8
  %63 = getelementptr inbounds i32, i32* %61, i64 %62
  store i32 76, i32* %63, align 4
  %64 = load %struct.tda_state*, %struct.tda_state** %2, align 8
  %65 = load i64, i64* @EB17, align 8
  %66 = call i32 @UpdateReg(%struct.tda_state* %64, i64 %65)
  store i32 %66, i32* %3, align 4
  %67 = load i32, i32* %3, align 4
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %58
  br label %367

70:                                               ; preds = %58
  %71 = load %struct.tda_state*, %struct.tda_state** %2, align 8
  %72 = getelementptr inbounds %struct.tda_state, %struct.tda_state* %71, i32 0, i32 0
  %73 = load i32*, i32** %72, align 8
  %74 = load i64, i64* @EP3, align 8
  %75 = getelementptr inbounds i32, i32* %73, i64 %74
  store i32 31, i32* %75, align 4
  %76 = load %struct.tda_state*, %struct.tda_state** %2, align 8
  %77 = getelementptr inbounds %struct.tda_state, %struct.tda_state* %76, i32 0, i32 0
  %78 = load i32*, i32** %77, align 8
  %79 = load i64, i64* @EP4, align 8
  %80 = getelementptr inbounds i32, i32* %78, i64 %79
  store i32 102, i32* %80, align 4
  %81 = load %struct.tda_state*, %struct.tda_state** %2, align 8
  %82 = getelementptr inbounds %struct.tda_state, %struct.tda_state* %81, i32 0, i32 0
  %83 = load i32*, i32** %82, align 8
  %84 = load i64, i64* @EP5, align 8
  %85 = getelementptr inbounds i32, i32* %83, i64 %84
  store i32 129, i32* %85, align 4
  %86 = load %struct.tda_state*, %struct.tda_state** %2, align 8
  %87 = getelementptr inbounds %struct.tda_state, %struct.tda_state* %86, i32 0, i32 0
  %88 = load i32*, i32** %87, align 8
  %89 = load i64, i64* @CPD, align 8
  %90 = getelementptr inbounds i32, i32* %88, i64 %89
  store i32 204, i32* %90, align 4
  %91 = load %struct.tda_state*, %struct.tda_state** %2, align 8
  %92 = getelementptr inbounds %struct.tda_state, %struct.tda_state* %91, i32 0, i32 0
  %93 = load i32*, i32** %92, align 8
  %94 = load i64, i64* @CD1, align 8
  %95 = getelementptr inbounds i32, i32* %93, i64 %94
  store i32 108, i32* %95, align 4
  %96 = load %struct.tda_state*, %struct.tda_state** %2, align 8
  %97 = getelementptr inbounds %struct.tda_state, %struct.tda_state* %96, i32 0, i32 0
  %98 = load i32*, i32** %97, align 8
  %99 = load i64, i64* @CD2, align 8
  %100 = getelementptr inbounds i32, i32* %98, i64 %99
  store i32 0, i32* %100, align 4
  %101 = load %struct.tda_state*, %struct.tda_state** %2, align 8
  %102 = getelementptr inbounds %struct.tda_state, %struct.tda_state* %101, i32 0, i32 0
  %103 = load i32*, i32** %102, align 8
  %104 = load i64, i64* @CD3, align 8
  %105 = getelementptr inbounds i32, i32* %103, i64 %104
  store i32 0, i32* %105, align 4
  %106 = load %struct.tda_state*, %struct.tda_state** %2, align 8
  %107 = getelementptr inbounds %struct.tda_state, %struct.tda_state* %106, i32 0, i32 0
  %108 = load i32*, i32** %107, align 8
  %109 = load i64, i64* @MPD, align 8
  %110 = getelementptr inbounds i32, i32* %108, i64 %109
  store i32 197, i32* %110, align 4
  %111 = load %struct.tda_state*, %struct.tda_state** %2, align 8
  %112 = getelementptr inbounds %struct.tda_state, %struct.tda_state* %111, i32 0, i32 0
  %113 = load i32*, i32** %112, align 8
  %114 = load i64, i64* @MD1, align 8
  %115 = getelementptr inbounds i32, i32* %113, i64 %114
  store i32 119, i32* %115, align 4
  %116 = load %struct.tda_state*, %struct.tda_state** %2, align 8
  %117 = getelementptr inbounds %struct.tda_state, %struct.tda_state* %116, i32 0, i32 0
  %118 = load i32*, i32** %117, align 8
  %119 = load i64, i64* @MD2, align 8
  %120 = getelementptr inbounds i32, i32* %118, i64 %119
  store i32 8, i32* %120, align 4
  %121 = load %struct.tda_state*, %struct.tda_state** %2, align 8
  %122 = getelementptr inbounds %struct.tda_state, %struct.tda_state* %121, i32 0, i32 0
  %123 = load i32*, i32** %122, align 8
  %124 = load i64, i64* @MD3, align 8
  %125 = getelementptr inbounds i32, i32* %123, i64 %124
  store i32 0, i32* %125, align 4
  %126 = load %struct.tda_state*, %struct.tda_state** %2, align 8
  %127 = load i64, i64* @EP2, align 8
  %128 = load i64, i64* @MD3, align 8
  %129 = call i32 @UpdateRegs(%struct.tda_state* %126, i64 %127, i64 %128)
  store i32 %129, i32* %3, align 4
  %130 = load i32, i32* %3, align 4
  %131 = icmp slt i32 %130, 0
  br i1 %131, label %132, label %133

132:                                              ; preds = %70
  br label %367

133:                                              ; preds = %70
  %134 = call i32 @msleep(i32 5)
  %135 = load %struct.tda_state*, %struct.tda_state** %2, align 8
  %136 = load i64, i64* @EP1, align 8
  %137 = call i32 @UpdateReg(%struct.tda_state* %135, i64 %136)
  store i32 %137, i32* %3, align 4
  %138 = load i32, i32* %3, align 4
  %139 = icmp slt i32 %138, 0
  br i1 %139, label %140, label %141

140:                                              ; preds = %133
  br label %367

141:                                              ; preds = %133
  %142 = call i32 @msleep(i32 5)
  %143 = load %struct.tda_state*, %struct.tda_state** %2, align 8
  %144 = getelementptr inbounds %struct.tda_state, %struct.tda_state* %143, i32 0, i32 0
  %145 = load i32*, i32** %144, align 8
  %146 = load i64, i64* @EP5, align 8
  %147 = getelementptr inbounds i32, i32* %145, i64 %146
  store i32 133, i32* %147, align 4
  %148 = load %struct.tda_state*, %struct.tda_state** %2, align 8
  %149 = getelementptr inbounds %struct.tda_state, %struct.tda_state* %148, i32 0, i32 0
  %150 = load i32*, i32** %149, align 8
  %151 = load i64, i64* @CPD, align 8
  %152 = getelementptr inbounds i32, i32* %150, i64 %151
  store i32 203, i32* %152, align 4
  %153 = load %struct.tda_state*, %struct.tda_state** %2, align 8
  %154 = getelementptr inbounds %struct.tda_state, %struct.tda_state* %153, i32 0, i32 0
  %155 = load i32*, i32** %154, align 8
  %156 = load i64, i64* @CD1, align 8
  %157 = getelementptr inbounds i32, i32* %155, i64 %156
  store i32 102, i32* %157, align 4
  %158 = load %struct.tda_state*, %struct.tda_state** %2, align 8
  %159 = getelementptr inbounds %struct.tda_state, %struct.tda_state* %158, i32 0, i32 0
  %160 = load i32*, i32** %159, align 8
  %161 = load i64, i64* @CD2, align 8
  %162 = getelementptr inbounds i32, i32* %160, i64 %161
  store i32 112, i32* %162, align 4
  %163 = load %struct.tda_state*, %struct.tda_state** %2, align 8
  %164 = load i64, i64* @EP3, align 8
  %165 = load i64, i64* @CD3, align 8
  %166 = call i32 @UpdateRegs(%struct.tda_state* %163, i64 %164, i64 %165)
  store i32 %166, i32* %3, align 4
  %167 = load i32, i32* %3, align 4
  %168 = icmp slt i32 %167, 0
  br i1 %168, label %169, label %170

169:                                              ; preds = %141
  br label %367

170:                                              ; preds = %141
  %171 = call i32 @msleep(i32 5)
  %172 = load %struct.tda_state*, %struct.tda_state** %2, align 8
  %173 = load i64, i64* @EP2, align 8
  %174 = call i32 @UpdateReg(%struct.tda_state* %172, i64 %173)
  store i32 %174, i32* %3, align 4
  %175 = load i32, i32* %3, align 4
  %176 = icmp slt i32 %175, 0
  br i1 %176, label %177, label %178

177:                                              ; preds = %170
  br label %367

178:                                              ; preds = %170
  %179 = call i32 @msleep(i32 30)
  %180 = load %struct.tda_state*, %struct.tda_state** %2, align 8
  %181 = getelementptr inbounds %struct.tda_state, %struct.tda_state* %180, i32 0, i32 0
  %182 = load i32*, i32** %181, align 8
  %183 = load i64, i64* @EP5, align 8
  %184 = getelementptr inbounds i32, i32* %182, i64 %183
  store i32 130, i32* %184, align 4
  %185 = load %struct.tda_state*, %struct.tda_state** %2, align 8
  %186 = getelementptr inbounds %struct.tda_state, %struct.tda_state* %185, i32 0, i32 0
  %187 = load i32*, i32** %186, align 8
  %188 = load i64, i64* @CPD, align 8
  %189 = getelementptr inbounds i32, i32* %187, i64 %188
  store i32 168, i32* %189, align 4
  %190 = load %struct.tda_state*, %struct.tda_state** %2, align 8
  %191 = getelementptr inbounds %struct.tda_state, %struct.tda_state* %190, i32 0, i32 0
  %192 = load i32*, i32** %191, align 8
  %193 = load i64, i64* @CD2, align 8
  %194 = getelementptr inbounds i32, i32* %192, i64 %193
  store i32 0, i32* %194, align 4
  %195 = load %struct.tda_state*, %struct.tda_state** %2, align 8
  %196 = getelementptr inbounds %struct.tda_state, %struct.tda_state* %195, i32 0, i32 0
  %197 = load i32*, i32** %196, align 8
  %198 = load i64, i64* @MPD, align 8
  %199 = getelementptr inbounds i32, i32* %197, i64 %198
  store i32 161, i32* %199, align 4
  %200 = load %struct.tda_state*, %struct.tda_state** %2, align 8
  %201 = getelementptr inbounds %struct.tda_state, %struct.tda_state* %200, i32 0, i32 0
  %202 = load i32*, i32** %201, align 8
  %203 = load i64, i64* @MD1, align 8
  %204 = getelementptr inbounds i32, i32* %202, i64 %203
  store i32 115, i32* %204, align 4
  %205 = load %struct.tda_state*, %struct.tda_state** %2, align 8
  %206 = getelementptr inbounds %struct.tda_state, %struct.tda_state* %205, i32 0, i32 0
  %207 = load i32*, i32** %206, align 8
  %208 = load i64, i64* @MD2, align 8
  %209 = getelementptr inbounds i32, i32* %207, i64 %208
  store i32 26, i32* %209, align 4
  %210 = load %struct.tda_state*, %struct.tda_state** %2, align 8
  %211 = load i64, i64* @EP3, align 8
  %212 = load i64, i64* @MD3, align 8
  %213 = call i32 @UpdateRegs(%struct.tda_state* %210, i64 %211, i64 %212)
  store i32 %213, i32* %3, align 4
  %214 = load i32, i32* %3, align 4
  %215 = icmp slt i32 %214, 0
  br i1 %215, label %216, label %217

216:                                              ; preds = %178
  br label %367

217:                                              ; preds = %178
  %218 = call i32 @msleep(i32 5)
  %219 = load %struct.tda_state*, %struct.tda_state** %2, align 8
  %220 = load i64, i64* @EP1, align 8
  %221 = call i32 @UpdateReg(%struct.tda_state* %219, i64 %220)
  store i32 %221, i32* %3, align 4
  %222 = load i32, i32* %3, align 4
  %223 = icmp slt i32 %222, 0
  br i1 %223, label %224, label %225

224:                                              ; preds = %217
  br label %367

225:                                              ; preds = %217
  %226 = call i32 @msleep(i32 5)
  %227 = load %struct.tda_state*, %struct.tda_state** %2, align 8
  %228 = getelementptr inbounds %struct.tda_state, %struct.tda_state* %227, i32 0, i32 0
  %229 = load i32*, i32** %228, align 8
  %230 = load i64, i64* @EP5, align 8
  %231 = getelementptr inbounds i32, i32* %229, i64 %230
  store i32 134, i32* %231, align 4
  %232 = load %struct.tda_state*, %struct.tda_state** %2, align 8
  %233 = getelementptr inbounds %struct.tda_state, %struct.tda_state* %232, i32 0, i32 0
  %234 = load i32*, i32** %233, align 8
  %235 = load i64, i64* @CPD, align 8
  %236 = getelementptr inbounds i32, i32* %234, i64 %235
  store i32 168, i32* %236, align 4
  %237 = load %struct.tda_state*, %struct.tda_state** %2, align 8
  %238 = getelementptr inbounds %struct.tda_state, %struct.tda_state* %237, i32 0, i32 0
  %239 = load i32*, i32** %238, align 8
  %240 = load i64, i64* @CD1, align 8
  %241 = getelementptr inbounds i32, i32* %239, i64 %240
  store i32 102, i32* %241, align 4
  %242 = load %struct.tda_state*, %struct.tda_state** %2, align 8
  %243 = getelementptr inbounds %struct.tda_state, %struct.tda_state* %242, i32 0, i32 0
  %244 = load i32*, i32** %243, align 8
  %245 = load i64, i64* @CD2, align 8
  %246 = getelementptr inbounds i32, i32* %244, i64 %245
  store i32 160, i32* %246, align 4
  %247 = load %struct.tda_state*, %struct.tda_state** %2, align 8
  %248 = load i64, i64* @EP3, align 8
  %249 = load i64, i64* @CD3, align 8
  %250 = call i32 @UpdateRegs(%struct.tda_state* %247, i64 %248, i64 %249)
  store i32 %250, i32* %3, align 4
  %251 = load i32, i32* %3, align 4
  %252 = icmp slt i32 %251, 0
  br i1 %252, label %253, label %254

253:                                              ; preds = %225
  br label %367

254:                                              ; preds = %225
  %255 = call i32 @msleep(i32 5)
  %256 = load %struct.tda_state*, %struct.tda_state** %2, align 8
  %257 = load i64, i64* @EP2, align 8
  %258 = call i32 @UpdateReg(%struct.tda_state* %256, i64 %257)
  store i32 %258, i32* %3, align 4
  %259 = load i32, i32* %3, align 4
  %260 = icmp slt i32 %259, 0
  br i1 %260, label %261, label %262

261:                                              ; preds = %254
  br label %367

262:                                              ; preds = %254
  %263 = call i32 @msleep(i32 30)
  %264 = load %struct.tda_state*, %struct.tda_state** %2, align 8
  %265 = getelementptr inbounds %struct.tda_state, %struct.tda_state* %264, i32 0, i32 0
  %266 = load i32*, i32** %265, align 8
  %267 = load i64, i64* @EP5, align 8
  %268 = getelementptr inbounds i32, i32* %266, i64 %267
  store i32 131, i32* %268, align 4
  %269 = load %struct.tda_state*, %struct.tda_state** %2, align 8
  %270 = getelementptr inbounds %struct.tda_state, %struct.tda_state* %269, i32 0, i32 0
  %271 = load i32*, i32** %270, align 8
  %272 = load i64, i64* @CPD, align 8
  %273 = getelementptr inbounds i32, i32* %271, i64 %272
  store i32 152, i32* %273, align 4
  %274 = load %struct.tda_state*, %struct.tda_state** %2, align 8
  %275 = getelementptr inbounds %struct.tda_state, %struct.tda_state* %274, i32 0, i32 0
  %276 = load i32*, i32** %275, align 8
  %277 = load i64, i64* @CD1, align 8
  %278 = getelementptr inbounds i32, i32* %276, i64 %277
  store i32 101, i32* %278, align 4
  %279 = load %struct.tda_state*, %struct.tda_state** %2, align 8
  %280 = getelementptr inbounds %struct.tda_state, %struct.tda_state* %279, i32 0, i32 0
  %281 = load i32*, i32** %280, align 8
  %282 = load i64, i64* @CD2, align 8
  %283 = getelementptr inbounds i32, i32* %281, i64 %282
  store i32 0, i32* %283, align 4
  %284 = load %struct.tda_state*, %struct.tda_state** %2, align 8
  %285 = getelementptr inbounds %struct.tda_state, %struct.tda_state* %284, i32 0, i32 0
  %286 = load i32*, i32** %285, align 8
  %287 = load i64, i64* @MPD, align 8
  %288 = getelementptr inbounds i32, i32* %286, i64 %287
  store i32 145, i32* %288, align 4
  %289 = load %struct.tda_state*, %struct.tda_state** %2, align 8
  %290 = getelementptr inbounds %struct.tda_state, %struct.tda_state* %289, i32 0, i32 0
  %291 = load i32*, i32** %290, align 8
  %292 = load i64, i64* @MD1, align 8
  %293 = getelementptr inbounds i32, i32* %291, i64 %292
  store i32 113, i32* %293, align 4
  %294 = load %struct.tda_state*, %struct.tda_state** %2, align 8
  %295 = getelementptr inbounds %struct.tda_state, %struct.tda_state* %294, i32 0, i32 0
  %296 = load i32*, i32** %295, align 8
  %297 = load i64, i64* @MD2, align 8
  %298 = getelementptr inbounds i32, i32* %296, i64 %297
  store i32 205, i32* %298, align 4
  %299 = load %struct.tda_state*, %struct.tda_state** %2, align 8
  %300 = load i64, i64* @EP3, align 8
  %301 = load i64, i64* @MD3, align 8
  %302 = call i32 @UpdateRegs(%struct.tda_state* %299, i64 %300, i64 %301)
  store i32 %302, i32* %3, align 4
  %303 = load i32, i32* %3, align 4
  %304 = icmp slt i32 %303, 0
  br i1 %304, label %305, label %306

305:                                              ; preds = %262
  br label %367

306:                                              ; preds = %262
  %307 = call i32 @msleep(i32 5)
  %308 = load %struct.tda_state*, %struct.tda_state** %2, align 8
  %309 = load i64, i64* @EP1, align 8
  %310 = call i32 @UpdateReg(%struct.tda_state* %308, i64 %309)
  store i32 %310, i32* %3, align 4
  %311 = load i32, i32* %3, align 4
  %312 = icmp slt i32 %311, 0
  br i1 %312, label %313, label %314

313:                                              ; preds = %306
  br label %367

314:                                              ; preds = %306
  %315 = call i32 @msleep(i32 5)
  %316 = load %struct.tda_state*, %struct.tda_state** %2, align 8
  %317 = getelementptr inbounds %struct.tda_state, %struct.tda_state* %316, i32 0, i32 0
  %318 = load i32*, i32** %317, align 8
  %319 = load i64, i64* @EP5, align 8
  %320 = getelementptr inbounds i32, i32* %318, i64 %319
  store i32 135, i32* %320, align 4
  %321 = load %struct.tda_state*, %struct.tda_state** %2, align 8
  %322 = getelementptr inbounds %struct.tda_state, %struct.tda_state* %321, i32 0, i32 0
  %323 = load i32*, i32** %322, align 8
  %324 = load i64, i64* @CD1, align 8
  %325 = getelementptr inbounds i32, i32* %323, i64 %324
  store i32 101, i32* %325, align 4
  %326 = load %struct.tda_state*, %struct.tda_state** %2, align 8
  %327 = getelementptr inbounds %struct.tda_state, %struct.tda_state* %326, i32 0, i32 0
  %328 = load i32*, i32** %327, align 8
  %329 = load i64, i64* @CD2, align 8
  %330 = getelementptr inbounds i32, i32* %328, i64 %329
  store i32 80, i32* %330, align 4
  %331 = load %struct.tda_state*, %struct.tda_state** %2, align 8
  %332 = load i64, i64* @EP3, align 8
  %333 = load i64, i64* @CD3, align 8
  %334 = call i32 @UpdateRegs(%struct.tda_state* %331, i64 %332, i64 %333)
  store i32 %334, i32* %3, align 4
  %335 = load i32, i32* %3, align 4
  %336 = icmp slt i32 %335, 0
  br i1 %336, label %337, label %338

337:                                              ; preds = %314
  br label %367

338:                                              ; preds = %314
  %339 = call i32 @msleep(i32 5)
  %340 = load %struct.tda_state*, %struct.tda_state** %2, align 8
  %341 = load i64, i64* @EP2, align 8
  %342 = call i32 @UpdateReg(%struct.tda_state* %340, i64 %341)
  store i32 %342, i32* %3, align 4
  %343 = load i32, i32* %3, align 4
  %344 = icmp slt i32 %343, 0
  br i1 %344, label %345, label %346

345:                                              ; preds = %338
  br label %367

346:                                              ; preds = %338
  %347 = call i32 @msleep(i32 30)
  %348 = load %struct.tda_state*, %struct.tda_state** %2, align 8
  %349 = getelementptr inbounds %struct.tda_state, %struct.tda_state* %348, i32 0, i32 0
  %350 = load i32*, i32** %349, align 8
  %351 = load i64, i64* @EP4, align 8
  %352 = getelementptr inbounds i32, i32* %350, i64 %351
  store i32 100, i32* %352, align 4
  %353 = load %struct.tda_state*, %struct.tda_state** %2, align 8
  %354 = load i64, i64* @EP4, align 8
  %355 = call i32 @UpdateReg(%struct.tda_state* %353, i64 %354)
  store i32 %355, i32* %3, align 4
  %356 = load i32, i32* %3, align 4
  %357 = icmp slt i32 %356, 0
  br i1 %357, label %358, label %359

358:                                              ; preds = %346
  br label %367

359:                                              ; preds = %346
  %360 = load %struct.tda_state*, %struct.tda_state** %2, align 8
  %361 = load i64, i64* @EP1, align 8
  %362 = call i32 @UpdateReg(%struct.tda_state* %360, i64 %361)
  store i32 %362, i32* %3, align 4
  %363 = load i32, i32* %3, align 4
  %364 = icmp slt i32 %363, 0
  br i1 %364, label %365, label %366

365:                                              ; preds = %359
  br label %367

366:                                              ; preds = %359
  br label %367

367:                                              ; preds = %366, %365, %358, %345, %337, %313, %305, %261, %253, %224, %216, %177, %169, %140, %132, %69, %57, %45, %33, %21
  %368 = load i32, i32* %3, align 4
  ret i32 %368
}

declare dso_local i32 @memcpy(i32*, i32*, i64) #1

declare dso_local i32 @UpdateRegs(%struct.tda_state*, i64, i64) #1

declare dso_local i32 @UpdateReg(%struct.tda_state*, i64) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
