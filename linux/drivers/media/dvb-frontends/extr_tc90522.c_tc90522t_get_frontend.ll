; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_tc90522.c_tc90522t_get_frontend.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_tc90522.c_tc90522t_get_frontend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.TYPE_6__, %struct.tc90522_state* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 (%struct.dvb_frontend.0*, i32*)* }
%struct.dvb_frontend.0 = type opaque
%struct.tc90522_state = type { i32 }
%struct.dtv_frontend_properties = type { i32, i32, i32, i32, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.TYPE_8__*, i32, i32 }
%struct.dtv_fe_stats = type { i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i32, i8* }
%struct.TYPE_8__ = type { i32, i32, i8*, i8* }

@SYS_ISDBT = common dso_local global i32 0, align 4
@tm_conv = common dso_local global i32* null, align 8
@fec_conv_ter = common dso_local global i8** null, align 8
@mod_conv = common dso_local global i8** null, align 8
@FE_SCALE_NOT_AVAILABLE = common dso_local global i8* null, align 8
@FE_SCALE_DECIBEL = common dso_local global i8* null, align 8
@FE_SCALE_COUNTER = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, %struct.dtv_frontend_properties*)* @tc90522t_get_frontend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tc90522t_get_frontend(%struct.dvb_frontend* %0, %struct.dtv_frontend_properties* %1) #0 {
  %3 = alloca %struct.dvb_frontend*, align 8
  %4 = alloca %struct.dtv_frontend_properties*, align 8
  %5 = alloca %struct.tc90522_state*, align 8
  %6 = alloca %struct.dtv_fe_stats*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [15 x i32], align 16
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %3, align 8
  store %struct.dtv_frontend_properties* %1, %struct.dtv_frontend_properties** %4, align 8
  %18 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %19 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %18, i32 0, i32 1
  %20 = load %struct.tc90522_state*, %struct.tc90522_state** %19, align 8
  store %struct.tc90522_state* %20, %struct.tc90522_state** %5, align 8
  %21 = load i32, i32* @SYS_ISDBT, align 4
  %22 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %23 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %22, i32 0, i32 10
  store i32 %21, i32* %23, align 4
  %24 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %25 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %24, i32 0, i32 0
  store i32 6000000, i32* %25, align 8
  store i32 1, i32* %11, align 4
  %26 = load %struct.tc90522_state*, %struct.tc90522_state** %5, align 8
  %27 = getelementptr inbounds [15 x i32], [15 x i32]* %10, i64 0, i64 0
  %28 = call i32 @reg_read(%struct.tc90522_state* %26, i32 176, i32* %27, i32 1)
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %7, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %49

31:                                               ; preds = %2
  %32 = getelementptr inbounds [15 x i32], [15 x i32]* %10, i64 0, i64 0
  %33 = load i32, i32* %32, align 16
  %34 = and i32 %33, 192
  %35 = ashr i32 %34, 6
  store i32 %35, i32* %11, align 4
  %36 = load i32*, i32** @tm_conv, align 8
  %37 = load i32, i32* %11, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %42 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %41, i32 0, i32 9
  store i32 %40, i32* %42, align 8
  %43 = getelementptr inbounds [15 x i32], [15 x i32]* %10, i64 0, i64 0
  %44 = load i32, i32* %43, align 16
  %45 = and i32 %44, 48
  %46 = ashr i32 %45, 4
  %47 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %48 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %47, i32 0, i32 1
  store i32 %46, i32* %48, align 4
  br label %49

49:                                               ; preds = %31, %2
  %50 = load %struct.tc90522_state*, %struct.tc90522_state** %5, align 8
  %51 = getelementptr inbounds [15 x i32], [15 x i32]* %10, i64 0, i64 0
  %52 = call i32 @reg_read(%struct.tc90522_state* %50, i32 178, i32* %51, i32 6)
  store i32 %52, i32* %7, align 4
  store i32 0, i32* %9, align 4
  %53 = load i32, i32* %7, align 4
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %248

55:                                               ; preds = %49
  %56 = getelementptr inbounds [15 x i32], [15 x i32]* %10, i64 0, i64 0
  %57 = load i32, i32* %56, align 16
  %58 = and i32 %57, 1
  %59 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %60 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %59, i32 0, i32 2
  store i32 %58, i32* %60, align 8
  %61 = getelementptr inbounds [15 x i32], [15 x i32]* %10, i64 0, i64 0
  %62 = load i32, i32* %61, align 16
  %63 = and i32 %62, 192
  %64 = icmp eq i32 %63, 64
  %65 = zext i1 %64 to i32
  %66 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %67 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %66, i32 0, i32 3
  store i32 %65, i32* %67, align 4
  %68 = getelementptr inbounds [15 x i32], [15 x i32]* %10, i64 0, i64 2
  %69 = load i32, i32* %68, align 8
  %70 = and i32 %69, 120
  %71 = ashr i32 %70, 3
  store i32 %71, i32* %13, align 4
  %72 = load i32, i32* %13, align 4
  %73 = icmp eq i32 %72, 15
  br i1 %73, label %74, label %80

74:                                               ; preds = %55
  %75 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %76 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %75, i32 0, i32 8
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i64 0
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 0
  store i32 0, i32* %79, align 8
  br label %130

80:                                               ; preds = %55
  %81 = load i32, i32* %9, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %9, align 4
  %83 = load i32, i32* %13, align 4
  %84 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %85 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %84, i32 0, i32 8
  %86 = load %struct.TYPE_8__*, %struct.TYPE_8__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i64 0
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 0
  store i32 %83, i32* %88, align 8
  %89 = load i8**, i8*** @fec_conv_ter, align 8
  %90 = getelementptr inbounds [15 x i32], [15 x i32]* %10, i64 0, i64 1
  %91 = load i32, i32* %90, align 4
  %92 = and i32 %91, 28
  %93 = ashr i32 %92, 2
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i8*, i8** %89, i64 %94
  %96 = load i8*, i8** %95, align 8
  %97 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %98 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %97, i32 0, i32 8
  %99 = load %struct.TYPE_8__*, %struct.TYPE_8__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i64 0
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 3
  store i8* %96, i8** %101, align 8
  %102 = load i8**, i8*** @mod_conv, align 8
  %103 = getelementptr inbounds [15 x i32], [15 x i32]* %10, i64 0, i64 1
  %104 = load i32, i32* %103, align 4
  %105 = and i32 %104, 224
  %106 = ashr i32 %105, 5
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i8*, i8** %102, i64 %107
  %109 = load i8*, i8** %108, align 8
  %110 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %111 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %110, i32 0, i32 8
  %112 = load %struct.TYPE_8__*, %struct.TYPE_8__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %112, i64 0
  %114 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %113, i32 0, i32 2
  store i8* %109, i8** %114, align 8
  %115 = getelementptr inbounds [15 x i32], [15 x i32]* %10, i64 0, i64 1
  %116 = load i32, i32* %115, align 4
  %117 = and i32 %116, 3
  %118 = shl i32 %117, 1
  %119 = getelementptr inbounds [15 x i32], [15 x i32]* %10, i64 0, i64 2
  %120 = load i32, i32* %119, align 8
  %121 = and i32 %120, 128
  %122 = ashr i32 %121, 7
  %123 = or i32 %118, %122
  store i32 %123, i32* %13, align 4
  %124 = load i32, i32* %13, align 4
  %125 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %126 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %125, i32 0, i32 8
  %127 = load %struct.TYPE_8__*, %struct.TYPE_8__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %127, i64 0
  %129 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %128, i32 0, i32 1
  store i32 %124, i32* %129, align 4
  br label %130

130:                                              ; preds = %80, %74
  %131 = getelementptr inbounds [15 x i32], [15 x i32]* %10, i64 0, i64 3
  %132 = load i32, i32* %131, align 4
  %133 = and i32 %132, 3
  %134 = shl i32 %133, 2
  %135 = getelementptr inbounds [15 x i32], [15 x i32]* %10, i64 0, i64 4
  %136 = load i32, i32* %135, align 16
  %137 = and i32 %136, 192
  %138 = ashr i32 %137, 6
  %139 = or i32 %134, %138
  store i32 %139, i32* %13, align 4
  %140 = load i32, i32* %13, align 4
  %141 = icmp eq i32 %140, 15
  br i1 %141, label %142, label %148

142:                                              ; preds = %130
  %143 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %144 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %143, i32 0, i32 8
  %145 = load %struct.TYPE_8__*, %struct.TYPE_8__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %145, i64 1
  %147 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %146, i32 0, i32 0
  store i32 0, i32* %147, align 8
  br label %191

148:                                              ; preds = %130
  %149 = load i32, i32* %9, align 4
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %9, align 4
  %151 = load i32, i32* %13, align 4
  %152 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %153 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %152, i32 0, i32 8
  %154 = load %struct.TYPE_8__*, %struct.TYPE_8__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %154, i64 1
  %156 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %155, i32 0, i32 0
  store i32 %151, i32* %156, align 8
  %157 = load i8**, i8*** @fec_conv_ter, align 8
  %158 = getelementptr inbounds [15 x i32], [15 x i32]* %10, i64 0, i64 3
  %159 = load i32, i32* %158, align 4
  %160 = and i32 %159, 224
  %161 = ashr i32 %160, 5
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds i8*, i8** %157, i64 %162
  %164 = load i8*, i8** %163, align 8
  %165 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %166 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %165, i32 0, i32 8
  %167 = load %struct.TYPE_8__*, %struct.TYPE_8__** %166, align 8
  %168 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %167, i64 1
  %169 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %168, i32 0, i32 3
  store i8* %164, i8** %169, align 8
  %170 = load i8**, i8*** @mod_conv, align 8
  %171 = getelementptr inbounds [15 x i32], [15 x i32]* %10, i64 0, i64 2
  %172 = load i32, i32* %171, align 8
  %173 = and i32 %172, 7
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds i8*, i8** %170, i64 %174
  %176 = load i8*, i8** %175, align 8
  %177 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %178 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %177, i32 0, i32 8
  %179 = load %struct.TYPE_8__*, %struct.TYPE_8__** %178, align 8
  %180 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %179, i64 1
  %181 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %180, i32 0, i32 2
  store i8* %176, i8** %181, align 8
  %182 = getelementptr inbounds [15 x i32], [15 x i32]* %10, i64 0, i64 3
  %183 = load i32, i32* %182, align 4
  %184 = and i32 %183, 28
  %185 = ashr i32 %184, 2
  %186 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %187 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %186, i32 0, i32 8
  %188 = load %struct.TYPE_8__*, %struct.TYPE_8__** %187, align 8
  %189 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %188, i64 1
  %190 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %189, i32 0, i32 1
  store i32 %185, i32* %190, align 4
  br label %191

191:                                              ; preds = %148, %142
  %192 = getelementptr inbounds [15 x i32], [15 x i32]* %10, i64 0, i64 5
  %193 = load i32, i32* %192, align 4
  %194 = and i32 %193, 30
  %195 = ashr i32 %194, 1
  store i32 %195, i32* %13, align 4
  %196 = load i32, i32* %13, align 4
  %197 = icmp eq i32 %196, 15
  br i1 %197, label %198, label %204

198:                                              ; preds = %191
  %199 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %200 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %199, i32 0, i32 8
  %201 = load %struct.TYPE_8__*, %struct.TYPE_8__** %200, align 8
  %202 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %201, i64 2
  %203 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %202, i32 0, i32 0
  store i32 0, i32* %203, align 8
  br label %247

204:                                              ; preds = %191
  %205 = load i32, i32* %9, align 4
  %206 = add nsw i32 %205, 1
  store i32 %206, i32* %9, align 4
  %207 = load i32, i32* %13, align 4
  %208 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %209 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %208, i32 0, i32 8
  %210 = load %struct.TYPE_8__*, %struct.TYPE_8__** %209, align 8
  %211 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %210, i64 2
  %212 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %211, i32 0, i32 0
  store i32 %207, i32* %212, align 8
  %213 = load i8**, i8*** @fec_conv_ter, align 8
  %214 = getelementptr inbounds [15 x i32], [15 x i32]* %10, i64 0, i64 4
  %215 = load i32, i32* %214, align 16
  %216 = and i32 %215, 7
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds i8*, i8** %213, i64 %217
  %219 = load i8*, i8** %218, align 8
  %220 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %221 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %220, i32 0, i32 8
  %222 = load %struct.TYPE_8__*, %struct.TYPE_8__** %221, align 8
  %223 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %222, i64 2
  %224 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %223, i32 0, i32 3
  store i8* %219, i8** %224, align 8
  %225 = load i8**, i8*** @mod_conv, align 8
  %226 = getelementptr inbounds [15 x i32], [15 x i32]* %10, i64 0, i64 4
  %227 = load i32, i32* %226, align 16
  %228 = and i32 %227, 56
  %229 = ashr i32 %228, 3
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds i8*, i8** %225, i64 %230
  %232 = load i8*, i8** %231, align 8
  %233 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %234 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %233, i32 0, i32 8
  %235 = load %struct.TYPE_8__*, %struct.TYPE_8__** %234, align 8
  %236 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %235, i64 2
  %237 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %236, i32 0, i32 2
  store i8* %232, i8** %237, align 8
  %238 = getelementptr inbounds [15 x i32], [15 x i32]* %10, i64 0, i64 5
  %239 = load i32, i32* %238, align 4
  %240 = and i32 %239, 224
  %241 = ashr i32 %240, 5
  %242 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %243 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %242, i32 0, i32 8
  %244 = load %struct.TYPE_8__*, %struct.TYPE_8__** %243, align 8
  %245 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %244, i64 2
  %246 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %245, i32 0, i32 1
  store i32 %241, i32* %246, align 4
  br label %247

247:                                              ; preds = %204, %198
  br label %248

248:                                              ; preds = %247, %49
  %249 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %250 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %249, i32 0, i32 7
  store %struct.dtv_fe_stats* %250, %struct.dtv_fe_stats** %6, align 8
  %251 = load %struct.dtv_fe_stats*, %struct.dtv_fe_stats** %6, align 8
  %252 = getelementptr inbounds %struct.dtv_fe_stats, %struct.dtv_fe_stats* %251, i32 0, i32 0
  store i32 0, i32* %252, align 8
  %253 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %254 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %253, i32 0, i32 0
  %255 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %254, i32 0, i32 0
  %256 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %255, i32 0, i32 0
  %257 = load i32 (%struct.dvb_frontend.0*, i32*)*, i32 (%struct.dvb_frontend.0*, i32*)** %256, align 8
  %258 = icmp ne i32 (%struct.dvb_frontend.0*, i32*)* %257, null
  br i1 %258, label %259, label %268

259:                                              ; preds = %248
  %260 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %261 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %260, i32 0, i32 0
  %262 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %261, i32 0, i32 0
  %263 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %262, i32 0, i32 0
  %264 = load i32 (%struct.dvb_frontend.0*, i32*)*, i32 (%struct.dvb_frontend.0*, i32*)** %263, align 8
  %265 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %266 = bitcast %struct.dvb_frontend* %265 to %struct.dvb_frontend.0*
  %267 = call i32 %264(%struct.dvb_frontend.0* %266, i32* %14)
  br label %268

268:                                              ; preds = %259, %248
  %269 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %270 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %269, i32 0, i32 6
  store %struct.dtv_fe_stats* %270, %struct.dtv_fe_stats** %6, align 8
  %271 = load %struct.dtv_fe_stats*, %struct.dtv_fe_stats** %6, align 8
  %272 = getelementptr inbounds %struct.dtv_fe_stats, %struct.dtv_fe_stats* %271, i32 0, i32 0
  store i32 1, i32* %272, align 8
  %273 = load i8*, i8** @FE_SCALE_NOT_AVAILABLE, align 8
  %274 = load %struct.dtv_fe_stats*, %struct.dtv_fe_stats** %6, align 8
  %275 = getelementptr inbounds %struct.dtv_fe_stats, %struct.dtv_fe_stats* %274, i32 0, i32 1
  %276 = load %struct.TYPE_7__*, %struct.TYPE_7__** %275, align 8
  %277 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %276, i64 0
  %278 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %277, i32 0, i32 2
  store i8* %273, i8** %278, align 8
  store i32 0, i32* %12, align 4
  %279 = load %struct.tc90522_state*, %struct.tc90522_state** %5, align 8
  %280 = getelementptr inbounds [15 x i32], [15 x i32]* %10, i64 0, i64 0
  %281 = call i32 @reg_read(%struct.tc90522_state* %279, i32 139, i32* %280, i32 3)
  store i32 %281, i32* %7, align 4
  %282 = load i32, i32* %7, align 4
  %283 = icmp eq i32 %282, 0
  br i1 %283, label %284, label %295

284:                                              ; preds = %268
  %285 = getelementptr inbounds [15 x i32], [15 x i32]* %10, i64 0, i64 0
  %286 = load i32, i32* %285, align 16
  %287 = shl i32 %286, 16
  %288 = getelementptr inbounds [15 x i32], [15 x i32]* %10, i64 0, i64 1
  %289 = load i32, i32* %288, align 4
  %290 = shl i32 %289, 8
  %291 = or i32 %287, %290
  %292 = getelementptr inbounds [15 x i32], [15 x i32]* %10, i64 0, i64 2
  %293 = load i32, i32* %292, align 8
  %294 = or i32 %291, %293
  store i32 %294, i32* %12, align 4
  br label %295

295:                                              ; preds = %284, %268
  %296 = load i32, i32* %12, align 4
  %297 = icmp ne i32 %296, 0
  br i1 %297, label %298, label %370

298:                                              ; preds = %295
  %299 = call i32 @intlog10(i32 5505024)
  %300 = load i32, i32* %12, align 4
  %301 = call i32 @intlog10(i32 %300)
  %302 = sub nsw i32 %299, %301
  store i32 %302, i32* %15, align 4
  %303 = load i32, i32* %15, align 4
  %304 = mul nsw i32 %303, 10
  store i32 %304, i32* %15, align 4
  store i32 24772, i32* %17, align 4
  %305 = load i32, i32* %15, align 4
  %306 = sext i32 %305 to i64
  %307 = mul nsw i64 43827, %306
  %308 = call i32 @div64_s64(i64 %307, i32 10)
  %309 = ashr i32 %308, 24
  %310 = load i32, i32* %17, align 4
  %311 = add nsw i32 %310, %309
  store i32 %311, i32* %17, align 4
  %312 = load i32, i32* %15, align 4
  %313 = ashr i32 %312, 8
  store i32 %313, i32* %16, align 4
  %314 = load i32, i32* %16, align 4
  %315 = sext i32 %314 to i64
  %316 = mul nsw i64 3184, %315
  %317 = load i32, i32* %16, align 4
  %318 = sext i32 %317 to i64
  %319 = mul nsw i64 %316, %318
  %320 = call i32 @div64_s64(i64 %319, i32 10)
  %321 = ashr i32 %320, 32
  %322 = load i32, i32* %17, align 4
  %323 = add nsw i32 %322, %321
  store i32 %323, i32* %17, align 4
  %324 = load i32, i32* %15, align 4
  %325 = ashr i32 %324, 13
  store i32 %325, i32* %16, align 4
  %326 = load i32, i32* %16, align 4
  %327 = sext i32 %326 to i64
  %328 = mul nsw i64 128, %327
  %329 = load i32, i32* %16, align 4
  %330 = sext i32 %329 to i64
  %331 = mul nsw i64 %328, %330
  %332 = load i32, i32* %16, align 4
  %333 = sext i32 %332 to i64
  %334 = mul nsw i64 %331, %333
  %335 = call i32 @div64_s64(i64 %334, i32 10)
  %336 = ashr i32 %335, 33
  %337 = load i32, i32* %17, align 4
  %338 = sub nsw i32 %337, %336
  store i32 %338, i32* %17, align 4
  %339 = load i32, i32* %15, align 4
  %340 = ashr i32 %339, 18
  store i32 %340, i32* %16, align 4
  %341 = load i32, i32* %16, align 4
  %342 = sext i32 %341 to i64
  %343 = mul nsw i64 192, %342
  %344 = load i32, i32* %16, align 4
  %345 = sext i32 %344 to i64
  %346 = mul nsw i64 %343, %345
  %347 = load i32, i32* %16, align 4
  %348 = sext i32 %347 to i64
  %349 = mul nsw i64 %346, %348
  %350 = load i32, i32* %16, align 4
  %351 = sext i32 %350 to i64
  %352 = mul nsw i64 %349, %351
  %353 = call i32 @div64_s64(i64 %352, i32 1000)
  %354 = ashr i32 %353, 24
  %355 = load i32, i32* %17, align 4
  %356 = add nsw i32 %355, %354
  store i32 %356, i32* %17, align 4
  %357 = load i32, i32* %17, align 4
  %358 = ashr i32 %357, 3
  %359 = load %struct.dtv_fe_stats*, %struct.dtv_fe_stats** %6, align 8
  %360 = getelementptr inbounds %struct.dtv_fe_stats, %struct.dtv_fe_stats* %359, i32 0, i32 1
  %361 = load %struct.TYPE_7__*, %struct.TYPE_7__** %360, align 8
  %362 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %361, i64 0
  %363 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %362, i32 0, i32 0
  store i32 %358, i32* %363, align 8
  %364 = load i8*, i8** @FE_SCALE_DECIBEL, align 8
  %365 = load %struct.dtv_fe_stats*, %struct.dtv_fe_stats** %6, align 8
  %366 = getelementptr inbounds %struct.dtv_fe_stats, %struct.dtv_fe_stats* %365, i32 0, i32 1
  %367 = load %struct.TYPE_7__*, %struct.TYPE_7__** %366, align 8
  %368 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %367, i64 0
  %369 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %368, i32 0, i32 2
  store i8* %364, i8** %369, align 8
  br label %370

370:                                              ; preds = %298, %295
  %371 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %372 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %371, i32 0, i32 5
  store %struct.dtv_fe_stats* %372, %struct.dtv_fe_stats** %6, align 8
  %373 = load %struct.dtv_fe_stats*, %struct.dtv_fe_stats** %6, align 8
  %374 = call i32 @memset(%struct.dtv_fe_stats* %373, i32 0, i32 16)
  %375 = load i32, i32* %9, align 4
  %376 = load %struct.dtv_fe_stats*, %struct.dtv_fe_stats** %6, align 8
  %377 = getelementptr inbounds %struct.dtv_fe_stats, %struct.dtv_fe_stats* %376, i32 0, i32 0
  store i32 %375, i32* %377, align 8
  %378 = load %struct.tc90522_state*, %struct.tc90522_state** %5, align 8
  %379 = getelementptr inbounds [15 x i32], [15 x i32]* %10, i64 0, i64 0
  %380 = call i32 @reg_read(%struct.tc90522_state* %378, i32 157, i32* %379, i32 15)
  store i32 %380, i32* %7, align 4
  %381 = load i32, i32* %7, align 4
  %382 = icmp slt i32 %381, 0
  br i1 %382, label %383, label %401

383:                                              ; preds = %370
  store i32 0, i32* %8, align 4
  br label %384

384:                                              ; preds = %397, %383
  %385 = load i32, i32* %8, align 4
  %386 = load i32, i32* %9, align 4
  %387 = icmp slt i32 %385, %386
  br i1 %387, label %388, label %400

388:                                              ; preds = %384
  %389 = load i8*, i8** @FE_SCALE_NOT_AVAILABLE, align 8
  %390 = load %struct.dtv_fe_stats*, %struct.dtv_fe_stats** %6, align 8
  %391 = getelementptr inbounds %struct.dtv_fe_stats, %struct.dtv_fe_stats* %390, i32 0, i32 1
  %392 = load %struct.TYPE_7__*, %struct.TYPE_7__** %391, align 8
  %393 = load i32, i32* %8, align 4
  %394 = sext i32 %393 to i64
  %395 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %392, i64 %394
  %396 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %395, i32 0, i32 2
  store i8* %389, i8** %396, align 8
  br label %397

397:                                              ; preds = %388
  %398 = load i32, i32* %8, align 4
  %399 = add nsw i32 %398, 1
  store i32 %399, i32* %8, align 4
  br label %384

400:                                              ; preds = %384
  br label %447

401:                                              ; preds = %370
  store i32 0, i32* %8, align 4
  br label %402

402:                                              ; preds = %443, %401
  %403 = load i32, i32* %8, align 4
  %404 = load i32, i32* %9, align 4
  %405 = icmp slt i32 %403, %404
  br i1 %405, label %406, label %446

406:                                              ; preds = %402
  %407 = load i8*, i8** @FE_SCALE_COUNTER, align 8
  %408 = load %struct.dtv_fe_stats*, %struct.dtv_fe_stats** %6, align 8
  %409 = getelementptr inbounds %struct.dtv_fe_stats, %struct.dtv_fe_stats* %408, i32 0, i32 1
  %410 = load %struct.TYPE_7__*, %struct.TYPE_7__** %409, align 8
  %411 = load i32, i32* %8, align 4
  %412 = sext i32 %411 to i64
  %413 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %410, i64 %412
  %414 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %413, i32 0, i32 2
  store i8* %407, i8** %414, align 8
  %415 = load i32, i32* %8, align 4
  %416 = mul nsw i32 %415, 3
  %417 = sext i32 %416 to i64
  %418 = getelementptr inbounds [15 x i32], [15 x i32]* %10, i64 0, i64 %417
  %419 = load i32, i32* %418, align 4
  %420 = shl i32 %419, 16
  %421 = load i32, i32* %8, align 4
  %422 = mul nsw i32 %421, 3
  %423 = add nsw i32 %422, 1
  %424 = sext i32 %423 to i64
  %425 = getelementptr inbounds [15 x i32], [15 x i32]* %10, i64 0, i64 %424
  %426 = load i32, i32* %425, align 4
  %427 = shl i32 %426, 8
  %428 = or i32 %420, %427
  %429 = load i32, i32* %8, align 4
  %430 = mul nsw i32 %429, 3
  %431 = add nsw i32 %430, 2
  %432 = sext i32 %431 to i64
  %433 = getelementptr inbounds [15 x i32], [15 x i32]* %10, i64 0, i64 %432
  %434 = load i32, i32* %433, align 4
  %435 = or i32 %428, %434
  %436 = load %struct.dtv_fe_stats*, %struct.dtv_fe_stats** %6, align 8
  %437 = getelementptr inbounds %struct.dtv_fe_stats, %struct.dtv_fe_stats* %436, i32 0, i32 1
  %438 = load %struct.TYPE_7__*, %struct.TYPE_7__** %437, align 8
  %439 = load i32, i32* %8, align 4
  %440 = sext i32 %439 to i64
  %441 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %438, i64 %440
  %442 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %441, i32 0, i32 1
  store i32 %435, i32* %442, align 4
  br label %443

443:                                              ; preds = %406
  %444 = load i32, i32* %8, align 4
  %445 = add nsw i32 %444, 1
  store i32 %445, i32* %8, align 4
  br label %402

446:                                              ; preds = %402
  br label %447

447:                                              ; preds = %446, %400
  %448 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %4, align 8
  %449 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %448, i32 0, i32 4
  store %struct.dtv_fe_stats* %449, %struct.dtv_fe_stats** %6, align 8
  %450 = load %struct.dtv_fe_stats*, %struct.dtv_fe_stats** %6, align 8
  %451 = call i32 @memset(%struct.dtv_fe_stats* %450, i32 0, i32 16)
  %452 = load i32, i32* %9, align 4
  %453 = load %struct.dtv_fe_stats*, %struct.dtv_fe_stats** %6, align 8
  %454 = getelementptr inbounds %struct.dtv_fe_stats, %struct.dtv_fe_stats* %453, i32 0, i32 0
  store i32 %452, i32* %454, align 8
  %455 = load i32, i32* %7, align 4
  %456 = icmp slt i32 %455, 0
  br i1 %456, label %457, label %475

457:                                              ; preds = %447
  store i32 0, i32* %8, align 4
  br label %458

458:                                              ; preds = %471, %457
  %459 = load i32, i32* %8, align 4
  %460 = load i32, i32* %9, align 4
  %461 = icmp slt i32 %459, %460
  br i1 %461, label %462, label %474

462:                                              ; preds = %458
  %463 = load i8*, i8** @FE_SCALE_NOT_AVAILABLE, align 8
  %464 = load %struct.dtv_fe_stats*, %struct.dtv_fe_stats** %6, align 8
  %465 = getelementptr inbounds %struct.dtv_fe_stats, %struct.dtv_fe_stats* %464, i32 0, i32 1
  %466 = load %struct.TYPE_7__*, %struct.TYPE_7__** %465, align 8
  %467 = load i32, i32* %8, align 4
  %468 = sext i32 %467 to i64
  %469 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %466, i64 %468
  %470 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %469, i32 0, i32 2
  store i8* %463, i8** %470, align 8
  br label %471

471:                                              ; preds = %462
  %472 = load i32, i32* %8, align 4
  %473 = add nsw i32 %472, 1
  store i32 %473, i32* %8, align 4
  br label %458

474:                                              ; preds = %458
  br label %524

475:                                              ; preds = %447
  store i32 0, i32* %8, align 4
  br label %476

476:                                              ; preds = %520, %475
  %477 = load i32, i32* %8, align 4
  %478 = load i32, i32* %9, align 4
  %479 = icmp slt i32 %477, %478
  br i1 %479, label %480, label %523

480:                                              ; preds = %476
  %481 = load i8*, i8** @FE_SCALE_COUNTER, align 8
  %482 = load %struct.dtv_fe_stats*, %struct.dtv_fe_stats** %6, align 8
  %483 = getelementptr inbounds %struct.dtv_fe_stats, %struct.dtv_fe_stats* %482, i32 0, i32 1
  %484 = load %struct.TYPE_7__*, %struct.TYPE_7__** %483, align 8
  %485 = load i32, i32* %8, align 4
  %486 = sext i32 %485 to i64
  %487 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %484, i64 %486
  %488 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %487, i32 0, i32 2
  store i8* %481, i8** %488, align 8
  %489 = load i32, i32* %8, align 4
  %490 = mul nsw i32 %489, 2
  %491 = add nsw i32 9, %490
  %492 = sext i32 %491 to i64
  %493 = getelementptr inbounds [15 x i32], [15 x i32]* %10, i64 0, i64 %492
  %494 = load i32, i32* %493, align 4
  %495 = shl i32 %494, 8
  %496 = load i32, i32* %8, align 4
  %497 = mul nsw i32 %496, 2
  %498 = add nsw i32 9, %497
  %499 = add nsw i32 %498, 1
  %500 = sext i32 %499 to i64
  %501 = getelementptr inbounds [15 x i32], [15 x i32]* %10, i64 0, i64 %500
  %502 = load i32, i32* %501, align 4
  %503 = or i32 %495, %502
  %504 = load %struct.dtv_fe_stats*, %struct.dtv_fe_stats** %6, align 8
  %505 = getelementptr inbounds %struct.dtv_fe_stats, %struct.dtv_fe_stats* %504, i32 0, i32 1
  %506 = load %struct.TYPE_7__*, %struct.TYPE_7__** %505, align 8
  %507 = load i32, i32* %8, align 4
  %508 = sext i32 %507 to i64
  %509 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %506, i64 %508
  %510 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %509, i32 0, i32 1
  store i32 %503, i32* %510, align 4
  %511 = load %struct.dtv_fe_stats*, %struct.dtv_fe_stats** %6, align 8
  %512 = getelementptr inbounds %struct.dtv_fe_stats, %struct.dtv_fe_stats* %511, i32 0, i32 1
  %513 = load %struct.TYPE_7__*, %struct.TYPE_7__** %512, align 8
  %514 = load i32, i32* %8, align 4
  %515 = sext i32 %514 to i64
  %516 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %513, i64 %515
  %517 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %516, i32 0, i32 1
  %518 = load i32, i32* %517, align 4
  %519 = mul nsw i32 %518, 1632
  store i32 %519, i32* %517, align 4
  br label %520

520:                                              ; preds = %480
  %521 = load i32, i32* %8, align 4
  %522 = add nsw i32 %521, 1
  store i32 %522, i32* %8, align 4
  br label %476

523:                                              ; preds = %476
  br label %524

524:                                              ; preds = %523, %474
  ret i32 0
}

declare dso_local i32 @reg_read(%struct.tc90522_state*, i32, i32*, i32) #1

declare dso_local i32 @intlog10(i32) #1

declare dso_local i32 @div64_s64(i64, i32) #1

declare dso_local i32 @memset(%struct.dtv_fe_stats*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
