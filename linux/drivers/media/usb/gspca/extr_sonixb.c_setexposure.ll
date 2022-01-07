; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_sonixb.c_setexposure.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_sonixb.c_setexposure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.gspca_dev = type { %struct.TYPE_7__*, i32, %struct.TYPE_6__*, %struct.TYPE_5__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.sd = type { i32, i32 }

@__const.setexposure.i2c = private unnamed_addr constant [8 x i32] [i32 192, i32 17, i32 37, i32 0, i32 0, i32 0, i32 0, i32 23], align 16
@__const.setexposure.i2c.1 = private unnamed_addr constant [8 x i32] [i32 176, i32 0, i32 16, i32 0, i32 0, i32 0, i32 0, i32 16], align 16
@sensor_data = common dso_local global %struct.TYPE_8__* null, align 8
@__const.setexposure.i2cpframerate = private unnamed_addr constant [8 x i32] [i32 176, i32 64, i32 4, i32 0, i32 0, i32 0, i32 0, i32 22], align 16
@__const.setexposure.i2cpexpo = private unnamed_addr constant [8 x i32] [i32 160, i32 64, i32 15, i32 0, i32 0, i32 0, i32 0, i32 22], align 16
@__const.setexposure.i2cpdoit = private unnamed_addr constant [8 x i32] [i32 160, i32 64, i32 17, i32 1, i32 0, i32 0, i32 0, i32 22], align 16
@__const.setexposure.i2cpframerate.2 = private unnamed_addr constant [8 x i32] [i32 177, i32 64, i32 3, i32 0, i32 0, i32 0, i32 0, i32 20], align 16
@__const.setexposure.i2cpexpo.3 = private unnamed_addr constant [8 x i32] [i32 161, i32 64, i32 5, i32 0, i32 0, i32 0, i32 0, i32 20], align 16
@__const.setexposure.i2cpdoit.4 = private unnamed_addr constant [8 x i32] [i32 161, i32 64, i32 19, i32 1, i32 0, i32 0, i32 0, i32 20], align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gspca_dev*)* @setexposure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setexposure(%struct.gspca_dev* %0) #0 {
  %2 = alloca %struct.gspca_dev*, align 8
  %3 = alloca %struct.sd*, align 8
  %4 = alloca [8 x i32], align 16
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [8 x i32], align 16
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [8 x i32], align 16
  %12 = alloca [8 x i32], align 16
  %13 = alloca [8 x i32], align 16
  %14 = alloca i32, align 4
  %15 = alloca [8 x i32], align 16
  %16 = alloca [8 x i32], align 16
  %17 = alloca [8 x i32], align 16
  %18 = alloca i32, align 4
  store %struct.gspca_dev* %0, %struct.gspca_dev** %2, align 8
  %19 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %20 = bitcast %struct.gspca_dev* %19 to %struct.sd*
  store %struct.sd* %20, %struct.sd** %3, align 8
  %21 = load %struct.sd*, %struct.sd** %3, align 8
  %22 = getelementptr inbounds %struct.sd, %struct.sd* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  switch i32 %23, label %243 [
    i32 134, label %24
    i32 129, label %40
    i32 128, label %40
    i32 133, label %51
    i32 132, label %51
    i32 130, label %153
    i32 131, label %199
  ]

24:                                               ; preds = %1
  %25 = bitcast [8 x i32]* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %25, i8* align 16 bitcast ([8 x i32]* @__const.setexposure.i2c to i8*), i64 32, i1 false)
  %26 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %27 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %26, i32 0, i32 0
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* %5, align 4
  %32 = ashr i32 %31, 8
  %33 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 3
  store i32 %32, i32* %33, align 4
  %34 = load i32, i32* %5, align 4
  %35 = and i32 %34, 255
  %36 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 4
  store i32 %35, i32* %36, align 16
  %37 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %38 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0
  %39 = call i32 @i2c_w(%struct.gspca_dev* %37, i32* %38)
  br label %244

40:                                               ; preds = %1, %1
  %41 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %42 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %41, i32 0, i32 0
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %6, align 4
  %46 = load i32, i32* %6, align 4
  %47 = shl i32 %46, 4
  %48 = or i32 %47, 11
  store i32 %48, i32* %6, align 4
  %49 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %50 = call i32 @reg_w(%struct.gspca_dev* %49, i32 25, i32* %6, i32 1)
  br label %244

51:                                               ; preds = %1, %1
  %52 = bitcast [8 x i32]* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %52, i8* align 16 bitcast ([8 x i32]* @__const.setexposure.i2c.1 to i8*), i64 32, i1 false)
  %53 = load %struct.sd*, %struct.sd** %3, align 8
  %54 = getelementptr inbounds %struct.sd, %struct.sd* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = icmp eq i32 %55, 133
  br i1 %56, label %57, label %59

57:                                               ; preds = %51
  store i32 77, i32* %10, align 4
  %58 = getelementptr inbounds [8 x i32], [8 x i32]* %7, i64 0, i64 4
  store i32 192, i32* %58, align 16
  br label %60

59:                                               ; preds = %51
  store i32 65, i32* %10, align 4
  br label %60

60:                                               ; preds = %59, %57
  %61 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %62 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %61, i32 0, i32 0
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = mul nsw i32 15, %65
  %67 = add nsw i32 %66, 999
  %68 = sdiv i32 %67, 1000
  store i32 %68, i32* %9, align 4
  %69 = load i32, i32* %9, align 4
  %70 = icmp slt i32 %69, 1
  br i1 %70, label %71, label %72

71:                                               ; preds = %60
  store i32 1, i32* %9, align 4
  br label %77

72:                                               ; preds = %60
  %73 = load i32, i32* %9, align 4
  %74 = icmp sgt i32 %73, 16
  br i1 %74, label %75, label %76

75:                                               ; preds = %72
  store i32 16, i32* %9, align 4
  br label %76

76:                                               ; preds = %75, %72
  br label %77

77:                                               ; preds = %76, %71
  %78 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %79 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %78, i32 0, i32 3
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = icmp eq i32 %81, 640
  br i1 %82, label %83, label %87

83:                                               ; preds = %77
  %84 = load i32, i32* %9, align 4
  %85 = icmp slt i32 %84, 4
  br i1 %85, label %86, label %87

86:                                               ; preds = %83
  store i32 4, i32* %9, align 4
  br label %87

87:                                               ; preds = %86, %83, %77
  %88 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %89 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %88, i32 0, i32 0
  %90 = load %struct.TYPE_7__*, %struct.TYPE_7__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = mul nsw i32 %92, 15
  %94 = load i32, i32* %10, align 4
  %95 = mul nsw i32 %93, %94
  %96 = load i32, i32* %9, align 4
  %97 = mul nsw i32 1000, %96
  %98 = sdiv i32 %95, %97
  store i32 %98, i32* %8, align 4
  %99 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %100 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %99, i32 0, i32 2
  %101 = load %struct.TYPE_6__*, %struct.TYPE_6__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %109

105:                                              ; preds = %87
  %106 = load i32, i32* %8, align 4
  %107 = icmp slt i32 %106, 10
  br i1 %107, label %108, label %109

108:                                              ; preds = %105
  store i32 10, i32* %8, align 4
  br label %116

109:                                              ; preds = %105, %87
  %110 = load i32, i32* %8, align 4
  %111 = load i32, i32* %10, align 4
  %112 = icmp sgt i32 %110, %111
  br i1 %112, label %113, label %115

113:                                              ; preds = %109
  %114 = load i32, i32* %10, align 4
  store i32 %114, i32* %8, align 4
  br label %115

115:                                              ; preds = %113, %109
  br label %116

116:                                              ; preds = %115, %108
  %117 = load %struct.TYPE_8__*, %struct.TYPE_8__** @sensor_data, align 8
  %118 = load %struct.sd*, %struct.sd** %3, align 8
  %119 = getelementptr inbounds %struct.sd, %struct.sd* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %117, i64 %121
  %123 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = getelementptr inbounds [8 x i32], [8 x i32]* %7, i64 0, i64 1
  store i32 %124, i32* %125, align 4
  %126 = load i32, i32* %8, align 4
  %127 = getelementptr inbounds [8 x i32], [8 x i32]* %7, i64 0, i64 3
  store i32 %126, i32* %127, align 4
  %128 = load i32, i32* %9, align 4
  %129 = sub nsw i32 %128, 1
  %130 = getelementptr inbounds [8 x i32], [8 x i32]* %7, i64 0, i64 4
  %131 = load i32, i32* %130, align 16
  %132 = or i32 %131, %129
  store i32 %132, i32* %130, align 16
  %133 = load %struct.sd*, %struct.sd** %3, align 8
  %134 = getelementptr inbounds %struct.sd, %struct.sd* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = load i32, i32* %9, align 4
  %137 = icmp eq i32 %135, %136
  br i1 %137, label %138, label %140

138:                                              ; preds = %116
  %139 = getelementptr inbounds [8 x i32], [8 x i32]* %7, i64 0, i64 0
  store i32 160, i32* %139, align 16
  br label %140

140:                                              ; preds = %138, %116
  %141 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %142 = getelementptr inbounds [8 x i32], [8 x i32]* %7, i64 0, i64 0
  %143 = call i32 @i2c_w(%struct.gspca_dev* %141, i32* %142)
  %144 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %145 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 8
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %148, label %152

148:                                              ; preds = %140
  %149 = load i32, i32* %9, align 4
  %150 = load %struct.sd*, %struct.sd** %3, align 8
  %151 = getelementptr inbounds %struct.sd, %struct.sd* %150, i32 0, i32 1
  store i32 %149, i32* %151, align 4
  br label %152

152:                                              ; preds = %148, %140
  br label %244

153:                                              ; preds = %1
  %154 = bitcast [8 x i32]* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %154, i8* align 16 bitcast ([8 x i32]* @__const.setexposure.i2cpframerate to i8*), i64 32, i1 false)
  %155 = bitcast [8 x i32]* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %155, i8* align 16 bitcast ([8 x i32]* @__const.setexposure.i2cpexpo to i8*), i64 32, i1 false)
  %156 = bitcast [8 x i32]* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %156, i8* align 16 bitcast ([8 x i32]* @__const.setexposure.i2cpdoit to i8*), i64 32, i1 false)
  %157 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %158 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %157, i32 0, i32 0
  %159 = load %struct.TYPE_7__*, %struct.TYPE_7__** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  %162 = icmp slt i32 %161, 200
  br i1 %162, label %163, label %173

163:                                              ; preds = %153
  %164 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %165 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %164, i32 0, i32 0
  %166 = load %struct.TYPE_7__*, %struct.TYPE_7__** %165, align 8
  %167 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 4
  %169 = mul nsw i32 %168, 255
  %170 = sdiv i32 %169, 200
  %171 = sub nsw i32 255, %170
  %172 = getelementptr inbounds [8 x i32], [8 x i32]* %12, i64 0, i64 3
  store i32 %171, i32* %172, align 4
  store i32 500, i32* %14, align 4
  br label %183

173:                                              ; preds = %153
  %174 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %175 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %174, i32 0, i32 0
  %176 = load %struct.TYPE_7__*, %struct.TYPE_7__** %175, align 8
  %177 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 4
  %179 = sub nsw i32 %178, 200
  %180 = mul nsw i32 %179, 1000
  %181 = sdiv i32 %180, 229
  %182 = add nsw i32 %181, 500
  store i32 %182, i32* %14, align 4
  br label %183

183:                                              ; preds = %173, %163
  %184 = load i32, i32* %14, align 4
  %185 = ashr i32 %184, 6
  %186 = getelementptr inbounds [8 x i32], [8 x i32]* %11, i64 0, i64 3
  store i32 %185, i32* %186, align 4
  %187 = load i32, i32* %14, align 4
  %188 = and i32 %187, 63
  %189 = getelementptr inbounds [8 x i32], [8 x i32]* %11, i64 0, i64 4
  store i32 %188, i32* %189, align 16
  %190 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %191 = getelementptr inbounds [8 x i32], [8 x i32]* %11, i64 0, i64 0
  %192 = call i32 @i2c_w(%struct.gspca_dev* %190, i32* %191)
  %193 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %194 = getelementptr inbounds [8 x i32], [8 x i32]* %12, i64 0, i64 0
  %195 = call i32 @i2c_w(%struct.gspca_dev* %193, i32* %194)
  %196 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %197 = getelementptr inbounds [8 x i32], [8 x i32]* %13, i64 0, i64 0
  %198 = call i32 @i2c_w(%struct.gspca_dev* %196, i32* %197)
  br label %244

199:                                              ; preds = %1
  %200 = bitcast [8 x i32]* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %200, i8* align 16 bitcast ([8 x i32]* @__const.setexposure.i2cpframerate.2 to i8*), i64 32, i1 false)
  %201 = bitcast [8 x i32]* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %201, i8* align 16 bitcast ([8 x i32]* @__const.setexposure.i2cpexpo.3 to i8*), i64 32, i1 false)
  %202 = bitcast [8 x i32]* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %202, i8* align 16 bitcast ([8 x i32]* @__const.setexposure.i2cpdoit.4 to i8*), i64 32, i1 false)
  %203 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %204 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %203, i32 0, i32 0
  %205 = load %struct.TYPE_7__*, %struct.TYPE_7__** %204, align 8
  %206 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 4
  %208 = icmp slt i32 %207, 150
  br i1 %208, label %209, label %217

209:                                              ; preds = %199
  %210 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %211 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %210, i32 0, i32 0
  %212 = load %struct.TYPE_7__*, %struct.TYPE_7__** %211, align 8
  %213 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %212, i32 0, i32 0
  %214 = load i32, i32* %213, align 4
  %215 = sub nsw i32 150, %214
  %216 = getelementptr inbounds [8 x i32], [8 x i32]* %16, i64 0, i64 3
  store i32 %215, i32* %216, align 4
  store i32 300, i32* %18, align 4
  br label %227

217:                                              ; preds = %199
  %218 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %219 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %218, i32 0, i32 0
  %220 = load %struct.TYPE_7__*, %struct.TYPE_7__** %219, align 8
  %221 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %220, i32 0, i32 0
  %222 = load i32, i32* %221, align 4
  %223 = sub nsw i32 %222, 150
  %224 = mul nsw i32 %223, 1000
  %225 = sdiv i32 %224, 230
  %226 = add nsw i32 %225, 300
  store i32 %226, i32* %18, align 4
  br label %227

227:                                              ; preds = %217, %209
  %228 = load i32, i32* %18, align 4
  %229 = ashr i32 %228, 4
  %230 = getelementptr inbounds [8 x i32], [8 x i32]* %15, i64 0, i64 3
  store i32 %229, i32* %230, align 4
  %231 = load i32, i32* %18, align 4
  %232 = and i32 %231, 15
  %233 = getelementptr inbounds [8 x i32], [8 x i32]* %15, i64 0, i64 4
  store i32 %232, i32* %233, align 16
  %234 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %235 = getelementptr inbounds [8 x i32], [8 x i32]* %15, i64 0, i64 0
  %236 = call i32 @i2c_w(%struct.gspca_dev* %234, i32* %235)
  %237 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %238 = getelementptr inbounds [8 x i32], [8 x i32]* %16, i64 0, i64 0
  %239 = call i32 @i2c_w(%struct.gspca_dev* %237, i32* %238)
  %240 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %241 = getelementptr inbounds [8 x i32], [8 x i32]* %17, i64 0, i64 0
  %242 = call i32 @i2c_w(%struct.gspca_dev* %240, i32* %241)
  br label %244

243:                                              ; preds = %1
  br label %244

244:                                              ; preds = %243, %227, %183, %152, %40, %24
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @i2c_w(%struct.gspca_dev*, i32*) #2

declare dso_local i32 @reg_w(%struct.gspca_dev*, i32, i32*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
