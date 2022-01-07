; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_sonixb.c_sd_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_sonixb.c_sd_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32 }
%struct.gspca_dev = type { i64, i32, i64, i64, %struct.cam }
%struct.cam = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.sd = type { i64, i64, i32, i32, i64, i64 }

@sensor_data = common dso_local global %struct.TYPE_4__* null, align 8
@BRIDGE_103 = common dso_local global i64 0, align 8
@F_SIF = common dso_local global i32 0, align 4
@MODE_RAW = common dso_local global i32 0, align 4
@MODE_REDUCED_SIF = common dso_local global i32 0, align 4
@__const.sd_start.i2cpclockdiv = private unnamed_addr constant [8 x i32] [i32 160, i32 64, i32 2, i32 3, i32 0, i32 0, i32 0, i32 16], align 16
@__const.sd_start.i2c = private unnamed_addr constant [8 x i32] [i32 160, i32 33, i32 19, i32 128, i32 0, i32 0, i32 0, i32 16], align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gspca_dev*)* @sd_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sd_start(%struct.gspca_dev* %0) #0 {
  %2 = alloca %struct.gspca_dev*, align 8
  %3 = alloca %struct.sd*, align 8
  %4 = alloca %struct.cam*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [49 x i32], align 16
  %8 = alloca [8 x i32], align 16
  %9 = alloca [8 x i32], align 16
  store %struct.gspca_dev* %0, %struct.gspca_dev** %2, align 8
  %10 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %11 = bitcast %struct.gspca_dev* %10 to %struct.sd*
  store %struct.sd* %11, %struct.sd** %3, align 8
  %12 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %13 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %12, i32 0, i32 4
  store %struct.cam* %13, %struct.cam** %4, align 8
  %14 = load %struct.cam*, %struct.cam** %4, align 8
  %15 = getelementptr inbounds %struct.cam, %struct.cam* %14, i32 0, i32 0
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %18 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = and i32 %22, 7
  store i32 %23, i32* %6, align 4
  %24 = getelementptr inbounds [49 x i32], [49 x i32]* %7, i64 0, i64 1
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** @sensor_data, align 8
  %26 = load %struct.sd*, %struct.sd** %3, align 8
  %27 = getelementptr inbounds %struct.sd, %struct.sd* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @memcpy(i32* %24, i32 %31, i32 25)
  %33 = load i32, i32* %6, align 4
  %34 = shl i32 %33, 4
  %35 = getelementptr inbounds [49 x i32], [49 x i32]* %7, i64 0, i64 24
  %36 = load i32, i32* %35, align 16
  %37 = or i32 %36, %34
  store i32 %37, i32* %35, align 16
  %38 = load %struct.sd*, %struct.sd** %3, align 8
  %39 = getelementptr inbounds %struct.sd, %struct.sd* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @BRIDGE_103, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %47

43:                                               ; preds = %1
  %44 = getelementptr inbounds [49 x i32], [49 x i32]* %7, i64 0, i64 5
  store i32 32, i32* %44, align 4
  %45 = getelementptr inbounds [49 x i32], [49 x i32]* %7, i64 0, i64 6
  store i32 32, i32* %45, align 8
  %46 = getelementptr inbounds [49 x i32], [49 x i32]* %7, i64 0, i64 7
  store i32 32, i32* %46, align 4
  br label %50

47:                                               ; preds = %1
  %48 = getelementptr inbounds [49 x i32], [49 x i32]* %7, i64 0, i64 16
  store i32 0, i32* %48, align 16
  %49 = getelementptr inbounds [49 x i32], [49 x i32]* %7, i64 0, i64 17
  store i32 0, i32* %49, align 4
  br label %50

50:                                               ; preds = %47, %43
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** @sensor_data, align 8
  %52 = load %struct.sd*, %struct.sd** %3, align 8
  %53 = getelementptr inbounds %struct.sd, %struct.sd* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @F_SIF, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %68

61:                                               ; preds = %50
  %62 = getelementptr inbounds [49 x i32], [49 x i32]* %7, i64 0, i64 26
  store i32 20, i32* %62, align 8
  %63 = getelementptr inbounds [49 x i32], [49 x i32]* %7, i64 0, i64 27
  store i32 10, i32* %63, align 4
  %64 = getelementptr inbounds [49 x i32], [49 x i32]* %7, i64 0, i64 28
  store i32 2, i32* %64, align 16
  %65 = getelementptr inbounds [49 x i32], [49 x i32]* %7, i64 0, i64 29
  store i32 2, i32* %65, align 4
  %66 = getelementptr inbounds [49 x i32], [49 x i32]* %7, i64 0, i64 30
  store i32 9, i32* %66, align 8
  %67 = getelementptr inbounds [49 x i32], [49 x i32]* %7, i64 0, i64 31
  store i32 7, i32* %67, align 4
  br label %75

68:                                               ; preds = %50
  %69 = getelementptr inbounds [49 x i32], [49 x i32]* %7, i64 0, i64 26
  store i32 29, i32* %69, align 8
  %70 = getelementptr inbounds [49 x i32], [49 x i32]* %7, i64 0, i64 27
  store i32 16, i32* %70, align 4
  %71 = getelementptr inbounds [49 x i32], [49 x i32]* %7, i64 0, i64 28
  store i32 5, i32* %71, align 16
  %72 = getelementptr inbounds [49 x i32], [49 x i32]* %7, i64 0, i64 29
  store i32 3, i32* %72, align 4
  %73 = getelementptr inbounds [49 x i32], [49 x i32]* %7, i64 0, i64 30
  store i32 15, i32* %73, align 8
  %74 = getelementptr inbounds [49 x i32], [49 x i32]* %7, i64 0, i64 31
  store i32 12, i32* %74, align 4
  br label %75

75:                                               ; preds = %68, %61
  store i32 0, i32* %5, align 4
  br label %76

76:                                               ; preds = %86, %75
  %77 = load i32, i32* %5, align 4
  %78 = icmp slt i32 %77, 16
  br i1 %78, label %79, label %89

79:                                               ; preds = %76
  %80 = load i32, i32* %5, align 4
  %81 = mul nsw i32 %80, 16
  %82 = load i32, i32* %5, align 4
  %83 = add nsw i32 32, %82
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds [49 x i32], [49 x i32]* %7, i64 0, i64 %84
  store i32 %81, i32* %85, align 4
  br label %86

86:                                               ; preds = %79
  %87 = load i32, i32* %5, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %5, align 4
  br label %76

89:                                               ; preds = %76
  %90 = load i32, i32* %5, align 4
  %91 = add nsw i32 32, %90
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds [49 x i32], [49 x i32]* %7, i64 0, i64 %92
  store i32 255, i32* %93, align 4
  %94 = load %struct.sd*, %struct.sd** %3, align 8
  %95 = getelementptr inbounds %struct.sd, %struct.sd* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  switch i64 %96, label %124 [
    i64 128, label %97
    i64 130, label %103
    i64 129, label %113
  ]

97:                                               ; preds = %89
  %98 = load i32, i32* %6, align 4
  %99 = icmp ne i32 %98, 0
  %100 = zext i1 %99 to i64
  %101 = select i1 %99, i32 35, i32 67
  %102 = getelementptr inbounds [49 x i32], [49 x i32]* %7, i64 0, i64 25
  store i32 %101, i32* %102, align 4
  br label %124

103:                                              ; preds = %89
  %104 = load %struct.sd*, %struct.sd** %3, align 8
  %105 = getelementptr inbounds %struct.sd, %struct.sd* %104, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = load i64, i64* @BRIDGE_103, align 8
  %108 = icmp eq i64 %106, %107
  br i1 %108, label %109, label %112

109:                                              ; preds = %103
  %110 = getelementptr inbounds [49 x i32], [49 x i32]* %7, i64 0, i64 1
  store i32 68, i32* %110, align 4
  %111 = getelementptr inbounds [49 x i32], [49 x i32]* %7, i64 0, i64 18
  store i32 2, i32* %111, align 8
  br label %112

112:                                              ; preds = %109, %103
  br label %124

113:                                              ; preds = %89
  %114 = load %struct.sd*, %struct.sd** %3, align 8
  %115 = getelementptr inbounds %struct.sd, %struct.sd* %114, i32 0, i32 1
  %116 = load i64, i64* %115, align 8
  %117 = load i64, i64* @BRIDGE_103, align 8
  %118 = icmp eq i64 %116, %117
  br i1 %118, label %119, label %123

119:                                              ; preds = %113
  %120 = getelementptr inbounds [49 x i32], [49 x i32]* %7, i64 0, i64 18
  %121 = load i32, i32* %120, align 8
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %120, align 8
  br label %123

123:                                              ; preds = %119, %113
  br label %124

124:                                              ; preds = %89, %123, %112, %97
  %125 = load %struct.cam*, %struct.cam** %4, align 8
  %126 = getelementptr inbounds %struct.cam, %struct.cam* %125, i32 0, i32 0
  %127 = load %struct.TYPE_3__*, %struct.TYPE_3__** %126, align 8
  %128 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %129 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %127, i64 %130
  %132 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = load i32, i32* @MODE_RAW, align 4
  %135 = and i32 %133, %134
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %141

137:                                              ; preds = %124
  %138 = getelementptr inbounds [49 x i32], [49 x i32]* %7, i64 0, i64 24
  %139 = load i32, i32* %138, align 16
  %140 = and i32 %139, -129
  store i32 %140, i32* %138, align 16
  br label %141

141:                                              ; preds = %137, %124
  %142 = load %struct.cam*, %struct.cam** %4, align 8
  %143 = getelementptr inbounds %struct.cam, %struct.cam* %142, i32 0, i32 0
  %144 = load %struct.TYPE_3__*, %struct.TYPE_3__** %143, align 8
  %145 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %146 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %145, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %144, i64 %147
  %149 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = load i32, i32* @MODE_REDUCED_SIF, align 4
  %152 = and i32 %150, %151
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %163

154:                                              ; preds = %141
  %155 = getelementptr inbounds [49 x i32], [49 x i32]* %7, i64 0, i64 18
  %156 = load i32, i32* %155, align 8
  %157 = add nsw i32 %156, 16
  store i32 %157, i32* %155, align 8
  %158 = getelementptr inbounds [49 x i32], [49 x i32]* %7, i64 0, i64 19
  %159 = load i32, i32* %158, align 4
  %160 = add nsw i32 %159, 24
  store i32 %160, i32* %158, align 4
  %161 = getelementptr inbounds [49 x i32], [49 x i32]* %7, i64 0, i64 21
  store i32 20, i32* %161, align 4
  %162 = getelementptr inbounds [49 x i32], [49 x i32]* %7, i64 0, i64 22
  store i32 15, i32* %162, align 8
  br label %163

163:                                              ; preds = %154, %141
  %164 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %165 = getelementptr inbounds [49 x i32], [49 x i32]* %7, i64 0, i64 1
  %166 = call i32 @reg_w(%struct.gspca_dev* %164, i32 1, i32* %165, i32 1)
  %167 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %168 = getelementptr inbounds [49 x i32], [49 x i32]* %7, i64 0, i64 23
  %169 = call i32 @reg_w(%struct.gspca_dev* %167, i32 23, i32* %168, i32 1)
  %170 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %171 = getelementptr inbounds [49 x i32], [49 x i32]* %7, i64 0, i64 1
  %172 = load %struct.sd*, %struct.sd** %3, align 8
  %173 = getelementptr inbounds %struct.sd, %struct.sd* %172, i32 0, i32 1
  %174 = load i64, i64* %173, align 8
  %175 = load i64, i64* @BRIDGE_103, align 8
  %176 = icmp eq i64 %174, %175
  %177 = zext i1 %176 to i64
  %178 = select i1 %176, i32 48, i32 31
  %179 = call i32 @reg_w(%struct.gspca_dev* %170, i32 1, i32* %171, i32 %178)
  %180 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %181 = load %struct.TYPE_4__*, %struct.TYPE_4__** @sensor_data, align 8
  %182 = load %struct.sd*, %struct.sd** %3, align 8
  %183 = getelementptr inbounds %struct.sd, %struct.sd* %182, i32 0, i32 0
  %184 = load i64, i64* %183, align 8
  %185 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %181, i64 %184
  %186 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %185, i32 0, i32 2
  %187 = load i32, i32* %186, align 4
  %188 = load %struct.TYPE_4__*, %struct.TYPE_4__** @sensor_data, align 8
  %189 = load %struct.sd*, %struct.sd** %3, align 8
  %190 = getelementptr inbounds %struct.sd, %struct.sd* %189, i32 0, i32 0
  %191 = load i64, i64* %190, align 8
  %192 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %188, i64 %191
  %193 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %192, i32 0, i32 1
  %194 = load i32, i32* %193, align 4
  %195 = call i32 @i2c_w_vector(%struct.gspca_dev* %180, i32 %187, i32 %194)
  %196 = load %struct.sd*, %struct.sd** %3, align 8
  %197 = getelementptr inbounds %struct.sd, %struct.sd* %196, i32 0, i32 0
  %198 = load i64, i64* %197, align 8
  switch i64 %198, label %220 [
    i64 129, label %199
    i64 130, label %208
  ]

199:                                              ; preds = %163
  %200 = bitcast [8 x i32]* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %200, i8* align 16 bitcast ([8 x i32]* @__const.sd_start.i2cpclockdiv to i8*), i64 32, i1 false)
  %201 = load i32, i32* %6, align 4
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %203, label %207

203:                                              ; preds = %199
  %204 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %205 = getelementptr inbounds [8 x i32], [8 x i32]* %8, i64 0, i64 0
  %206 = call i32 @i2c_w(%struct.gspca_dev* %204, i32* %205)
  br label %207

207:                                              ; preds = %203, %199
  br label %220

208:                                              ; preds = %163
  %209 = load %struct.sd*, %struct.sd** %3, align 8
  %210 = getelementptr inbounds %struct.sd, %struct.sd* %209, i32 0, i32 1
  %211 = load i64, i64* %210, align 8
  %212 = load i64, i64* @BRIDGE_103, align 8
  %213 = icmp eq i64 %211, %212
  br i1 %213, label %214, label %219

214:                                              ; preds = %208
  %215 = bitcast [8 x i32]* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %215, i8* align 16 bitcast ([8 x i32]* @__const.sd_start.i2c to i8*), i64 32, i1 false)
  %216 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %217 = getelementptr inbounds [8 x i32], [8 x i32]* %9, i64 0, i64 0
  %218 = call i32 @i2c_w(%struct.gspca_dev* %216, i32* %217)
  br label %219

219:                                              ; preds = %214, %208
  br label %220

220:                                              ; preds = %163, %219, %207
  %221 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %222 = getelementptr inbounds [49 x i32], [49 x i32]* %7, i64 0, i64 21
  %223 = call i32 @reg_w(%struct.gspca_dev* %221, i32 21, i32* %222, i32 2)
  %224 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %225 = getelementptr inbounds [49 x i32], [49 x i32]* %7, i64 0, i64 24
  %226 = call i32 @reg_w(%struct.gspca_dev* %224, i32 24, i32* %225, i32 1)
  %227 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %228 = getelementptr inbounds [49 x i32], [49 x i32]* %7, i64 0, i64 18
  %229 = call i32 @reg_w(%struct.gspca_dev* %227, i32 18, i32* %228, i32 1)
  %230 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %231 = getelementptr inbounds [49 x i32], [49 x i32]* %7, i64 0, i64 19
  %232 = call i32 @reg_w(%struct.gspca_dev* %230, i32 19, i32* %231, i32 1)
  %233 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %234 = getelementptr inbounds [49 x i32], [49 x i32]* %7, i64 0, i64 23
  %235 = call i32 @reg_w(%struct.gspca_dev* %233, i32 23, i32* %234, i32 1)
  %236 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %237 = getelementptr inbounds [49 x i32], [49 x i32]* %7, i64 0, i64 25
  %238 = call i32 @reg_w(%struct.gspca_dev* %236, i32 25, i32* %237, i32 1)
  %239 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %240 = getelementptr inbounds [49 x i32], [49 x i32]* %7, i64 0, i64 28
  %241 = call i32 @reg_w(%struct.gspca_dev* %239, i32 28, i32* %240, i32 4)
  %242 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %243 = getelementptr inbounds [49 x i32], [49 x i32]* %7, i64 0, i64 1
  %244 = call i32 @reg_w(%struct.gspca_dev* %242, i32 1, i32* %243, i32 1)
  %245 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %246 = getelementptr inbounds [49 x i32], [49 x i32]* %7, i64 0, i64 24
  %247 = call i32 @reg_w(%struct.gspca_dev* %245, i32 24, i32* %246, i32 2)
  %248 = call i32 @msleep(i32 20)
  %249 = load %struct.sd*, %struct.sd** %3, align 8
  %250 = getelementptr inbounds %struct.sd, %struct.sd* %249, i32 0, i32 2
  store i32 -1, i32* %250, align 8
  %251 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %252 = call i32 @setgain(%struct.gspca_dev* %251)
  %253 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %254 = call i32 @setbrightness(%struct.gspca_dev* %253)
  %255 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %256 = call i32 @setexposure(%struct.gspca_dev* %255)
  %257 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %258 = call i32 @setfreq(%struct.gspca_dev* %257)
  %259 = load %struct.sd*, %struct.sd** %3, align 8
  %260 = getelementptr inbounds %struct.sd, %struct.sd* %259, i32 0, i32 5
  store i64 0, i64* %260, align 8
  %261 = load %struct.sd*, %struct.sd** %3, align 8
  %262 = getelementptr inbounds %struct.sd, %struct.sd* %261, i32 0, i32 4
  store i64 0, i64* %262, align 8
  %263 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %264 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %263, i32 0, i32 3
  store i64 0, i64* %264, align 8
  %265 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %266 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %265, i32 0, i32 2
  store i64 0, i64* %266, align 8
  %267 = load %struct.sd*, %struct.sd** %3, align 8
  %268 = getelementptr inbounds %struct.sd, %struct.sd* %267, i32 0, i32 3
  %269 = call i32 @atomic_set(i32* %268, i32 -1)
  %270 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %271 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %270, i32 0, i32 1
  %272 = load i32, i32* %271, align 8
  ret i32 %272
}

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @reg_w(%struct.gspca_dev*, i32, i32*, i32) #1

declare dso_local i32 @i2c_w_vector(%struct.gspca_dev*, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @i2c_w(%struct.gspca_dev*, i32*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @setgain(%struct.gspca_dev*) #1

declare dso_local i32 @setbrightness(%struct.gspca_dev*) #1

declare dso_local i32 @setexposure(%struct.gspca_dev*) #1

declare dso_local i32 @setfreq(%struct.gspca_dev*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
