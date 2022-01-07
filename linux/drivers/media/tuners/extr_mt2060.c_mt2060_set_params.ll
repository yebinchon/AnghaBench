; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/tuners/extr_mt2060.c_mt2060_set_params.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/tuners/extr_mt2060.c_mt2060_set_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.TYPE_2__, %struct.mt2060_priv*, %struct.dtv_frontend_properties }
%struct.TYPE_2__ = type { i32 (%struct.dvb_frontend.0*, i32)* }
%struct.dvb_frontend.0 = type opaque
%struct.mt2060_priv = type { i32, i32 }
%struct.dtv_frontend_properties = type { i32 }

@REG_LO1B1 = common dso_local global i32 0, align 4
@IF2 = common dso_local global i32 0, align 4
@FREF = common dso_local global i32 0, align 4
@REG_LO1C1 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"IF1: %dMHz\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"PLL freq=%dkHz  f_lo1=%dkHz  f_lo2=%dkHz\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"PLL div1=%d  num1=%d  div2=%d  num2=%d\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"PLL [1..5]: %2x %2x %2x %2x %2x\00", align 1
@REG_LO_STATUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*)* @mt2060_set_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt2060_set_params(%struct.dvb_frontend* %0) #0 {
  %2 = alloca %struct.dvb_frontend*, align 8
  %3 = alloca %struct.dtv_frontend_properties*, align 8
  %4 = alloca %struct.mt2060_priv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca [8 x i32], align 16
  %15 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %2, align 8
  %16 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %17 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %16, i32 0, i32 2
  store %struct.dtv_frontend_properties* %17, %struct.dtv_frontend_properties** %3, align 8
  store i32 0, i32* %5, align 4
  %18 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %19 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %18, i32 0, i32 1
  %20 = load %struct.mt2060_priv*, %struct.mt2060_priv** %19, align 8
  store %struct.mt2060_priv* %20, %struct.mt2060_priv** %4, align 8
  %21 = load %struct.mt2060_priv*, %struct.mt2060_priv** %4, align 8
  %22 = getelementptr inbounds %struct.mt2060_priv, %struct.mt2060_priv* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %15, align 4
  %24 = load i32, i32* @REG_LO1B1, align 4
  %25 = getelementptr inbounds [8 x i32], [8 x i32]* %14, i64 0, i64 0
  store i32 %24, i32* %25, align 16
  %26 = getelementptr inbounds [8 x i32], [8 x i32]* %14, i64 0, i64 1
  store i32 255, i32* %26, align 4
  %27 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %28 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32 (%struct.dvb_frontend.0*, i32)*, i32 (%struct.dvb_frontend.0*, i32)** %29, align 8
  %31 = icmp ne i32 (%struct.dvb_frontend.0*, i32)* %30, null
  br i1 %31, label %32, label %40

32:                                               ; preds = %1
  %33 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %34 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32 (%struct.dvb_frontend.0*, i32)*, i32 (%struct.dvb_frontend.0*, i32)** %35, align 8
  %37 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %38 = bitcast %struct.dvb_frontend* %37 to %struct.dvb_frontend.0*
  %39 = call i32 %36(%struct.dvb_frontend.0* %38, i32 1)
  br label %40

40:                                               ; preds = %32, %1
  %41 = load %struct.mt2060_priv*, %struct.mt2060_priv** %4, align 8
  %42 = getelementptr inbounds [8 x i32], [8 x i32]* %14, i64 0, i64 0
  %43 = call i32 @mt2060_writeregs(%struct.mt2060_priv* %41, i32* %42, i32 2)
  %44 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %3, align 8
  %45 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = sdiv i32 %46, 1000
  store i32 %47, i32* %6, align 4
  %48 = load i32, i32* %6, align 4
  %49 = load i32, i32* %15, align 4
  %50 = mul nsw i32 %49, 1000
  %51 = add nsw i32 %48, %50
  store i32 %51, i32* %8, align 4
  %52 = load i32, i32* %8, align 4
  %53 = sdiv i32 %52, 250
  %54 = mul nsw i32 %53, 250
  store i32 %54, i32* %8, align 4
  %55 = load i32, i32* %8, align 4
  %56 = load i32, i32* %6, align 4
  %57 = sub nsw i32 %55, %56
  %58 = load i32, i32* @IF2, align 4
  %59 = sub nsw i32 %57, %58
  store i32 %59, i32* %9, align 4
  %60 = load i32, i32* %9, align 4
  %61 = add nsw i32 %60, 25
  %62 = sdiv i32 %61, 50
  %63 = mul nsw i32 %62, 50
  store i32 %63, i32* %9, align 4
  %64 = load i32, i32* %8, align 4
  %65 = load i32, i32* %9, align 4
  %66 = sub nsw i32 %64, %65
  %67 = load i32, i32* @IF2, align 4
  %68 = sub nsw i32 %66, %67
  %69 = mul nsw i32 %68, 1000
  %70 = load %struct.mt2060_priv*, %struct.mt2060_priv** %4, align 8
  %71 = getelementptr inbounds %struct.mt2060_priv, %struct.mt2060_priv* %70, i32 0, i32 1
  store i32 %69, i32* %71, align 4
  %72 = load i32, i32* %8, align 4
  %73 = load i32, i32* @FREF, align 4
  %74 = sdiv i32 %73, 64
  %75 = sdiv i32 %72, %74
  store i32 %75, i32* %11, align 4
  %76 = load i32, i32* %11, align 4
  %77 = sdiv i32 %76, 64
  store i32 %77, i32* %10, align 4
  %78 = load i32, i32* %11, align 4
  %79 = and i32 %78, 63
  store i32 %79, i32* %11, align 4
  %80 = load i32, i32* %9, align 4
  %81 = mul nsw i32 %80, 64
  %82 = load i32, i32* @FREF, align 4
  %83 = sdiv i32 %82, 128
  %84 = sdiv i32 %81, %83
  store i32 %84, i32* %13, align 4
  %85 = load i32, i32* %13, align 4
  %86 = sdiv i32 %85, 8192
  store i32 %86, i32* %12, align 4
  %87 = load i32, i32* %13, align 4
  %88 = and i32 %87, 8191
  store i32 %88, i32* %13, align 4
  %89 = load i32, i32* %6, align 4
  %90 = icmp sle i32 %89, 95000
  br i1 %90, label %91, label %92

91:                                               ; preds = %40
  store i32 176, i32* %7, align 4
  br label %138

92:                                               ; preds = %40
  %93 = load i32, i32* %6, align 4
  %94 = icmp sle i32 %93, 180000
  br i1 %94, label %95, label %96

95:                                               ; preds = %92
  store i32 160, i32* %7, align 4
  br label %137

96:                                               ; preds = %92
  %97 = load i32, i32* %6, align 4
  %98 = icmp sle i32 %97, 260000
  br i1 %98, label %99, label %100

99:                                               ; preds = %96
  store i32 144, i32* %7, align 4
  br label %136

100:                                              ; preds = %96
  %101 = load i32, i32* %6, align 4
  %102 = icmp sle i32 %101, 335000
  br i1 %102, label %103, label %104

103:                                              ; preds = %100
  store i32 128, i32* %7, align 4
  br label %135

104:                                              ; preds = %100
  %105 = load i32, i32* %6, align 4
  %106 = icmp sle i32 %105, 425000
  br i1 %106, label %107, label %108

107:                                              ; preds = %104
  store i32 112, i32* %7, align 4
  br label %134

108:                                              ; preds = %104
  %109 = load i32, i32* %6, align 4
  %110 = icmp sle i32 %109, 480000
  br i1 %110, label %111, label %112

111:                                              ; preds = %108
  store i32 96, i32* %7, align 4
  br label %133

112:                                              ; preds = %108
  %113 = load i32, i32* %6, align 4
  %114 = icmp sle i32 %113, 570000
  br i1 %114, label %115, label %116

115:                                              ; preds = %112
  store i32 80, i32* %7, align 4
  br label %132

116:                                              ; preds = %112
  %117 = load i32, i32* %6, align 4
  %118 = icmp sle i32 %117, 645000
  br i1 %118, label %119, label %120

119:                                              ; preds = %116
  store i32 64, i32* %7, align 4
  br label %131

120:                                              ; preds = %116
  %121 = load i32, i32* %6, align 4
  %122 = icmp sle i32 %121, 730000
  br i1 %122, label %123, label %124

123:                                              ; preds = %120
  store i32 48, i32* %7, align 4
  br label %130

124:                                              ; preds = %120
  %125 = load i32, i32* %6, align 4
  %126 = icmp sle i32 %125, 810000
  br i1 %126, label %127, label %128

127:                                              ; preds = %124
  store i32 32, i32* %7, align 4
  br label %129

128:                                              ; preds = %124
  store i32 16, i32* %7, align 4
  br label %129

129:                                              ; preds = %128, %127
  br label %130

130:                                              ; preds = %129, %123
  br label %131

131:                                              ; preds = %130, %119
  br label %132

132:                                              ; preds = %131, %115
  br label %133

133:                                              ; preds = %132, %111
  br label %134

134:                                              ; preds = %133, %107
  br label %135

135:                                              ; preds = %134, %103
  br label %136

136:                                              ; preds = %135, %99
  br label %137

137:                                              ; preds = %136, %95
  br label %138

138:                                              ; preds = %137, %91
  %139 = load i32, i32* @REG_LO1C1, align 4
  %140 = getelementptr inbounds [8 x i32], [8 x i32]* %14, i64 0, i64 0
  store i32 %139, i32* %140, align 16
  %141 = load i32, i32* %7, align 4
  %142 = load i32, i32* %11, align 4
  %143 = ashr i32 %142, 2
  %144 = and i32 %143, 15
  %145 = or i32 %141, %144
  %146 = getelementptr inbounds [8 x i32], [8 x i32]* %14, i64 0, i64 1
  store i32 %145, i32* %146, align 4
  %147 = load i32, i32* %10, align 4
  %148 = getelementptr inbounds [8 x i32], [8 x i32]* %14, i64 0, i64 2
  store i32 %147, i32* %148, align 8
  %149 = load i32, i32* %13, align 4
  %150 = and i32 %149, 15
  %151 = load i32, i32* %11, align 4
  %152 = and i32 %151, 3
  %153 = shl i32 %152, 4
  %154 = or i32 %150, %153
  %155 = getelementptr inbounds [8 x i32], [8 x i32]* %14, i64 0, i64 3
  store i32 %154, i32* %155, align 4
  %156 = load i32, i32* %13, align 4
  %157 = ashr i32 %156, 4
  %158 = getelementptr inbounds [8 x i32], [8 x i32]* %14, i64 0, i64 4
  store i32 %157, i32* %158, align 16
  %159 = load i32, i32* %13, align 4
  %160 = ashr i32 %159, 12
  %161 = and i32 %160, 1
  %162 = load i32, i32* %12, align 4
  %163 = shl i32 %162, 1
  %164 = or i32 %161, %163
  %165 = getelementptr inbounds [8 x i32], [8 x i32]* %14, i64 0, i64 5
  store i32 %164, i32* %165, align 4
  %166 = load i32, i32* %15, align 4
  %167 = call i32 (i8*, i32, ...) @dprintk(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %166)
  %168 = load i32, i32* %6, align 4
  %169 = load i32, i32* %8, align 4
  %170 = load i32, i32* %9, align 4
  %171 = call i32 (i8*, i32, ...) @dprintk(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %168, i32 %169, i32 %170)
  %172 = load i32, i32* %10, align 4
  %173 = load i32, i32* %11, align 4
  %174 = load i32, i32* %12, align 4
  %175 = load i32, i32* %13, align 4
  %176 = call i32 (i8*, i32, ...) @dprintk(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32 %172, i32 %173, i32 %174, i32 %175)
  %177 = getelementptr inbounds [8 x i32], [8 x i32]* %14, i64 0, i64 1
  %178 = load i32, i32* %177, align 4
  %179 = getelementptr inbounds [8 x i32], [8 x i32]* %14, i64 0, i64 2
  %180 = load i32, i32* %179, align 8
  %181 = getelementptr inbounds [8 x i32], [8 x i32]* %14, i64 0, i64 3
  %182 = load i32, i32* %181, align 4
  %183 = getelementptr inbounds [8 x i32], [8 x i32]* %14, i64 0, i64 4
  %184 = load i32, i32* %183, align 16
  %185 = getelementptr inbounds [8 x i32], [8 x i32]* %14, i64 0, i64 5
  %186 = load i32, i32* %185, align 4
  %187 = call i32 (i8*, i32, ...) @dprintk(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i32 %178, i32 %180, i32 %182, i32 %184, i32 %186)
  %188 = load %struct.mt2060_priv*, %struct.mt2060_priv** %4, align 8
  %189 = getelementptr inbounds [8 x i32], [8 x i32]* %14, i64 0, i64 0
  %190 = call i32 @mt2060_writeregs(%struct.mt2060_priv* %188, i32* %189, i32 6)
  store i32 0, i32* %5, align 4
  br label %191

191:                                              ; preds = %205, %138
  %192 = load %struct.mt2060_priv*, %struct.mt2060_priv** %4, align 8
  %193 = load i32, i32* @REG_LO_STATUS, align 4
  %194 = getelementptr inbounds [8 x i32], [8 x i32]* %14, i64 0, i64 0
  %195 = call i32 @mt2060_readreg(%struct.mt2060_priv* %192, i32 %193, i32* %194)
  %196 = getelementptr inbounds [8 x i32], [8 x i32]* %14, i64 0, i64 0
  %197 = load i32, i32* %196, align 16
  %198 = and i32 %197, 136
  %199 = icmp eq i32 %198, 136
  br i1 %199, label %200, label %201

200:                                              ; preds = %191
  br label %208

201:                                              ; preds = %191
  %202 = call i32 @msleep(i32 4)
  %203 = load i32, i32* %5, align 4
  %204 = add nsw i32 %203, 1
  store i32 %204, i32* %5, align 4
  br label %205

205:                                              ; preds = %201
  %206 = load i32, i32* %5, align 4
  %207 = icmp slt i32 %206, 10
  br i1 %207, label %191, label %208

208:                                              ; preds = %205, %200
  %209 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %210 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %209, i32 0, i32 0
  %211 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %210, i32 0, i32 0
  %212 = load i32 (%struct.dvb_frontend.0*, i32)*, i32 (%struct.dvb_frontend.0*, i32)** %211, align 8
  %213 = icmp ne i32 (%struct.dvb_frontend.0*, i32)* %212, null
  br i1 %213, label %214, label %222

214:                                              ; preds = %208
  %215 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %216 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %215, i32 0, i32 0
  %217 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %216, i32 0, i32 0
  %218 = load i32 (%struct.dvb_frontend.0*, i32)*, i32 (%struct.dvb_frontend.0*, i32)** %217, align 8
  %219 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %220 = bitcast %struct.dvb_frontend* %219 to %struct.dvb_frontend.0*
  %221 = call i32 %218(%struct.dvb_frontend.0* %220, i32 0)
  br label %222

222:                                              ; preds = %214, %208
  ret i32 0
}

declare dso_local i32 @mt2060_writeregs(%struct.mt2060_priv*, i32*, i32) #1

declare dso_local i32 @dprintk(i8*, i32, ...) #1

declare dso_local i32 @mt2060_readreg(%struct.mt2060_priv*, i32, i32*) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
