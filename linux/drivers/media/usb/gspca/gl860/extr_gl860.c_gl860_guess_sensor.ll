; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/gspca/gl860/extr_gl860.c_gl860_guess_sensor.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/gspca/gl860/extr_gl860.c_gl860_guess_sensor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { i32 }
%struct.sd = type { i32 }

@ID_MI1320 = common dso_local global i32 0, align 4
@D_PROBE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"probing for sensor MI2020 or OVXXXX\0A\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"probe=0x%02x\0A\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"0xff -> OVXXXX\0A\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"probing for sensor OV2640 or OV9655\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"probe=0x%02x -> OV2640\0A\00", align 1
@ID_OV2640 = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [24 x i8] c"probe=0x%02x -> OV9655\0A\00", align 1
@ID_OV9655 = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [24 x i8] c"Not any 0xff -> MI2020\0A\00", align 1
@ID_MI2020 = common dso_local global i32 0, align 4
@_MI1320_ = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [32 x i8] c"05e3:f191 sensor MI1320 (1.3M)\0A\00", align 1
@_MI2020_ = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [32 x i8] c"05e3:0503 sensor MI2020 (2.0M)\0A\00", align 1
@_OV9655_ = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [32 x i8] c"05e3:0503 sensor OV9655 (1.3M)\0A\00", align 1
@_OV2640_ = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [32 x i8] c"05e3:0503 sensor OV2640 (2.0M)\0A\00", align 1
@.str.11 = private unnamed_addr constant [28 x i8] c"***** Unknown sensor *****\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gspca_dev*, i32, i32)* @gl860_guess_sensor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gl860_guess_sensor(%struct.gspca_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.gspca_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.sd*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.gspca_dev* %0, %struct.gspca_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %14 = load %struct.gspca_dev*, %struct.gspca_dev** %5, align 8
  %15 = bitcast %struct.gspca_dev* %14 to %struct.sd*
  store %struct.sd* %15, %struct.sd** %8, align 8
  %16 = load i32, i32* %7, align 4
  %17 = icmp eq i32 %16, 61841
  br i1 %17, label %18, label %22

18:                                               ; preds = %3
  %19 = load i32, i32* @ID_MI1320, align 4
  %20 = load %struct.sd*, %struct.sd** %8, align 8
  %21 = getelementptr inbounds %struct.sd, %struct.sd* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 4
  br label %22

22:                                               ; preds = %18, %3
  %23 = load %struct.sd*, %struct.sd** %8, align 8
  %24 = getelementptr inbounds %struct.sd, %struct.sd* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp eq i32 %25, 255
  br i1 %26, label %27, label %174

27:                                               ; preds = %22
  %28 = load %struct.gspca_dev*, %struct.gspca_dev** %5, align 8
  %29 = call i32 @ctrl_in(%struct.gspca_dev* %28, i32 192, i32 2, i32 0, i32 4, i32 1, i32* %9)
  %30 = load %struct.gspca_dev*, %struct.gspca_dev** %5, align 8
  %31 = call i32 @ctrl_in(%struct.gspca_dev* %30, i32 192, i32 2, i32 0, i32 4, i32 1, i32* %9)
  %32 = load %struct.gspca_dev*, %struct.gspca_dev** %5, align 8
  %33 = call i32 @ctrl_out(%struct.gspca_dev* %32, i32 64, i32 1, i32 0, i32 0, i32 0, i32* null)
  %34 = call i32 @msleep(i32 3)
  %35 = load %struct.gspca_dev*, %struct.gspca_dev** %5, align 8
  %36 = call i32 @ctrl_out(%struct.gspca_dev* %35, i32 64, i32 1, i32 16, i32 16, i32 0, i32* null)
  %37 = call i32 @msleep(i32 3)
  %38 = load %struct.gspca_dev*, %struct.gspca_dev** %5, align 8
  %39 = call i32 @ctrl_out(%struct.gspca_dev* %38, i32 64, i32 1, i32 8, i32 192, i32 0, i32* null)
  %40 = call i32 @msleep(i32 3)
  %41 = load %struct.gspca_dev*, %struct.gspca_dev** %5, align 8
  %42 = call i32 @ctrl_out(%struct.gspca_dev* %41, i32 64, i32 1, i32 1, i32 193, i32 0, i32* null)
  %43 = call i32 @msleep(i32 3)
  %44 = load %struct.gspca_dev*, %struct.gspca_dev** %5, align 8
  %45 = call i32 @ctrl_out(%struct.gspca_dev* %44, i32 64, i32 1, i32 1, i32 194, i32 0, i32* null)
  %46 = call i32 @msleep(i32 3)
  %47 = load %struct.gspca_dev*, %struct.gspca_dev** %5, align 8
  %48 = call i32 @ctrl_out(%struct.gspca_dev* %47, i32 64, i32 1, i32 32, i32 6, i32 0, i32* null)
  %49 = call i32 @msleep(i32 3)
  %50 = load %struct.gspca_dev*, %struct.gspca_dev** %5, align 8
  %51 = call i32 @ctrl_out(%struct.gspca_dev* %50, i32 64, i32 1, i32 106, i32 13, i32 0, i32* null)
  %52 = call i32 @msleep(i32 56)
  %53 = load %struct.gspca_dev*, %struct.gspca_dev** %5, align 8
  %54 = load i32, i32* @D_PROBE, align 4
  %55 = call i32 (%struct.gspca_dev*, i32, i8*, ...) @gspca_dbg(%struct.gspca_dev* %53, i32 %54, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  br label %56

56:                                               ; preds = %81, %27
  %57 = load i32, i32* %13, align 4
  %58 = icmp slt i32 %57, 4
  br i1 %58, label %59, label %84

59:                                               ; preds = %56
  %60 = load %struct.gspca_dev*, %struct.gspca_dev** %5, align 8
  %61 = call i32 @ctrl_out(%struct.gspca_dev* %60, i32 64, i32 1, i32 64, i32 0, i32 0, i32* null)
  %62 = call i32 @msleep(i32 3)
  %63 = load %struct.gspca_dev*, %struct.gspca_dev** %5, align 8
  %64 = call i32 @ctrl_out(%struct.gspca_dev* %63, i32 64, i32 1, i32 99, i32 6, i32 0, i32* null)
  %65 = call i32 @msleep(i32 3)
  %66 = load %struct.gspca_dev*, %struct.gspca_dev** %5, align 8
  %67 = call i32 @ctrl_out(%struct.gspca_dev* %66, i32 64, i32 1, i32 31232, i32 32816, i32 0, i32* null)
  %68 = call i32 @msleep(i32 10)
  %69 = load %struct.gspca_dev*, %struct.gspca_dev** %5, align 8
  %70 = call i32 @ctrl_in(%struct.gspca_dev* %69, i32 192, i32 2, i32 31232, i32 32816, i32 1, i32* %9)
  %71 = load %struct.gspca_dev*, %struct.gspca_dev** %5, align 8
  %72 = load i32, i32* @D_PROBE, align 4
  %73 = load i32, i32* %9, align 4
  %74 = call i32 (%struct.gspca_dev*, i32, i8*, ...) @gspca_dbg(%struct.gspca_dev* %71, i32 %72, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 %73)
  %75 = load i32, i32* %9, align 4
  %76 = icmp eq i32 %75, 255
  br i1 %76, label %77, label %80

77:                                               ; preds = %59
  %78 = load i32, i32* %12, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %12, align 4
  br label %80

80:                                               ; preds = %77, %59
  br label %81

81:                                               ; preds = %80
  %82 = load i32, i32* %13, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %13, align 4
  br label %56

84:                                               ; preds = %56
  %85 = load i32, i32* %12, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %166

87:                                               ; preds = %84
  %88 = load %struct.gspca_dev*, %struct.gspca_dev** %5, align 8
  %89 = load i32, i32* @D_PROBE, align 4
  %90 = call i32 (%struct.gspca_dev*, i32, i8*, ...) @gspca_dbg(%struct.gspca_dev* %88, i32 %89, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  %91 = load %struct.gspca_dev*, %struct.gspca_dev** %5, align 8
  %92 = load i32, i32* @D_PROBE, align 4
  %93 = call i32 (%struct.gspca_dev*, i32, i8*, ...) @gspca_dbg(%struct.gspca_dev* %91, i32 %92, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %11, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %13, align 4
  br label %94

94:                                               ; preds = %155, %87
  %95 = load i32, i32* %13, align 4
  %96 = icmp slt i32 %95, 4
  br i1 %96, label %97, label %158

97:                                               ; preds = %94
  %98 = load %struct.gspca_dev*, %struct.gspca_dev** %5, align 8
  %99 = call i32 @ctrl_out(%struct.gspca_dev* %98, i32 64, i32 1, i32 64, i32 0, i32 0, i32* null)
  %100 = call i32 @msleep(i32 3)
  %101 = load %struct.gspca_dev*, %struct.gspca_dev** %5, align 8
  %102 = call i32 @ctrl_out(%struct.gspca_dev* %101, i32 64, i32 1, i32 24576, i32 32778, i32 0, i32* null)
  %103 = call i32 @msleep(i32 10)
  %104 = load %struct.gspca_dev*, %struct.gspca_dev** %5, align 8
  %105 = call i32 @ctrl_in(%struct.gspca_dev* %104, i32 192, i32 2, i32 24576, i32 32778, i32 1, i32* %9)
  %106 = load i32, i32* %9, align 4
  %107 = icmp eq i32 %106, 38
  br i1 %107, label %111, label %108

108:                                              ; preds = %97
  %109 = load i32, i32* %9, align 4
  %110 = icmp eq i32 %109, 64
  br i1 %110, label %111, label %121

111:                                              ; preds = %108, %97
  %112 = load %struct.gspca_dev*, %struct.gspca_dev** %5, align 8
  %113 = load i32, i32* @D_PROBE, align 4
  %114 = load i32, i32* %9, align 4
  %115 = call i32 (%struct.gspca_dev*, i32, i8*, ...) @gspca_dbg(%struct.gspca_dev* %112, i32 %113, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 %114)
  %116 = load i32, i32* @ID_OV2640, align 4
  %117 = load %struct.sd*, %struct.sd** %8, align 8
  %118 = getelementptr inbounds %struct.sd, %struct.sd* %117, i32 0, i32 0
  store i32 %116, i32* %118, align 4
  %119 = load i32, i32* %10, align 4
  %120 = add nsw i32 %119, 4
  store i32 %120, i32* %10, align 4
  br label %158

121:                                              ; preds = %108
  %122 = load i32, i32* %9, align 4
  %123 = icmp eq i32 %122, 150
  br i1 %123, label %127, label %124

124:                                              ; preds = %121
  %125 = load i32, i32* %9, align 4
  %126 = icmp eq i32 %125, 85
  br i1 %126, label %127, label %137

127:                                              ; preds = %124, %121
  %128 = load %struct.gspca_dev*, %struct.gspca_dev** %5, align 8
  %129 = load i32, i32* @D_PROBE, align 4
  %130 = load i32, i32* %9, align 4
  %131 = call i32 (%struct.gspca_dev*, i32, i8*, ...) @gspca_dbg(%struct.gspca_dev* %128, i32 %129, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0), i32 %130)
  %132 = load i32, i32* @ID_OV9655, align 4
  %133 = load %struct.sd*, %struct.sd** %8, align 8
  %134 = getelementptr inbounds %struct.sd, %struct.sd* %133, i32 0, i32 0
  store i32 %132, i32* %134, align 4
  %135 = load i32, i32* %11, align 4
  %136 = add nsw i32 %135, 4
  store i32 %136, i32* %11, align 4
  br label %158

137:                                              ; preds = %124
  %138 = load %struct.gspca_dev*, %struct.gspca_dev** %5, align 8
  %139 = load i32, i32* @D_PROBE, align 4
  %140 = load i32, i32* %9, align 4
  %141 = call i32 (%struct.gspca_dev*, i32, i8*, ...) @gspca_dbg(%struct.gspca_dev* %138, i32 %139, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 %140)
  %142 = load i32, i32* %9, align 4
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %144, label %147

144:                                              ; preds = %137
  %145 = load i32, i32* %10, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %10, align 4
  br label %147

147:                                              ; preds = %144, %137
  %148 = load i32, i32* %9, align 4
  %149 = icmp eq i32 %148, 255
  br i1 %149, label %150, label %153

150:                                              ; preds = %147
  %151 = load i32, i32* %11, align 4
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %11, align 4
  br label %153

153:                                              ; preds = %150, %147
  %154 = call i32 @msleep(i32 3)
  br label %155

155:                                              ; preds = %153
  %156 = load i32, i32* %13, align 4
  %157 = add nsw i32 %156, 1
  store i32 %157, i32* %13, align 4
  br label %94

158:                                              ; preds = %127, %111, %94
  %159 = load i32, i32* %10, align 4
  %160 = icmp slt i32 %159, 4
  br i1 %160, label %161, label %165

161:                                              ; preds = %158
  %162 = load i32, i32* %11, align 4
  %163 = icmp slt i32 %162, 4
  br i1 %163, label %164, label %165

164:                                              ; preds = %161
  store i32 -1, i32* %4, align 4
  br label %210

165:                                              ; preds = %161, %158
  br label %173

166:                                              ; preds = %84
  %167 = load %struct.gspca_dev*, %struct.gspca_dev** %5, align 8
  %168 = load i32, i32* @D_PROBE, align 4
  %169 = call i32 (%struct.gspca_dev*, i32, i8*, ...) @gspca_dbg(%struct.gspca_dev* %167, i32 %168, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0))
  %170 = load i32, i32* @ID_MI2020, align 4
  %171 = load %struct.sd*, %struct.sd** %8, align 8
  %172 = getelementptr inbounds %struct.sd, %struct.sd* %171, i32 0, i32 0
  store i32 %170, i32* %172, align 4
  br label %173

173:                                              ; preds = %166, %165
  br label %174

174:                                              ; preds = %173, %22
  %175 = load i64, i64* @_MI1320_, align 8
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %177, label %181

177:                                              ; preds = %174
  %178 = load %struct.gspca_dev*, %struct.gspca_dev** %5, align 8
  %179 = load i32, i32* @D_PROBE, align 4
  %180 = call i32 (%struct.gspca_dev*, i32, i8*, ...) @gspca_dbg(%struct.gspca_dev* %178, i32 %179, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i64 0, i64 0))
  br label %209

181:                                              ; preds = %174
  %182 = load i64, i64* @_MI2020_, align 8
  %183 = icmp ne i64 %182, 0
  br i1 %183, label %184, label %188

184:                                              ; preds = %181
  %185 = load %struct.gspca_dev*, %struct.gspca_dev** %5, align 8
  %186 = load i32, i32* @D_PROBE, align 4
  %187 = call i32 (%struct.gspca_dev*, i32, i8*, ...) @gspca_dbg(%struct.gspca_dev* %185, i32 %186, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.8, i64 0, i64 0))
  br label %208

188:                                              ; preds = %181
  %189 = load i64, i64* @_OV9655_, align 8
  %190 = icmp ne i64 %189, 0
  br i1 %190, label %191, label %195

191:                                              ; preds = %188
  %192 = load %struct.gspca_dev*, %struct.gspca_dev** %5, align 8
  %193 = load i32, i32* @D_PROBE, align 4
  %194 = call i32 (%struct.gspca_dev*, i32, i8*, ...) @gspca_dbg(%struct.gspca_dev* %192, i32 %193, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9, i64 0, i64 0))
  br label %207

195:                                              ; preds = %188
  %196 = load i64, i64* @_OV2640_, align 8
  %197 = icmp ne i64 %196, 0
  br i1 %197, label %198, label %202

198:                                              ; preds = %195
  %199 = load %struct.gspca_dev*, %struct.gspca_dev** %5, align 8
  %200 = load i32, i32* @D_PROBE, align 4
  %201 = call i32 (%struct.gspca_dev*, i32, i8*, ...) @gspca_dbg(%struct.gspca_dev* %199, i32 %200, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.10, i64 0, i64 0))
  br label %206

202:                                              ; preds = %195
  %203 = load %struct.gspca_dev*, %struct.gspca_dev** %5, align 8
  %204 = load i32, i32* @D_PROBE, align 4
  %205 = call i32 (%struct.gspca_dev*, i32, i8*, ...) @gspca_dbg(%struct.gspca_dev* %203, i32 %204, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.11, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %210

206:                                              ; preds = %198
  br label %207

207:                                              ; preds = %206, %191
  br label %208

208:                                              ; preds = %207, %184
  br label %209

209:                                              ; preds = %208, %177
  store i32 0, i32* %4, align 4
  br label %210

210:                                              ; preds = %209, %202, %164
  %211 = load i32, i32* %4, align 4
  ret i32 %211
}

declare dso_local i32 @ctrl_in(%struct.gspca_dev*, i32, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @ctrl_out(%struct.gspca_dev*, i32, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @gspca_dbg(%struct.gspca_dev*, i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
