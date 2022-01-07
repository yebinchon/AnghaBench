; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_tc90522.c_tc90522s_get_frontend.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_tc90522.c_tc90522s_get_frontend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.TYPE_7__, %struct.tc90522_state* }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 (%struct.dvb_frontend.0*, i32*)* }
%struct.dvb_frontend.0 = type opaque
%struct.tc90522_state = type { i32 }
%struct.dtv_frontend_properties = type { i32, i32, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.TYPE_5__*, i8*, i8*, i32 }
%struct.dtv_fe_stats = type { i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i64, i32, i8* }
%struct.TYPE_5__ = type { i32, i8*, i8* }

@SYS_ISDBS = common dso_local global i32 0, align 4
@PSK_8 = common dso_local global i8* null, align 8
@QPSK = common dso_local global i8* null, align 8
@fec_conv_sat = common dso_local global i8** null, align 8
@FE_SCALE_NOT_AVAILABLE = common dso_local global i8* null, align 8
@FE_SCALE_DECIBEL = common dso_local global i8* null, align 8
@FE_SCALE_COUNTER = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, %struct.dtv_frontend_properties*)* @tc90522s_get_frontend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tc90522s_get_frontend(%struct.dvb_frontend* %0, %struct.dtv_frontend_properties* %1) #0 {
  %3 = alloca %struct.dvb_frontend*, align 8
  %4 = alloca %struct.dtv_frontend_properties*, align 8
  %5 = alloca %struct.tc90522_state*, align 8
  %6 = alloca %struct.dtv_fe_stats*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [10 x i32], align 16
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %3, align 8
  store %struct.dtv_frontend_properties* %1, %struct.dtv_frontend_properties** %4, align 8
  %17 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %18 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %17, i32 0, i32 1
  %19 = load %struct.tc90522_state*, %struct.tc90522_state** %18, align 8
  store %struct.tc90522_state* %19, %struct.tc90522_state** %5, align 8
  %20 = load i32, i32* @SYS_ISDBS, align 4
  %21 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %22 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %21, i32 0, i32 9
  store i32 %20, i32* %22, align 8
  %23 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %24 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %23, i32 0, i32 0
  store i32 28860000, i32* %24, align 8
  store i32 0, i32* %9, align 4
  %25 = load %struct.tc90522_state*, %struct.tc90522_state** %5, align 8
  %26 = getelementptr inbounds [10 x i32], [10 x i32]* %10, i64 0, i64 0
  %27 = call i32 @reg_read(%struct.tc90522_state* %25, i32 230, i32* %26, i32 5)
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %7, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %125

30:                                               ; preds = %2
  %31 = getelementptr inbounds [10 x i32], [10 x i32]* %10, i64 0, i64 0
  %32 = load i32, i32* %31, align 16
  %33 = shl i32 %32, 8
  %34 = getelementptr inbounds [10 x i32], [10 x i32]* %10, i64 0, i64 1
  %35 = load i32, i32* %34, align 4
  %36 = or i32 %33, %35
  %37 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %38 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 4
  %39 = getelementptr inbounds [10 x i32], [10 x i32]* %10, i64 0, i64 2
  %40 = load i32, i32* %39, align 8
  %41 = and i32 %40, 112
  %42 = ashr i32 %41, 4
  store i32 %42, i32* %12, align 4
  %43 = load i32, i32* %12, align 4
  %44 = icmp eq i32 %43, 7
  br i1 %44, label %45, label %47

45:                                               ; preds = %30
  %46 = load i8*, i8** @PSK_8, align 8
  br label %49

47:                                               ; preds = %30
  %48 = load i8*, i8** @QPSK, align 8
  br label %49

49:                                               ; preds = %47, %45
  %50 = phi i8* [ %46, %45 ], [ %48, %47 ]
  %51 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %52 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %51, i32 0, i32 7
  store i8* %50, i8** %52, align 8
  %53 = load i8**, i8*** @fec_conv_sat, align 8
  %54 = load i32, i32* %12, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i8*, i8** %53, i64 %55
  %57 = load i8*, i8** %56, align 8
  %58 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %59 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %58, i32 0, i32 8
  store i8* %57, i8** %59, align 8
  %60 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %61 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %60, i32 0, i32 8
  %62 = load i8*, i8** %61, align 8
  %63 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %64 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %63, i32 0, i32 6
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i64 0
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 2
  store i8* %62, i8** %67, align 8
  %68 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %69 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %68, i32 0, i32 7
  %70 = load i8*, i8** %69, align 8
  %71 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %72 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %71, i32 0, i32 6
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i64 0
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 1
  store i8* %70, i8** %75, align 8
  %76 = getelementptr inbounds [10 x i32], [10 x i32]* %10, i64 0, i64 3
  %77 = load i32, i32* %76, align 4
  %78 = and i32 %77, 63
  %79 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %80 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %79, i32 0, i32 6
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i64 0
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 0
  store i32 %78, i32* %83, align 8
  %84 = getelementptr inbounds [10 x i32], [10 x i32]* %10, i64 0, i64 2
  %85 = load i32, i32* %84, align 8
  %86 = and i32 %85, 7
  store i32 %86, i32* %12, align 4
  %87 = load i8**, i8*** @fec_conv_sat, align 8
  %88 = load i32, i32* %12, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i8*, i8** %87, i64 %89
  %91 = load i8*, i8** %90, align 8
  %92 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %93 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %92, i32 0, i32 6
  %94 = load %struct.TYPE_5__*, %struct.TYPE_5__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i64 1
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 2
  store i8* %91, i8** %96, align 8
  %97 = load i32, i32* %12, align 4
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %99, label %105

99:                                               ; preds = %49
  %100 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %101 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %100, i32 0, i32 6
  %102 = load %struct.TYPE_5__*, %struct.TYPE_5__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %102, i64 1
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i32 0, i32 0
  store i32 0, i32* %104, align 8
  br label %114

105:                                              ; preds = %49
  %106 = getelementptr inbounds [10 x i32], [10 x i32]* %10, i64 0, i64 4
  %107 = load i32, i32* %106, align 16
  %108 = and i32 %107, 63
  %109 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %110 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %109, i32 0, i32 6
  %111 = load %struct.TYPE_5__*, %struct.TYPE_5__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %111, i64 1
  %113 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %112, i32 0, i32 0
  store i32 %108, i32* %113, align 8
  br label %114

114:                                              ; preds = %105, %99
  %115 = load i8*, i8** @QPSK, align 8
  %116 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %117 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %116, i32 0, i32 6
  %118 = load %struct.TYPE_5__*, %struct.TYPE_5__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %118, i64 1
  %120 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %119, i32 0, i32 1
  store i8* %115, i8** %120, align 8
  %121 = load i32, i32* %12, align 4
  %122 = icmp sgt i32 %121, 0
  %123 = zext i1 %122 to i64
  %124 = select i1 %122, i32 2, i32 1
  store i32 %124, i32* %9, align 4
  br label %125

125:                                              ; preds = %114, %2
  %126 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %127 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %126, i32 0, i32 5
  store %struct.dtv_fe_stats* %127, %struct.dtv_fe_stats** %6, align 8
  %128 = load %struct.dtv_fe_stats*, %struct.dtv_fe_stats** %6, align 8
  %129 = getelementptr inbounds %struct.dtv_fe_stats, %struct.dtv_fe_stats* %128, i32 0, i32 0
  store i32 0, i32* %129, align 8
  %130 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %131 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %132, i32 0, i32 0
  %134 = load i32 (%struct.dvb_frontend.0*, i32*)*, i32 (%struct.dvb_frontend.0*, i32*)** %133, align 8
  %135 = icmp ne i32 (%struct.dvb_frontend.0*, i32*)* %134, null
  br i1 %135, label %136, label %145

136:                                              ; preds = %125
  %137 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %138 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %139, i32 0, i32 0
  %141 = load i32 (%struct.dvb_frontend.0*, i32*)*, i32 (%struct.dvb_frontend.0*, i32*)** %140, align 8
  %142 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %143 = bitcast %struct.dvb_frontend* %142 to %struct.dvb_frontend.0*
  %144 = call i32 %141(%struct.dvb_frontend.0* %143, i32* %13)
  br label %145

145:                                              ; preds = %136, %125
  %146 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %147 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %146, i32 0, i32 4
  store %struct.dtv_fe_stats* %147, %struct.dtv_fe_stats** %6, align 8
  %148 = load %struct.dtv_fe_stats*, %struct.dtv_fe_stats** %6, align 8
  %149 = getelementptr inbounds %struct.dtv_fe_stats, %struct.dtv_fe_stats* %148, i32 0, i32 0
  store i32 1, i32* %149, align 8
  %150 = load i8*, i8** @FE_SCALE_NOT_AVAILABLE, align 8
  %151 = load %struct.dtv_fe_stats*, %struct.dtv_fe_stats** %6, align 8
  %152 = getelementptr inbounds %struct.dtv_fe_stats, %struct.dtv_fe_stats* %151, i32 0, i32 1
  %153 = load %struct.TYPE_8__*, %struct.TYPE_8__** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %153, i64 0
  %155 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %154, i32 0, i32 2
  store i8* %150, i8** %155, align 8
  store i32 0, i32* %11, align 4
  %156 = load %struct.tc90522_state*, %struct.tc90522_state** %5, align 8
  %157 = getelementptr inbounds [10 x i32], [10 x i32]* %10, i64 0, i64 0
  %158 = call i32 @reg_read(%struct.tc90522_state* %156, i32 188, i32* %157, i32 2)
  store i32 %158, i32* %7, align 4
  %159 = load i32, i32* %7, align 4
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %161, label %168

161:                                              ; preds = %145
  %162 = getelementptr inbounds [10 x i32], [10 x i32]* %10, i64 0, i64 0
  %163 = load i32, i32* %162, align 16
  %164 = shl i32 %163, 8
  %165 = getelementptr inbounds [10 x i32], [10 x i32]* %10, i64 0, i64 1
  %166 = load i32, i32* %165, align 4
  %167 = or i32 %164, %166
  store i32 %167, i32* %11, align 4
  br label %168

168:                                              ; preds = %161, %145
  %169 = load i32, i32* %11, align 4
  %170 = icmp sge i32 %169, 3000
  br i1 %170, label %171, label %231

171:                                              ; preds = %168
  %172 = load i32, i32* %11, align 4
  %173 = sub nsw i32 %172, 3000
  store i32 %173, i32* %11, align 4
  %174 = load i32, i32* %11, align 4
  %175 = shl i32 %174, 16
  %176 = call i32 @int_sqrt(i32 %175)
  store i32 %176, i32* %14, align 4
  %177 = load i32, i32* %11, align 4
  %178 = load i32, i32* %11, align 4
  %179 = mul nsw i32 %177, %178
  store i32 %179, i32* %15, align 4
  %180 = load i32, i32* %15, align 4
  %181 = sext i32 %180 to i64
  %182 = mul nsw i64 -16346, %181
  %183 = load i32, i32* %14, align 4
  %184 = sext i32 %183 to i64
  %185 = mul nsw i64 %182, %184
  %186 = call i32 @div64_s64(i64 %185, i32 10)
  %187 = ashr i32 %186, 35
  %188 = sext i32 %187 to i64
  store i64 %188, i64* %16, align 8
  %189 = load i32, i32* %15, align 4
  %190 = sext i32 %189 to i64
  %191 = mul nsw i64 14341, %190
  %192 = ashr i64 %191, 21
  %193 = load i64, i64* %16, align 8
  %194 = add nsw i64 %193, %192
  store i64 %194, i64* %16, align 8
  %195 = load i32, i32* %11, align 4
  %196 = sext i32 %195 to i64
  %197 = mul nsw i64 50259, %196
  %198 = load i32, i32* %14, align 4
  %199 = sext i32 %198 to i64
  %200 = mul nsw i64 %197, %199
  %201 = ashr i64 %200, 23
  %202 = load i64, i64* %16, align 8
  %203 = sub nsw i64 %202, %201
  store i64 %203, i64* %16, align 8
  %204 = load i32, i32* %11, align 4
  %205 = sext i32 %204 to i64
  %206 = mul nsw i64 88977, %205
  %207 = ashr i64 %206, 9
  %208 = load i64, i64* %16, align 8
  %209 = add nsw i64 %208, %207
  store i64 %209, i64* %16, align 8
  %210 = load i32, i32* %14, align 4
  %211 = sext i32 %210 to i64
  %212 = mul nsw i64 89565, %211
  %213 = ashr i64 %212, 11
  %214 = load i64, i64* %16, align 8
  %215 = sub nsw i64 %214, %213
  store i64 %215, i64* %16, align 8
  %216 = load i64, i64* %16, align 8
  %217 = add nsw i64 %216, 470856
  store i64 %217, i64* %16, align 8
  %218 = load i64, i64* %16, align 8
  %219 = ashr i64 %218, 3
  %220 = load %struct.dtv_fe_stats*, %struct.dtv_fe_stats** %6, align 8
  %221 = getelementptr inbounds %struct.dtv_fe_stats, %struct.dtv_fe_stats* %220, i32 0, i32 1
  %222 = load %struct.TYPE_8__*, %struct.TYPE_8__** %221, align 8
  %223 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %222, i64 0
  %224 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %223, i32 0, i32 0
  store i64 %219, i64* %224, align 8
  %225 = load i8*, i8** @FE_SCALE_DECIBEL, align 8
  %226 = load %struct.dtv_fe_stats*, %struct.dtv_fe_stats** %6, align 8
  %227 = getelementptr inbounds %struct.dtv_fe_stats, %struct.dtv_fe_stats* %226, i32 0, i32 1
  %228 = load %struct.TYPE_8__*, %struct.TYPE_8__** %227, align 8
  %229 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %228, i64 0
  %230 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %229, i32 0, i32 2
  store i8* %225, i8** %230, align 8
  br label %231

231:                                              ; preds = %171, %168
  %232 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %233 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %232, i32 0, i32 3
  store %struct.dtv_fe_stats* %233, %struct.dtv_fe_stats** %6, align 8
  %234 = load %struct.dtv_fe_stats*, %struct.dtv_fe_stats** %6, align 8
  %235 = call i32 @memset(%struct.dtv_fe_stats* %234, i32 0, i32 16)
  %236 = load i32, i32* %9, align 4
  %237 = load %struct.dtv_fe_stats*, %struct.dtv_fe_stats** %6, align 8
  %238 = getelementptr inbounds %struct.dtv_fe_stats, %struct.dtv_fe_stats* %237, i32 0, i32 0
  store i32 %236, i32* %238, align 8
  %239 = load %struct.tc90522_state*, %struct.tc90522_state** %5, align 8
  %240 = getelementptr inbounds [10 x i32], [10 x i32]* %10, i64 0, i64 0
  %241 = call i32 @reg_read(%struct.tc90522_state* %239, i32 235, i32* %240, i32 10)
  store i32 %241, i32* %7, align 4
  %242 = load i32, i32* %7, align 4
  %243 = icmp slt i32 %242, 0
  br i1 %243, label %244, label %262

244:                                              ; preds = %231
  store i32 0, i32* %8, align 4
  br label %245

245:                                              ; preds = %258, %244
  %246 = load i32, i32* %8, align 4
  %247 = load i32, i32* %9, align 4
  %248 = icmp slt i32 %246, %247
  br i1 %248, label %249, label %261

249:                                              ; preds = %245
  %250 = load i8*, i8** @FE_SCALE_NOT_AVAILABLE, align 8
  %251 = load %struct.dtv_fe_stats*, %struct.dtv_fe_stats** %6, align 8
  %252 = getelementptr inbounds %struct.dtv_fe_stats, %struct.dtv_fe_stats* %251, i32 0, i32 1
  %253 = load %struct.TYPE_8__*, %struct.TYPE_8__** %252, align 8
  %254 = load i32, i32* %8, align 4
  %255 = sext i32 %254 to i64
  %256 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %253, i64 %255
  %257 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %256, i32 0, i32 2
  store i8* %250, i8** %257, align 8
  br label %258

258:                                              ; preds = %249
  %259 = load i32, i32* %8, align 4
  %260 = add nsw i32 %259, 1
  store i32 %260, i32* %8, align 4
  br label %245

261:                                              ; preds = %245
  br label %308

262:                                              ; preds = %231
  store i32 0, i32* %8, align 4
  br label %263

263:                                              ; preds = %304, %262
  %264 = load i32, i32* %8, align 4
  %265 = load i32, i32* %9, align 4
  %266 = icmp slt i32 %264, %265
  br i1 %266, label %267, label %307

267:                                              ; preds = %263
  %268 = load i8*, i8** @FE_SCALE_COUNTER, align 8
  %269 = load %struct.dtv_fe_stats*, %struct.dtv_fe_stats** %6, align 8
  %270 = getelementptr inbounds %struct.dtv_fe_stats, %struct.dtv_fe_stats* %269, i32 0, i32 1
  %271 = load %struct.TYPE_8__*, %struct.TYPE_8__** %270, align 8
  %272 = load i32, i32* %8, align 4
  %273 = sext i32 %272 to i64
  %274 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %271, i64 %273
  %275 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %274, i32 0, i32 2
  store i8* %268, i8** %275, align 8
  %276 = load i32, i32* %8, align 4
  %277 = mul nsw i32 %276, 5
  %278 = sext i32 %277 to i64
  %279 = getelementptr inbounds [10 x i32], [10 x i32]* %10, i64 0, i64 %278
  %280 = load i32, i32* %279, align 4
  %281 = shl i32 %280, 16
  %282 = load i32, i32* %8, align 4
  %283 = mul nsw i32 %282, 5
  %284 = add nsw i32 %283, 1
  %285 = sext i32 %284 to i64
  %286 = getelementptr inbounds [10 x i32], [10 x i32]* %10, i64 0, i64 %285
  %287 = load i32, i32* %286, align 4
  %288 = shl i32 %287, 8
  %289 = or i32 %281, %288
  %290 = load i32, i32* %8, align 4
  %291 = mul nsw i32 %290, 5
  %292 = add nsw i32 %291, 2
  %293 = sext i32 %292 to i64
  %294 = getelementptr inbounds [10 x i32], [10 x i32]* %10, i64 0, i64 %293
  %295 = load i32, i32* %294, align 4
  %296 = or i32 %289, %295
  %297 = load %struct.dtv_fe_stats*, %struct.dtv_fe_stats** %6, align 8
  %298 = getelementptr inbounds %struct.dtv_fe_stats, %struct.dtv_fe_stats* %297, i32 0, i32 1
  %299 = load %struct.TYPE_8__*, %struct.TYPE_8__** %298, align 8
  %300 = load i32, i32* %8, align 4
  %301 = sext i32 %300 to i64
  %302 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %299, i64 %301
  %303 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %302, i32 0, i32 1
  store i32 %296, i32* %303, align 8
  br label %304

304:                                              ; preds = %267
  %305 = load i32, i32* %8, align 4
  %306 = add nsw i32 %305, 1
  store i32 %306, i32* %8, align 4
  br label %263

307:                                              ; preds = %263
  br label %308

308:                                              ; preds = %307, %261
  %309 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %310 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %309, i32 0, i32 2
  store %struct.dtv_fe_stats* %310, %struct.dtv_fe_stats** %6, align 8
  %311 = load %struct.dtv_fe_stats*, %struct.dtv_fe_stats** %6, align 8
  %312 = call i32 @memset(%struct.dtv_fe_stats* %311, i32 0, i32 16)
  %313 = load i32, i32* %9, align 4
  %314 = load %struct.dtv_fe_stats*, %struct.dtv_fe_stats** %6, align 8
  %315 = getelementptr inbounds %struct.dtv_fe_stats, %struct.dtv_fe_stats* %314, i32 0, i32 0
  store i32 %313, i32* %315, align 8
  %316 = load i32, i32* %7, align 4
  %317 = icmp slt i32 %316, 0
  br i1 %317, label %318, label %336

318:                                              ; preds = %308
  store i32 0, i32* %8, align 4
  br label %319

319:                                              ; preds = %332, %318
  %320 = load i32, i32* %8, align 4
  %321 = load i32, i32* %9, align 4
  %322 = icmp slt i32 %320, %321
  br i1 %322, label %323, label %335

323:                                              ; preds = %319
  %324 = load i8*, i8** @FE_SCALE_NOT_AVAILABLE, align 8
  %325 = load %struct.dtv_fe_stats*, %struct.dtv_fe_stats** %6, align 8
  %326 = getelementptr inbounds %struct.dtv_fe_stats, %struct.dtv_fe_stats* %325, i32 0, i32 1
  %327 = load %struct.TYPE_8__*, %struct.TYPE_8__** %326, align 8
  %328 = load i32, i32* %8, align 4
  %329 = sext i32 %328 to i64
  %330 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %327, i64 %329
  %331 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %330, i32 0, i32 2
  store i8* %324, i8** %331, align 8
  br label %332

332:                                              ; preds = %323
  %333 = load i32, i32* %8, align 4
  %334 = add nsw i32 %333, 1
  store i32 %334, i32* %8, align 4
  br label %319

335:                                              ; preds = %319
  br label %384

336:                                              ; preds = %308
  store i32 0, i32* %8, align 4
  br label %337

337:                                              ; preds = %380, %336
  %338 = load i32, i32* %8, align 4
  %339 = load i32, i32* %9, align 4
  %340 = icmp slt i32 %338, %339
  br i1 %340, label %341, label %383

341:                                              ; preds = %337
  %342 = load i8*, i8** @FE_SCALE_COUNTER, align 8
  %343 = load %struct.dtv_fe_stats*, %struct.dtv_fe_stats** %6, align 8
  %344 = getelementptr inbounds %struct.dtv_fe_stats, %struct.dtv_fe_stats* %343, i32 0, i32 1
  %345 = load %struct.TYPE_8__*, %struct.TYPE_8__** %344, align 8
  %346 = load i32, i32* %8, align 4
  %347 = sext i32 %346 to i64
  %348 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %345, i64 %347
  %349 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %348, i32 0, i32 2
  store i8* %342, i8** %349, align 8
  %350 = load i32, i32* %8, align 4
  %351 = mul nsw i32 %350, 5
  %352 = add nsw i32 %351, 3
  %353 = sext i32 %352 to i64
  %354 = getelementptr inbounds [10 x i32], [10 x i32]* %10, i64 0, i64 %353
  %355 = load i32, i32* %354, align 4
  %356 = shl i32 %355, 8
  %357 = load i32, i32* %8, align 4
  %358 = mul nsw i32 %357, 5
  %359 = add nsw i32 %358, 4
  %360 = sext i32 %359 to i64
  %361 = getelementptr inbounds [10 x i32], [10 x i32]* %10, i64 0, i64 %360
  %362 = load i32, i32* %361, align 4
  %363 = or i32 %356, %362
  %364 = load %struct.dtv_fe_stats*, %struct.dtv_fe_stats** %6, align 8
  %365 = getelementptr inbounds %struct.dtv_fe_stats, %struct.dtv_fe_stats* %364, i32 0, i32 1
  %366 = load %struct.TYPE_8__*, %struct.TYPE_8__** %365, align 8
  %367 = load i32, i32* %8, align 4
  %368 = sext i32 %367 to i64
  %369 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %366, i64 %368
  %370 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %369, i32 0, i32 1
  store i32 %363, i32* %370, align 8
  %371 = load %struct.dtv_fe_stats*, %struct.dtv_fe_stats** %6, align 8
  %372 = getelementptr inbounds %struct.dtv_fe_stats, %struct.dtv_fe_stats* %371, i32 0, i32 1
  %373 = load %struct.TYPE_8__*, %struct.TYPE_8__** %372, align 8
  %374 = load i32, i32* %8, align 4
  %375 = sext i32 %374 to i64
  %376 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %373, i64 %375
  %377 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %376, i32 0, i32 1
  %378 = load i32, i32* %377, align 8
  %379 = mul nsw i32 %378, 1632
  store i32 %379, i32* %377, align 8
  br label %380

380:                                              ; preds = %341
  %381 = load i32, i32* %8, align 4
  %382 = add nsw i32 %381, 1
  store i32 %382, i32* %8, align 4
  br label %337

383:                                              ; preds = %337
  br label %384

384:                                              ; preds = %383, %335
  ret i32 0
}

declare dso_local i32 @reg_read(%struct.tc90522_state*, i32, i32*, i32) #1

declare dso_local i32 @int_sqrt(i32) #1

declare dso_local i32 @div64_s64(i64, i32) #1

declare dso_local i32 @memset(%struct.dtv_fe_stats*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
