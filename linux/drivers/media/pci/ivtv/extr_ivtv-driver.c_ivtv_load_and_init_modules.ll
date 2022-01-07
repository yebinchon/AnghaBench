; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/ivtv/extr_ivtv-driver.c_ivtv_load_and_init_modules.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/ivtv/extr_ivtv-driver.c_ivtv_load_and_init_modules.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ivtv = type { i32, i32, %struct.TYPE_5__, %struct.TYPE_6__*, %struct.TYPE_4__*, i8*, i8* }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i64 }

@IVTV_HW_GPIO = common dso_local global i32 0, align 4
@IVTV_HW_TVEEPROM = common dso_local global i32 0, align 4
@IVTV_HW_IR_ANY = common dso_local global i32 0, align 4
@IVTV_HW_CX25840 = common dso_local global i32 0, align 4
@IVTV_HW_SAA717X = common dso_local global i32 0, align 4
@IVTV_HW_SAA7114 = common dso_local global i32 0, align 4
@IVTV_HW_SAA7115 = common dso_local global i32 0, align 4
@IVTV_CARD_CX23416GYC = common dso_local global i64 0, align 8
@IVTV_HW_UPD64031A = common dso_local global i32 0, align 4
@IVTV_HW_UPD6408X = common dso_local global i32 0, align 4
@IVTV_CARD_CX23416GYC_NOGRYCS = common dso_local global i32 0, align 4
@IVTV_CARD_CX23416GYC_NOGR = common dso_local global i32 0, align 4
@IVTV_CARD_GV_MVPRX = common dso_local global i64 0, align 8
@IVTV_CARD_GV_MVPRX2E = common dso_local global i64 0, align 8
@video = common dso_local global i32 0, align 4
@s_crystal_freq = common dso_local global i32 0, align 4
@SAA7115_FREQ_24_576_MHZ = common dso_local global i32 0, align 4
@SAA7115_FREQ_FL_UCGC = common dso_local global i32 0, align 4
@IVTV_HW_SAA711X = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"saa7114\00", align 1
@V4L2_CAP_SLICED_VBI_CAPTURE = common dso_local global i32 0, align 4
@V4L2_CAP_VBI_CAPTURE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ivtv*)* @ivtv_load_and_init_modules to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ivtv_load_and_init_modules(%struct.ivtv* %0) #0 {
  %2 = alloca %struct.ivtv*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ivtv* %0, %struct.ivtv** %2, align 8
  %6 = load %struct.ivtv*, %struct.ivtv** %2, align 8
  %7 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %6, i32 0, i32 4
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  store i32 %10, i32* %3, align 4
  store i32 0, i32* %4, align 4
  br label %11

11:                                               ; preds = %48, %1
  %12 = load i32, i32* %4, align 4
  %13 = icmp ult i32 %12, 32
  br i1 %13, label %14, label %51

14:                                               ; preds = %11
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @BIT(i32 %15)
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* %3, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %14
  br label %48

22:                                               ; preds = %14
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* @IVTV_HW_GPIO, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %30, label %26

26:                                               ; preds = %22
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* @IVTV_HW_TVEEPROM, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %36

30:                                               ; preds = %26, %22
  %31 = load i32, i32* %5, align 4
  %32 = load %struct.ivtv*, %struct.ivtv** %2, align 8
  %33 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = or i32 %34, %31
  store i32 %35, i32* %33, align 8
  br label %48

36:                                               ; preds = %26
  %37 = load %struct.ivtv*, %struct.ivtv** %2, align 8
  %38 = load i32, i32* %4, align 4
  %39 = call i64 @ivtv_i2c_register(%struct.ivtv* %37, i32 %38)
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %36
  %42 = load i32, i32* %5, align 4
  %43 = load %struct.ivtv*, %struct.ivtv** %2, align 8
  %44 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = or i32 %45, %42
  store i32 %46, i32* %44, align 8
  br label %47

47:                                               ; preds = %41, %36
  br label %48

48:                                               ; preds = %47, %30, %21
  %49 = load i32, i32* %4, align 4
  %50 = add i32 %49, 1
  store i32 %50, i32* %4, align 4
  br label %11

51:                                               ; preds = %11
  %52 = load %struct.ivtv*, %struct.ivtv** %2, align 8
  %53 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @IVTV_HW_IR_ANY, align 4
  %56 = and i32 %54, %55
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %51
  %59 = load %struct.ivtv*, %struct.ivtv** %2, align 8
  %60 = call i32 @ivtv_i2c_new_ir_legacy(%struct.ivtv* %59)
  br label %61

61:                                               ; preds = %58, %51
  %62 = load %struct.ivtv*, %struct.ivtv** %2, align 8
  %63 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %62, i32 0, i32 4
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @IVTV_HW_CX25840, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %77

70:                                               ; preds = %61
  %71 = load %struct.ivtv*, %struct.ivtv** %2, align 8
  %72 = load i32, i32* @IVTV_HW_CX25840, align 4
  %73 = call i8* @ivtv_find_hw(%struct.ivtv* %71, i32 %72)
  %74 = bitcast i8* %73 to %struct.TYPE_6__*
  %75 = load %struct.ivtv*, %struct.ivtv** %2, align 8
  %76 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %75, i32 0, i32 3
  store %struct.TYPE_6__* %74, %struct.TYPE_6__** %76, align 8
  br label %118

77:                                               ; preds = %61
  %78 = load %struct.ivtv*, %struct.ivtv** %2, align 8
  %79 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %78, i32 0, i32 4
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* @IVTV_HW_SAA717X, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %93

86:                                               ; preds = %77
  %87 = load %struct.ivtv*, %struct.ivtv** %2, align 8
  %88 = load i32, i32* @IVTV_HW_SAA717X, align 4
  %89 = call i8* @ivtv_find_hw(%struct.ivtv* %87, i32 %88)
  %90 = bitcast i8* %89 to %struct.TYPE_6__*
  %91 = load %struct.ivtv*, %struct.ivtv** %2, align 8
  %92 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %91, i32 0, i32 3
  store %struct.TYPE_6__* %90, %struct.TYPE_6__** %92, align 8
  br label %117

93:                                               ; preds = %77
  %94 = load %struct.ivtv*, %struct.ivtv** %2, align 8
  %95 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %94, i32 0, i32 4
  %96 = load %struct.TYPE_4__*, %struct.TYPE_4__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = load i32, i32* @IVTV_HW_SAA7114, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %109

102:                                              ; preds = %93
  %103 = load %struct.ivtv*, %struct.ivtv** %2, align 8
  %104 = load i32, i32* @IVTV_HW_SAA7114, align 4
  %105 = call i8* @ivtv_find_hw(%struct.ivtv* %103, i32 %104)
  %106 = bitcast i8* %105 to %struct.TYPE_6__*
  %107 = load %struct.ivtv*, %struct.ivtv** %2, align 8
  %108 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %107, i32 0, i32 3
  store %struct.TYPE_6__* %106, %struct.TYPE_6__** %108, align 8
  br label %116

109:                                              ; preds = %93
  %110 = load %struct.ivtv*, %struct.ivtv** %2, align 8
  %111 = load i32, i32* @IVTV_HW_SAA7115, align 4
  %112 = call i8* @ivtv_find_hw(%struct.ivtv* %110, i32 %111)
  %113 = bitcast i8* %112 to %struct.TYPE_6__*
  %114 = load %struct.ivtv*, %struct.ivtv** %2, align 8
  %115 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %114, i32 0, i32 3
  store %struct.TYPE_6__* %113, %struct.TYPE_6__** %115, align 8
  br label %116

116:                                              ; preds = %109, %102
  br label %117

117:                                              ; preds = %116, %86
  br label %118

118:                                              ; preds = %117, %70
  %119 = load %struct.ivtv*, %struct.ivtv** %2, align 8
  %120 = load %struct.ivtv*, %struct.ivtv** %2, align 8
  %121 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %120, i32 0, i32 4
  %122 = load %struct.TYPE_4__*, %struct.TYPE_4__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = call i8* @ivtv_find_hw(%struct.ivtv* %119, i32 %124)
  %126 = load %struct.ivtv*, %struct.ivtv** %2, align 8
  %127 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %126, i32 0, i32 6
  store i8* %125, i8** %127, align 8
  %128 = load %struct.ivtv*, %struct.ivtv** %2, align 8
  %129 = load %struct.ivtv*, %struct.ivtv** %2, align 8
  %130 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %129, i32 0, i32 4
  %131 = load %struct.TYPE_4__*, %struct.TYPE_4__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %131, i32 0, i32 2
  %133 = load i32, i32* %132, align 8
  %134 = call i8* @ivtv_find_hw(%struct.ivtv* %128, i32 %133)
  %135 = load %struct.ivtv*, %struct.ivtv** %2, align 8
  %136 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %135, i32 0, i32 5
  store i8* %134, i8** %136, align 8
  %137 = load %struct.ivtv*, %struct.ivtv** %2, align 8
  %138 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  store i32 %139, i32* %3, align 4
  %140 = load %struct.ivtv*, %struct.ivtv** %2, align 8
  %141 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %140, i32 0, i32 4
  %142 = load %struct.TYPE_4__*, %struct.TYPE_4__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %142, i32 0, i32 3
  %144 = load i64, i64* %143, align 8
  %145 = load i64, i64* @IVTV_CARD_CX23416GYC, align 8
  %146 = icmp eq i64 %144, %145
  br i1 %146, label %147, label %173

147:                                              ; preds = %118
  %148 = load i32, i32* %3, align 4
  %149 = load i32, i32* @IVTV_HW_UPD64031A, align 4
  %150 = load i32, i32* @IVTV_HW_UPD6408X, align 4
  %151 = or i32 %149, %150
  %152 = and i32 %148, %151
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %154, label %160

154:                                              ; preds = %147
  %155 = load i32, i32* @IVTV_CARD_CX23416GYC_NOGRYCS, align 4
  %156 = call i8* @ivtv_get_card(i32 %155)
  %157 = bitcast i8* %156 to %struct.TYPE_4__*
  %158 = load %struct.ivtv*, %struct.ivtv** %2, align 8
  %159 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %158, i32 0, i32 4
  store %struct.TYPE_4__* %157, %struct.TYPE_4__** %159, align 8
  br label %172

160:                                              ; preds = %147
  %161 = load i32, i32* %3, align 4
  %162 = load i32, i32* @IVTV_HW_UPD64031A, align 4
  %163 = and i32 %161, %162
  %164 = icmp eq i32 %163, 0
  br i1 %164, label %165, label %171

165:                                              ; preds = %160
  %166 = load i32, i32* @IVTV_CARD_CX23416GYC_NOGR, align 4
  %167 = call i8* @ivtv_get_card(i32 %166)
  %168 = bitcast i8* %167 to %struct.TYPE_4__*
  %169 = load %struct.ivtv*, %struct.ivtv** %2, align 8
  %170 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %169, i32 0, i32 4
  store %struct.TYPE_4__* %168, %struct.TYPE_4__** %170, align 8
  br label %171

171:                                              ; preds = %165, %160
  br label %172

172:                                              ; preds = %171, %154
  br label %199

173:                                              ; preds = %118
  %174 = load %struct.ivtv*, %struct.ivtv** %2, align 8
  %175 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %174, i32 0, i32 4
  %176 = load %struct.TYPE_4__*, %struct.TYPE_4__** %175, align 8
  %177 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %176, i32 0, i32 3
  %178 = load i64, i64* %177, align 8
  %179 = load i64, i64* @IVTV_CARD_GV_MVPRX, align 8
  %180 = icmp eq i64 %178, %179
  br i1 %180, label %189, label %181

181:                                              ; preds = %173
  %182 = load %struct.ivtv*, %struct.ivtv** %2, align 8
  %183 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %182, i32 0, i32 4
  %184 = load %struct.TYPE_4__*, %struct.TYPE_4__** %183, align 8
  %185 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %184, i32 0, i32 3
  %186 = load i64, i64* %185, align 8
  %187 = load i64, i64* @IVTV_CARD_GV_MVPRX2E, align 8
  %188 = icmp eq i64 %186, %187
  br i1 %188, label %189, label %198

189:                                              ; preds = %181, %173
  %190 = load %struct.ivtv*, %struct.ivtv** %2, align 8
  %191 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %190, i32 0, i32 3
  %192 = load %struct.TYPE_6__*, %struct.TYPE_6__** %191, align 8
  %193 = load i32, i32* @video, align 4
  %194 = load i32, i32* @s_crystal_freq, align 4
  %195 = load i32, i32* @SAA7115_FREQ_24_576_MHZ, align 4
  %196 = load i32, i32* @SAA7115_FREQ_FL_UCGC, align 4
  %197 = call i32 @v4l2_subdev_call(%struct.TYPE_6__* %192, i32 %193, i32 %194, i32 %195, i32 %196)
  br label %198

198:                                              ; preds = %189, %181
  br label %199

199:                                              ; preds = %198, %172
  %200 = load i32, i32* %3, align 4
  %201 = load i32, i32* @IVTV_HW_CX25840, align 4
  %202 = and i32 %200, %201
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %223

204:                                              ; preds = %199
  %205 = load %struct.ivtv*, %struct.ivtv** %2, align 8
  %206 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %205, i32 0, i32 2
  %207 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %206, i32 0, i32 0
  store i32 1444, i32* %207, align 8
  %208 = load %struct.ivtv*, %struct.ivtv** %2, align 8
  %209 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %208, i32 0, i32 2
  %210 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %209, i32 0, i32 1
  store i32 32, i32* %210, align 4
  %211 = load %struct.ivtv*, %struct.ivtv** %2, align 8
  %212 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %211, i32 0, i32 2
  %213 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %212, i32 0, i32 2
  store i32 96, i32* %213, align 8
  %214 = load %struct.ivtv*, %struct.ivtv** %2, align 8
  %215 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %214, i32 0, i32 2
  %216 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %215, i32 0, i32 3
  store i32 272, i32* %216, align 4
  %217 = load %struct.ivtv*, %struct.ivtv** %2, align 8
  %218 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %217, i32 0, i32 2
  %219 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %218, i32 0, i32 4
  store i32 176, i32* %219, align 8
  %220 = load %struct.ivtv*, %struct.ivtv** %2, align 8
  %221 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %220, i32 0, i32 2
  %222 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %221, i32 0, i32 5
  store i32 240, i32* %222, align 4
  br label %223

223:                                              ; preds = %204, %199
  %224 = load i32, i32* %3, align 4
  %225 = load i32, i32* @IVTV_HW_SAA711X, align 4
  %226 = and i32 %224, %225
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %228, label %281

228:                                              ; preds = %223
  %229 = load i32, i32* @IVTV_HW_SAA711X, align 4
  %230 = xor i32 %229, -1
  %231 = load %struct.ivtv*, %struct.ivtv** %2, align 8
  %232 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %231, i32 0, i32 0
  %233 = load i32, i32* %232, align 8
  %234 = and i32 %233, %230
  store i32 %234, i32* %232, align 8
  %235 = load %struct.ivtv*, %struct.ivtv** %2, align 8
  %236 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %235, i32 0, i32 3
  %237 = load %struct.TYPE_6__*, %struct.TYPE_6__** %236, align 8
  %238 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %237, i32 0, i32 0
  %239 = load i32, i32* %238, align 4
  %240 = call i64 @strstr(i32 %239, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %241 = icmp ne i64 %240, 0
  br i1 %241, label %242, label %256

242:                                              ; preds = %228
  %243 = load i32, i32* @IVTV_HW_SAA7114, align 4
  %244 = load %struct.ivtv*, %struct.ivtv** %2, align 8
  %245 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %244, i32 0, i32 0
  %246 = load i32, i32* %245, align 8
  %247 = or i32 %246, %243
  store i32 %247, i32* %245, align 8
  %248 = load i32, i32* @V4L2_CAP_SLICED_VBI_CAPTURE, align 4
  %249 = load i32, i32* @V4L2_CAP_VBI_CAPTURE, align 4
  %250 = or i32 %248, %249
  %251 = xor i32 %250, -1
  %252 = load %struct.ivtv*, %struct.ivtv** %2, align 8
  %253 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %252, i32 0, i32 1
  %254 = load i32, i32* %253, align 4
  %255 = and i32 %254, %251
  store i32 %255, i32* %253, align 4
  br label %262

256:                                              ; preds = %228
  %257 = load i32, i32* @IVTV_HW_SAA7115, align 4
  %258 = load %struct.ivtv*, %struct.ivtv** %2, align 8
  %259 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %258, i32 0, i32 0
  %260 = load i32, i32* %259, align 8
  %261 = or i32 %260, %257
  store i32 %261, i32* %259, align 8
  br label %262

262:                                              ; preds = %256, %242
  %263 = load %struct.ivtv*, %struct.ivtv** %2, align 8
  %264 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %263, i32 0, i32 2
  %265 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %264, i32 0, i32 0
  store i32 1443, i32* %265, align 8
  %266 = load %struct.ivtv*, %struct.ivtv** %2, align 8
  %267 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %266, i32 0, i32 2
  %268 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %267, i32 0, i32 1
  store i32 37, i32* %268, align 4
  %269 = load %struct.ivtv*, %struct.ivtv** %2, align 8
  %270 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %269, i32 0, i32 2
  %271 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %270, i32 0, i32 2
  store i32 98, i32* %271, align 8
  %272 = load %struct.ivtv*, %struct.ivtv** %2, align 8
  %273 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %272, i32 0, i32 2
  %274 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %273, i32 0, i32 3
  store i32 51, i32* %274, align 4
  %275 = load %struct.ivtv*, %struct.ivtv** %2, align 8
  %276 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %275, i32 0, i32 2
  %277 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %276, i32 0, i32 4
  store i32 171, i32* %277, align 8
  %278 = load %struct.ivtv*, %struct.ivtv** %2, align 8
  %279 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %278, i32 0, i32 2
  %280 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %279, i32 0, i32 5
  store i32 236, i32* %280, align 4
  br label %281

281:                                              ; preds = %262, %223
  %282 = load i32, i32* %3, align 4
  %283 = load i32, i32* @IVTV_HW_SAA717X, align 4
  %284 = and i32 %282, %283
  %285 = icmp ne i32 %284, 0
  br i1 %285, label %286, label %305

286:                                              ; preds = %281
  %287 = load %struct.ivtv*, %struct.ivtv** %2, align 8
  %288 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %287, i32 0, i32 2
  %289 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %288, i32 0, i32 0
  store i32 1443, i32* %289, align 8
  %290 = load %struct.ivtv*, %struct.ivtv** %2, align 8
  %291 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %290, i32 0, i32 2
  %292 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %291, i32 0, i32 1
  store i32 37, i32* %292, align 4
  %293 = load %struct.ivtv*, %struct.ivtv** %2, align 8
  %294 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %293, i32 0, i32 2
  %295 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %294, i32 0, i32 2
  store i32 98, i32* %295, align 8
  %296 = load %struct.ivtv*, %struct.ivtv** %2, align 8
  %297 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %296, i32 0, i32 2
  %298 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %297, i32 0, i32 3
  store i32 51, i32* %298, align 4
  %299 = load %struct.ivtv*, %struct.ivtv** %2, align 8
  %300 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %299, i32 0, i32 2
  %301 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %300, i32 0, i32 4
  store i32 171, i32* %301, align 8
  %302 = load %struct.ivtv*, %struct.ivtv** %2, align 8
  %303 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %302, i32 0, i32 2
  %304 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %303, i32 0, i32 5
  store i32 236, i32* %304, align 4
  br label %305

305:                                              ; preds = %286, %281
  ret void
}

declare dso_local i32 @BIT(i32) #1

declare dso_local i64 @ivtv_i2c_register(%struct.ivtv*, i32) #1

declare dso_local i32 @ivtv_i2c_new_ir_legacy(%struct.ivtv*) #1

declare dso_local i8* @ivtv_find_hw(%struct.ivtv*, i32) #1

declare dso_local i8* @ivtv_get_card(i32) #1

declare dso_local i32 @v4l2_subdev_call(%struct.TYPE_6__*, i32, i32, i32, i32) #1

declare dso_local i64 @strstr(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
