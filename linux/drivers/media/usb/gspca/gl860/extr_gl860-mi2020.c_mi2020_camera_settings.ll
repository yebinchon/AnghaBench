; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/gspca/gl860/extr_gl860-mi2020.c_mi2020_camera_settings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/gspca/gl860/extr_gl860-mi2020.c_mi2020_camera_settings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { i64, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i64 }
%struct.sd = type { i32, i32, i32, i64, %struct.TYPE_7__, %struct.TYPE_6__, %struct.TYPE_10__ }
%struct.TYPE_7__ = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.TYPE_6__ = type { i64, i64, i64, i64, i64, i64 }
%struct.TYPE_10__ = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }

@__const.mi2020_camera_settings.dat_sharp = private unnamed_addr constant [3 x i32] [i32 108, i32 0, i32 8], align 4
@__const.mi2020_camera_settings.dat_bright2 = private unnamed_addr constant [3 x i32] [i32 144, i32 0, i32 0], align 4
@__const.mi2020_camera_settings.dat_freq2 = private unnamed_addr constant [3 x i32] [i32 144, i32 0, i32 128], align 4
@__const.mi2020_camera_settings.dat_multi1 = private unnamed_addr constant [3 x i32] [i32 140, i32 167, i32 0], align 4
@__const.mi2020_camera_settings.dat_multi2 = private unnamed_addr constant [3 x i32] [i32 144, i32 0, i32 0], align 4
@__const.mi2020_camera_settings.dat_multi3 = private unnamed_addr constant [3 x i32] [i32 140, i32 167, i32 0], align 4
@__const.mi2020_camera_settings.dat_multi4 = private unnamed_addr constant [3 x i32] [i32 144, i32 0, i32 0], align 4
@__const.mi2020_camera_settings.dat_hvflip2 = private unnamed_addr constant [3 x i32] [i32 144, i32 4, i32 108], align 4
@__const.mi2020_camera_settings.dat_hvflip4 = private unnamed_addr constant [3 x i32] [i32 144, i32 0, i32 36], align 4
@__const.mi2020_camera_settings.dat_wbal2 = private unnamed_addr constant [3 x i32] [i32 144, i32 0, i32 0], align 4
@dat_freq1 = common dso_local global i32* null, align 8
@dat_wbal1 = common dso_local global i32* null, align 8
@dat_multi5 = common dso_local global i32* null, align 8
@dat_multi6 = common dso_local global i32* null, align 8
@tbl_init_post_alt_3B = common dso_local global i32 0, align 4
@dat_hvflip1 = common dso_local global i32* null, align 8
@dat_hvflip3 = common dso_local global i32* null, align 8
@dat_hvflip5 = common dso_local global i32* null, align 8
@dat_hvflip6 = common dso_local global i32* null, align 8
@IMAGE_640 = common dso_local global i64 0, align 8
@IMAGE_800 = common dso_local global i64 0, align 8
@tbl_middle_hvflip_low = common dso_local global i32 0, align 4
@tbl_middle_hvflip_big = common dso_local global i32 0, align 4
@tbl_end_hvflip = common dso_local global i32 0, align 4
@dat_bright1 = common dso_local global i32* null, align 8
@dat_bright3 = common dso_local global i32* null, align 8
@dat_bright4 = common dso_local global i32* null, align 8
@dat_bright5 = common dso_local global i32* null, align 8
@dat_bright6 = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gspca_dev*)* @mi2020_camera_settings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mi2020_camera_settings(%struct.gspca_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gspca_dev*, align 8
  %4 = alloca %struct.sd*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca [3 x i32], align 4
  %17 = alloca [3 x i32], align 4
  %18 = alloca [3 x i32], align 4
  %19 = alloca [3 x i32], align 4
  %20 = alloca [3 x i32], align 4
  %21 = alloca [3 x i32], align 4
  %22 = alloca [3 x i32], align 4
  %23 = alloca [3 x i32], align 4
  %24 = alloca [3 x i32], align 4
  %25 = alloca [3 x i32], align 4
  store %struct.gspca_dev* %0, %struct.gspca_dev** %3, align 8
  %26 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %27 = bitcast %struct.gspca_dev* %26 to %struct.sd*
  store %struct.sd* %27, %struct.sd** %4, align 8
  %28 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %29 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %30, align 8
  %32 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %33 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  store i64 %37, i64* %5, align 8
  %38 = load %struct.sd*, %struct.sd** %4, align 8
  %39 = getelementptr inbounds %struct.sd, %struct.sd* %38, i32 0, i32 6
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  store i64 %41, i64* %6, align 8
  %42 = load %struct.sd*, %struct.sd** %4, align 8
  %43 = getelementptr inbounds %struct.sd, %struct.sd* %42, i32 0, i32 6
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  store i64 %45, i64* %7, align 8
  %46 = load %struct.sd*, %struct.sd** %4, align 8
  %47 = getelementptr inbounds %struct.sd, %struct.sd* %46, i32 0, i32 6
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  store i64 %49, i64* %8, align 8
  %50 = load %struct.sd*, %struct.sd** %4, align 8
  %51 = getelementptr inbounds %struct.sd, %struct.sd* %50, i32 0, i32 6
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 3
  %53 = load i64, i64* %52, align 8
  store i64 %53, i64* %9, align 8
  %54 = load %struct.sd*, %struct.sd** %4, align 8
  %55 = getelementptr inbounds %struct.sd, %struct.sd* %54, i32 0, i32 6
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 4
  %57 = load i64, i64* %56, align 8
  store i64 %57, i64* %10, align 8
  %58 = load %struct.sd*, %struct.sd** %4, align 8
  %59 = getelementptr inbounds %struct.sd, %struct.sd* %58, i32 0, i32 6
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 5
  %61 = load i64, i64* %60, align 8
  %62 = icmp sgt i64 %61, 0
  %63 = zext i1 %62 to i32
  %64 = sext i32 %63 to i64
  store i64 %64, i64* %11, align 8
  %65 = load %struct.sd*, %struct.sd** %4, align 8
  %66 = getelementptr inbounds %struct.sd, %struct.sd* %65, i32 0, i32 6
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 6
  %68 = load i64, i64* %67, align 8
  %69 = icmp sgt i64 %68, 0
  %70 = zext i1 %69 to i32
  %71 = load %struct.sd*, %struct.sd** %4, align 8
  %72 = getelementptr inbounds %struct.sd, %struct.sd* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = xor i32 %70, %73
  %75 = icmp sgt i32 %74, 0
  %76 = zext i1 %75 to i32
  %77 = sext i32 %76 to i64
  store i64 %77, i64* %12, align 8
  %78 = load %struct.sd*, %struct.sd** %4, align 8
  %79 = getelementptr inbounds %struct.sd, %struct.sd* %78, i32 0, i32 6
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i32 0, i32 7
  %81 = load i64, i64* %80, align 8
  %82 = icmp sgt i64 %81, 0
  %83 = zext i1 %82 to i32
  %84 = load %struct.sd*, %struct.sd** %4, align 8
  %85 = getelementptr inbounds %struct.sd, %struct.sd* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = xor i32 %83, %86
  %88 = icmp sgt i32 %87, 0
  %89 = zext i1 %88 to i32
  %90 = sext i32 %89 to i64
  store i64 %90, i64* %13, align 8
  %91 = load %struct.sd*, %struct.sd** %4, align 8
  %92 = getelementptr inbounds %struct.sd, %struct.sd* %91, i32 0, i32 6
  %93 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %92, i32 0, i32 8
  %94 = load i64, i64* %93, align 8
  %95 = icmp sgt i64 %94, 0
  %96 = zext i1 %95 to i32
  %97 = sext i32 %96 to i64
  store i64 %97, i64* %14, align 8
  %98 = load %struct.sd*, %struct.sd** %4, align 8
  %99 = getelementptr inbounds %struct.sd, %struct.sd* %98, i32 0, i32 6
  %100 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %99, i32 0, i32 9
  %101 = load i64, i64* %100, align 8
  store i64 %101, i64* %15, align 8
  %102 = bitcast [3 x i32]* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %102, i8* align 4 bitcast ([3 x i32]* @__const.mi2020_camera_settings.dat_sharp to i8*), i64 12, i1 false)
  %103 = bitcast [3 x i32]* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %103, i8* align 4 bitcast ([3 x i32]* @__const.mi2020_camera_settings.dat_bright2 to i8*), i64 12, i1 false)
  %104 = bitcast [3 x i32]* %18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %104, i8* align 4 bitcast ([3 x i32]* @__const.mi2020_camera_settings.dat_freq2 to i8*), i64 12, i1 false)
  %105 = bitcast [3 x i32]* %19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %105, i8* align 4 bitcast ([3 x i32]* @__const.mi2020_camera_settings.dat_multi1 to i8*), i64 12, i1 false)
  %106 = bitcast [3 x i32]* %20 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %106, i8* align 4 bitcast ([3 x i32]* @__const.mi2020_camera_settings.dat_multi2 to i8*), i64 12, i1 false)
  %107 = bitcast [3 x i32]* %21 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %107, i8* align 4 bitcast ([3 x i32]* @__const.mi2020_camera_settings.dat_multi3 to i8*), i64 12, i1 false)
  %108 = bitcast [3 x i32]* %22 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %108, i8* align 4 bitcast ([3 x i32]* @__const.mi2020_camera_settings.dat_multi4 to i8*), i64 12, i1 false)
  %109 = bitcast [3 x i32]* %23 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %109, i8* align 4 bitcast ([3 x i32]* @__const.mi2020_camera_settings.dat_hvflip2 to i8*), i64 12, i1 false)
  %110 = bitcast [3 x i32]* %24 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %110, i8* align 4 bitcast ([3 x i32]* @__const.mi2020_camera_settings.dat_hvflip4 to i8*), i64 12, i1 false)
  %111 = bitcast [3 x i32]* %25 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %111, i8* align 4 bitcast ([3 x i32]* @__const.mi2020_camera_settings.dat_wbal2 to i8*), i64 12, i1 false)
  %112 = load %struct.sd*, %struct.sd** %4, align 8
  %113 = getelementptr inbounds %struct.sd, %struct.sd* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = icmp slt i32 %114, 4
  br i1 %115, label %116, label %119

116:                                              ; preds = %1
  %117 = load %struct.sd*, %struct.sd** %4, align 8
  %118 = getelementptr inbounds %struct.sd, %struct.sd* %117, i32 0, i32 2
  store i32 1, i32* %118, align 8
  store i32 0, i32* %2, align 4
  br label %529

119:                                              ; preds = %1
  %120 = load %struct.sd*, %struct.sd** %4, align 8
  %121 = getelementptr inbounds %struct.sd, %struct.sd* %120, i32 0, i32 2
  store i32 0, i32* %121, align 8
  %122 = load i64, i64* %14, align 8
  %123 = load %struct.sd*, %struct.sd** %4, align 8
  %124 = getelementptr inbounds %struct.sd, %struct.sd* %123, i32 0, i32 4
  %125 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = icmp ne i64 %122, %126
  br i1 %127, label %128, label %145

128:                                              ; preds = %119
  %129 = load i64, i64* %14, align 8
  %130 = load %struct.sd*, %struct.sd** %4, align 8
  %131 = getelementptr inbounds %struct.sd, %struct.sd* %130, i32 0, i32 4
  %132 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %131, i32 0, i32 0
  store i64 %129, i64* %132, align 8
  %133 = load i64, i64* %14, align 8
  %134 = icmp ne i64 %133, 0
  %135 = zext i1 %134 to i64
  %136 = select i1 %134, i32 192, i32 128
  %137 = getelementptr inbounds [3 x i32], [3 x i32]* %18, i64 0, i64 2
  store i32 %136, i32* %137, align 4
  %138 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %139 = load i32*, i32** @dat_freq1, align 8
  %140 = call i32 @ctrl_out(%struct.gspca_dev* %138, i32 64, i32 3, i32 31232, i32 51, i32 3, i32* %139)
  %141 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %142 = getelementptr inbounds [3 x i32], [3 x i32]* %18, i64 0, i64 0
  %143 = call i32 @ctrl_out(%struct.gspca_dev* %141, i32 64, i32 3, i32 31232, i32 51, i32 3, i32* %142)
  %144 = call i32 @msleep(i32 20)
  br label %145

145:                                              ; preds = %128, %119
  %146 = load i64, i64* %15, align 8
  %147 = load %struct.sd*, %struct.sd** %4, align 8
  %148 = getelementptr inbounds %struct.sd, %struct.sd* %147, i32 0, i32 4
  %149 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %148, i32 0, i32 1
  %150 = load i64, i64* %149, align 8
  %151 = icmp ne i64 %146, %150
  br i1 %151, label %152, label %220

152:                                              ; preds = %145
  %153 = load i64, i64* %15, align 8
  %154 = load %struct.sd*, %struct.sd** %4, align 8
  %155 = getelementptr inbounds %struct.sd, %struct.sd* %154, i32 0, i32 4
  %156 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %155, i32 0, i32 1
  store i64 %153, i64* %156, align 8
  %157 = load i64, i64* %15, align 8
  %158 = icmp ult i64 %157, 0
  br i1 %158, label %166, label %159

159:                                              ; preds = %152
  %160 = load i64, i64* %15, align 8
  %161 = load %struct.sd*, %struct.sd** %4, align 8
  %162 = getelementptr inbounds %struct.sd, %struct.sd* %161, i32 0, i32 5
  %163 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %162, i32 0, i32 0
  %164 = load i64, i64* %163, align 8
  %165 = icmp ugt i64 %160, %164
  br i1 %165, label %166, label %167

166:                                              ; preds = %159, %152
  store i64 0, i64* %15, align 8
  br label %167

167:                                              ; preds = %166, %159
  %168 = getelementptr inbounds [3 x i32], [3 x i32]* %19, i64 0, i64 2
  store i32 157, i32* %168, align 4
  %169 = getelementptr inbounds [3 x i32], [3 x i32]* %19, i64 0, i64 2
  %170 = load i32, i32* %169, align 4
  %171 = add nsw i32 %170, 1
  %172 = getelementptr inbounds [3 x i32], [3 x i32]* %21, i64 0, i64 2
  store i32 %171, i32* %172, align 4
  %173 = load i64, i64* %15, align 8
  %174 = icmp eq i64 %173, 0
  br i1 %174, label %175, label %179

175:                                              ; preds = %167
  %176 = getelementptr inbounds [3 x i32], [3 x i32]* %20, i64 0, i64 2
  store i32 0, i32* %176, align 4
  %177 = getelementptr inbounds [3 x i32], [3 x i32]* %22, i64 0, i64 2
  store i32 0, i32* %177, align 4
  %178 = getelementptr inbounds [3 x i32], [3 x i32]* %25, i64 0, i64 2
  store i32 23, i32* %178, align 4
  br label %195

179:                                              ; preds = %167
  %180 = load i64, i64* %15, align 8
  %181 = icmp eq i64 %180, 1
  br i1 %181, label %182, label %186

182:                                              ; preds = %179
  %183 = getelementptr inbounds [3 x i32], [3 x i32]* %20, i64 0, i64 2
  store i32 0, i32* %183, align 4
  %184 = getelementptr inbounds [3 x i32], [3 x i32]* %22, i64 0, i64 2
  store i32 0, i32* %184, align 4
  %185 = getelementptr inbounds [3 x i32], [3 x i32]* %25, i64 0, i64 2
  store i32 53, i32* %185, align 4
  br label %194

186:                                              ; preds = %179
  %187 = load i64, i64* %15, align 8
  %188 = icmp eq i64 %187, 2
  br i1 %188, label %189, label %193

189:                                              ; preds = %186
  %190 = getelementptr inbounds [3 x i32], [3 x i32]* %20, i64 0, i64 2
  store i32 32, i32* %190, align 4
  %191 = getelementptr inbounds [3 x i32], [3 x i32]* %22, i64 0, i64 2
  store i32 32, i32* %191, align 4
  %192 = getelementptr inbounds [3 x i32], [3 x i32]* %25, i64 0, i64 2
  store i32 23, i32* %192, align 4
  br label %193

193:                                              ; preds = %189, %186
  br label %194

194:                                              ; preds = %193, %182
  br label %195

195:                                              ; preds = %194, %175
  %196 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %197 = getelementptr inbounds [3 x i32], [3 x i32]* %19, i64 0, i64 0
  %198 = call i32 @ctrl_out(%struct.gspca_dev* %196, i32 64, i32 3, i32 31232, i32 51, i32 3, i32* %197)
  %199 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %200 = getelementptr inbounds [3 x i32], [3 x i32]* %20, i64 0, i64 0
  %201 = call i32 @ctrl_out(%struct.gspca_dev* %199, i32 64, i32 3, i32 31232, i32 51, i32 3, i32* %200)
  %202 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %203 = getelementptr inbounds [3 x i32], [3 x i32]* %21, i64 0, i64 0
  %204 = call i32 @ctrl_out(%struct.gspca_dev* %202, i32 64, i32 3, i32 31232, i32 51, i32 3, i32* %203)
  %205 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %206 = getelementptr inbounds [3 x i32], [3 x i32]* %22, i64 0, i64 0
  %207 = call i32 @ctrl_out(%struct.gspca_dev* %205, i32 64, i32 3, i32 31232, i32 51, i32 3, i32* %206)
  %208 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %209 = load i32*, i32** @dat_wbal1, align 8
  %210 = call i32 @ctrl_out(%struct.gspca_dev* %208, i32 64, i32 3, i32 31232, i32 51, i32 3, i32* %209)
  %211 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %212 = getelementptr inbounds [3 x i32], [3 x i32]* %25, i64 0, i64 0
  %213 = call i32 @ctrl_out(%struct.gspca_dev* %211, i32 64, i32 3, i32 31232, i32 51, i32 3, i32* %212)
  %214 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %215 = load i32*, i32** @dat_multi5, align 8
  %216 = call i32 @ctrl_out(%struct.gspca_dev* %214, i32 64, i32 3, i32 31232, i32 51, i32 3, i32* %215)
  %217 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %218 = load i32*, i32** @dat_multi6, align 8
  %219 = call i32 @ctrl_out(%struct.gspca_dev* %217, i32 64, i32 3, i32 31232, i32 51, i32 3, i32* %218)
  br label %220

220:                                              ; preds = %195, %145
  %221 = load i64, i64* %12, align 8
  %222 = load %struct.sd*, %struct.sd** %4, align 8
  %223 = getelementptr inbounds %struct.sd, %struct.sd* %222, i32 0, i32 4
  %224 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %223, i32 0, i32 2
  %225 = load i64, i64* %224, align 8
  %226 = icmp ne i64 %221, %225
  br i1 %226, label %234, label %227

227:                                              ; preds = %220
  %228 = load i64, i64* %13, align 8
  %229 = load %struct.sd*, %struct.sd** %4, align 8
  %230 = getelementptr inbounds %struct.sd, %struct.sd* %229, i32 0, i32 4
  %231 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %230, i32 0, i32 3
  %232 = load i64, i64* %231, align 8
  %233 = icmp ne i64 %228, %232
  br i1 %233, label %234, label %310

234:                                              ; preds = %227, %220
  %235 = load i64, i64* %12, align 8
  %236 = load %struct.sd*, %struct.sd** %4, align 8
  %237 = getelementptr inbounds %struct.sd, %struct.sd* %236, i32 0, i32 4
  %238 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %237, i32 0, i32 2
  store i64 %235, i64* %238, align 8
  %239 = load i64, i64* %13, align 8
  %240 = load %struct.sd*, %struct.sd** %4, align 8
  %241 = getelementptr inbounds %struct.sd, %struct.sd* %240, i32 0, i32 4
  %242 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %241, i32 0, i32 3
  store i64 %239, i64* %242, align 8
  %243 = load i64, i64* %13, align 8
  %244 = sub i64 1, %243
  %245 = mul i64 2, %244
  %246 = add i64 108, %245
  %247 = load i64, i64* %12, align 8
  %248 = sub i64 1, %247
  %249 = add i64 %246, %248
  %250 = trunc i64 %249 to i32
  %251 = getelementptr inbounds [3 x i32], [3 x i32]* %23, i64 0, i64 2
  store i32 %250, i32* %251, align 4
  %252 = load i64, i64* %13, align 8
  %253 = sub i64 1, %252
  %254 = mul i64 2, %253
  %255 = add i64 36, %254
  %256 = load i64, i64* %12, align 8
  %257 = sub i64 1, %256
  %258 = add i64 %255, %257
  %259 = trunc i64 %258 to i32
  %260 = getelementptr inbounds [3 x i32], [3 x i32]* %24, i64 0, i64 2
  store i32 %259, i32* %260, align 4
  %261 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %262 = load i32, i32* @tbl_init_post_alt_3B, align 4
  %263 = load i32, i32* @tbl_init_post_alt_3B, align 4
  %264 = call i32 @ARRAY_SIZE(i32 %263)
  %265 = call i32 @fetch_idxdata(%struct.gspca_dev* %261, i32 %262, i32 %264)
  %266 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %267 = load i32*, i32** @dat_hvflip1, align 8
  %268 = call i32 @ctrl_out(%struct.gspca_dev* %266, i32 64, i32 3, i32 31232, i32 51, i32 3, i32* %267)
  %269 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %270 = getelementptr inbounds [3 x i32], [3 x i32]* %23, i64 0, i64 0
  %271 = call i32 @ctrl_out(%struct.gspca_dev* %269, i32 64, i32 3, i32 31232, i32 51, i32 3, i32* %270)
  %272 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %273 = load i32*, i32** @dat_hvflip3, align 8
  %274 = call i32 @ctrl_out(%struct.gspca_dev* %272, i32 64, i32 3, i32 31232, i32 51, i32 3, i32* %273)
  %275 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %276 = getelementptr inbounds [3 x i32], [3 x i32]* %24, i64 0, i64 0
  %277 = call i32 @ctrl_out(%struct.gspca_dev* %275, i32 64, i32 3, i32 31232, i32 51, i32 3, i32* %276)
  %278 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %279 = load i32*, i32** @dat_hvflip5, align 8
  %280 = call i32 @ctrl_out(%struct.gspca_dev* %278, i32 64, i32 3, i32 31232, i32 51, i32 3, i32* %279)
  %281 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %282 = load i32*, i32** @dat_hvflip6, align 8
  %283 = call i32 @ctrl_out(%struct.gspca_dev* %281, i32 64, i32 3, i32 31232, i32 51, i32 3, i32* %282)
  %284 = call i32 @msleep(i32 40)
  %285 = load i64, i64* %5, align 8
  %286 = load i64, i64* @IMAGE_640, align 8
  %287 = icmp eq i64 %285, %286
  br i1 %287, label %292, label %288

288:                                              ; preds = %234
  %289 = load i64, i64* %5, align 8
  %290 = load i64, i64* @IMAGE_800, align 8
  %291 = icmp eq i64 %289, %290
  br i1 %291, label %292, label %298

292:                                              ; preds = %288, %234
  %293 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %294 = load i32, i32* @tbl_middle_hvflip_low, align 4
  %295 = load i32, i32* @tbl_middle_hvflip_low, align 4
  %296 = call i32 @ARRAY_SIZE(i32 %295)
  %297 = call i32 @fetch_idxdata(%struct.gspca_dev* %293, i32 %294, i32 %296)
  br label %304

298:                                              ; preds = %288
  %299 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %300 = load i32, i32* @tbl_middle_hvflip_big, align 4
  %301 = load i32, i32* @tbl_middle_hvflip_big, align 4
  %302 = call i32 @ARRAY_SIZE(i32 %301)
  %303 = call i32 @fetch_idxdata(%struct.gspca_dev* %299, i32 %300, i32 %302)
  br label %304

304:                                              ; preds = %298, %292
  %305 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %306 = load i32, i32* @tbl_end_hvflip, align 4
  %307 = load i32, i32* @tbl_end_hvflip, align 4
  %308 = call i32 @ARRAY_SIZE(i32 %307)
  %309 = call i32 @fetch_idxdata(%struct.gspca_dev* %305, i32 %306, i32 %308)
  br label %310

310:                                              ; preds = %304, %227
  %311 = load i64, i64* %7, align 8
  %312 = load %struct.sd*, %struct.sd** %4, align 8
  %313 = getelementptr inbounds %struct.sd, %struct.sd* %312, i32 0, i32 4
  %314 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %313, i32 0, i32 4
  %315 = load i64, i64* %314, align 8
  %316 = icmp ne i64 %311, %315
  br i1 %316, label %317, label %354

317:                                              ; preds = %310
  %318 = load i64, i64* %7, align 8
  %319 = load %struct.sd*, %struct.sd** %4, align 8
  %320 = getelementptr inbounds %struct.sd, %struct.sd* %319, i32 0, i32 4
  %321 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %320, i32 0, i32 4
  store i64 %318, i64* %321, align 8
  %322 = load i64, i64* %7, align 8
  %323 = icmp ult i64 %322, 0
  br i1 %323, label %331, label %324

324:                                              ; preds = %317
  %325 = load i64, i64* %7, align 8
  %326 = load %struct.sd*, %struct.sd** %4, align 8
  %327 = getelementptr inbounds %struct.sd, %struct.sd* %326, i32 0, i32 5
  %328 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %327, i32 0, i32 1
  %329 = load i64, i64* %328, align 8
  %330 = icmp ugt i64 %325, %329
  br i1 %330, label %331, label %332

331:                                              ; preds = %324, %317
  store i64 0, i64* %7, align 8
  br label %332

332:                                              ; preds = %331, %324
  %333 = load i64, i64* %7, align 8
  %334 = trunc i64 %333 to i32
  %335 = getelementptr inbounds [3 x i32], [3 x i32]* %17, i64 0, i64 2
  store i32 %334, i32* %335, align 4
  %336 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %337 = load i32*, i32** @dat_bright1, align 8
  %338 = call i32 @ctrl_out(%struct.gspca_dev* %336, i32 64, i32 3, i32 31232, i32 51, i32 3, i32* %337)
  %339 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %340 = getelementptr inbounds [3 x i32], [3 x i32]* %17, i64 0, i64 0
  %341 = call i32 @ctrl_out(%struct.gspca_dev* %339, i32 64, i32 3, i32 31232, i32 51, i32 3, i32* %340)
  %342 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %343 = load i32*, i32** @dat_bright3, align 8
  %344 = call i32 @ctrl_out(%struct.gspca_dev* %342, i32 64, i32 3, i32 31232, i32 51, i32 3, i32* %343)
  %345 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %346 = load i32*, i32** @dat_bright4, align 8
  %347 = call i32 @ctrl_out(%struct.gspca_dev* %345, i32 64, i32 3, i32 31232, i32 51, i32 3, i32* %346)
  %348 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %349 = load i32*, i32** @dat_bright5, align 8
  %350 = call i32 @ctrl_out(%struct.gspca_dev* %348, i32 64, i32 3, i32 31232, i32 51, i32 3, i32* %349)
  %351 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %352 = load i32*, i32** @dat_bright6, align 8
  %353 = call i32 @ctrl_out(%struct.gspca_dev* %351, i32 64, i32 3, i32 31232, i32 51, i32 3, i32* %352)
  br label %354

354:                                              ; preds = %332, %310
  %355 = load i64, i64* %9, align 8
  %356 = load %struct.sd*, %struct.sd** %4, align 8
  %357 = getelementptr inbounds %struct.sd, %struct.sd* %356, i32 0, i32 4
  %358 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %357, i32 0, i32 5
  %359 = load i64, i64* %358, align 8
  %360 = icmp ne i64 %355, %359
  br i1 %360, label %368, label %361

361:                                              ; preds = %354
  %362 = load i64, i64* %10, align 8
  %363 = load %struct.sd*, %struct.sd** %4, align 8
  %364 = getelementptr inbounds %struct.sd, %struct.sd* %363, i32 0, i32 4
  %365 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %364, i32 0, i32 6
  %366 = load i64, i64* %365, align 8
  %367 = icmp ne i64 %362, %366
  br i1 %367, label %368, label %434

368:                                              ; preds = %361, %354
  %369 = load i64, i64* %9, align 8
  %370 = load %struct.sd*, %struct.sd** %4, align 8
  %371 = getelementptr inbounds %struct.sd, %struct.sd* %370, i32 0, i32 4
  %372 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %371, i32 0, i32 5
  store i64 %369, i64* %372, align 8
  %373 = load i64, i64* %9, align 8
  %374 = icmp ult i64 %373, 0
  br i1 %374, label %382, label %375

375:                                              ; preds = %368
  %376 = load i64, i64* %9, align 8
  %377 = load %struct.sd*, %struct.sd** %4, align 8
  %378 = getelementptr inbounds %struct.sd, %struct.sd* %377, i32 0, i32 5
  %379 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %378, i32 0, i32 2
  %380 = load i64, i64* %379, align 8
  %381 = icmp ugt i64 %376, %380
  br i1 %381, label %382, label %383

382:                                              ; preds = %375, %368
  store i64 0, i64* %9, align 8
  br label %383

383:                                              ; preds = %382, %375
  %384 = load i64, i64* %10, align 8
  %385 = load %struct.sd*, %struct.sd** %4, align 8
  %386 = getelementptr inbounds %struct.sd, %struct.sd* %385, i32 0, i32 4
  %387 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %386, i32 0, i32 6
  store i64 %384, i64* %387, align 8
  %388 = load i64, i64* %10, align 8
  %389 = icmp ult i64 %388, 0
  br i1 %389, label %397, label %390

390:                                              ; preds = %383
  %391 = load i64, i64* %10, align 8
  %392 = load %struct.sd*, %struct.sd** %4, align 8
  %393 = getelementptr inbounds %struct.sd, %struct.sd* %392, i32 0, i32 5
  %394 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %393, i32 0, i32 3
  %395 = load i64, i64* %394, align 8
  %396 = icmp ugt i64 %391, %395
  br i1 %396, label %397, label %398

397:                                              ; preds = %390, %383
  store i64 0, i64* %10, align 8
  br label %398

398:                                              ; preds = %397, %390
  %399 = getelementptr inbounds [3 x i32], [3 x i32]* %19, i64 0, i64 2
  store i32 109, i32* %399, align 4
  %400 = getelementptr inbounds [3 x i32], [3 x i32]* %19, i64 0, i64 2
  %401 = load i32, i32* %400, align 4
  %402 = add nsw i32 %401, 1
  %403 = getelementptr inbounds [3 x i32], [3 x i32]* %21, i64 0, i64 2
  store i32 %402, i32* %403, align 4
  %404 = load i64, i64* %9, align 8
  %405 = icmp eq i64 %404, 0
  br i1 %405, label %406, label %407

406:                                              ; preds = %398
  store i64 4, i64* %9, align 8
  br label %407

407:                                              ; preds = %406, %398
  %408 = load i64, i64* %9, align 8
  %409 = mul i64 %408, 16
  %410 = add i64 %409, 2
  %411 = load i64, i64* %10, align 8
  %412 = sub i64 %410, %411
  %413 = trunc i64 %412 to i32
  %414 = getelementptr inbounds [3 x i32], [3 x i32]* %20, i64 0, i64 2
  store i32 %413, i32* %414, align 4
  %415 = getelementptr inbounds [3 x i32], [3 x i32]* %22, i64 0, i64 2
  store i32 %413, i32* %415, align 4
  %416 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %417 = getelementptr inbounds [3 x i32], [3 x i32]* %19, i64 0, i64 0
  %418 = call i32 @ctrl_out(%struct.gspca_dev* %416, i32 64, i32 3, i32 31232, i32 51, i32 3, i32* %417)
  %419 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %420 = getelementptr inbounds [3 x i32], [3 x i32]* %20, i64 0, i64 0
  %421 = call i32 @ctrl_out(%struct.gspca_dev* %419, i32 64, i32 3, i32 31232, i32 51, i32 3, i32* %420)
  %422 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %423 = getelementptr inbounds [3 x i32], [3 x i32]* %21, i64 0, i64 0
  %424 = call i32 @ctrl_out(%struct.gspca_dev* %422, i32 64, i32 3, i32 31232, i32 51, i32 3, i32* %423)
  %425 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %426 = getelementptr inbounds [3 x i32], [3 x i32]* %22, i64 0, i64 0
  %427 = call i32 @ctrl_out(%struct.gspca_dev* %425, i32 64, i32 3, i32 31232, i32 51, i32 3, i32* %426)
  %428 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %429 = load i32*, i32** @dat_multi5, align 8
  %430 = call i32 @ctrl_out(%struct.gspca_dev* %428, i32 64, i32 3, i32 31232, i32 51, i32 3, i32* %429)
  %431 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %432 = load i32*, i32** @dat_multi6, align 8
  %433 = call i32 @ctrl_out(%struct.gspca_dev* %431, i32 64, i32 3, i32 31232, i32 51, i32 3, i32* %432)
  br label %434

434:                                              ; preds = %407, %361
  %435 = load i64, i64* %6, align 8
  %436 = load %struct.sd*, %struct.sd** %4, align 8
  %437 = getelementptr inbounds %struct.sd, %struct.sd* %436, i32 0, i32 4
  %438 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %437, i32 0, i32 7
  %439 = load i64, i64* %438, align 8
  %440 = icmp ne i64 %435, %439
  br i1 %440, label %441, label %484

441:                                              ; preds = %434
  %442 = load i64, i64* %6, align 8
  %443 = load %struct.sd*, %struct.sd** %4, align 8
  %444 = getelementptr inbounds %struct.sd, %struct.sd* %443, i32 0, i32 4
  %445 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %444, i32 0, i32 7
  store i64 %442, i64* %445, align 8
  %446 = load i64, i64* %6, align 8
  %447 = icmp ult i64 %446, 0
  br i1 %447, label %455, label %448

448:                                              ; preds = %441
  %449 = load i64, i64* %6, align 8
  %450 = load %struct.sd*, %struct.sd** %4, align 8
  %451 = getelementptr inbounds %struct.sd, %struct.sd* %450, i32 0, i32 5
  %452 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %451, i32 0, i32 4
  %453 = load i64, i64* %452, align 8
  %454 = icmp ugt i64 %449, %453
  br i1 %454, label %455, label %456

455:                                              ; preds = %448, %441
  store i64 0, i64* %6, align 8
  br label %456

456:                                              ; preds = %455, %448
  %457 = getelementptr inbounds [3 x i32], [3 x i32]* %19, i64 0, i64 2
  store i32 157, i32* %457, align 4
  %458 = getelementptr inbounds [3 x i32], [3 x i32]* %19, i64 0, i64 2
  %459 = load i32, i32* %458, align 4
  %460 = add nsw i32 %459, 1
  %461 = getelementptr inbounds [3 x i32], [3 x i32]* %21, i64 0, i64 2
  store i32 %460, i32* %461, align 4
  %462 = load i64, i64* %6, align 8
  %463 = trunc i64 %462 to i32
  %464 = getelementptr inbounds [3 x i32], [3 x i32]* %20, i64 0, i64 2
  store i32 %463, i32* %464, align 4
  %465 = getelementptr inbounds [3 x i32], [3 x i32]* %22, i64 0, i64 2
  store i32 %463, i32* %465, align 4
  %466 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %467 = getelementptr inbounds [3 x i32], [3 x i32]* %19, i64 0, i64 0
  %468 = call i32 @ctrl_out(%struct.gspca_dev* %466, i32 64, i32 3, i32 31232, i32 51, i32 3, i32* %467)
  %469 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %470 = getelementptr inbounds [3 x i32], [3 x i32]* %20, i64 0, i64 0
  %471 = call i32 @ctrl_out(%struct.gspca_dev* %469, i32 64, i32 3, i32 31232, i32 51, i32 3, i32* %470)
  %472 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %473 = getelementptr inbounds [3 x i32], [3 x i32]* %21, i64 0, i64 0
  %474 = call i32 @ctrl_out(%struct.gspca_dev* %472, i32 64, i32 3, i32 31232, i32 51, i32 3, i32* %473)
  %475 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %476 = getelementptr inbounds [3 x i32], [3 x i32]* %22, i64 0, i64 0
  %477 = call i32 @ctrl_out(%struct.gspca_dev* %475, i32 64, i32 3, i32 31232, i32 51, i32 3, i32* %476)
  %478 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %479 = load i32*, i32** @dat_multi5, align 8
  %480 = call i32 @ctrl_out(%struct.gspca_dev* %478, i32 64, i32 3, i32 31232, i32 51, i32 3, i32* %479)
  %481 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %482 = load i32*, i32** @dat_multi6, align 8
  %483 = call i32 @ctrl_out(%struct.gspca_dev* %481, i32 64, i32 3, i32 31232, i32 51, i32 3, i32* %482)
  br label %484

484:                                              ; preds = %456, %434
  %485 = load i64, i64* %8, align 8
  %486 = load %struct.sd*, %struct.sd** %4, align 8
  %487 = getelementptr inbounds %struct.sd, %struct.sd* %486, i32 0, i32 4
  %488 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %487, i32 0, i32 8
  %489 = load i64, i64* %488, align 8
  %490 = icmp ne i64 %485, %489
  br i1 %490, label %491, label %513

491:                                              ; preds = %484
  %492 = load i64, i64* %8, align 8
  %493 = load %struct.sd*, %struct.sd** %4, align 8
  %494 = getelementptr inbounds %struct.sd, %struct.sd* %493, i32 0, i32 4
  %495 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %494, i32 0, i32 8
  store i64 %492, i64* %495, align 8
  %496 = load i64, i64* %8, align 8
  %497 = icmp ult i64 %496, 0
  br i1 %497, label %505, label %498

498:                                              ; preds = %491
  %499 = load i64, i64* %8, align 8
  %500 = load %struct.sd*, %struct.sd** %4, align 8
  %501 = getelementptr inbounds %struct.sd, %struct.sd* %500, i32 0, i32 5
  %502 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %501, i32 0, i32 5
  %503 = load i64, i64* %502, align 8
  %504 = icmp ugt i64 %499, %503
  br i1 %504, label %505, label %506

505:                                              ; preds = %498, %491
  store i64 0, i64* %8, align 8
  br label %506

506:                                              ; preds = %505, %498
  %507 = load i64, i64* %8, align 8
  %508 = trunc i64 %507 to i32
  %509 = getelementptr inbounds [3 x i32], [3 x i32]* %16, i64 0, i64 1
  store i32 %508, i32* %509, align 4
  %510 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %511 = getelementptr inbounds [3 x i32], [3 x i32]* %16, i64 0, i64 0
  %512 = call i32 @ctrl_out(%struct.gspca_dev* %510, i32 64, i32 3, i32 31232, i32 50, i32 3, i32* %511)
  br label %513

513:                                              ; preds = %506, %484
  %514 = load i64, i64* %11, align 8
  %515 = load %struct.sd*, %struct.sd** %4, align 8
  %516 = getelementptr inbounds %struct.sd, %struct.sd* %515, i32 0, i32 4
  %517 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %516, i32 0, i32 9
  %518 = load i64, i64* %517, align 8
  %519 = icmp ne i64 %514, %518
  br i1 %519, label %520, label %528

520:                                              ; preds = %513
  %521 = load i64, i64* %11, align 8
  %522 = load %struct.sd*, %struct.sd** %4, align 8
  %523 = getelementptr inbounds %struct.sd, %struct.sd* %522, i32 0, i32 3
  store i64 %521, i64* %523, align 8
  %524 = load i64, i64* %11, align 8
  %525 = load %struct.sd*, %struct.sd** %4, align 8
  %526 = getelementptr inbounds %struct.sd, %struct.sd* %525, i32 0, i32 4
  %527 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %526, i32 0, i32 9
  store i64 %524, i64* %527, align 8
  br label %528

528:                                              ; preds = %520, %513
  store i32 0, i32* %2, align 4
  br label %529

529:                                              ; preds = %528, %116
  %530 = load i32, i32* %2, align 4
  ret i32 %530
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @ctrl_out(%struct.gspca_dev*, i32, i32, i32, i32, i32, i32*) #2

declare dso_local i32 @msleep(i32) #2

declare dso_local i32 @fetch_idxdata(%struct.gspca_dev*, i32, i32) #2

declare dso_local i32 @ARRAY_SIZE(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
