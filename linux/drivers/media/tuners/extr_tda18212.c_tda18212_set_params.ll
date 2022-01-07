; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/tuners/extr_tda18212.c_tda18212_set_params.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/tuners/extr_tda18212.c_tda18212_set_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.TYPE_5__, %struct.dtv_frontend_properties, %struct.tda18212_dev* }
%struct.TYPE_5__ = type { i32 (%struct.dvb_frontend.0*, i32)* }
%struct.dvb_frontend.0 = type opaque
%struct.dtv_frontend_properties = type { i32, i32, i32 }
%struct.tda18212_dev = type { i32, %struct.TYPE_6__*, i32, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@tda18212_set_params.bw_params = internal constant [10 x [3 x i32]] [[3 x i32] [i32 179, i32 32, i32 3], [3 x i32] [i32 179, i32 49, i32 1], [3 x i32] [i32 179, i32 34, i32 1], [3 x i32] [i32 188, i32 32, i32 3], [3 x i32] [i32 188, i32 114, i32 3], [3 x i32] [i32 188, i32 34, i32 1], [3 x i32] [i32 146, i32 80, i32 3], [3 x i32] [i32 146, i32 83, i32 3], [3 x i32] [i32 125, i32 32, i32 99], [3 x i32] [i32 125, i32 32, i32 99]], align 16
@.str = private unnamed_addr constant [49 x i8] c"delivery_system=%d frequency=%d bandwidth_hz=%d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"failed=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*)* @tda18212_set_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tda18212_set_params(%struct.dvb_frontend* %0) #0 {
  %2 = alloca %struct.dvb_frontend*, align 8
  %3 = alloca %struct.tda18212_dev*, align 8
  %4 = alloca %struct.dtv_frontend_properties*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [9 x i32], align 16
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %2, align 8
  %9 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %10 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %9, i32 0, i32 2
  %11 = load %struct.tda18212_dev*, %struct.tda18212_dev** %10, align 8
  store %struct.tda18212_dev* %11, %struct.tda18212_dev** %3, align 8
  %12 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %13 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %12, i32 0, i32 1
  store %struct.dtv_frontend_properties* %13, %struct.dtv_frontend_properties** %4, align 8
  %14 = load %struct.tda18212_dev*, %struct.tda18212_dev** %3, align 8
  %15 = getelementptr inbounds %struct.tda18212_dev, %struct.tda18212_dev* %14, i32 0, i32 1
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %19 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %22 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %25 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = call i32 (i32*, i8*, i32, ...) @dev_dbg(i32* %17, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %20, i32 %23, i32 %26)
  %28 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %29 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = load i32 (%struct.dvb_frontend.0*, i32)*, i32 (%struct.dvb_frontend.0*, i32)** %30, align 8
  %32 = icmp ne i32 (%struct.dvb_frontend.0*, i32)* %31, null
  br i1 %32, label %33, label %41

33:                                               ; preds = %1
  %34 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %35 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load i32 (%struct.dvb_frontend.0*, i32)*, i32 (%struct.dvb_frontend.0*, i32)** %36, align 8
  %38 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %39 = bitcast %struct.dvb_frontend* %38 to %struct.dvb_frontend.0*
  %40 = call i32 %37(%struct.dvb_frontend.0* %39, i32 1)
  br label %41

41:                                               ; preds = %33, %1
  %42 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %43 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  switch i32 %44, label %106 [
    i32 133, label %45
    i32 131, label %50
    i32 129, label %55
    i32 128, label %78
    i32 132, label %101
    i32 130, label %101
  ]

45:                                               ; preds = %41
  %46 = load %struct.tda18212_dev*, %struct.tda18212_dev** %3, align 8
  %47 = getelementptr inbounds %struct.tda18212_dev, %struct.tda18212_dev* %46, i32 0, i32 3
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 8
  %49 = load i32, i32* %48, align 4
  store i32 %49, i32* %7, align 4
  store i32 8, i32* %6, align 4
  br label %109

50:                                               ; preds = %41
  %51 = load %struct.tda18212_dev*, %struct.tda18212_dev** %3, align 8
  %52 = getelementptr inbounds %struct.tda18212_dev, %struct.tda18212_dev* %51, i32 0, i32 3
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 7
  %54 = load i32, i32* %53, align 4
  store i32 %54, i32* %7, align 4
  store i32 9, i32* %6, align 4
  br label %109

55:                                               ; preds = %41
  %56 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %57 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  switch i32 %58, label %74 [
    i32 6000000, label %59
    i32 7000000, label %64
    i32 8000000, label %69
  ]

59:                                               ; preds = %55
  %60 = load %struct.tda18212_dev*, %struct.tda18212_dev** %3, align 8
  %61 = getelementptr inbounds %struct.tda18212_dev, %struct.tda18212_dev* %60, i32 0, i32 3
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 6
  %63 = load i32, i32* %62, align 4
  store i32 %63, i32* %7, align 4
  store i32 0, i32* %6, align 4
  br label %77

64:                                               ; preds = %55
  %65 = load %struct.tda18212_dev*, %struct.tda18212_dev** %3, align 8
  %66 = getelementptr inbounds %struct.tda18212_dev, %struct.tda18212_dev* %65, i32 0, i32 3
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 5
  %68 = load i32, i32* %67, align 4
  store i32 %68, i32* %7, align 4
  store i32 1, i32* %6, align 4
  br label %77

69:                                               ; preds = %55
  %70 = load %struct.tda18212_dev*, %struct.tda18212_dev** %3, align 8
  %71 = getelementptr inbounds %struct.tda18212_dev, %struct.tda18212_dev* %70, i32 0, i32 3
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 4
  %73 = load i32, i32* %72, align 4
  store i32 %73, i32* %7, align 4
  store i32 2, i32* %6, align 4
  br label %77

74:                                               ; preds = %55
  %75 = load i32, i32* @EINVAL, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %5, align 4
  br label %209

77:                                               ; preds = %69, %64, %59
  br label %109

78:                                               ; preds = %41
  %79 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %80 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 4
  switch i32 %81, label %97 [
    i32 6000000, label %82
    i32 7000000, label %87
    i32 8000000, label %92
  ]

82:                                               ; preds = %78
  %83 = load %struct.tda18212_dev*, %struct.tda18212_dev** %3, align 8
  %84 = getelementptr inbounds %struct.tda18212_dev, %struct.tda18212_dev* %83, i32 0, i32 3
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 3
  %86 = load i32, i32* %85, align 4
  store i32 %86, i32* %7, align 4
  store i32 3, i32* %6, align 4
  br label %100

87:                                               ; preds = %78
  %88 = load %struct.tda18212_dev*, %struct.tda18212_dev** %3, align 8
  %89 = getelementptr inbounds %struct.tda18212_dev, %struct.tda18212_dev* %88, i32 0, i32 3
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 4
  store i32 %91, i32* %7, align 4
  store i32 4, i32* %6, align 4
  br label %100

92:                                               ; preds = %78
  %93 = load %struct.tda18212_dev*, %struct.tda18212_dev** %3, align 8
  %94 = getelementptr inbounds %struct.tda18212_dev, %struct.tda18212_dev* %93, i32 0, i32 3
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  store i32 %96, i32* %7, align 4
  store i32 5, i32* %6, align 4
  br label %100

97:                                               ; preds = %78
  %98 = load i32, i32* @EINVAL, align 4
  %99 = sub nsw i32 0, %98
  store i32 %99, i32* %5, align 4
  br label %209

100:                                              ; preds = %92, %87, %82
  br label %109

101:                                              ; preds = %41, %41
  %102 = load %struct.tda18212_dev*, %struct.tda18212_dev** %3, align 8
  %103 = getelementptr inbounds %struct.tda18212_dev, %struct.tda18212_dev* %102, i32 0, i32 3
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  store i32 %105, i32* %7, align 4
  store i32 7, i32* %6, align 4
  br label %109

106:                                              ; preds = %41
  %107 = load i32, i32* @EINVAL, align 4
  %108 = sub nsw i32 0, %107
  store i32 %108, i32* %5, align 4
  br label %209

109:                                              ; preds = %101, %100, %77, %50, %45
  %110 = load %struct.tda18212_dev*, %struct.tda18212_dev** %3, align 8
  %111 = getelementptr inbounds %struct.tda18212_dev, %struct.tda18212_dev* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 8
  %113 = load i32, i32* %6, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds [10 x [3 x i32]], [10 x [3 x i32]]* @tda18212_set_params.bw_params, i64 0, i64 %114
  %116 = getelementptr inbounds [3 x i32], [3 x i32]* %115, i64 0, i64 2
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @regmap_write(i32 %112, i32 35, i32 %117)
  store i32 %118, i32* %5, align 4
  %119 = load i32, i32* %5, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %122

121:                                              ; preds = %109
  br label %209

122:                                              ; preds = %109
  %123 = load %struct.tda18212_dev*, %struct.tda18212_dev** %3, align 8
  %124 = getelementptr inbounds %struct.tda18212_dev, %struct.tda18212_dev* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 8
  %126 = call i32 @regmap_write(i32 %125, i32 6, i32 0)
  store i32 %126, i32* %5, align 4
  %127 = load i32, i32* %5, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %130

129:                                              ; preds = %122
  br label %209

130:                                              ; preds = %122
  %131 = load %struct.tda18212_dev*, %struct.tda18212_dev** %3, align 8
  %132 = getelementptr inbounds %struct.tda18212_dev, %struct.tda18212_dev* %131, i32 0, i32 2
  %133 = load i32, i32* %132, align 8
  %134 = load i32, i32* %6, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds [10 x [3 x i32]], [10 x [3 x i32]]* @tda18212_set_params.bw_params, i64 0, i64 %135
  %137 = getelementptr inbounds [3 x i32], [3 x i32]* %136, i64 0, i64 0
  %138 = load i32, i32* %137, align 4
  %139 = call i32 @regmap_write(i32 %133, i32 15, i32 %138)
  store i32 %139, i32* %5, align 4
  %140 = load i32, i32* %5, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %143

142:                                              ; preds = %130
  br label %209

143:                                              ; preds = %130
  %144 = getelementptr inbounds [9 x i32], [9 x i32]* %8, i64 0, i64 0
  store i32 2, i32* %144, align 16
  %145 = load i32, i32* %6, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds [10 x [3 x i32]], [10 x [3 x i32]]* @tda18212_set_params.bw_params, i64 0, i64 %146
  %148 = getelementptr inbounds [3 x i32], [3 x i32]* %147, i64 0, i64 1
  %149 = load i32, i32* %148, align 4
  %150 = getelementptr inbounds [9 x i32], [9 x i32]* %8, i64 0, i64 1
  store i32 %149, i32* %150, align 4
  %151 = getelementptr inbounds [9 x i32], [9 x i32]* %8, i64 0, i64 2
  store i32 3, i32* %151, align 8
  %152 = load i32, i32* %7, align 4
  %153 = call i32 @DIV_ROUND_CLOSEST(i32 %152, i32 50)
  %154 = getelementptr inbounds [9 x i32], [9 x i32]* %8, i64 0, i64 3
  store i32 %153, i32* %154, align 4
  %155 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %156 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 4
  %158 = sdiv i32 %157, 1000
  %159 = ashr i32 %158, 16
  %160 = and i32 %159, 255
  %161 = getelementptr inbounds [9 x i32], [9 x i32]* %8, i64 0, i64 4
  store i32 %160, i32* %161, align 16
  %162 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %163 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 4
  %165 = sdiv i32 %164, 1000
  %166 = ashr i32 %165, 8
  %167 = and i32 %166, 255
  %168 = getelementptr inbounds [9 x i32], [9 x i32]* %8, i64 0, i64 5
  store i32 %167, i32* %168, align 4
  %169 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %170 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 4
  %172 = sdiv i32 %171, 1000
  %173 = ashr i32 %172, 0
  %174 = and i32 %173, 255
  %175 = getelementptr inbounds [9 x i32], [9 x i32]* %8, i64 0, i64 6
  store i32 %174, i32* %175, align 8
  %176 = getelementptr inbounds [9 x i32], [9 x i32]* %8, i64 0, i64 7
  store i32 193, i32* %176, align 4
  %177 = getelementptr inbounds [9 x i32], [9 x i32]* %8, i64 0, i64 8
  store i32 1, i32* %177, align 16
  %178 = load %struct.tda18212_dev*, %struct.tda18212_dev** %3, align 8
  %179 = getelementptr inbounds %struct.tda18212_dev, %struct.tda18212_dev* %178, i32 0, i32 2
  %180 = load i32, i32* %179, align 8
  %181 = getelementptr inbounds [9 x i32], [9 x i32]* %8, i64 0, i64 0
  %182 = call i32 @regmap_bulk_write(i32 %180, i32 18, i32* %181, i32 36)
  store i32 %182, i32* %5, align 4
  %183 = load i32, i32* %5, align 4
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %186

185:                                              ; preds = %143
  br label %209

186:                                              ; preds = %143
  %187 = getelementptr inbounds [9 x i32], [9 x i32]* %8, i64 0, i64 3
  %188 = load i32, i32* %187, align 4
  %189 = mul nsw i32 %188, 50
  %190 = mul nsw i32 %189, 1000
  %191 = load %struct.tda18212_dev*, %struct.tda18212_dev** %3, align 8
  %192 = getelementptr inbounds %struct.tda18212_dev, %struct.tda18212_dev* %191, i32 0, i32 0
  store i32 %190, i32* %192, align 8
  br label %193

193:                                              ; preds = %209, %186
  %194 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %195 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %194, i32 0, i32 0
  %196 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %195, i32 0, i32 0
  %197 = load i32 (%struct.dvb_frontend.0*, i32)*, i32 (%struct.dvb_frontend.0*, i32)** %196, align 8
  %198 = icmp ne i32 (%struct.dvb_frontend.0*, i32)* %197, null
  br i1 %198, label %199, label %207

199:                                              ; preds = %193
  %200 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %201 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %200, i32 0, i32 0
  %202 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %201, i32 0, i32 0
  %203 = load i32 (%struct.dvb_frontend.0*, i32)*, i32 (%struct.dvb_frontend.0*, i32)** %202, align 8
  %204 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %205 = bitcast %struct.dvb_frontend* %204 to %struct.dvb_frontend.0*
  %206 = call i32 %203(%struct.dvb_frontend.0* %205, i32 0)
  br label %207

207:                                              ; preds = %199, %193
  %208 = load i32, i32* %5, align 4
  ret i32 %208

209:                                              ; preds = %185, %142, %129, %121, %106, %97, %74
  %210 = load %struct.tda18212_dev*, %struct.tda18212_dev** %3, align 8
  %211 = getelementptr inbounds %struct.tda18212_dev, %struct.tda18212_dev* %210, i32 0, i32 1
  %212 = load %struct.TYPE_6__*, %struct.TYPE_6__** %211, align 8
  %213 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %212, i32 0, i32 0
  %214 = load i32, i32* %5, align 4
  %215 = call i32 (i32*, i8*, i32, ...) @dev_dbg(i32* %213, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %214)
  br label %193
}

declare dso_local i32 @dev_dbg(i32*, i8*, i32, ...) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @DIV_ROUND_CLOSEST(i32, i32) #1

declare dso_local i32 @regmap_bulk_write(i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
