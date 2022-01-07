; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/rc/extr_ir-rcmm-decoder.c_ir_rcmm_decode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/rc/extr_ir-rcmm-decoder.c_ir_rcmm_decode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rc_dev = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.rcmm_dec }
%struct.rcmm_dec = type { i32, i32, i32 }
%struct.ir_raw_event = type { i32, i32, i64 }

@RC_PROTO_BIT_RCMM32 = common dso_local global i32 0, align 4
@RC_PROTO_BIT_RCMM24 = common dso_local global i32 0, align 4
@RC_PROTO_BIT_RCMM12 = common dso_local global i32 0, align 4
@RCMM_PREFIX_PULSE = common dso_local global i32 0, align 4
@RCMM_UNIT = common dso_local global i32 0, align 4
@RCMM_PULSE_0 = common dso_local global i32 0, align 4
@RCMM_PULSE_1 = common dso_local global i32 0, align 4
@RCMM_PULSE_2 = common dso_local global i32 0, align 4
@RCMM_PULSE_3 = common dso_local global i32 0, align 4
@RC_PROTO_RCMM32 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rc_dev*, i64, i64)* @ir_rcmm_decode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ir_rcmm_decode(%struct.rc_dev* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ir_raw_event, align 8
  %6 = alloca %struct.rc_dev*, align 8
  %7 = alloca %struct.rcmm_dec*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = bitcast %struct.ir_raw_event* %5 to { i64, i64 }*
  %12 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %11, i32 0, i32 0
  store i64 %1, i64* %12, align 8
  %13 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %11, i32 0, i32 1
  store i64 %2, i64* %13, align 8
  store %struct.rc_dev* %0, %struct.rc_dev** %6, align 8
  %14 = load %struct.rc_dev*, %struct.rc_dev** %6, align 8
  %15 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %14, i32 0, i32 1
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  store %struct.rcmm_dec* %17, %struct.rcmm_dec** %7, align 8
  %18 = load %struct.rc_dev*, %struct.rc_dev** %6, align 8
  %19 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @RC_PROTO_BIT_RCMM32, align 4
  %22 = load i32, i32* @RC_PROTO_BIT_RCMM24, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* @RC_PROTO_BIT_RCMM12, align 4
  %25 = or i32 %23, %24
  %26 = and i32 %20, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %240

29:                                               ; preds = %3
  %30 = bitcast %struct.ir_raw_event* %5 to { i64, i64 }*
  %31 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %30, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = call i32 @is_timing_event(i64 %32, i64 %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %45, label %37

37:                                               ; preds = %29
  %38 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %5, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %37
  %42 = load %struct.rcmm_dec*, %struct.rcmm_dec** %7, align 8
  %43 = getelementptr inbounds %struct.rcmm_dec, %struct.rcmm_dec* %42, i32 0, i32 0
  store i32 130, i32* %43, align 4
  br label %44

44:                                               ; preds = %41, %37
  store i32 0, i32* %4, align 4
  br label %240

45:                                               ; preds = %29
  %46 = load %struct.rcmm_dec*, %struct.rcmm_dec** %7, align 8
  %47 = getelementptr inbounds %struct.rcmm_dec, %struct.rcmm_dec* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  switch i32 %48, label %235 [
    i32 130, label %49
    i32 129, label %70
    i32 132, label %87
    i32 128, label %104
    i32 131, label %184
  ]

49:                                               ; preds = %45
  %50 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %5, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %49
  br label %235

54:                                               ; preds = %49
  %55 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %5, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @RCMM_PREFIX_PULSE, align 4
  %58 = load i32, i32* @RCMM_UNIT, align 4
  %59 = sdiv i32 %58, 2
  %60 = call i32 @eq_margin(i32 %56, i32 %57, i32 %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %63, label %62

62:                                               ; preds = %54
  br label %235

63:                                               ; preds = %54
  %64 = load %struct.rcmm_dec*, %struct.rcmm_dec** %7, align 8
  %65 = getelementptr inbounds %struct.rcmm_dec, %struct.rcmm_dec* %64, i32 0, i32 0
  store i32 129, i32* %65, align 4
  %66 = load %struct.rcmm_dec*, %struct.rcmm_dec** %7, align 8
  %67 = getelementptr inbounds %struct.rcmm_dec, %struct.rcmm_dec* %66, i32 0, i32 1
  store i32 0, i32* %67, align 4
  %68 = load %struct.rcmm_dec*, %struct.rcmm_dec** %7, align 8
  %69 = getelementptr inbounds %struct.rcmm_dec, %struct.rcmm_dec* %68, i32 0, i32 2
  store i32 0, i32* %69, align 4
  store i32 0, i32* %4, align 4
  br label %240

70:                                               ; preds = %45
  %71 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %5, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %70
  br label %235

75:                                               ; preds = %70
  %76 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %5, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* @RCMM_PULSE_0, align 4
  %79 = load i32, i32* @RCMM_UNIT, align 4
  %80 = sdiv i32 %79, 2
  %81 = call i32 @eq_margin(i32 %77, i32 %78, i32 %80)
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %84, label %83

83:                                               ; preds = %75
  br label %235

84:                                               ; preds = %75
  %85 = load %struct.rcmm_dec*, %struct.rcmm_dec** %7, align 8
  %86 = getelementptr inbounds %struct.rcmm_dec, %struct.rcmm_dec* %85, i32 0, i32 0
  store i32 132, i32* %86, align 4
  store i32 0, i32* %4, align 4
  br label %240

87:                                               ; preds = %45
  %88 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %5, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %92, label %91

91:                                               ; preds = %87
  br label %235

92:                                               ; preds = %87
  %93 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %5, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* @RCMM_UNIT, align 4
  %96 = load i32, i32* @RCMM_UNIT, align 4
  %97 = sdiv i32 %96, 2
  %98 = call i32 @eq_margin(i32 %94, i32 %95, i32 %97)
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %101, label %100

100:                                              ; preds = %92
  br label %235

101:                                              ; preds = %92
  %102 = load %struct.rcmm_dec*, %struct.rcmm_dec** %7, align 8
  %103 = getelementptr inbounds %struct.rcmm_dec, %struct.rcmm_dec* %102, i32 0, i32 0
  store i32 128, i32* %103, align 4
  store i32 0, i32* %4, align 4
  br label %240

104:                                              ; preds = %45
  %105 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %5, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %104
  br label %235

109:                                              ; preds = %104
  %110 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %5, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = load i32, i32* @RCMM_PULSE_0, align 4
  %113 = load i32, i32* @RCMM_UNIT, align 4
  %114 = sdiv i32 %113, 2
  %115 = call i32 @eq_margin(i32 %111, i32 %112, i32 %114)
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %118

117:                                              ; preds = %109
  store i32 0, i32* %10, align 4
  br label %149

118:                                              ; preds = %109
  %119 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %5, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = load i32, i32* @RCMM_PULSE_1, align 4
  %122 = load i32, i32* @RCMM_UNIT, align 4
  %123 = sdiv i32 %122, 2
  %124 = call i32 @eq_margin(i32 %120, i32 %121, i32 %123)
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %127

126:                                              ; preds = %118
  store i32 1, i32* %10, align 4
  br label %148

127:                                              ; preds = %118
  %128 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %5, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = load i32, i32* @RCMM_PULSE_2, align 4
  %131 = load i32, i32* @RCMM_UNIT, align 4
  %132 = sdiv i32 %131, 2
  %133 = call i32 @eq_margin(i32 %129, i32 %130, i32 %132)
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %136

135:                                              ; preds = %127
  store i32 2, i32* %10, align 4
  br label %147

136:                                              ; preds = %127
  %137 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %5, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = load i32, i32* @RCMM_PULSE_3, align 4
  %140 = load i32, i32* @RCMM_UNIT, align 4
  %141 = sdiv i32 %140, 2
  %142 = call i32 @eq_margin(i32 %138, i32 %139, i32 %141)
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %145

144:                                              ; preds = %136
  store i32 3, i32* %10, align 4
  br label %146

145:                                              ; preds = %136
  store i32 -1, i32* %10, align 4
  br label %146

146:                                              ; preds = %145, %144
  br label %147

147:                                              ; preds = %146, %135
  br label %148

148:                                              ; preds = %147, %126
  br label %149

149:                                              ; preds = %148, %117
  %150 = load i32, i32* %10, align 4
  %151 = icmp eq i32 %150, -1
  br i1 %151, label %152, label %159

152:                                              ; preds = %149
  %153 = load %struct.rc_dev*, %struct.rc_dev** %6, align 8
  %154 = load %struct.rcmm_dec*, %struct.rcmm_dec** %7, align 8
  %155 = call i32 @rcmm_miscmode(%struct.rc_dev* %153, %struct.rcmm_dec* %154)
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %158, label %157

157:                                              ; preds = %152
  store i32 0, i32* %4, align 4
  br label %240

158:                                              ; preds = %152
  br label %235

159:                                              ; preds = %149
  %160 = load %struct.rcmm_dec*, %struct.rcmm_dec** %7, align 8
  %161 = getelementptr inbounds %struct.rcmm_dec, %struct.rcmm_dec* %160, i32 0, i32 2
  %162 = load i32, i32* %161, align 4
  %163 = shl i32 %162, 2
  store i32 %163, i32* %161, align 4
  %164 = load i32, i32* %10, align 4
  %165 = load %struct.rcmm_dec*, %struct.rcmm_dec** %7, align 8
  %166 = getelementptr inbounds %struct.rcmm_dec, %struct.rcmm_dec* %165, i32 0, i32 2
  %167 = load i32, i32* %166, align 4
  %168 = or i32 %167, %164
  store i32 %168, i32* %166, align 4
  %169 = load %struct.rcmm_dec*, %struct.rcmm_dec** %7, align 8
  %170 = getelementptr inbounds %struct.rcmm_dec, %struct.rcmm_dec* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 4
  %172 = add nsw i32 %171, 2
  store i32 %172, i32* %170, align 4
  %173 = load %struct.rcmm_dec*, %struct.rcmm_dec** %7, align 8
  %174 = getelementptr inbounds %struct.rcmm_dec, %struct.rcmm_dec* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 4
  %176 = icmp slt i32 %175, 32
  br i1 %176, label %177, label %180

177:                                              ; preds = %159
  %178 = load %struct.rcmm_dec*, %struct.rcmm_dec** %7, align 8
  %179 = getelementptr inbounds %struct.rcmm_dec, %struct.rcmm_dec* %178, i32 0, i32 0
  store i32 132, i32* %179, align 4
  br label %183

180:                                              ; preds = %159
  %181 = load %struct.rcmm_dec*, %struct.rcmm_dec** %7, align 8
  %182 = getelementptr inbounds %struct.rcmm_dec, %struct.rcmm_dec* %181, i32 0, i32 0
  store i32 131, i32* %182, align 4
  br label %183

183:                                              ; preds = %180, %177
  store i32 0, i32* %4, align 4
  br label %240

184:                                              ; preds = %45
  %185 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %5, i32 0, i32 1
  %186 = load i32, i32* %185, align 4
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %189, label %188

188:                                              ; preds = %184
  br label %235

189:                                              ; preds = %184
  %190 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %5, i32 0, i32 0
  %191 = load i32, i32* %190, align 8
  %192 = load i32, i32* @RCMM_UNIT, align 4
  %193 = load i32, i32* @RCMM_UNIT, align 4
  %194 = sdiv i32 %193, 2
  %195 = call i32 @eq_margin(i32 %191, i32 %192, i32 %194)
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %198, label %197

197:                                              ; preds = %189
  br label %235

198:                                              ; preds = %189
  %199 = load %struct.rcmm_dec*, %struct.rcmm_dec** %7, align 8
  %200 = call i32 @rcmm_mode(%struct.rcmm_dec* %199)
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %215

202:                                              ; preds = %198
  %203 = load %struct.rcmm_dec*, %struct.rcmm_dec** %7, align 8
  %204 = getelementptr inbounds %struct.rcmm_dec, %struct.rcmm_dec* %203, i32 0, i32 2
  %205 = load i32, i32* %204, align 4
  %206 = and i32 32768, %205
  %207 = icmp ne i32 %206, 0
  %208 = xor i1 %207, true
  %209 = xor i1 %208, true
  %210 = zext i1 %209 to i32
  store i32 %210, i32* %9, align 4
  %211 = load %struct.rcmm_dec*, %struct.rcmm_dec** %7, align 8
  %212 = getelementptr inbounds %struct.rcmm_dec, %struct.rcmm_dec* %211, i32 0, i32 2
  %213 = load i32, i32* %212, align 4
  %214 = and i32 %213, -32769
  store i32 %214, i32* %8, align 4
  br label %219

215:                                              ; preds = %198
  store i32 0, i32* %9, align 4
  %216 = load %struct.rcmm_dec*, %struct.rcmm_dec** %7, align 8
  %217 = getelementptr inbounds %struct.rcmm_dec, %struct.rcmm_dec* %216, i32 0, i32 2
  %218 = load i32, i32* %217, align 4
  store i32 %218, i32* %8, align 4
  br label %219

219:                                              ; preds = %215, %202
  %220 = load %struct.rc_dev*, %struct.rc_dev** %6, align 8
  %221 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %220, i32 0, i32 0
  %222 = load i32, i32* %221, align 8
  %223 = load i32, i32* @RC_PROTO_BIT_RCMM32, align 4
  %224 = and i32 %222, %223
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %226, label %234

226:                                              ; preds = %219
  %227 = load %struct.rc_dev*, %struct.rc_dev** %6, align 8
  %228 = load i32, i32* @RC_PROTO_RCMM32, align 4
  %229 = load i32, i32* %8, align 4
  %230 = load i32, i32* %9, align 4
  %231 = call i32 @rc_keydown(%struct.rc_dev* %227, i32 %228, i32 %229, i32 %230)
  %232 = load %struct.rcmm_dec*, %struct.rcmm_dec** %7, align 8
  %233 = getelementptr inbounds %struct.rcmm_dec, %struct.rcmm_dec* %232, i32 0, i32 0
  store i32 130, i32* %233, align 4
  store i32 0, i32* %4, align 4
  br label %240

234:                                              ; preds = %219
  br label %235

235:                                              ; preds = %45, %234, %197, %188, %158, %108, %100, %91, %83, %74, %62, %53
  %236 = load %struct.rcmm_dec*, %struct.rcmm_dec** %7, align 8
  %237 = getelementptr inbounds %struct.rcmm_dec, %struct.rcmm_dec* %236, i32 0, i32 0
  store i32 130, i32* %237, align 4
  %238 = load i32, i32* @EINVAL, align 4
  %239 = sub nsw i32 0, %238
  store i32 %239, i32* %4, align 4
  br label %240

240:                                              ; preds = %235, %226, %183, %157, %101, %84, %63, %44, %28
  %241 = load i32, i32* %4, align 4
  ret i32 %241
}

declare dso_local i32 @is_timing_event(i64, i64) #1

declare dso_local i32 @eq_margin(i32, i32, i32) #1

declare dso_local i32 @rcmm_miscmode(%struct.rc_dev*, %struct.rcmm_dec*) #1

declare dso_local i32 @rcmm_mode(%struct.rcmm_dec*) #1

declare dso_local i32 @rc_keydown(%struct.rc_dev*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
