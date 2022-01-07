; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/pensando/ionic/extr_ionic_lif.c_ionic_qcqs_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/pensando/ionic/extr_ionic_lif.c_ionic_qcqs_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ionic_lif = type { i32, i32*, i32*, %struct.TYPE_4__*, %struct.TYPE_4__*, i32, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i64, %struct.device* }
%struct.device = type { i32 }

@IONIC_QCQ_F_INTR = common dso_local global i32 0, align 4
@IONIC_QTYPE_ADMINQ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"admin\00", align 1
@IONIC_ADMINQ_LENGTH = common dso_local global i32 0, align 4
@IONIC_QCQ_F_NOTIFYQ = common dso_local global i32 0, align 4
@IONIC_QTYPE_NOTIFYQ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"notifyq\00", align 1
@IONIC_NOTIFYQ_LENGTH = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ionic_lif*)* @ionic_qcqs_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ionic_qcqs_alloc(%struct.ionic_lif* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ionic_lif*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ionic_lif* %0, %struct.ionic_lif** %3, align 8
  %9 = load %struct.ionic_lif*, %struct.ionic_lif** %3, align 8
  %10 = getelementptr inbounds %struct.ionic_lif, %struct.ionic_lif* %9, i32 0, i32 6
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 1
  %13 = load %struct.device*, %struct.device** %12, align 8
  store %struct.device* %13, %struct.device** %4, align 8
  %14 = load i32, i32* @IONIC_QCQ_F_INTR, align 4
  store i32 %14, i32* %6, align 4
  %15 = load %struct.ionic_lif*, %struct.ionic_lif** %3, align 8
  %16 = load i32, i32* @IONIC_QTYPE_ADMINQ, align 4
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* @IONIC_ADMINQ_LENGTH, align 4
  %19 = load %struct.ionic_lif*, %struct.ionic_lif** %3, align 8
  %20 = getelementptr inbounds %struct.ionic_lif, %struct.ionic_lif* %19, i32 0, i32 5
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.ionic_lif*, %struct.ionic_lif** %3, align 8
  %23 = getelementptr inbounds %struct.ionic_lif, %struct.ionic_lif* %22, i32 0, i32 1
  %24 = call i32 @ionic_qcq_alloc(%struct.ionic_lif* %15, i32 %16, i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %17, i32 %18, i32 4, i32 4, i32 0, i32 %21, i32** %23)
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %7, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %1
  %28 = load i32, i32* %7, align 4
  store i32 %28, i32* %2, align 4
  br label %263

29:                                               ; preds = %1
  %30 = load %struct.ionic_lif*, %struct.ionic_lif** %3, align 8
  %31 = getelementptr inbounds %struct.ionic_lif, %struct.ionic_lif* %30, i32 0, i32 6
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %59

36:                                               ; preds = %29
  %37 = load i32, i32* @IONIC_QCQ_F_NOTIFYQ, align 4
  store i32 %37, i32* %6, align 4
  %38 = load %struct.ionic_lif*, %struct.ionic_lif** %3, align 8
  %39 = load i32, i32* @IONIC_QTYPE_NOTIFYQ, align 4
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* @IONIC_NOTIFYQ_LENGTH, align 4
  %42 = load %struct.ionic_lif*, %struct.ionic_lif** %3, align 8
  %43 = getelementptr inbounds %struct.ionic_lif, %struct.ionic_lif* %42, i32 0, i32 5
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.ionic_lif*, %struct.ionic_lif** %3, align 8
  %46 = getelementptr inbounds %struct.ionic_lif, %struct.ionic_lif* %45, i32 0, i32 2
  %47 = call i32 @ionic_qcq_alloc(%struct.ionic_lif* %38, i32 %39, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %40, i32 %41, i32 4, i32 4, i32 0, i32 %44, i32** %46)
  store i32 %47, i32* %7, align 4
  %48 = load i32, i32* %7, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %36
  br label %254

51:                                               ; preds = %36
  %52 = load %struct.ionic_lif*, %struct.ionic_lif** %3, align 8
  %53 = getelementptr inbounds %struct.ionic_lif, %struct.ionic_lif* %52, i32 0, i32 1
  %54 = load i32*, i32** %53, align 8
  %55 = load %struct.ionic_lif*, %struct.ionic_lif** %3, align 8
  %56 = getelementptr inbounds %struct.ionic_lif, %struct.ionic_lif* %55, i32 0, i32 2
  %57 = load i32*, i32** %56, align 8
  %58 = call i32 @ionic_link_qcq_interrupts(i32* %54, i32* %57)
  br label %59

59:                                               ; preds = %51, %29
  %60 = load %struct.ionic_lif*, %struct.ionic_lif** %3, align 8
  %61 = getelementptr inbounds %struct.ionic_lif, %struct.ionic_lif* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = sext i32 %62 to i64
  %64 = mul i64 8, %63
  %65 = trunc i64 %64 to i32
  store i32 %65, i32* %5, align 4
  %66 = load i32, i32* @ENOMEM, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %7, align 4
  %68 = load %struct.device*, %struct.device** %4, align 8
  %69 = load i32, i32* %5, align 4
  %70 = load i32, i32* @GFP_KERNEL, align 4
  %71 = call i8* @devm_kzalloc(%struct.device* %68, i32 %69, i32 %70)
  %72 = bitcast i8* %71 to %struct.TYPE_4__*
  %73 = load %struct.ionic_lif*, %struct.ionic_lif** %3, align 8
  %74 = getelementptr inbounds %struct.ionic_lif, %struct.ionic_lif* %73, i32 0, i32 3
  store %struct.TYPE_4__* %72, %struct.TYPE_4__** %74, align 8
  %75 = load %struct.ionic_lif*, %struct.ionic_lif** %3, align 8
  %76 = getelementptr inbounds %struct.ionic_lif, %struct.ionic_lif* %75, i32 0, i32 3
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %76, align 8
  %78 = icmp ne %struct.TYPE_4__* %77, null
  br i1 %78, label %80, label %79

79:                                               ; preds = %59
  br label %240

80:                                               ; preds = %59
  store i32 0, i32* %8, align 4
  br label %81

81:                                               ; preds = %110, %80
  %82 = load i32, i32* %8, align 4
  %83 = load %struct.ionic_lif*, %struct.ionic_lif** %3, align 8
  %84 = getelementptr inbounds %struct.ionic_lif, %struct.ionic_lif* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = icmp slt i32 %82, %85
  br i1 %86, label %87, label %113

87:                                               ; preds = %81
  %88 = load %struct.device*, %struct.device** %4, align 8
  %89 = load i32, i32* @GFP_KERNEL, align 4
  %90 = call i8* @devm_kzalloc(%struct.device* %88, i32 4, i32 %89)
  %91 = bitcast i8* %90 to %struct.TYPE_4__*
  %92 = load %struct.ionic_lif*, %struct.ionic_lif** %3, align 8
  %93 = getelementptr inbounds %struct.ionic_lif, %struct.ionic_lif* %92, i32 0, i32 3
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** %93, align 8
  %95 = load i32, i32* %8, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i64 %96
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 0
  store %struct.TYPE_4__* %91, %struct.TYPE_4__** %98, align 8
  %99 = load %struct.ionic_lif*, %struct.ionic_lif** %3, align 8
  %100 = getelementptr inbounds %struct.ionic_lif, %struct.ionic_lif* %99, i32 0, i32 3
  %101 = load %struct.TYPE_4__*, %struct.TYPE_4__** %100, align 8
  %102 = load i32, i32* %8, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i64 %103
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 0
  %106 = load %struct.TYPE_4__*, %struct.TYPE_4__** %105, align 8
  %107 = icmp ne %struct.TYPE_4__* %106, null
  br i1 %107, label %109, label %108

108:                                              ; preds = %87
  br label %200

109:                                              ; preds = %87
  br label %110

110:                                              ; preds = %109
  %111 = load i32, i32* %8, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %8, align 4
  br label %81

113:                                              ; preds = %81
  %114 = load %struct.device*, %struct.device** %4, align 8
  %115 = load i32, i32* %5, align 4
  %116 = load i32, i32* @GFP_KERNEL, align 4
  %117 = call i8* @devm_kzalloc(%struct.device* %114, i32 %115, i32 %116)
  %118 = bitcast i8* %117 to %struct.TYPE_4__*
  %119 = load %struct.ionic_lif*, %struct.ionic_lif** %3, align 8
  %120 = getelementptr inbounds %struct.ionic_lif, %struct.ionic_lif* %119, i32 0, i32 4
  store %struct.TYPE_4__* %118, %struct.TYPE_4__** %120, align 8
  %121 = load %struct.ionic_lif*, %struct.ionic_lif** %3, align 8
  %122 = getelementptr inbounds %struct.ionic_lif, %struct.ionic_lif* %121, i32 0, i32 4
  %123 = load %struct.TYPE_4__*, %struct.TYPE_4__** %122, align 8
  %124 = icmp ne %struct.TYPE_4__* %123, null
  br i1 %124, label %126, label %125

125:                                              ; preds = %113
  br label %200

126:                                              ; preds = %113
  store i32 0, i32* %8, align 4
  br label %127

127:                                              ; preds = %156, %126
  %128 = load i32, i32* %8, align 4
  %129 = load %struct.ionic_lif*, %struct.ionic_lif** %3, align 8
  %130 = getelementptr inbounds %struct.ionic_lif, %struct.ionic_lif* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = icmp slt i32 %128, %131
  br i1 %132, label %133, label %159

133:                                              ; preds = %127
  %134 = load %struct.device*, %struct.device** %4, align 8
  %135 = load i32, i32* @GFP_KERNEL, align 4
  %136 = call i8* @devm_kzalloc(%struct.device* %134, i32 4, i32 %135)
  %137 = bitcast i8* %136 to %struct.TYPE_4__*
  %138 = load %struct.ionic_lif*, %struct.ionic_lif** %3, align 8
  %139 = getelementptr inbounds %struct.ionic_lif, %struct.ionic_lif* %138, i32 0, i32 4
  %140 = load %struct.TYPE_4__*, %struct.TYPE_4__** %139, align 8
  %141 = load i32, i32* %8, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %140, i64 %142
  %144 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %143, i32 0, i32 0
  store %struct.TYPE_4__* %137, %struct.TYPE_4__** %144, align 8
  %145 = load %struct.ionic_lif*, %struct.ionic_lif** %3, align 8
  %146 = getelementptr inbounds %struct.ionic_lif, %struct.ionic_lif* %145, i32 0, i32 4
  %147 = load %struct.TYPE_4__*, %struct.TYPE_4__** %146, align 8
  %148 = load i32, i32* %8, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %147, i64 %149
  %151 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %150, i32 0, i32 0
  %152 = load %struct.TYPE_4__*, %struct.TYPE_4__** %151, align 8
  %153 = icmp ne %struct.TYPE_4__* %152, null
  br i1 %153, label %155, label %154

154:                                              ; preds = %133
  br label %160

155:                                              ; preds = %133
  br label %156

156:                                              ; preds = %155
  %157 = load i32, i32* %8, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %8, align 4
  br label %127

159:                                              ; preds = %127
  store i32 0, i32* %2, align 4
  br label %263

160:                                              ; preds = %154
  store i32 0, i32* %8, align 4
  br label %161

161:                                              ; preds = %189, %160
  %162 = load i32, i32* %8, align 4
  %163 = load %struct.ionic_lif*, %struct.ionic_lif** %3, align 8
  %164 = getelementptr inbounds %struct.ionic_lif, %struct.ionic_lif* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 8
  %166 = icmp slt i32 %162, %165
  br i1 %166, label %167, label %192

167:                                              ; preds = %161
  %168 = load %struct.ionic_lif*, %struct.ionic_lif** %3, align 8
  %169 = getelementptr inbounds %struct.ionic_lif, %struct.ionic_lif* %168, i32 0, i32 4
  %170 = load %struct.TYPE_4__*, %struct.TYPE_4__** %169, align 8
  %171 = load i32, i32* %8, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %170, i64 %172
  %174 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %173, i32 0, i32 0
  %175 = load %struct.TYPE_4__*, %struct.TYPE_4__** %174, align 8
  %176 = icmp ne %struct.TYPE_4__* %175, null
  br i1 %176, label %177, label %188

177:                                              ; preds = %167
  %178 = load %struct.device*, %struct.device** %4, align 8
  %179 = load %struct.ionic_lif*, %struct.ionic_lif** %3, align 8
  %180 = getelementptr inbounds %struct.ionic_lif, %struct.ionic_lif* %179, i32 0, i32 4
  %181 = load %struct.TYPE_4__*, %struct.TYPE_4__** %180, align 8
  %182 = load i32, i32* %8, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %181, i64 %183
  %185 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %184, i32 0, i32 0
  %186 = load %struct.TYPE_4__*, %struct.TYPE_4__** %185, align 8
  %187 = call i32 @devm_kfree(%struct.device* %178, %struct.TYPE_4__* %186)
  br label %188

188:                                              ; preds = %177, %167
  br label %189

189:                                              ; preds = %188
  %190 = load i32, i32* %8, align 4
  %191 = add nsw i32 %190, 1
  store i32 %191, i32* %8, align 4
  br label %161

192:                                              ; preds = %161
  %193 = load %struct.device*, %struct.device** %4, align 8
  %194 = load %struct.ionic_lif*, %struct.ionic_lif** %3, align 8
  %195 = getelementptr inbounds %struct.ionic_lif, %struct.ionic_lif* %194, i32 0, i32 4
  %196 = load %struct.TYPE_4__*, %struct.TYPE_4__** %195, align 8
  %197 = call i32 @devm_kfree(%struct.device* %193, %struct.TYPE_4__* %196)
  %198 = load %struct.ionic_lif*, %struct.ionic_lif** %3, align 8
  %199 = getelementptr inbounds %struct.ionic_lif, %struct.ionic_lif* %198, i32 0, i32 4
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %199, align 8
  br label %200

200:                                              ; preds = %192, %125, %108
  store i32 0, i32* %8, align 4
  br label %201

201:                                              ; preds = %229, %200
  %202 = load i32, i32* %8, align 4
  %203 = load %struct.ionic_lif*, %struct.ionic_lif** %3, align 8
  %204 = getelementptr inbounds %struct.ionic_lif, %struct.ionic_lif* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 8
  %206 = icmp slt i32 %202, %205
  br i1 %206, label %207, label %232

207:                                              ; preds = %201
  %208 = load %struct.ionic_lif*, %struct.ionic_lif** %3, align 8
  %209 = getelementptr inbounds %struct.ionic_lif, %struct.ionic_lif* %208, i32 0, i32 3
  %210 = load %struct.TYPE_4__*, %struct.TYPE_4__** %209, align 8
  %211 = load i32, i32* %8, align 4
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %210, i64 %212
  %214 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %213, i32 0, i32 0
  %215 = load %struct.TYPE_4__*, %struct.TYPE_4__** %214, align 8
  %216 = icmp ne %struct.TYPE_4__* %215, null
  br i1 %216, label %217, label %228

217:                                              ; preds = %207
  %218 = load %struct.device*, %struct.device** %4, align 8
  %219 = load %struct.ionic_lif*, %struct.ionic_lif** %3, align 8
  %220 = getelementptr inbounds %struct.ionic_lif, %struct.ionic_lif* %219, i32 0, i32 3
  %221 = load %struct.TYPE_4__*, %struct.TYPE_4__** %220, align 8
  %222 = load i32, i32* %8, align 4
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %221, i64 %223
  %225 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %224, i32 0, i32 0
  %226 = load %struct.TYPE_4__*, %struct.TYPE_4__** %225, align 8
  %227 = call i32 @devm_kfree(%struct.device* %218, %struct.TYPE_4__* %226)
  br label %228

228:                                              ; preds = %217, %207
  br label %229

229:                                              ; preds = %228
  %230 = load i32, i32* %8, align 4
  %231 = add nsw i32 %230, 1
  store i32 %231, i32* %8, align 4
  br label %201

232:                                              ; preds = %201
  %233 = load %struct.device*, %struct.device** %4, align 8
  %234 = load %struct.ionic_lif*, %struct.ionic_lif** %3, align 8
  %235 = getelementptr inbounds %struct.ionic_lif, %struct.ionic_lif* %234, i32 0, i32 3
  %236 = load %struct.TYPE_4__*, %struct.TYPE_4__** %235, align 8
  %237 = call i32 @devm_kfree(%struct.device* %233, %struct.TYPE_4__* %236)
  %238 = load %struct.ionic_lif*, %struct.ionic_lif** %3, align 8
  %239 = getelementptr inbounds %struct.ionic_lif, %struct.ionic_lif* %238, i32 0, i32 3
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %239, align 8
  br label %240

240:                                              ; preds = %232, %79
  %241 = load %struct.ionic_lif*, %struct.ionic_lif** %3, align 8
  %242 = getelementptr inbounds %struct.ionic_lif, %struct.ionic_lif* %241, i32 0, i32 2
  %243 = load i32*, i32** %242, align 8
  %244 = icmp ne i32* %243, null
  br i1 %244, label %245, label %253

245:                                              ; preds = %240
  %246 = load %struct.ionic_lif*, %struct.ionic_lif** %3, align 8
  %247 = load %struct.ionic_lif*, %struct.ionic_lif** %3, align 8
  %248 = getelementptr inbounds %struct.ionic_lif, %struct.ionic_lif* %247, i32 0, i32 2
  %249 = load i32*, i32** %248, align 8
  %250 = call i32 @ionic_qcq_free(%struct.ionic_lif* %246, i32* %249)
  %251 = load %struct.ionic_lif*, %struct.ionic_lif** %3, align 8
  %252 = getelementptr inbounds %struct.ionic_lif, %struct.ionic_lif* %251, i32 0, i32 2
  store i32* null, i32** %252, align 8
  br label %253

253:                                              ; preds = %245, %240
  br label %254

254:                                              ; preds = %253, %50
  %255 = load %struct.ionic_lif*, %struct.ionic_lif** %3, align 8
  %256 = load %struct.ionic_lif*, %struct.ionic_lif** %3, align 8
  %257 = getelementptr inbounds %struct.ionic_lif, %struct.ionic_lif* %256, i32 0, i32 1
  %258 = load i32*, i32** %257, align 8
  %259 = call i32 @ionic_qcq_free(%struct.ionic_lif* %255, i32* %258)
  %260 = load %struct.ionic_lif*, %struct.ionic_lif** %3, align 8
  %261 = getelementptr inbounds %struct.ionic_lif, %struct.ionic_lif* %260, i32 0, i32 1
  store i32* null, i32** %261, align 8
  %262 = load i32, i32* %7, align 4
  store i32 %262, i32* %2, align 4
  br label %263

263:                                              ; preds = %254, %159, %27
  %264 = load i32, i32* %2, align 4
  ret i32 %264
}

declare dso_local i32 @ionic_qcq_alloc(%struct.ionic_lif*, i32, i32, i8*, i32, i32, i32, i32, i32, i32, i32**) #1

declare dso_local i32 @ionic_link_qcq_interrupts(i32*, i32*) #1

declare dso_local i8* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @devm_kfree(%struct.device*, %struct.TYPE_4__*) #1

declare dso_local i32 @ionic_qcq_free(%struct.ionic_lif*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
