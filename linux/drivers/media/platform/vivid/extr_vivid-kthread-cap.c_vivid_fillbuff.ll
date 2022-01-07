; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/vivid/extr_vivid-kthread-cap.c_vivid_fillbuff.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/vivid/extr_vivid-kthread-cap.c_vivid_fillbuff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vivid_dev = type { i64, i32*, i64, i32, i32*, i32, i32, i8*, i64, i64, %struct.TYPE_67__, %struct.TYPE_66__*, %struct.TYPE_64__*, %struct.TYPE_62__*, %struct.TYPE_60__*, %struct.TYPE_57__*, %struct.TYPE_55__*, %struct.TYPE_53__*, %struct.TYPE_51__, %struct.TYPE_50__*, %struct.TYPE_47__*, %struct.TYPE_45__, %struct.TYPE_44__*, %struct.TYPE_42__*, %struct.TYPE_40__*, %struct.TYPE_38__*, %struct.TYPE_73__*, %struct.TYPE_71__*, i32, %struct.TYPE_69__, i64, %struct.TYPE_48__*, i32*, i32*, i64, i64, %struct.tpg_data }
%struct.TYPE_67__ = type { i32 }
%struct.TYPE_66__ = type { %struct.TYPE_65__, i32* }
%struct.TYPE_65__ = type { i64 }
%struct.TYPE_64__ = type { %struct.TYPE_63__ }
%struct.TYPE_63__ = type { i8* }
%struct.TYPE_62__ = type { i8**, %struct.TYPE_61__ }
%struct.TYPE_61__ = type { i64 }
%struct.TYPE_60__ = type { %struct.TYPE_58__ }
%struct.TYPE_58__ = type { i32 }
%struct.TYPE_57__ = type { %struct.TYPE_56__ }
%struct.TYPE_56__ = type { i32 }
%struct.TYPE_55__ = type { %struct.TYPE_54__ }
%struct.TYPE_54__ = type { i32 }
%struct.TYPE_53__ = type { %struct.TYPE_52__ }
%struct.TYPE_52__ = type { i32* }
%struct.TYPE_51__ = type { i32 }
%struct.TYPE_50__ = type { %struct.TYPE_49__ }
%struct.TYPE_49__ = type { i32 }
%struct.TYPE_47__ = type { %struct.TYPE_46__ }
%struct.TYPE_46__ = type { i32 }
%struct.TYPE_45__ = type { i32 }
%struct.TYPE_44__ = type { %struct.TYPE_43__ }
%struct.TYPE_43__ = type { i32 }
%struct.TYPE_42__ = type { %struct.TYPE_41__ }
%struct.TYPE_41__ = type { i32 }
%struct.TYPE_40__ = type { %struct.TYPE_39__ }
%struct.TYPE_39__ = type { i32 }
%struct.TYPE_38__ = type { %struct.TYPE_74__ }
%struct.TYPE_74__ = type { i32 }
%struct.TYPE_73__ = type { %struct.TYPE_72__ }
%struct.TYPE_72__ = type { i32 }
%struct.TYPE_71__ = type { %struct.TYPE_70__ }
%struct.TYPE_70__ = type { i32 }
%struct.TYPE_69__ = type { i32, i32 }
%struct.TYPE_48__ = type { i32* }
%struct.tpg_data = type { i32, i32 }
%struct.vivid_buffer = type { %struct.TYPE_68__ }
%struct.TYPE_68__ = type { i32, i64, %struct.TYPE_59__ }
%struct.TYPE_59__ = type { i64 }

@V4L2_STD_525_60 = common dso_local global i32 0, align 4
@TPG_MAX_PLANES = common dso_local global i32 0, align 4
@V4L2_FIELD_ALTERNATE = common dso_local global i64 0, align 8
@V4L2_FIELD_BOTTOM = common dso_local global i64 0, align 8
@V4L2_FIELD_TOP = common dso_local global i64 0, align 8
@jiffies = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [26 x i8] c" %02d:%02d:%02d:%03d %u%s\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c" top\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c" bottom\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [18 x i8] c" %dx%d, input %d \00", align 1
@.str.5 = private unnamed_addr constant [55 x i8] c" brightness %3d, contrast %3d, saturation %3d, hue %d \00", align 1
@.str.6 = private unnamed_addr constant [38 x i8] c" autogain %d, gain %3d, alpha 0x%02x \00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c" volume %3d, mute %d \00", align 1
@.str.8 = private unnamed_addr constant [37 x i8] c" int32 %d, int64 %lld, bitmask %08x \00", align 1
@.str.9 = private unnamed_addr constant [35 x i8] c" boolean %d, menu %s, string \22%s\22 \00", align 1
@.str.10 = private unnamed_addr constant [30 x i8] c" integer_menu %lld, value %d \00", align 1
@.str.11 = private unnamed_addr constant [17 x i8] c" button pressed!\00", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c" OSD \22%s\22\00", align 1
@HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vivid_dev*, %struct.vivid_buffer*)* @vivid_fillbuff to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vivid_fillbuff(%struct.vivid_dev* %0, %struct.vivid_buffer* %1) #0 {
  %3 = alloca %struct.vivid_dev*, align 8
  %4 = alloca %struct.vivid_buffer*, align 8
  %5 = alloca %struct.tpg_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca [100 x i8], align 16
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  store %struct.vivid_dev* %0, %struct.vivid_dev** %3, align 8
  store %struct.vivid_buffer* %1, %struct.vivid_buffer** %4, align 8
  %19 = load %struct.vivid_dev*, %struct.vivid_dev** %3, align 8
  %20 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %19, i32 0, i32 36
  store %struct.tpg_data* %20, %struct.tpg_data** %5, align 8
  %21 = load %struct.vivid_dev*, %struct.vivid_dev** %3, align 8
  %22 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = call i64 @V4L2_FIELD_HAS_T_OR_B(i64 %23)
  %25 = icmp ne i64 %24, 0
  %26 = zext i1 %25 to i64
  %27 = select i1 %25, i32 2, i32 1
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %6, align 4
  %29 = udiv i32 16, %28
  store i32 %29, i32* %7, align 4
  %30 = load %struct.vivid_dev*, %struct.vivid_dev** %3, align 8
  %31 = call i32 @vivid_is_sdtv_cap(%struct.vivid_dev* %30)
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* %8, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %46

34:                                               ; preds = %2
  %35 = load %struct.vivid_dev*, %struct.vivid_dev** %3, align 8
  %36 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %35, i32 0, i32 1
  %37 = load i32*, i32** %36, align 8
  %38 = load %struct.vivid_dev*, %struct.vivid_dev** %3, align 8
  %39 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = getelementptr inbounds i32, i32* %37, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @V4L2_STD_525_60, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br label %46

46:                                               ; preds = %34, %2
  %47 = phi i1 [ false, %2 ], [ %45, %34 ]
  %48 = zext i1 %47 to i32
  store i32 %48, i32* %9, align 4
  store i32 1, i32* %11, align 4
  %49 = load i32, i32* @TPG_MAX_PLANES, align 4
  %50 = zext i32 %49 to i64
  %51 = call i8* @llvm.stacksave()
  store i8* %51, i8** %12, align 8
  %52 = alloca [2 x i32*], i64 %50, align 16
  store i64 %50, i64* %13, align 8
  store i32 0, i32* %17, align 4
  %53 = load %struct.vivid_dev*, %struct.vivid_dev** %3, align 8
  %54 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %53, i32 0, i32 35
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %93

57:                                               ; preds = %46
  %58 = load %struct.vivid_dev*, %struct.vivid_dev** %3, align 8
  %59 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %58, i32 0, i32 34
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %93

62:                                               ; preds = %57
  %63 = load %struct.vivid_dev*, %struct.vivid_dev** %3, align 8
  %64 = call i64 @vivid_is_svid_cap(%struct.vivid_dev* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %77

66:                                               ; preds = %62
  %67 = load %struct.vivid_dev*, %struct.vivid_dev** %3, align 8
  %68 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %67, i32 0, i32 33
  %69 = load i32*, i32** %68, align 8
  %70 = load %struct.vivid_dev*, %struct.vivid_dev** %3, align 8
  %71 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %70, i32 0, i32 2
  %72 = load i64, i64* %71, align 8
  %73 = getelementptr inbounds i32, i32* %69, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @VIVID_INVALID_SIGNAL(i32 %74)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %92

77:                                               ; preds = %66, %62
  %78 = load %struct.vivid_dev*, %struct.vivid_dev** %3, align 8
  %79 = call i64 @vivid_is_hdmi_cap(%struct.vivid_dev* %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %93

81:                                               ; preds = %77
  %82 = load %struct.vivid_dev*, %struct.vivid_dev** %3, align 8
  %83 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %82, i32 0, i32 32
  %84 = load i32*, i32** %83, align 8
  %85 = load %struct.vivid_dev*, %struct.vivid_dev** %3, align 8
  %86 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %85, i32 0, i32 2
  %87 = load i64, i64* %86, align 8
  %88 = getelementptr inbounds i32, i32* %84, i64 %87
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @VIVID_INVALID_SIGNAL(i32 %89)
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %93, label %92

92:                                               ; preds = %81, %66
  store i32 1, i32* %17, align 4
  br label %93

93:                                               ; preds = %92, %81, %77, %57, %46
  %94 = load %struct.vivid_dev*, %struct.vivid_dev** %3, align 8
  %95 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %94, i32 0, i32 3
  %96 = load i32, i32* %95, align 8
  %97 = load %struct.vivid_buffer*, %struct.vivid_buffer** %4, align 8
  %98 = getelementptr inbounds %struct.vivid_buffer, %struct.vivid_buffer* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_68__, %struct.TYPE_68__* %98, i32 0, i32 0
  store i32 %96, i32* %99, align 8
  %100 = load %struct.vivid_dev*, %struct.vivid_dev** %3, align 8
  %101 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = load i64, i64* @V4L2_FIELD_ALTERNATE, align 8
  %104 = icmp eq i64 %102, %103
  br i1 %104, label %105, label %127

105:                                              ; preds = %93
  %106 = load %struct.vivid_dev*, %struct.vivid_dev** %3, align 8
  %107 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %106, i32 0, i32 3
  %108 = load i32, i32* %107, align 8
  %109 = and i32 %108, 1
  %110 = load i32, i32* %9, align 4
  %111 = xor i32 %109, %110
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %115

113:                                              ; preds = %105
  %114 = load i64, i64* @V4L2_FIELD_BOTTOM, align 8
  br label %117

115:                                              ; preds = %105
  %116 = load i64, i64* @V4L2_FIELD_TOP, align 8
  br label %117

117:                                              ; preds = %115, %113
  %118 = phi i64 [ %114, %113 ], [ %116, %115 ]
  %119 = load %struct.vivid_buffer*, %struct.vivid_buffer** %4, align 8
  %120 = getelementptr inbounds %struct.vivid_buffer, %struct.vivid_buffer* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_68__, %struct.TYPE_68__* %120, i32 0, i32 1
  store i64 %118, i64* %121, align 8
  %122 = load %struct.vivid_buffer*, %struct.vivid_buffer** %4, align 8
  %123 = getelementptr inbounds %struct.vivid_buffer, %struct.vivid_buffer* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_68__, %struct.TYPE_68__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = sdiv i32 %125, 2
  store i32 %126, i32* %124, align 8
  br label %134

127:                                              ; preds = %93
  %128 = load %struct.vivid_dev*, %struct.vivid_dev** %3, align 8
  %129 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = load %struct.vivid_buffer*, %struct.vivid_buffer** %4, align 8
  %132 = getelementptr inbounds %struct.vivid_buffer, %struct.vivid_buffer* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_68__, %struct.TYPE_68__* %132, i32 0, i32 1
  store i64 %130, i64* %133, align 8
  br label %134

134:                                              ; preds = %127, %117
  %135 = load %struct.tpg_data*, %struct.tpg_data** %5, align 8
  %136 = load %struct.vivid_buffer*, %struct.vivid_buffer** %4, align 8
  %137 = getelementptr inbounds %struct.vivid_buffer, %struct.vivid_buffer* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_68__, %struct.TYPE_68__* %137, i32 0, i32 1
  %139 = load i64, i64* %138, align 8
  %140 = load %struct.vivid_dev*, %struct.vivid_dev** %3, align 8
  %141 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = load i64, i64* @V4L2_FIELD_ALTERNATE, align 8
  %144 = icmp eq i64 %142, %143
  %145 = zext i1 %144 to i32
  %146 = call i32 @tpg_s_field(%struct.tpg_data* %135, i64 %139, i32 %145)
  %147 = load %struct.tpg_data*, %struct.tpg_data** %5, align 8
  %148 = load %struct.vivid_dev*, %struct.vivid_dev** %3, align 8
  %149 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %148, i32 0, i32 4
  %150 = load i32*, i32** %149, align 8
  %151 = load %struct.vivid_buffer*, %struct.vivid_buffer** %4, align 8
  %152 = getelementptr inbounds %struct.vivid_buffer, %struct.vivid_buffer* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_68__, %struct.TYPE_68__* %152, i32 0, i32 2
  %154 = getelementptr inbounds %struct.TYPE_59__, %struct.TYPE_59__* %153, i32 0, i32 0
  %155 = load i64, i64* %154, align 8
  %156 = getelementptr inbounds i32, i32* %150, i64 %155
  %157 = load i32, i32* %156, align 4
  %158 = call i32 @tpg_s_perc_fill_blank(%struct.tpg_data* %147, i32 %157)
  %159 = load %struct.vivid_dev*, %struct.vivid_dev** %3, align 8
  %160 = call i32 @vivid_precalc_copy_rects(%struct.vivid_dev* %159)
  store i32 0, i32* %10, align 4
  br label %161

161:                                              ; preds = %249, %134
  %162 = load i32, i32* %10, align 4
  %163 = load %struct.tpg_data*, %struct.tpg_data** %5, align 8
  %164 = call i32 @tpg_g_planes(%struct.tpg_data* %163)
  %165 = icmp ult i32 %162, %164
  br i1 %165, label %166, label %252

166:                                              ; preds = %161
  %167 = load %struct.tpg_data*, %struct.tpg_data** %5, align 8
  %168 = load %struct.vivid_buffer*, %struct.vivid_buffer** %4, align 8
  %169 = load i32, i32* %10, align 4
  %170 = load %struct.tpg_data*, %struct.tpg_data** %5, align 8
  %171 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 4
  %173 = load %struct.tpg_data*, %struct.tpg_data** %5, align 8
  %174 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 4
  %176 = call i8* @plane_vaddr(%struct.tpg_data* %167, %struct.vivid_buffer* %168, i32 %169, i32 %172, i32 %175)
  store i8* %176, i8** %18, align 8
  %177 = load i32, i32* %10, align 4
  %178 = load %struct.tpg_data*, %struct.tpg_data** %5, align 8
  %179 = call i32 @tpg_g_buffers(%struct.tpg_data* %178)
  %180 = icmp ult i32 %177, %179
  br i1 %180, label %181, label %226

181:                                              ; preds = %166
  %182 = load %struct.vivid_dev*, %struct.vivid_dev** %3, align 8
  %183 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %182, i32 0, i32 31
  %184 = load %struct.TYPE_48__*, %struct.TYPE_48__** %183, align 8
  %185 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %184, i32 0, i32 0
  %186 = load i32*, i32** %185, align 8
  %187 = load i32, i32* %10, align 4
  %188 = zext i32 %187 to i64
  %189 = getelementptr inbounds i32, i32* %186, i64 %188
  %190 = load i32, i32* %189, align 4
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %226

192:                                              ; preds = %181
  %193 = load i8*, i8** %18, align 8
  %194 = load %struct.vivid_dev*, %struct.vivid_dev** %3, align 8
  %195 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %194, i32 0, i32 31
  %196 = load %struct.TYPE_48__*, %struct.TYPE_48__** %195, align 8
  %197 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %196, i32 0, i32 0
  %198 = load i32*, i32** %197, align 8
  %199 = load i32, i32* %10, align 4
  %200 = zext i32 %199 to i64
  %201 = getelementptr inbounds i32, i32* %198, i64 %200
  %202 = load i32, i32* %201, align 4
  %203 = and i32 %202, 255
  %204 = load %struct.vivid_dev*, %struct.vivid_dev** %3, align 8
  %205 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %204, i32 0, i32 31
  %206 = load %struct.TYPE_48__*, %struct.TYPE_48__** %205, align 8
  %207 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %206, i32 0, i32 0
  %208 = load i32*, i32** %207, align 8
  %209 = load i32, i32* %10, align 4
  %210 = zext i32 %209 to i64
  %211 = getelementptr inbounds i32, i32* %208, i64 %210
  %212 = load i32, i32* %211, align 4
  %213 = call i32 @memset(i8* %193, i32 %203, i32 %212)
  %214 = load %struct.vivid_dev*, %struct.vivid_dev** %3, align 8
  %215 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %214, i32 0, i32 31
  %216 = load %struct.TYPE_48__*, %struct.TYPE_48__** %215, align 8
  %217 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %216, i32 0, i32 0
  %218 = load i32*, i32** %217, align 8
  %219 = load i32, i32* %10, align 4
  %220 = zext i32 %219 to i64
  %221 = getelementptr inbounds i32, i32* %218, i64 %220
  %222 = load i32, i32* %221, align 4
  %223 = load i8*, i8** %18, align 8
  %224 = sext i32 %222 to i64
  %225 = getelementptr i8, i8* %223, i64 %224
  store i8* %225, i8** %18, align 8
  br label %226

226:                                              ; preds = %192, %181, %166
  %227 = load %struct.tpg_data*, %struct.tpg_data** %5, align 8
  %228 = bitcast [2 x i32*]* %52 to i32***
  %229 = load i32, i32* %10, align 4
  %230 = load i8*, i8** %18, align 8
  %231 = call i32 @tpg_calc_text_basep(%struct.tpg_data* %227, i32*** %228, i32 %229, i8* %230)
  %232 = load i32, i32* %17, align 4
  %233 = icmp ne i32 %232, 0
  br i1 %233, label %234, label %241

234:                                              ; preds = %226
  %235 = load %struct.vivid_dev*, %struct.vivid_dev** %3, align 8
  %236 = load i32, i32* %10, align 4
  %237 = load i8*, i8** %18, align 8
  %238 = load %struct.vivid_buffer*, %struct.vivid_buffer** %4, align 8
  %239 = call i64 @vivid_copy_buffer(%struct.vivid_dev* %235, i32 %236, i8* %237, %struct.vivid_buffer* %238)
  %240 = icmp ne i64 %239, 0
  br i1 %240, label %241, label %248

241:                                              ; preds = %234, %226
  %242 = load %struct.tpg_data*, %struct.tpg_data** %5, align 8
  %243 = load %struct.vivid_dev*, %struct.vivid_dev** %3, align 8
  %244 = call i32 @vivid_get_std_cap(%struct.vivid_dev* %243)
  %245 = load i32, i32* %10, align 4
  %246 = load i8*, i8** %18, align 8
  %247 = call i32 @tpg_fill_plane_buffer(%struct.tpg_data* %242, i32 %244, i32 %245, i8* %246)
  br label %248

248:                                              ; preds = %241, %234
  br label %249

249:                                              ; preds = %248
  %250 = load i32, i32* %10, align 4
  %251 = add i32 %250, 1
  store i32 %251, i32* %10, align 4
  br label %161

252:                                              ; preds = %161
  %253 = load %struct.vivid_dev*, %struct.vivid_dev** %3, align 8
  %254 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %253, i32 0, i32 4
  %255 = load i32*, i32** %254, align 8
  %256 = load %struct.vivid_buffer*, %struct.vivid_buffer** %4, align 8
  %257 = getelementptr inbounds %struct.vivid_buffer, %struct.vivid_buffer* %256, i32 0, i32 0
  %258 = getelementptr inbounds %struct.TYPE_68__, %struct.TYPE_68__* %257, i32 0, i32 2
  %259 = getelementptr inbounds %struct.TYPE_59__, %struct.TYPE_59__* %258, i32 0, i32 0
  %260 = load i64, i64* %259, align 8
  %261 = getelementptr inbounds i32, i32* %255, i64 %260
  store i32 0, i32* %261, align 4
  %262 = load %struct.vivid_dev*, %struct.vivid_dev** %3, align 8
  %263 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %262, i32 0, i32 0
  %264 = load i64, i64* %263, align 8
  %265 = load i64, i64* @V4L2_FIELD_ALTERNATE, align 8
  %266 = icmp ne i64 %264, %265
  br i1 %266, label %273, label %267

267:                                              ; preds = %252
  %268 = load %struct.vivid_dev*, %struct.vivid_dev** %3, align 8
  %269 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %268, i32 0, i32 3
  %270 = load i32, i32* %269, align 8
  %271 = and i32 %270, 1
  %272 = icmp eq i32 %271, 0
  br i1 %272, label %273, label %282

273:                                              ; preds = %267, %252
  %274 = load i64, i64* @jiffies, align 8
  %275 = load %struct.vivid_dev*, %struct.vivid_dev** %3, align 8
  %276 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %275, i32 0, i32 30
  %277 = load i64, i64* %276, align 8
  %278 = sub nsw i64 %274, %277
  %279 = call i32 @jiffies_to_msecs(i64 %278)
  %280 = load %struct.vivid_dev*, %struct.vivid_dev** %3, align 8
  %281 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %280, i32 0, i32 5
  store i32 %279, i32* %281, align 8
  br label %282

282:                                              ; preds = %273, %267
  %283 = load %struct.vivid_dev*, %struct.vivid_dev** %3, align 8
  %284 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %283, i32 0, i32 5
  %285 = load i32, i32* %284, align 8
  store i32 %285, i32* %14, align 4
  %286 = load %struct.vivid_dev*, %struct.vivid_dev** %3, align 8
  %287 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %286, i32 0, i32 6
  %288 = load i32, i32* %287, align 4
  %289 = icmp sle i32 %288, 1
  br i1 %289, label %290, label %333

290:                                              ; preds = %282
  %291 = getelementptr inbounds [100 x i8], [100 x i8]* %15, i64 0, i64 0
  %292 = load i32, i32* %14, align 4
  %293 = udiv i32 %292, 3600000
  %294 = urem i32 %293, 24
  %295 = load i32, i32* %14, align 4
  %296 = udiv i32 %295, 60000
  %297 = urem i32 %296, 60
  %298 = load i32, i32* %14, align 4
  %299 = udiv i32 %298, 1000
  %300 = urem i32 %299, 60
  %301 = load i32, i32* %14, align 4
  %302 = urem i32 %301, 1000
  %303 = load %struct.vivid_buffer*, %struct.vivid_buffer** %4, align 8
  %304 = getelementptr inbounds %struct.vivid_buffer, %struct.vivid_buffer* %303, i32 0, i32 0
  %305 = getelementptr inbounds %struct.TYPE_68__, %struct.TYPE_68__* %304, i32 0, i32 0
  %306 = load i32, i32* %305, align 8
  %307 = load %struct.vivid_dev*, %struct.vivid_dev** %3, align 8
  %308 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %307, i32 0, i32 0
  %309 = load i64, i64* %308, align 8
  %310 = load i64, i64* @V4L2_FIELD_ALTERNATE, align 8
  %311 = icmp eq i64 %309, %310
  br i1 %311, label %312, label %321

312:                                              ; preds = %290
  %313 = load %struct.vivid_buffer*, %struct.vivid_buffer** %4, align 8
  %314 = getelementptr inbounds %struct.vivid_buffer, %struct.vivid_buffer* %313, i32 0, i32 0
  %315 = getelementptr inbounds %struct.TYPE_68__, %struct.TYPE_68__* %314, i32 0, i32 1
  %316 = load i64, i64* %315, align 8
  %317 = load i64, i64* @V4L2_FIELD_TOP, align 8
  %318 = icmp eq i64 %316, %317
  %319 = zext i1 %318 to i64
  %320 = select i1 %318, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0)
  br label %322

321:                                              ; preds = %290
  br label %322

322:                                              ; preds = %321, %312
  %323 = phi i8* [ %320, %312 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), %321 ]
  %324 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %291, i32 100, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %294, i32 %297, i32 %300, i32 %302, i32 %306, i8* %323)
  %325 = load %struct.tpg_data*, %struct.tpg_data** %5, align 8
  %326 = bitcast [2 x i32*]* %52 to i32***
  %327 = load i32, i32* %11, align 4
  %328 = add nsw i32 %327, 1
  store i32 %328, i32* %11, align 4
  %329 = load i32, i32* %7, align 4
  %330 = mul i32 %327, %329
  %331 = getelementptr inbounds [100 x i8], [100 x i8]* %15, i64 0, i64 0
  %332 = call i32 @tpg_gen_text(%struct.tpg_data* %325, i32*** %326, i32 %330, i32 16, i8* %331)
  br label %333

333:                                              ; preds = %322, %282
  %334 = load %struct.vivid_dev*, %struct.vivid_dev** %3, align 8
  %335 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %334, i32 0, i32 6
  %336 = load i32, i32* %335, align 4
  %337 = icmp eq i32 %336, 0
  br i1 %337, label %338, label %634

338:                                              ; preds = %333
  %339 = getelementptr inbounds [100 x i8], [100 x i8]* %15, i64 0, i64 0
  %340 = load %struct.vivid_dev*, %struct.vivid_dev** %3, align 8
  %341 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %340, i32 0, i32 29
  %342 = getelementptr inbounds %struct.TYPE_69__, %struct.TYPE_69__* %341, i32 0, i32 0
  %343 = load i32, i32* %342, align 4
  %344 = load %struct.vivid_dev*, %struct.vivid_dev** %3, align 8
  %345 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %344, i32 0, i32 29
  %346 = getelementptr inbounds %struct.TYPE_69__, %struct.TYPE_69__* %345, i32 0, i32 1
  %347 = load i32, i32* %346, align 4
  %348 = load %struct.vivid_dev*, %struct.vivid_dev** %3, align 8
  %349 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %348, i32 0, i32 2
  %350 = load i64, i64* %349, align 8
  %351 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %339, i32 100, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i32 %343, i32 %347, i64 %350)
  %352 = load %struct.tpg_data*, %struct.tpg_data** %5, align 8
  %353 = bitcast [2 x i32*]* %52 to i32***
  %354 = load i32, i32* %11, align 4
  %355 = add nsw i32 %354, 1
  store i32 %355, i32* %11, align 4
  %356 = load i32, i32* %7, align 4
  %357 = mul i32 %354, %356
  %358 = getelementptr inbounds [100 x i8], [100 x i8]* %15, i64 0, i64 0
  %359 = call i32 @tpg_gen_text(%struct.tpg_data* %352, i32*** %353, i32 %357, i32 16, i8* %358)
  %360 = load %struct.vivid_dev*, %struct.vivid_dev** %3, align 8
  %361 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %360, i32 0, i32 28
  %362 = load i32, i32* %361, align 8
  %363 = call i32 @v4l2_ctrl_g_ctrl(i32 %362)
  store i32 %363, i32* %16, align 4
  %364 = load %struct.vivid_dev*, %struct.vivid_dev** %3, align 8
  %365 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %364, i32 0, i32 21
  %366 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %365, i32 0, i32 0
  %367 = load i32, i32* %366, align 8
  %368 = call i32 @mutex_lock(i32 %367)
  %369 = getelementptr inbounds [100 x i8], [100 x i8]* %15, i64 0, i64 0
  %370 = load %struct.vivid_dev*, %struct.vivid_dev** %3, align 8
  %371 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %370, i32 0, i32 27
  %372 = load %struct.TYPE_71__*, %struct.TYPE_71__** %371, align 8
  %373 = getelementptr inbounds %struct.TYPE_71__, %struct.TYPE_71__* %372, i32 0, i32 0
  %374 = getelementptr inbounds %struct.TYPE_70__, %struct.TYPE_70__* %373, i32 0, i32 0
  %375 = load i32, i32* %374, align 4
  %376 = load %struct.vivid_dev*, %struct.vivid_dev** %3, align 8
  %377 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %376, i32 0, i32 26
  %378 = load %struct.TYPE_73__*, %struct.TYPE_73__** %377, align 8
  %379 = getelementptr inbounds %struct.TYPE_73__, %struct.TYPE_73__* %378, i32 0, i32 0
  %380 = getelementptr inbounds %struct.TYPE_72__, %struct.TYPE_72__* %379, i32 0, i32 0
  %381 = load i32, i32* %380, align 4
  %382 = load %struct.vivid_dev*, %struct.vivid_dev** %3, align 8
  %383 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %382, i32 0, i32 25
  %384 = load %struct.TYPE_38__*, %struct.TYPE_38__** %383, align 8
  %385 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %384, i32 0, i32 0
  %386 = getelementptr inbounds %struct.TYPE_74__, %struct.TYPE_74__* %385, i32 0, i32 0
  %387 = load i32, i32* %386, align 4
  %388 = load %struct.vivid_dev*, %struct.vivid_dev** %3, align 8
  %389 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %388, i32 0, i32 24
  %390 = load %struct.TYPE_40__*, %struct.TYPE_40__** %389, align 8
  %391 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %390, i32 0, i32 0
  %392 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %391, i32 0, i32 0
  %393 = load i32, i32* %392, align 4
  %394 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %369, i32 100, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.5, i64 0, i64 0), i32 %375, i32 %381, i32 %387, i32 %393)
  %395 = load %struct.tpg_data*, %struct.tpg_data** %5, align 8
  %396 = bitcast [2 x i32*]* %52 to i32***
  %397 = load i32, i32* %11, align 4
  %398 = add nsw i32 %397, 1
  store i32 %398, i32* %11, align 4
  %399 = load i32, i32* %7, align 4
  %400 = mul i32 %397, %399
  %401 = getelementptr inbounds [100 x i8], [100 x i8]* %15, i64 0, i64 0
  %402 = call i32 @tpg_gen_text(%struct.tpg_data* %395, i32*** %396, i32 %400, i32 16, i8* %401)
  %403 = getelementptr inbounds [100 x i8], [100 x i8]* %15, i64 0, i64 0
  %404 = load %struct.vivid_dev*, %struct.vivid_dev** %3, align 8
  %405 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %404, i32 0, i32 23
  %406 = load %struct.TYPE_42__*, %struct.TYPE_42__** %405, align 8
  %407 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %406, i32 0, i32 0
  %408 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %407, i32 0, i32 0
  %409 = load i32, i32* %408, align 4
  %410 = load i32, i32* %16, align 4
  %411 = load %struct.vivid_dev*, %struct.vivid_dev** %3, align 8
  %412 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %411, i32 0, i32 22
  %413 = load %struct.TYPE_44__*, %struct.TYPE_44__** %412, align 8
  %414 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %413, i32 0, i32 0
  %415 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %414, i32 0, i32 0
  %416 = load i32, i32* %415, align 4
  %417 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %403, i32 100, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.6, i64 0, i64 0), i32 %409, i32 %410, i32 %416)
  %418 = load %struct.vivid_dev*, %struct.vivid_dev** %3, align 8
  %419 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %418, i32 0, i32 21
  %420 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %419, i32 0, i32 0
  %421 = load i32, i32* %420, align 8
  %422 = call i32 @mutex_unlock(i32 %421)
  %423 = load %struct.tpg_data*, %struct.tpg_data** %5, align 8
  %424 = bitcast [2 x i32*]* %52 to i32***
  %425 = load i32, i32* %11, align 4
  %426 = add nsw i32 %425, 1
  store i32 %426, i32* %11, align 4
  %427 = load i32, i32* %7, align 4
  %428 = mul i32 %425, %427
  %429 = getelementptr inbounds [100 x i8], [100 x i8]* %15, i64 0, i64 0
  %430 = call i32 @tpg_gen_text(%struct.tpg_data* %423, i32*** %424, i32 %428, i32 16, i8* %429)
  %431 = load %struct.vivid_dev*, %struct.vivid_dev** %3, align 8
  %432 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %431, i32 0, i32 18
  %433 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %432, i32 0, i32 0
  %434 = load i32, i32* %433, align 8
  %435 = call i32 @mutex_lock(i32 %434)
  %436 = getelementptr inbounds [100 x i8], [100 x i8]* %15, i64 0, i64 0
  %437 = load %struct.vivid_dev*, %struct.vivid_dev** %3, align 8
  %438 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %437, i32 0, i32 20
  %439 = load %struct.TYPE_47__*, %struct.TYPE_47__** %438, align 8
  %440 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %439, i32 0, i32 0
  %441 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %440, i32 0, i32 0
  %442 = load i32, i32* %441, align 4
  %443 = load %struct.vivid_dev*, %struct.vivid_dev** %3, align 8
  %444 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %443, i32 0, i32 19
  %445 = load %struct.TYPE_50__*, %struct.TYPE_50__** %444, align 8
  %446 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %445, i32 0, i32 0
  %447 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %446, i32 0, i32 0
  %448 = load i32, i32* %447, align 4
  %449 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %436, i32 100, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0), i32 %442, i32 %448)
  %450 = load %struct.vivid_dev*, %struct.vivid_dev** %3, align 8
  %451 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %450, i32 0, i32 18
  %452 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %451, i32 0, i32 0
  %453 = load i32, i32* %452, align 8
  %454 = call i32 @mutex_unlock(i32 %453)
  %455 = load %struct.tpg_data*, %struct.tpg_data** %5, align 8
  %456 = bitcast [2 x i32*]* %52 to i32***
  %457 = load i32, i32* %11, align 4
  %458 = add nsw i32 %457, 1
  store i32 %458, i32* %11, align 4
  %459 = load i32, i32* %7, align 4
  %460 = mul i32 %457, %459
  %461 = getelementptr inbounds [100 x i8], [100 x i8]* %15, i64 0, i64 0
  %462 = call i32 @tpg_gen_text(%struct.tpg_data* %455, i32*** %456, i32 %460, i32 16, i8* %461)
  %463 = load %struct.vivid_dev*, %struct.vivid_dev** %3, align 8
  %464 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %463, i32 0, i32 10
  %465 = getelementptr inbounds %struct.TYPE_67__, %struct.TYPE_67__* %464, i32 0, i32 0
  %466 = load i32, i32* %465, align 8
  %467 = call i32 @mutex_lock(i32 %466)
  %468 = getelementptr inbounds [100 x i8], [100 x i8]* %15, i64 0, i64 0
  %469 = load %struct.vivid_dev*, %struct.vivid_dev** %3, align 8
  %470 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %469, i32 0, i32 15
  %471 = load %struct.TYPE_57__*, %struct.TYPE_57__** %470, align 8
  %472 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %471, i32 0, i32 0
  %473 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %472, i32 0, i32 0
  %474 = load i32, i32* %473, align 4
  %475 = load %struct.vivid_dev*, %struct.vivid_dev** %3, align 8
  %476 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %475, i32 0, i32 17
  %477 = load %struct.TYPE_53__*, %struct.TYPE_53__** %476, align 8
  %478 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %477, i32 0, i32 0
  %479 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %478, i32 0, i32 0
  %480 = load i32*, i32** %479, align 8
  %481 = load i32, i32* %480, align 4
  %482 = load %struct.vivid_dev*, %struct.vivid_dev** %3, align 8
  %483 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %482, i32 0, i32 16
  %484 = load %struct.TYPE_55__*, %struct.TYPE_55__** %483, align 8
  %485 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %484, i32 0, i32 0
  %486 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %485, i32 0, i32 0
  %487 = load i32, i32* %486, align 4
  %488 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %468, i32 100, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.8, i64 0, i64 0), i32 %474, i32 %481, i32 %487)
  %489 = load %struct.tpg_data*, %struct.tpg_data** %5, align 8
  %490 = bitcast [2 x i32*]* %52 to i32***
  %491 = load i32, i32* %11, align 4
  %492 = add nsw i32 %491, 1
  store i32 %492, i32* %11, align 4
  %493 = load i32, i32* %7, align 4
  %494 = mul i32 %491, %493
  %495 = getelementptr inbounds [100 x i8], [100 x i8]* %15, i64 0, i64 0
  %496 = call i32 @tpg_gen_text(%struct.tpg_data* %489, i32*** %490, i32 %494, i32 16, i8* %495)
  %497 = getelementptr inbounds [100 x i8], [100 x i8]* %15, i64 0, i64 0
  %498 = load %struct.vivid_dev*, %struct.vivid_dev** %3, align 8
  %499 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %498, i32 0, i32 14
  %500 = load %struct.TYPE_60__*, %struct.TYPE_60__** %499, align 8
  %501 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %500, i32 0, i32 0
  %502 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %501, i32 0, i32 0
  %503 = load i32, i32* %502, align 4
  %504 = load %struct.vivid_dev*, %struct.vivid_dev** %3, align 8
  %505 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %504, i32 0, i32 13
  %506 = load %struct.TYPE_62__*, %struct.TYPE_62__** %505, align 8
  %507 = getelementptr inbounds %struct.TYPE_62__, %struct.TYPE_62__* %506, i32 0, i32 0
  %508 = load i8**, i8*** %507, align 8
  %509 = load %struct.vivid_dev*, %struct.vivid_dev** %3, align 8
  %510 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %509, i32 0, i32 13
  %511 = load %struct.TYPE_62__*, %struct.TYPE_62__** %510, align 8
  %512 = getelementptr inbounds %struct.TYPE_62__, %struct.TYPE_62__* %511, i32 0, i32 1
  %513 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %512, i32 0, i32 0
  %514 = load i64, i64* %513, align 8
  %515 = getelementptr inbounds i8*, i8** %508, i64 %514
  %516 = load i8*, i8** %515, align 8
  %517 = load %struct.vivid_dev*, %struct.vivid_dev** %3, align 8
  %518 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %517, i32 0, i32 12
  %519 = load %struct.TYPE_64__*, %struct.TYPE_64__** %518, align 8
  %520 = getelementptr inbounds %struct.TYPE_64__, %struct.TYPE_64__* %519, i32 0, i32 0
  %521 = getelementptr inbounds %struct.TYPE_63__, %struct.TYPE_63__* %520, i32 0, i32 0
  %522 = load i8*, i8** %521, align 8
  %523 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %497, i32 100, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.9, i64 0, i64 0), i32 %503, i8* %516, i8* %522)
  %524 = load %struct.tpg_data*, %struct.tpg_data** %5, align 8
  %525 = bitcast [2 x i32*]* %52 to i32***
  %526 = load i32, i32* %11, align 4
  %527 = add nsw i32 %526, 1
  store i32 %527, i32* %11, align 4
  %528 = load i32, i32* %7, align 4
  %529 = mul i32 %526, %528
  %530 = getelementptr inbounds [100 x i8], [100 x i8]* %15, i64 0, i64 0
  %531 = call i32 @tpg_gen_text(%struct.tpg_data* %524, i32*** %525, i32 %529, i32 16, i8* %530)
  %532 = getelementptr inbounds [100 x i8], [100 x i8]* %15, i64 0, i64 0
  %533 = load %struct.vivid_dev*, %struct.vivid_dev** %3, align 8
  %534 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %533, i32 0, i32 11
  %535 = load %struct.TYPE_66__*, %struct.TYPE_66__** %534, align 8
  %536 = getelementptr inbounds %struct.TYPE_66__, %struct.TYPE_66__* %535, i32 0, i32 1
  %537 = load i32*, i32** %536, align 8
  %538 = load %struct.vivid_dev*, %struct.vivid_dev** %3, align 8
  %539 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %538, i32 0, i32 11
  %540 = load %struct.TYPE_66__*, %struct.TYPE_66__** %539, align 8
  %541 = getelementptr inbounds %struct.TYPE_66__, %struct.TYPE_66__* %540, i32 0, i32 0
  %542 = getelementptr inbounds %struct.TYPE_65__, %struct.TYPE_65__* %541, i32 0, i32 0
  %543 = load i64, i64* %542, align 8
  %544 = getelementptr inbounds i32, i32* %537, i64 %543
  %545 = load i32, i32* %544, align 4
  %546 = load %struct.vivid_dev*, %struct.vivid_dev** %3, align 8
  %547 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %546, i32 0, i32 11
  %548 = load %struct.TYPE_66__*, %struct.TYPE_66__** %547, align 8
  %549 = getelementptr inbounds %struct.TYPE_66__, %struct.TYPE_66__* %548, i32 0, i32 0
  %550 = getelementptr inbounds %struct.TYPE_65__, %struct.TYPE_65__* %549, i32 0, i32 0
  %551 = load i64, i64* %550, align 8
  %552 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %532, i32 100, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.10, i64 0, i64 0), i32 %545, i64 %551)
  %553 = load %struct.vivid_dev*, %struct.vivid_dev** %3, align 8
  %554 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %553, i32 0, i32 10
  %555 = getelementptr inbounds %struct.TYPE_67__, %struct.TYPE_67__* %554, i32 0, i32 0
  %556 = load i32, i32* %555, align 8
  %557 = call i32 @mutex_unlock(i32 %556)
  %558 = load %struct.tpg_data*, %struct.tpg_data** %5, align 8
  %559 = bitcast [2 x i32*]* %52 to i32***
  %560 = load i32, i32* %11, align 4
  %561 = add nsw i32 %560, 1
  store i32 %561, i32* %11, align 4
  %562 = load i32, i32* %7, align 4
  %563 = mul i32 %560, %562
  %564 = getelementptr inbounds [100 x i8], [100 x i8]* %15, i64 0, i64 0
  %565 = call i32 @tpg_gen_text(%struct.tpg_data* %558, i32*** %559, i32 %563, i32 16, i8* %564)
  %566 = load %struct.vivid_dev*, %struct.vivid_dev** %3, align 8
  %567 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %566, i32 0, i32 9
  %568 = load i64, i64* %567, align 8
  %569 = icmp ne i64 %568, 0
  br i1 %569, label %570, label %585

570:                                              ; preds = %338
  %571 = load %struct.vivid_dev*, %struct.vivid_dev** %3, align 8
  %572 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %571, i32 0, i32 9
  %573 = load i64, i64* %572, align 8
  %574 = add nsw i64 %573, -1
  store i64 %574, i64* %572, align 8
  %575 = getelementptr inbounds [100 x i8], [100 x i8]* %15, i64 0, i64 0
  %576 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %575, i32 100, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i64 0, i64 0))
  %577 = load %struct.tpg_data*, %struct.tpg_data** %5, align 8
  %578 = bitcast [2 x i32*]* %52 to i32***
  %579 = load i32, i32* %11, align 4
  %580 = add nsw i32 %579, 1
  store i32 %580, i32* %11, align 4
  %581 = load i32, i32* %7, align 4
  %582 = mul i32 %579, %581
  %583 = getelementptr inbounds [100 x i8], [100 x i8]* %15, i64 0, i64 0
  %584 = call i32 @tpg_gen_text(%struct.tpg_data* %577, i32*** %578, i32 %582, i32 16, i8* %583)
  br label %585

585:                                              ; preds = %570, %338
  %586 = load %struct.vivid_dev*, %struct.vivid_dev** %3, align 8
  %587 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %586, i32 0, i32 7
  %588 = load i8*, i8** %587, align 8
  %589 = getelementptr inbounds i8, i8* %588, i64 0
  %590 = load i8, i8* %589, align 1
  %591 = icmp ne i8 %590, 0
  br i1 %591, label %592, label %633

592:                                              ; preds = %585
  %593 = load %struct.vivid_dev*, %struct.vivid_dev** %3, align 8
  %594 = call i64 @vivid_is_hdmi_cap(%struct.vivid_dev* %593)
  %595 = icmp ne i64 %594, 0
  br i1 %595, label %596, label %610

596:                                              ; preds = %592
  %597 = getelementptr inbounds [100 x i8], [100 x i8]* %15, i64 0, i64 0
  %598 = load %struct.vivid_dev*, %struct.vivid_dev** %3, align 8
  %599 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %598, i32 0, i32 7
  %600 = load i8*, i8** %599, align 8
  %601 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %597, i32 100, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i64 0, i64 0), i8* %600)
  %602 = load %struct.tpg_data*, %struct.tpg_data** %5, align 8
  %603 = bitcast [2 x i32*]* %52 to i32***
  %604 = load i32, i32* %11, align 4
  %605 = add nsw i32 %604, 1
  store i32 %605, i32* %11, align 4
  %606 = load i32, i32* %7, align 4
  %607 = mul i32 %604, %606
  %608 = getelementptr inbounds [100 x i8], [100 x i8]* %15, i64 0, i64 0
  %609 = call i32 @tpg_gen_text(%struct.tpg_data* %602, i32*** %603, i32 %607, i32 16, i8* %608)
  br label %610

610:                                              ; preds = %596, %592
  %611 = load %struct.vivid_dev*, %struct.vivid_dev** %3, align 8
  %612 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %611, i32 0, i32 8
  %613 = load i64, i64* %612, align 8
  %614 = icmp ne i64 %613, 0
  br i1 %614, label %615, label %632

615:                                              ; preds = %610
  %616 = load %struct.vivid_dev*, %struct.vivid_dev** %3, align 8
  %617 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %616, i32 0, i32 8
  %618 = load i64, i64* %617, align 8
  %619 = load i32, i32* @HZ, align 4
  %620 = mul nsw i32 5, %619
  %621 = sext i32 %620 to i64
  %622 = add nsw i64 %618, %621
  %623 = call i64 @time_is_before_jiffies(i64 %622)
  %624 = icmp ne i64 %623, 0
  br i1 %624, label %625, label %632

625:                                              ; preds = %615
  %626 = load %struct.vivid_dev*, %struct.vivid_dev** %3, align 8
  %627 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %626, i32 0, i32 7
  %628 = load i8*, i8** %627, align 8
  %629 = getelementptr inbounds i8, i8* %628, i64 0
  store i8 0, i8* %629, align 1
  %630 = load %struct.vivid_dev*, %struct.vivid_dev** %3, align 8
  %631 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %630, i32 0, i32 8
  store i64 0, i64* %631, align 8
  br label %632

632:                                              ; preds = %625, %615, %610
  br label %633

633:                                              ; preds = %632, %585
  br label %634

634:                                              ; preds = %633, %333
  %635 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %635)
  ret void
}

declare dso_local i64 @V4L2_FIELD_HAS_T_OR_B(i64) #1

declare dso_local i32 @vivid_is_sdtv_cap(%struct.vivid_dev*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i64 @vivid_is_svid_cap(%struct.vivid_dev*) #1

declare dso_local i32 @VIVID_INVALID_SIGNAL(i32) #1

declare dso_local i64 @vivid_is_hdmi_cap(%struct.vivid_dev*) #1

declare dso_local i32 @tpg_s_field(%struct.tpg_data*, i64, i32) #1

declare dso_local i32 @tpg_s_perc_fill_blank(%struct.tpg_data*, i32) #1

declare dso_local i32 @vivid_precalc_copy_rects(%struct.vivid_dev*) #1

declare dso_local i32 @tpg_g_planes(%struct.tpg_data*) #1

declare dso_local i8* @plane_vaddr(%struct.tpg_data*, %struct.vivid_buffer*, i32, i32, i32) #1

declare dso_local i32 @tpg_g_buffers(%struct.tpg_data*) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @tpg_calc_text_basep(%struct.tpg_data*, i32***, i32, i8*) #1

declare dso_local i64 @vivid_copy_buffer(%struct.vivid_dev*, i32, i8*, %struct.vivid_buffer*) #1

declare dso_local i32 @tpg_fill_plane_buffer(%struct.tpg_data*, i32, i32, i8*) #1

declare dso_local i32 @vivid_get_std_cap(%struct.vivid_dev*) #1

declare dso_local i32 @jiffies_to_msecs(i64) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, ...) #1

declare dso_local i32 @tpg_gen_text(%struct.tpg_data*, i32***, i32, i32, i8*) #1

declare dso_local i32 @v4l2_ctrl_g_ctrl(i32) #1

declare dso_local i32 @mutex_lock(i32) #1

declare dso_local i32 @mutex_unlock(i32) #1

declare dso_local i64 @time_is_before_jiffies(i64) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
