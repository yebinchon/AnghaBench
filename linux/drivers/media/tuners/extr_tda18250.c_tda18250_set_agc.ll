; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/tuners/extr_tda18250.c_tda18250_set_agc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/tuners/extr_tda18250.c_tda18250_set_agc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.dtv_frontend_properties, %struct.i2c_client* }
%struct.dtv_frontend_properties = type { i32, i32, i32 }
%struct.i2c_client = type { i32 }
%struct.tda18250_dev = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@R1F_RF_BPF = common dso_local global i32 0, align 4
@SYS_DVBC_ANNEX_A = common dso_local global i32 0, align 4
@SYS_DVBC_ANNEX_C = common dso_local global i32 0, align 4
@R5A_H3H5 = common dso_local global i32 0, align 4
@R0C_AGC11 = common dso_local global i32 0, align 4
@R58_AGC2_UP1 = common dso_local global i32 0, align 4
@R13_AGC22 = common dso_local global i32 0, align 4
@R14_AGC23 = common dso_local global i32 0, align 4
@R16_AGC25 = common dso_local global i32 0, align 4
@R12_AGC21 = common dso_local global i32 0, align 4
@R17_AGC31 = common dso_local global i32 0, align 4
@R20_IR_MIX = common dso_local global i32 0, align 4
@R0F_AGC14 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"failed=%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*)* @tda18250_set_agc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tda18250_set_agc(%struct.dvb_frontend* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dvb_frontend*, align 8
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.tda18250_dev*, align 8
  %6 = alloca %struct.dtv_frontend_properties*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %3, align 8
  %10 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %11 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %10, i32 0, i32 1
  %12 = load %struct.i2c_client*, %struct.i2c_client** %11, align 8
  store %struct.i2c_client* %12, %struct.i2c_client** %4, align 8
  %13 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %14 = call %struct.tda18250_dev* @i2c_get_clientdata(%struct.i2c_client* %13)
  store %struct.tda18250_dev* %14, %struct.tda18250_dev** %5, align 8
  %15 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %16 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %15, i32 0, i32 0
  store %struct.dtv_frontend_properties* %16, %struct.dtv_frontend_properties** %6, align 8
  %17 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %18 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %17, i32 0, i32 0
  %19 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %18, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %20 = load %struct.tda18250_dev*, %struct.tda18250_dev** %5, align 8
  %21 = getelementptr inbounds %struct.tda18250_dev, %struct.tda18250_dev* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @R1F_RF_BPF, align 4
  %24 = call i32 @regmap_write_bits(i32 %22, i32 %23, i32 135, i32 6)
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %7, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %1
  br label %347

28:                                               ; preds = %1
  %29 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %6, align 8
  %30 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = icmp slt i32 %31, 100000000
  br i1 %32, label %33, label %50

33:                                               ; preds = %28
  %34 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %6, align 8
  %35 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @SYS_DVBC_ANNEX_A, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %45, label %39

39:                                               ; preds = %33
  %40 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %6, align 8
  %41 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @SYS_DVBC_ANNEX_C, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %50

45:                                               ; preds = %39, %33
  %46 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %6, align 8
  %47 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = icmp eq i32 %48, 6000000
  br label %50

50:                                               ; preds = %45, %39, %28
  %51 = phi i1 [ false, %39 ], [ false, %28 ], [ %49, %45 ]
  %52 = zext i1 %51 to i64
  %53 = select i1 %51, i32 128, i32 0
  store i32 %53, i32* %8, align 4
  %54 = load %struct.tda18250_dev*, %struct.tda18250_dev** %5, align 8
  %55 = getelementptr inbounds %struct.tda18250_dev, %struct.tda18250_dev* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @R5A_H3H5, align 4
  %58 = load i32, i32* %8, align 4
  %59 = call i32 @regmap_write(i32 %56, i32 %57, i32 %58)
  store i32 %59, i32* %7, align 4
  %60 = load i32, i32* %7, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %50
  br label %347

63:                                               ; preds = %50
  %64 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %6, align 8
  %65 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  switch i32 %66, label %68 [
    i32 130, label %67
    i32 129, label %67
    i32 128, label %67
  ]

67:                                               ; preds = %63, %63, %63
  store i32 4, i32* %8, align 4
  br label %87

68:                                               ; preds = %63
  %69 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %6, align 8
  %70 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  switch i32 %71, label %79 [
    i32 6000000, label %72
  ]

72:                                               ; preds = %68
  %73 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %6, align 8
  %74 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = icmp slt i32 %75, 800000000
  %77 = zext i1 %76 to i64
  %78 = select i1 %76, i32 6, i32 4
  store i32 %78, i32* %8, align 4
  br label %86

79:                                               ; preds = %68
  %80 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %6, align 8
  %81 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = icmp slt i32 %82, 100000000
  %84 = zext i1 %83 to i64
  %85 = select i1 %83, i32 2, i32 3
  store i32 %85, i32* %8, align 4
  br label %86

86:                                               ; preds = %79, %72
  br label %87

87:                                               ; preds = %86, %67
  %88 = load %struct.tda18250_dev*, %struct.tda18250_dev** %5, align 8
  %89 = getelementptr inbounds %struct.tda18250_dev, %struct.tda18250_dev* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* @R0C_AGC11, align 4
  %92 = load i32, i32* %8, align 4
  %93 = call i32 @regmap_write_bits(i32 %90, i32 %91, i32 7, i32 %92)
  store i32 %93, i32* %7, align 4
  %94 = load i32, i32* %7, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %87
  br label %347

97:                                               ; preds = %87
  %98 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %6, align 8
  %99 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  switch i32 %100, label %114 [
    i32 130, label %101
    i32 129, label %101
    i32 128, label %101
  ]

101:                                              ; preds = %97, %97, %97
  %102 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %6, align 8
  %103 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = icmp slt i32 %104, 320000000
  %106 = zext i1 %105 to i64
  %107 = select i1 %105, i32 20, i32 16
  store i32 %107, i32* %8, align 4
  %108 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %6, align 8
  %109 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = icmp slt i32 %110, 320000000
  %112 = zext i1 %111 to i64
  %113 = select i1 %111, i32 22, i32 18
  store i32 %113, i32* %9, align 4
  br label %147

114:                                              ; preds = %97
  %115 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %6, align 8
  %116 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 4
  switch i32 %117, label %133 [
    i32 6000000, label %118
  ]

118:                                              ; preds = %114
  %119 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %6, align 8
  %120 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = icmp slt i32 %121, 600000000
  br i1 %122, label %123, label %124

123:                                              ; preds = %118
  store i32 18, i32* %8, align 4
  store i32 22, i32* %9, align 4
  br label %132

124:                                              ; preds = %118
  %125 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %6, align 8
  %126 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = icmp slt i32 %127, 800000000
  br i1 %128, label %129, label %130

129:                                              ; preds = %124
  store i32 16, i32* %8, align 4
  store i32 20, i32* %9, align 4
  br label %131

130:                                              ; preds = %124
  store i32 14, i32* %8, align 4
  store i32 16, i32* %9, align 4
  br label %131

131:                                              ; preds = %130, %129
  br label %132

132:                                              ; preds = %131, %123
  br label %146

133:                                              ; preds = %114
  %134 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %6, align 8
  %135 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = icmp slt i32 %136, 320000000
  %138 = zext i1 %137 to i64
  %139 = select i1 %137, i32 16, i32 18
  store i32 %139, i32* %8, align 4
  %140 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %6, align 8
  %141 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = icmp slt i32 %142, 320000000
  %144 = zext i1 %143 to i64
  %145 = select i1 %143, i32 18, i32 20
  store i32 %145, i32* %9, align 4
  br label %146

146:                                              ; preds = %133, %132
  br label %147

147:                                              ; preds = %146, %101
  %148 = load %struct.tda18250_dev*, %struct.tda18250_dev** %5, align 8
  %149 = getelementptr inbounds %struct.tda18250_dev, %struct.tda18250_dev* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = load i32, i32* @R58_AGC2_UP1, align 4
  %152 = load i32, i32* %9, align 4
  %153 = add nsw i32 %152, 8
  %154 = call i32 @regmap_write_bits(i32 %150, i32 %151, i32 31, i32 %153)
  store i32 %154, i32* %7, align 4
  %155 = load i32, i32* %7, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %158

157:                                              ; preds = %147
  br label %347

158:                                              ; preds = %147
  %159 = load %struct.tda18250_dev*, %struct.tda18250_dev** %5, align 8
  %160 = getelementptr inbounds %struct.tda18250_dev, %struct.tda18250_dev* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  %162 = load i32, i32* @R13_AGC22, align 4
  %163 = load i32, i32* %8, align 4
  %164 = call i32 @regmap_write_bits(i32 %161, i32 %162, i32 31, i32 %163)
  store i32 %164, i32* %7, align 4
  %165 = load i32, i32* %7, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %168

167:                                              ; preds = %158
  br label %347

168:                                              ; preds = %158
  %169 = load %struct.tda18250_dev*, %struct.tda18250_dev** %5, align 8
  %170 = getelementptr inbounds %struct.tda18250_dev, %struct.tda18250_dev* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 4
  %172 = load i32, i32* @R14_AGC23, align 4
  %173 = load i32, i32* %9, align 4
  %174 = call i32 @regmap_write_bits(i32 %171, i32 %172, i32 31, i32 %173)
  store i32 %174, i32* %7, align 4
  %175 = load i32, i32* %7, align 4
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %178

177:                                              ; preds = %168
  br label %347

178:                                              ; preds = %168
  %179 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %6, align 8
  %180 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %179, i32 0, i32 1
  %181 = load i32, i32* %180, align 4
  switch i32 %181, label %183 [
    i32 130, label %182
    i32 129, label %182
    i32 128, label %182
  ]

182:                                              ; preds = %178, %178, %178
  store i32 98, i32* %8, align 4
  br label %184

183:                                              ; preds = %178
  store i32 90, i32* %8, align 4
  br label %184

184:                                              ; preds = %183, %182
  %185 = load %struct.tda18250_dev*, %struct.tda18250_dev** %5, align 8
  %186 = getelementptr inbounds %struct.tda18250_dev, %struct.tda18250_dev* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 4
  %188 = load i32, i32* @R16_AGC25, align 4
  %189 = load i32, i32* %8, align 4
  %190 = call i32 @regmap_write_bits(i32 %187, i32 %188, i32 248, i32 %189)
  store i32 %190, i32* %7, align 4
  %191 = load i32, i32* %7, align 4
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %194

193:                                              ; preds = %184
  br label %347

194:                                              ; preds = %184
  %195 = load %struct.tda18250_dev*, %struct.tda18250_dev** %5, align 8
  %196 = getelementptr inbounds %struct.tda18250_dev, %struct.tda18250_dev* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 4
  %198 = load i32, i32* @R12_AGC21, align 4
  %199 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %6, align 8
  %200 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 4
  %202 = icmp sgt i32 %201, 800000000
  %203 = zext i1 %202 to i64
  %204 = select i1 %202, i32 64, i32 32
  %205 = call i32 @regmap_write_bits(i32 %197, i32 %198, i32 96, i32 %204)
  store i32 %205, i32* %7, align 4
  %206 = load i32, i32* %7, align 4
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %208, label %209

208:                                              ; preds = %194
  br label %347

209:                                              ; preds = %194
  %210 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %6, align 8
  %211 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %210, i32 0, i32 1
  %212 = load i32, i32* %211, align 4
  switch i32 %212, label %226 [
    i32 130, label %213
    i32 129, label %213
    i32 128, label %213
  ]

213:                                              ; preds = %209, %209, %209
  %214 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %6, align 8
  %215 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 4
  %217 = icmp slt i32 %216, 320000000
  %218 = zext i1 %217 to i64
  %219 = select i1 %217, i32 5, i32 7
  store i32 %219, i32* %8, align 4
  %220 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %6, align 8
  %221 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %220, i32 0, i32 0
  %222 = load i32, i32* %221, align 4
  %223 = icmp slt i32 %222, 320000000
  %224 = zext i1 %223 to i64
  %225 = select i1 %223, i32 10, i32 12
  store i32 %225, i32* %9, align 4
  br label %227

226:                                              ; preds = %209
  store i32 7, i32* %8, align 4
  store i32 12, i32* %9, align 4
  br label %227

227:                                              ; preds = %226, %213
  %228 = load %struct.tda18250_dev*, %struct.tda18250_dev** %5, align 8
  %229 = getelementptr inbounds %struct.tda18250_dev, %struct.tda18250_dev* %228, i32 0, i32 0
  %230 = load i32, i32* %229, align 4
  %231 = load i32, i32* @R17_AGC31, align 4
  %232 = load i32, i32* %8, align 4
  %233 = shl i32 %232, 4
  %234 = load i32, i32* %9, align 4
  %235 = or i32 %233, %234
  %236 = call i32 @regmap_write(i32 %230, i32 %231, i32 %235)
  store i32 %236, i32* %7, align 4
  %237 = load i32, i32* %7, align 4
  %238 = icmp ne i32 %237, 0
  br i1 %238, label %239, label %240

239:                                              ; preds = %227
  br label %347

240:                                              ; preds = %227
  %241 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %6, align 8
  %242 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %241, i32 0, i32 1
  %243 = load i32, i32* %242, align 4
  switch i32 %243, label %258 [
    i32 130, label %244
    i32 129, label %244
    i32 128, label %244
  ]

244:                                              ; preds = %240, %240, %240
  %245 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %6, align 8
  %246 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %245, i32 0, i32 2
  %247 = load i32, i32* %246, align 4
  %248 = icmp eq i32 %247, 8000000
  br i1 %248, label %249, label %250

249:                                              ; preds = %244
  store i32 4, i32* %8, align 4
  br label %257

250:                                              ; preds = %244
  %251 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %6, align 8
  %252 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %251, i32 0, i32 0
  %253 = load i32, i32* %252, align 4
  %254 = icmp slt i32 %253, 320000000
  %255 = zext i1 %254 to i64
  %256 = select i1 %254, i32 4, i32 2
  store i32 %256, i32* %8, align 4
  br label %257

257:                                              ; preds = %250, %249
  br label %292

258:                                              ; preds = %240
  %259 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %6, align 8
  %260 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %259, i32 0, i32 2
  %261 = load i32, i32* %260, align 4
  %262 = icmp eq i32 %261, 6000000
  br i1 %262, label %263, label %277

263:                                              ; preds = %258
  %264 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %6, align 8
  %265 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %264, i32 0, i32 0
  %266 = load i32, i32* %265, align 4
  %267 = icmp sgt i32 %266, 172544000
  br i1 %267, label %268, label %273

268:                                              ; preds = %263
  %269 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %6, align 8
  %270 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %269, i32 0, i32 0
  %271 = load i32, i32* %270, align 4
  %272 = icmp slt i32 %271, 320000000
  br label %273

273:                                              ; preds = %268, %263
  %274 = phi i1 [ false, %263 ], [ %272, %268 ]
  %275 = zext i1 %274 to i64
  %276 = select i1 %274, i32 4, i32 2
  store i32 %276, i32* %8, align 4
  br label %291

277:                                              ; preds = %258
  %278 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %6, align 8
  %279 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %278, i32 0, i32 0
  %280 = load i32, i32* %279, align 4
  %281 = icmp sgt i32 %280, 320000000
  br i1 %281, label %282, label %287

282:                                              ; preds = %277
  %283 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %6, align 8
  %284 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %283, i32 0, i32 0
  %285 = load i32, i32* %284, align 4
  %286 = icmp slt i32 %285, 600000000
  br label %287

287:                                              ; preds = %282, %277
  %288 = phi i1 [ false, %277 ], [ %286, %282 ]
  %289 = zext i1 %288 to i64
  %290 = select i1 %288, i32 2, i32 4
  store i32 %290, i32* %8, align 4
  br label %291

291:                                              ; preds = %287, %273
  br label %292

292:                                              ; preds = %291, %257
  %293 = load %struct.tda18250_dev*, %struct.tda18250_dev** %5, align 8
  %294 = getelementptr inbounds %struct.tda18250_dev, %struct.tda18250_dev* %293, i32 0, i32 0
  %295 = load i32, i32* %294, align 4
  %296 = load i32, i32* @R20_IR_MIX, align 4
  %297 = load i32, i32* %8, align 4
  %298 = call i32 @regmap_write_bits(i32 %295, i32 %296, i32 6, i32 %297)
  store i32 %298, i32* %7, align 4
  %299 = load i32, i32* %7, align 4
  %300 = icmp ne i32 %299, 0
  br i1 %300, label %301, label %302

301:                                              ; preds = %292
  br label %347

302:                                              ; preds = %292
  %303 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %6, align 8
  %304 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %303, i32 0, i32 1
  %305 = load i32, i32* %304, align 4
  switch i32 %305, label %307 [
    i32 130, label %306
    i32 129, label %306
    i32 128, label %306
  ]

306:                                              ; preds = %302, %302, %302
  store i32 0, i32* %8, align 4
  br label %314

307:                                              ; preds = %302
  %308 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %6, align 8
  %309 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %308, i32 0, i32 0
  %310 = load i32, i32* %309, align 4
  %311 = icmp slt i32 %310, 600000000
  %312 = zext i1 %311 to i64
  %313 = select i1 %311, i32 0, i32 3
  store i32 %313, i32* %8, align 4
  br label %314

314:                                              ; preds = %307, %306
  %315 = load %struct.tda18250_dev*, %struct.tda18250_dev** %5, align 8
  %316 = getelementptr inbounds %struct.tda18250_dev, %struct.tda18250_dev* %315, i32 0, i32 0
  %317 = load i32, i32* %316, align 4
  %318 = load i32, i32* @R16_AGC25, align 4
  %319 = load i32, i32* %8, align 4
  %320 = call i32 @regmap_write_bits(i32 %317, i32 %318, i32 3, i32 %319)
  store i32 %320, i32* %7, align 4
  %321 = load i32, i32* %7, align 4
  %322 = icmp ne i32 %321, 0
  br i1 %322, label %323, label %324

323:                                              ; preds = %314
  br label %347

324:                                              ; preds = %314
  store i32 9, i32* %8, align 4
  %325 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %6, align 8
  %326 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %325, i32 0, i32 1
  %327 = load i32, i32* %326, align 4
  switch i32 %327, label %335 [
    i32 130, label %328
    i32 129, label %328
    i32 128, label %328
  ]

328:                                              ; preds = %324, %324, %324
  %329 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %6, align 8
  %330 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %329, i32 0, i32 2
  %331 = load i32, i32* %330, align 4
  %332 = icmp eq i32 %331, 8000000
  br i1 %332, label %333, label %334

333:                                              ; preds = %328
  store i32 12, i32* %8, align 4
  br label %334

334:                                              ; preds = %333, %328
  br label %336

335:                                              ; preds = %324
  store i32 12, i32* %8, align 4
  br label %336

336:                                              ; preds = %335, %334
  %337 = load %struct.tda18250_dev*, %struct.tda18250_dev** %5, align 8
  %338 = getelementptr inbounds %struct.tda18250_dev, %struct.tda18250_dev* %337, i32 0, i32 0
  %339 = load i32, i32* %338, align 4
  %340 = load i32, i32* @R0F_AGC14, align 4
  %341 = load i32, i32* %8, align 4
  %342 = call i32 @regmap_write_bits(i32 %339, i32 %340, i32 63, i32 %341)
  store i32 %342, i32* %7, align 4
  %343 = load i32, i32* %7, align 4
  %344 = icmp ne i32 %343, 0
  br i1 %344, label %345, label %346

345:                                              ; preds = %336
  br label %347

346:                                              ; preds = %336
  store i32 0, i32* %2, align 4
  br label %353

347:                                              ; preds = %345, %323, %301, %239, %208, %193, %177, %167, %157, %96, %62, %27
  %348 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %349 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %348, i32 0, i32 0
  %350 = load i32, i32* %7, align 4
  %351 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %349, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %350)
  %352 = load i32, i32* %7, align 4
  store i32 %352, i32* %2, align 4
  br label %353

353:                                              ; preds = %347, %346
  %354 = load i32, i32* %2, align 4
  ret i32 %354
}

declare dso_local %struct.tda18250_dev* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, ...) #1

declare dso_local i32 @regmap_write_bits(i32, i32, i32, i32) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
