; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_pcf50633-irq.c_pcf50633_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_pcf50633-irq.c_pcf50633_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcf50633 = type { i32, i32*, i32*, %struct.TYPE_2__*, i64, i32 }
%struct.TYPE_2__ = type { i32*, i32 (%struct.pcf50633*)* }

@PCF50633_REG_INT1 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Error reading INT registers\0A\00", align 1
@PCF50633_REG_OOCSHDWN = common dso_local global i32 0, align 4
@PCF50633_INT1_USBINS = common dso_local global i32 0, align 4
@PCF50633_INT1_USBREM = common dso_local global i32 0, align 4
@PCF50633_REG_MBCS2 = common dso_local global i32 0, align 4
@PCF50633_INT1_ADPINS = common dso_local global i32 0, align 4
@PCF50633_INT1_ADPREM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [61 x i8] c"INT1=0x%02x INT2=0x%02x INT3=0x%02x INT4=0x%02x INT5=0x%02x\0A\00", align 1
@PCF50633_INT1_SECOND = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"ONKEY1S held for %d secs\0A\00", align 1
@PCF50633_ONKEY1S_TIMEOUT = common dso_local global i64 0, align 8
@PCF50633_INT3_ONKEY1S = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [14 x i8] c"ONKEY1S held\0A\00", align 1
@PCF50633_REG_INT1M = common dso_local global i32 0, align 4
@PCF50633_REG_INT2M = common dso_local global i32 0, align 4
@PCF50633_INT2_ONKEYR = common dso_local global i32 0, align 4
@PCF50633_INT2_ONKEYF = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @pcf50633_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcf50633_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.pcf50633*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [5 x i32], align 16
  %10 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = bitcast i8* %11 to %struct.pcf50633*
  store %struct.pcf50633* %12, %struct.pcf50633** %5, align 8
  %13 = load %struct.pcf50633*, %struct.pcf50633** %5, align 8
  %14 = load i32, i32* @PCF50633_REG_INT1, align 4
  %15 = getelementptr inbounds [5 x i32], [5 x i32]* %9, i64 0, i64 0
  %16 = call i32 @ARRAY_SIZE(i32* %15)
  %17 = getelementptr inbounds [5 x i32], [5 x i32]* %9, i64 0, i64 0
  %18 = call i32 @pcf50633_read_block(%struct.pcf50633* %13, i32 %14, i32 %16, i32* %17)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = getelementptr inbounds [5 x i32], [5 x i32]* %9, i64 0, i64 0
  %21 = call i32 @ARRAY_SIZE(i32* %20)
  %22 = icmp ne i32 %19, %21
  br i1 %22, label %23, label %28

23:                                               ; preds = %2
  %24 = load %struct.pcf50633*, %struct.pcf50633** %5, align 8
  %25 = getelementptr inbounds %struct.pcf50633, %struct.pcf50633* %24, i32 0, i32 5
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @dev_err(i32 %26, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %302

28:                                               ; preds = %2
  %29 = load %struct.pcf50633*, %struct.pcf50633** %5, align 8
  %30 = load i32, i32* @PCF50633_REG_OOCSHDWN, align 4
  %31 = call i32 @pcf50633_reg_write(%struct.pcf50633* %29, i32 %30, i32 4)
  %32 = getelementptr inbounds [5 x i32], [5 x i32]* %9, i64 0, i64 0
  %33 = load i32, i32* %32, align 16
  %34 = load i32, i32* @PCF50633_INT1_USBINS, align 4
  %35 = load i32, i32* @PCF50633_INT1_USBREM, align 4
  %36 = or i32 %34, %35
  %37 = and i32 %33, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %59

39:                                               ; preds = %28
  %40 = load %struct.pcf50633*, %struct.pcf50633** %5, align 8
  %41 = load i32, i32* @PCF50633_REG_MBCS2, align 4
  %42 = call i32 @pcf50633_reg_read(%struct.pcf50633* %40, i32 %41)
  store i32 %42, i32* %10, align 4
  %43 = load i32, i32* %10, align 4
  %44 = and i32 %43, 48
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %39
  %47 = load i32, i32* @PCF50633_INT1_USBREM, align 4
  %48 = xor i32 %47, -1
  %49 = getelementptr inbounds [5 x i32], [5 x i32]* %9, i64 0, i64 0
  %50 = load i32, i32* %49, align 16
  %51 = and i32 %50, %48
  store i32 %51, i32* %49, align 16
  br label %58

52:                                               ; preds = %39
  %53 = load i32, i32* @PCF50633_INT1_USBINS, align 4
  %54 = xor i32 %53, -1
  %55 = getelementptr inbounds [5 x i32], [5 x i32]* %9, i64 0, i64 0
  %56 = load i32, i32* %55, align 16
  %57 = and i32 %56, %54
  store i32 %57, i32* %55, align 16
  br label %58

58:                                               ; preds = %52, %46
  br label %59

59:                                               ; preds = %58, %28
  %60 = getelementptr inbounds [5 x i32], [5 x i32]* %9, i64 0, i64 0
  %61 = load i32, i32* %60, align 16
  %62 = load i32, i32* @PCF50633_INT1_ADPINS, align 4
  %63 = load i32, i32* @PCF50633_INT1_ADPREM, align 4
  %64 = or i32 %62, %63
  %65 = and i32 %61, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %87

67:                                               ; preds = %59
  %68 = load %struct.pcf50633*, %struct.pcf50633** %5, align 8
  %69 = load i32, i32* @PCF50633_REG_MBCS2, align 4
  %70 = call i32 @pcf50633_reg_read(%struct.pcf50633* %68, i32 %69)
  store i32 %70, i32* %10, align 4
  %71 = load i32, i32* %10, align 4
  %72 = and i32 %71, 48
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %80

74:                                               ; preds = %67
  %75 = load i32, i32* @PCF50633_INT1_ADPREM, align 4
  %76 = xor i32 %75, -1
  %77 = getelementptr inbounds [5 x i32], [5 x i32]* %9, i64 0, i64 0
  %78 = load i32, i32* %77, align 16
  %79 = and i32 %78, %76
  store i32 %79, i32* %77, align 16
  br label %86

80:                                               ; preds = %67
  %81 = load i32, i32* @PCF50633_INT1_ADPINS, align 4
  %82 = xor i32 %81, -1
  %83 = getelementptr inbounds [5 x i32], [5 x i32]* %9, i64 0, i64 0
  %84 = load i32, i32* %83, align 16
  %85 = and i32 %84, %82
  store i32 %85, i32* %83, align 16
  br label %86

86:                                               ; preds = %80, %74
  br label %87

87:                                               ; preds = %86, %59
  %88 = load %struct.pcf50633*, %struct.pcf50633** %5, align 8
  %89 = getelementptr inbounds %struct.pcf50633, %struct.pcf50633* %88, i32 0, i32 5
  %90 = load i32, i32* %89, align 8
  %91 = getelementptr inbounds [5 x i32], [5 x i32]* %9, i64 0, i64 0
  %92 = load i32, i32* %91, align 16
  %93 = getelementptr inbounds [5 x i32], [5 x i32]* %9, i64 0, i64 1
  %94 = load i32, i32* %93, align 4
  %95 = getelementptr inbounds [5 x i32], [5 x i32]* %9, i64 0, i64 2
  %96 = load i32, i32* %95, align 8
  %97 = getelementptr inbounds [5 x i32], [5 x i32]* %9, i64 0, i64 3
  %98 = load i32, i32* %97, align 4
  %99 = getelementptr inbounds [5 x i32], [5 x i32]* %9, i64 0, i64 4
  %100 = load i32, i32* %99, align 16
  %101 = call i32 @dev_dbg(i32 %90, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i64 0, i64 0), i32 %92, i32 %94, i32 %96, i32 %98, i32 %100)
  %102 = getelementptr inbounds [5 x i32], [5 x i32]* %9, i64 0, i64 0
  %103 = load i32, i32* %102, align 16
  %104 = load i32, i32* @PCF50633_INT1_SECOND, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %144

107:                                              ; preds = %87
  %108 = load %struct.pcf50633*, %struct.pcf50633** %5, align 8
  %109 = getelementptr inbounds %struct.pcf50633, %struct.pcf50633* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %144

112:                                              ; preds = %107
  %113 = load %struct.pcf50633*, %struct.pcf50633** %5, align 8
  %114 = getelementptr inbounds %struct.pcf50633, %struct.pcf50633* %113, i32 0, i32 5
  %115 = load i32, i32* %114, align 8
  %116 = load %struct.pcf50633*, %struct.pcf50633** %5, align 8
  %117 = getelementptr inbounds %struct.pcf50633, %struct.pcf50633* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = call i32 (i32, i8*, ...) @dev_info(i32 %115, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %118)
  %120 = load %struct.pcf50633*, %struct.pcf50633** %5, align 8
  %121 = getelementptr inbounds %struct.pcf50633, %struct.pcf50633* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %121, align 8
  %124 = sext i32 %122 to i64
  %125 = load i64, i64* @PCF50633_ONKEY1S_TIMEOUT, align 8
  %126 = icmp eq i64 %124, %125
  br i1 %126, label %127, label %143

127:                                              ; preds = %112
  %128 = load %struct.pcf50633*, %struct.pcf50633** %5, align 8
  %129 = getelementptr inbounds %struct.pcf50633, %struct.pcf50633* %128, i32 0, i32 3
  %130 = load %struct.TYPE_2__*, %struct.TYPE_2__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %130, i32 0, i32 1
  %132 = load i32 (%struct.pcf50633*)*, i32 (%struct.pcf50633*)** %131, align 8
  %133 = icmp ne i32 (%struct.pcf50633*)* %132, null
  br i1 %133, label %134, label %142

134:                                              ; preds = %127
  %135 = load %struct.pcf50633*, %struct.pcf50633** %5, align 8
  %136 = getelementptr inbounds %struct.pcf50633, %struct.pcf50633* %135, i32 0, i32 3
  %137 = load %struct.TYPE_2__*, %struct.TYPE_2__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %137, i32 0, i32 1
  %139 = load i32 (%struct.pcf50633*)*, i32 (%struct.pcf50633*)** %138, align 8
  %140 = load %struct.pcf50633*, %struct.pcf50633** %5, align 8
  %141 = call i32 %139(%struct.pcf50633* %140)
  br label %142

142:                                              ; preds = %134, %127
  br label %143

143:                                              ; preds = %142, %112
  br label %144

144:                                              ; preds = %143, %107, %87
  %145 = getelementptr inbounds [5 x i32], [5 x i32]* %9, i64 0, i64 2
  %146 = load i32, i32* %145, align 8
  %147 = load i32, i32* @PCF50633_INT3_ONKEY1S, align 4
  %148 = and i32 %146, %147
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %165

150:                                              ; preds = %144
  %151 = load %struct.pcf50633*, %struct.pcf50633** %5, align 8
  %152 = getelementptr inbounds %struct.pcf50633, %struct.pcf50633* %151, i32 0, i32 5
  %153 = load i32, i32* %152, align 8
  %154 = call i32 (i32, i8*, ...) @dev_info(i32 %153, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  %155 = load %struct.pcf50633*, %struct.pcf50633** %5, align 8
  %156 = getelementptr inbounds %struct.pcf50633, %struct.pcf50633* %155, i32 0, i32 0
  store i32 1, i32* %156, align 8
  %157 = load %struct.pcf50633*, %struct.pcf50633** %5, align 8
  %158 = load i32, i32* @PCF50633_REG_INT1M, align 4
  %159 = load i32, i32* @PCF50633_INT1_SECOND, align 4
  %160 = call i32 @pcf50633_reg_clear_bits(%struct.pcf50633* %157, i32 %158, i32 %159)
  %161 = load %struct.pcf50633*, %struct.pcf50633** %5, align 8
  %162 = load i32, i32* @PCF50633_REG_INT2M, align 4
  %163 = load i32, i32* @PCF50633_INT2_ONKEYR, align 4
  %164 = call i32 @pcf50633_reg_clear_bits(%struct.pcf50633* %161, i32 %162, i32 %163)
  br label %165

165:                                              ; preds = %150, %144
  %166 = getelementptr inbounds [5 x i32], [5 x i32]* %9, i64 0, i64 1
  %167 = load i32, i32* %166, align 4
  %168 = load i32, i32* @PCF50633_INT2_ONKEYR, align 4
  %169 = and i32 %167, %168
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %209

171:                                              ; preds = %165
  %172 = load %struct.pcf50633*, %struct.pcf50633** %5, align 8
  %173 = getelementptr inbounds %struct.pcf50633, %struct.pcf50633* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 8
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %209

176:                                              ; preds = %171
  %177 = load %struct.pcf50633*, %struct.pcf50633** %5, align 8
  %178 = getelementptr inbounds %struct.pcf50633, %struct.pcf50633* %177, i32 0, i32 0
  store i32 0, i32* %178, align 8
  %179 = load %struct.pcf50633*, %struct.pcf50633** %5, align 8
  %180 = getelementptr inbounds %struct.pcf50633, %struct.pcf50633* %179, i32 0, i32 1
  %181 = load i32*, i32** %180, align 8
  %182 = getelementptr inbounds i32, i32* %181, i64 0
  %183 = load i32, i32* %182, align 4
  %184 = load i32, i32* @PCF50633_INT1_SECOND, align 4
  %185 = and i32 %183, %184
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %193

187:                                              ; preds = %176
  %188 = load %struct.pcf50633*, %struct.pcf50633** %5, align 8
  %189 = load i32, i32* @PCF50633_REG_INT1M, align 4
  %190 = load i32, i32* @PCF50633_INT1_SECOND, align 4
  %191 = load i32, i32* @PCF50633_INT1_SECOND, align 4
  %192 = call i32 @pcf50633_reg_set_bit_mask(%struct.pcf50633* %188, i32 %189, i32 %190, i32 %191)
  br label %193

193:                                              ; preds = %187, %176
  %194 = load %struct.pcf50633*, %struct.pcf50633** %5, align 8
  %195 = getelementptr inbounds %struct.pcf50633, %struct.pcf50633* %194, i32 0, i32 1
  %196 = load i32*, i32** %195, align 8
  %197 = getelementptr inbounds i32, i32* %196, i64 1
  %198 = load i32, i32* %197, align 4
  %199 = load i32, i32* @PCF50633_INT2_ONKEYR, align 4
  %200 = and i32 %198, %199
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %208

202:                                              ; preds = %193
  %203 = load %struct.pcf50633*, %struct.pcf50633** %5, align 8
  %204 = load i32, i32* @PCF50633_REG_INT2M, align 4
  %205 = load i32, i32* @PCF50633_INT2_ONKEYR, align 4
  %206 = load i32, i32* @PCF50633_INT2_ONKEYR, align 4
  %207 = call i32 @pcf50633_reg_set_bit_mask(%struct.pcf50633* %203, i32 %204, i32 %205, i32 %206)
  br label %208

208:                                              ; preds = %202, %193
  br label %209

209:                                              ; preds = %208, %171, %165
  %210 = load %struct.pcf50633*, %struct.pcf50633** %5, align 8
  %211 = getelementptr inbounds %struct.pcf50633, %struct.pcf50633* %210, i32 0, i32 4
  %212 = load i64, i64* %211, align 8
  %213 = icmp ne i64 %212, 0
  br i1 %213, label %214, label %254

214:                                              ; preds = %209
  %215 = load %struct.pcf50633*, %struct.pcf50633** %5, align 8
  %216 = getelementptr inbounds %struct.pcf50633, %struct.pcf50633* %215, i32 0, i32 4
  store i64 0, i64* %216, align 8
  store i32 0, i32* %7, align 4
  br label %217

217:                                              ; preds = %243, %214
  %218 = load i32, i32* %7, align 4
  %219 = getelementptr inbounds [5 x i32], [5 x i32]* %9, i64 0, i64 0
  %220 = call i32 @ARRAY_SIZE(i32* %219)
  %221 = icmp slt i32 %218, %220
  br i1 %221, label %222, label %246

222:                                              ; preds = %217
  %223 = load i32, i32* %7, align 4
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds [5 x i32], [5 x i32]* %9, i64 0, i64 %224
  %226 = load i32, i32* %225, align 4
  %227 = load %struct.pcf50633*, %struct.pcf50633** %5, align 8
  %228 = getelementptr inbounds %struct.pcf50633, %struct.pcf50633* %227, i32 0, i32 3
  %229 = load %struct.TYPE_2__*, %struct.TYPE_2__** %228, align 8
  %230 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %229, i32 0, i32 0
  %231 = load i32*, i32** %230, align 8
  %232 = load i32, i32* %7, align 4
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds i32, i32* %231, i64 %233
  %235 = load i32, i32* %234, align 4
  %236 = and i32 %226, %235
  %237 = load %struct.pcf50633*, %struct.pcf50633** %5, align 8
  %238 = getelementptr inbounds %struct.pcf50633, %struct.pcf50633* %237, i32 0, i32 2
  %239 = load i32*, i32** %238, align 8
  %240 = load i32, i32* %7, align 4
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds i32, i32* %239, i64 %241
  store i32 %236, i32* %242, align 4
  br label %243

243:                                              ; preds = %222
  %244 = load i32, i32* %7, align 4
  %245 = add nsw i32 %244, 1
  store i32 %245, i32* %7, align 4
  br label %217

246:                                              ; preds = %217
  %247 = load i32, i32* @PCF50633_INT2_ONKEYR, align 4
  %248 = load i32, i32* @PCF50633_INT2_ONKEYF, align 4
  %249 = or i32 %247, %248
  %250 = xor i32 %249, -1
  %251 = getelementptr inbounds [5 x i32], [5 x i32]* %9, i64 0, i64 1
  %252 = load i32, i32* %251, align 4
  %253 = and i32 %252, %250
  store i32 %253, i32* %251, align 4
  br label %254

254:                                              ; preds = %246, %209
  store i32 0, i32* %7, align 4
  br label %255

255:                                              ; preds = %298, %254
  %256 = load i32, i32* %7, align 4
  %257 = getelementptr inbounds [5 x i32], [5 x i32]* %9, i64 0, i64 0
  %258 = call i32 @ARRAY_SIZE(i32* %257)
  %259 = icmp slt i32 %256, %258
  br i1 %259, label %260, label %301

260:                                              ; preds = %255
  %261 = load %struct.pcf50633*, %struct.pcf50633** %5, align 8
  %262 = getelementptr inbounds %struct.pcf50633, %struct.pcf50633* %261, i32 0, i32 1
  %263 = load i32*, i32** %262, align 8
  %264 = load i32, i32* %7, align 4
  %265 = sext i32 %264 to i64
  %266 = getelementptr inbounds i32, i32* %263, i64 %265
  %267 = load i32, i32* %266, align 4
  %268 = xor i32 %267, -1
  %269 = load i32, i32* %7, align 4
  %270 = sext i32 %269 to i64
  %271 = getelementptr inbounds [5 x i32], [5 x i32]* %9, i64 0, i64 %270
  %272 = load i32, i32* %271, align 4
  %273 = and i32 %272, %268
  store i32 %273, i32* %271, align 4
  store i32 0, i32* %8, align 4
  br label %274

274:                                              ; preds = %294, %260
  %275 = load i32, i32* %8, align 4
  %276 = icmp slt i32 %275, 8
  br i1 %276, label %277, label %297

277:                                              ; preds = %274
  %278 = load i32, i32* %7, align 4
  %279 = sext i32 %278 to i64
  %280 = getelementptr inbounds [5 x i32], [5 x i32]* %9, i64 0, i64 %279
  %281 = load i32, i32* %280, align 4
  %282 = load i32, i32* %8, align 4
  %283 = shl i32 1, %282
  %284 = and i32 %281, %283
  %285 = icmp ne i32 %284, 0
  br i1 %285, label %286, label %293

286:                                              ; preds = %277
  %287 = load %struct.pcf50633*, %struct.pcf50633** %5, align 8
  %288 = load i32, i32* %7, align 4
  %289 = mul nsw i32 %288, 8
  %290 = load i32, i32* %8, align 4
  %291 = add nsw i32 %289, %290
  %292 = call i32 @pcf50633_irq_call_handler(%struct.pcf50633* %287, i32 %291)
  br label %293

293:                                              ; preds = %286, %277
  br label %294

294:                                              ; preds = %293
  %295 = load i32, i32* %8, align 4
  %296 = add nsw i32 %295, 1
  store i32 %296, i32* %8, align 4
  br label %274

297:                                              ; preds = %274
  br label %298

298:                                              ; preds = %297
  %299 = load i32, i32* %7, align 4
  %300 = add nsw i32 %299, 1
  store i32 %300, i32* %7, align 4
  br label %255

301:                                              ; preds = %255
  br label %302

302:                                              ; preds = %301, %23
  %303 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %303
}

declare dso_local i32 @pcf50633_read_block(%struct.pcf50633*, i32, i32, i32*) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @pcf50633_reg_write(%struct.pcf50633*, i32, i32) #1

declare dso_local i32 @pcf50633_reg_read(%struct.pcf50633*, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @dev_info(i32, i8*, ...) #1

declare dso_local i32 @pcf50633_reg_clear_bits(%struct.pcf50633*, i32, i32) #1

declare dso_local i32 @pcf50633_reg_set_bit_mask(%struct.pcf50633*, i32, i32, i32) #1

declare dso_local i32 @pcf50633_irq_call_handler(%struct.pcf50633*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
