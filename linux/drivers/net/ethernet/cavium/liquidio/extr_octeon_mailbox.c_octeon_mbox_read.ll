; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_octeon_mailbox.c_octeon_mbox_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_octeon_mailbox.c_octeon_mbox_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.octeon_mbox = type { i32, i32, i32, %struct.TYPE_14__, %struct.TYPE_11__, i32 }
%struct.TYPE_14__ = type { i64*, i32, %struct.TYPE_13__, i32 }
%struct.TYPE_13__ = type { i64, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { i64*, i32, %struct.TYPE_10__, i32 }
%struct.TYPE_10__ = type { i64, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%union.octeon_mbox_message = type { i64 }
%struct.TYPE_8__ = type { i64 }

@OCTEON_PFVFACK = common dso_local global i64 0, align 8
@OCTEON_PFVFSIG = common dso_local global i64 0, align 8
@OCTEON_MBOX_STATE_REQUEST_RECEIVING = common dso_local global i32 0, align 4
@OCTEON_MBOX_STATE_RESPONSE_RECEIVING = common dso_local global i32 0, align 4
@OCTEON_MBOX_STATE_IDLE = common dso_local global i32 0, align 4
@OCTEON_MBOX_REQUEST = common dso_local global i64 0, align 8
@OCTEON_MBOX_STATE_RESPONSE_PENDING = common dso_local global i32 0, align 4
@OCTEON_MBOX_RESPONSE = common dso_local global i64 0, align 8
@OCTEON_PFVFERR = common dso_local global i64 0, align 8
@OCTEON_MBOX_STATE_ERROR = common dso_local global i32 0, align 4
@OCTEON_MBOX_STATE_REQUEST_RECEIVED = common dso_local global i32 0, align 4
@OCTEON_MBOX_STATE_RESPONSE_RECEIVED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @octeon_mbox_read(%struct.octeon_mbox* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.octeon_mbox*, align 8
  %4 = alloca %union.octeon_mbox_message, align 8
  %5 = alloca i32, align 4
  store %struct.octeon_mbox* %0, %struct.octeon_mbox** %3, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.octeon_mbox*, %struct.octeon_mbox** %3, align 8
  %7 = getelementptr inbounds %struct.octeon_mbox, %struct.octeon_mbox* %6, i32 0, i32 1
  %8 = call i32 @spin_lock(i32* %7)
  %9 = load %struct.octeon_mbox*, %struct.octeon_mbox** %3, align 8
  %10 = getelementptr inbounds %struct.octeon_mbox, %struct.octeon_mbox* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 8
  %12 = call i64 @readq(i32 %11)
  %13 = bitcast %union.octeon_mbox_message* %4 to i64*
  store i64 %12, i64* %13, align 8
  %14 = bitcast %union.octeon_mbox_message* %4 to i64*
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @OCTEON_PFVFACK, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %23, label %18

18:                                               ; preds = %1
  %19 = bitcast %union.octeon_mbox_message* %4 to i64*
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @OCTEON_PFVFSIG, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %27

23:                                               ; preds = %18, %1
  %24 = load %struct.octeon_mbox*, %struct.octeon_mbox** %3, align 8
  %25 = getelementptr inbounds %struct.octeon_mbox, %struct.octeon_mbox* %24, i32 0, i32 1
  %26 = call i32 @spin_unlock(i32* %25)
  store i32 0, i32* %2, align 4
  br label %255

27:                                               ; preds = %18
  %28 = load %struct.octeon_mbox*, %struct.octeon_mbox** %3, align 8
  %29 = getelementptr inbounds %struct.octeon_mbox, %struct.octeon_mbox* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @OCTEON_MBOX_STATE_REQUEST_RECEIVING, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %53

34:                                               ; preds = %27
  %35 = bitcast %union.octeon_mbox_message* %4 to i64*
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.octeon_mbox*, %struct.octeon_mbox** %3, align 8
  %38 = getelementptr inbounds %struct.octeon_mbox, %struct.octeon_mbox* %37, i32 0, i32 4
  %39 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %38, i32 0, i32 0
  %40 = load i64*, i64** %39, align 8
  %41 = load %struct.octeon_mbox*, %struct.octeon_mbox** %3, align 8
  %42 = getelementptr inbounds %struct.octeon_mbox, %struct.octeon_mbox* %41, i32 0, i32 4
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = sub nsw i32 %44, 1
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i64, i64* %40, i64 %46
  store i64 %36, i64* %47, align 8
  %48 = load %struct.octeon_mbox*, %struct.octeon_mbox** %3, align 8
  %49 = getelementptr inbounds %struct.octeon_mbox, %struct.octeon_mbox* %48, i32 0, i32 4
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %50, align 8
  br label %176

53:                                               ; preds = %27
  %54 = load %struct.octeon_mbox*, %struct.octeon_mbox** %3, align 8
  %55 = getelementptr inbounds %struct.octeon_mbox, %struct.octeon_mbox* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @OCTEON_MBOX_STATE_RESPONSE_RECEIVING, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %79

60:                                               ; preds = %53
  %61 = bitcast %union.octeon_mbox_message* %4 to i64*
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.octeon_mbox*, %struct.octeon_mbox** %3, align 8
  %64 = getelementptr inbounds %struct.octeon_mbox, %struct.octeon_mbox* %63, i32 0, i32 3
  %65 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %64, i32 0, i32 0
  %66 = load i64*, i64** %65, align 8
  %67 = load %struct.octeon_mbox*, %struct.octeon_mbox** %3, align 8
  %68 = getelementptr inbounds %struct.octeon_mbox, %struct.octeon_mbox* %67, i32 0, i32 3
  %69 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = sub nsw i32 %70, 1
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i64, i64* %66, i64 %72
  store i64 %62, i64* %73, align 8
  %74 = load %struct.octeon_mbox*, %struct.octeon_mbox** %3, align 8
  %75 = getelementptr inbounds %struct.octeon_mbox, %struct.octeon_mbox* %74, i32 0, i32 3
  %76 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %76, align 8
  br label %175

79:                                               ; preds = %53
  %80 = load %struct.octeon_mbox*, %struct.octeon_mbox** %3, align 8
  %81 = getelementptr inbounds %struct.octeon_mbox, %struct.octeon_mbox* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* @OCTEON_MBOX_STATE_IDLE, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %119

86:                                               ; preds = %79
  %87 = bitcast %union.octeon_mbox_message* %4 to %struct.TYPE_8__*
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @OCTEON_MBOX_REQUEST, align 8
  %91 = icmp eq i64 %89, %90
  br i1 %91, label %92, label %119

92:                                               ; preds = %86
  %93 = load i32, i32* @OCTEON_MBOX_STATE_IDLE, align 4
  %94 = xor i32 %93, -1
  %95 = load %struct.octeon_mbox*, %struct.octeon_mbox** %3, align 8
  %96 = getelementptr inbounds %struct.octeon_mbox, %struct.octeon_mbox* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = and i32 %97, %94
  store i32 %98, i32* %96, align 8
  %99 = load i32, i32* @OCTEON_MBOX_STATE_REQUEST_RECEIVING, align 4
  %100 = load %struct.octeon_mbox*, %struct.octeon_mbox** %3, align 8
  %101 = getelementptr inbounds %struct.octeon_mbox, %struct.octeon_mbox* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = or i32 %102, %99
  store i32 %103, i32* %101, align 8
  %104 = bitcast %union.octeon_mbox_message* %4 to i64*
  %105 = load i64, i64* %104, align 8
  %106 = load %struct.octeon_mbox*, %struct.octeon_mbox** %3, align 8
  %107 = getelementptr inbounds %struct.octeon_mbox, %struct.octeon_mbox* %106, i32 0, i32 4
  %108 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %107, i32 0, i32 2
  %109 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %108, i32 0, i32 0
  store i64 %105, i64* %109, align 8
  %110 = load %struct.octeon_mbox*, %struct.octeon_mbox** %3, align 8
  %111 = getelementptr inbounds %struct.octeon_mbox, %struct.octeon_mbox* %110, i32 0, i32 5
  %112 = load i32, i32* %111, align 8
  %113 = load %struct.octeon_mbox*, %struct.octeon_mbox** %3, align 8
  %114 = getelementptr inbounds %struct.octeon_mbox, %struct.octeon_mbox* %113, i32 0, i32 4
  %115 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %114, i32 0, i32 3
  store i32 %112, i32* %115, align 8
  %116 = load %struct.octeon_mbox*, %struct.octeon_mbox** %3, align 8
  %117 = getelementptr inbounds %struct.octeon_mbox, %struct.octeon_mbox* %116, i32 0, i32 4
  %118 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %117, i32 0, i32 1
  store i32 1, i32* %118, align 8
  br label %174

119:                                              ; preds = %86, %79
  %120 = load %struct.octeon_mbox*, %struct.octeon_mbox** %3, align 8
  %121 = getelementptr inbounds %struct.octeon_mbox, %struct.octeon_mbox* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = load i32, i32* @OCTEON_MBOX_STATE_RESPONSE_PENDING, align 4
  %124 = and i32 %122, %123
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %159

126:                                              ; preds = %119
  %127 = bitcast %union.octeon_mbox_message* %4 to %struct.TYPE_8__*
  %128 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = load i64, i64* @OCTEON_MBOX_RESPONSE, align 8
  %131 = icmp eq i64 %129, %130
  br i1 %131, label %132, label %159

132:                                              ; preds = %126
  %133 = load i32, i32* @OCTEON_MBOX_STATE_RESPONSE_PENDING, align 4
  %134 = xor i32 %133, -1
  %135 = load %struct.octeon_mbox*, %struct.octeon_mbox** %3, align 8
  %136 = getelementptr inbounds %struct.octeon_mbox, %struct.octeon_mbox* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = and i32 %137, %134
  store i32 %138, i32* %136, align 8
  %139 = load i32, i32* @OCTEON_MBOX_STATE_RESPONSE_RECEIVING, align 4
  %140 = load %struct.octeon_mbox*, %struct.octeon_mbox** %3, align 8
  %141 = getelementptr inbounds %struct.octeon_mbox, %struct.octeon_mbox* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = or i32 %142, %139
  store i32 %143, i32* %141, align 8
  %144 = bitcast %union.octeon_mbox_message* %4 to i64*
  %145 = load i64, i64* %144, align 8
  %146 = load %struct.octeon_mbox*, %struct.octeon_mbox** %3, align 8
  %147 = getelementptr inbounds %struct.octeon_mbox, %struct.octeon_mbox* %146, i32 0, i32 3
  %148 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %147, i32 0, i32 2
  %149 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %148, i32 0, i32 0
  store i64 %145, i64* %149, align 8
  %150 = load %struct.octeon_mbox*, %struct.octeon_mbox** %3, align 8
  %151 = getelementptr inbounds %struct.octeon_mbox, %struct.octeon_mbox* %150, i32 0, i32 5
  %152 = load i32, i32* %151, align 8
  %153 = load %struct.octeon_mbox*, %struct.octeon_mbox** %3, align 8
  %154 = getelementptr inbounds %struct.octeon_mbox, %struct.octeon_mbox* %153, i32 0, i32 3
  %155 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %154, i32 0, i32 3
  store i32 %152, i32* %155, align 8
  %156 = load %struct.octeon_mbox*, %struct.octeon_mbox** %3, align 8
  %157 = getelementptr inbounds %struct.octeon_mbox, %struct.octeon_mbox* %156, i32 0, i32 3
  %158 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %157, i32 0, i32 1
  store i32 1, i32* %158, align 8
  br label %173

159:                                              ; preds = %126, %119
  %160 = load i64, i64* @OCTEON_PFVFERR, align 8
  %161 = load %struct.octeon_mbox*, %struct.octeon_mbox** %3, align 8
  %162 = getelementptr inbounds %struct.octeon_mbox, %struct.octeon_mbox* %161, i32 0, i32 2
  %163 = load i32, i32* %162, align 8
  %164 = call i32 @writeq(i64 %160, i32 %163)
  %165 = load i32, i32* @OCTEON_MBOX_STATE_ERROR, align 4
  %166 = load %struct.octeon_mbox*, %struct.octeon_mbox** %3, align 8
  %167 = getelementptr inbounds %struct.octeon_mbox, %struct.octeon_mbox* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  %169 = or i32 %168, %165
  store i32 %169, i32* %167, align 8
  %170 = load %struct.octeon_mbox*, %struct.octeon_mbox** %3, align 8
  %171 = getelementptr inbounds %struct.octeon_mbox, %struct.octeon_mbox* %170, i32 0, i32 1
  %172 = call i32 @spin_unlock(i32* %171)
  store i32 1, i32* %2, align 4
  br label %255

173:                                              ; preds = %132
  br label %174

174:                                              ; preds = %173, %92
  br label %175

175:                                              ; preds = %174, %60
  br label %176

176:                                              ; preds = %175, %34
  %177 = load %struct.octeon_mbox*, %struct.octeon_mbox** %3, align 8
  %178 = getelementptr inbounds %struct.octeon_mbox, %struct.octeon_mbox* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 8
  %180 = load i32, i32* @OCTEON_MBOX_STATE_REQUEST_RECEIVING, align 4
  %181 = and i32 %179, %180
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %209

183:                                              ; preds = %176
  %184 = load %struct.octeon_mbox*, %struct.octeon_mbox** %3, align 8
  %185 = getelementptr inbounds %struct.octeon_mbox, %struct.octeon_mbox* %184, i32 0, i32 4
  %186 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %185, i32 0, i32 1
  %187 = load i32, i32* %186, align 8
  %188 = load %struct.octeon_mbox*, %struct.octeon_mbox** %3, align 8
  %189 = getelementptr inbounds %struct.octeon_mbox, %struct.octeon_mbox* %188, i32 0, i32 4
  %190 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %189, i32 0, i32 2
  %191 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %190, i32 0, i32 1
  %192 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 8
  %194 = icmp slt i32 %187, %193
  br i1 %194, label %195, label %196

195:                                              ; preds = %183
  store i32 0, i32* %5, align 4
  br label %208

196:                                              ; preds = %183
  %197 = load i32, i32* @OCTEON_MBOX_STATE_REQUEST_RECEIVING, align 4
  %198 = xor i32 %197, -1
  %199 = load %struct.octeon_mbox*, %struct.octeon_mbox** %3, align 8
  %200 = getelementptr inbounds %struct.octeon_mbox, %struct.octeon_mbox* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 8
  %202 = and i32 %201, %198
  store i32 %202, i32* %200, align 8
  %203 = load i32, i32* @OCTEON_MBOX_STATE_REQUEST_RECEIVED, align 4
  %204 = load %struct.octeon_mbox*, %struct.octeon_mbox** %3, align 8
  %205 = getelementptr inbounds %struct.octeon_mbox, %struct.octeon_mbox* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 8
  %207 = or i32 %206, %203
  store i32 %207, i32* %205, align 8
  store i32 1, i32* %5, align 4
  br label %208

208:                                              ; preds = %196, %195
  br label %245

209:                                              ; preds = %176
  %210 = load %struct.octeon_mbox*, %struct.octeon_mbox** %3, align 8
  %211 = getelementptr inbounds %struct.octeon_mbox, %struct.octeon_mbox* %210, i32 0, i32 0
  %212 = load i32, i32* %211, align 8
  %213 = load i32, i32* @OCTEON_MBOX_STATE_RESPONSE_RECEIVING, align 4
  %214 = and i32 %212, %213
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %216, label %242

216:                                              ; preds = %209
  %217 = load %struct.octeon_mbox*, %struct.octeon_mbox** %3, align 8
  %218 = getelementptr inbounds %struct.octeon_mbox, %struct.octeon_mbox* %217, i32 0, i32 3
  %219 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %218, i32 0, i32 1
  %220 = load i32, i32* %219, align 8
  %221 = load %struct.octeon_mbox*, %struct.octeon_mbox** %3, align 8
  %222 = getelementptr inbounds %struct.octeon_mbox, %struct.octeon_mbox* %221, i32 0, i32 3
  %223 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %222, i32 0, i32 2
  %224 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %223, i32 0, i32 1
  %225 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %224, i32 0, i32 0
  %226 = load i32, i32* %225, align 8
  %227 = icmp slt i32 %220, %226
  br i1 %227, label %228, label %229

228:                                              ; preds = %216
  store i32 0, i32* %5, align 4
  br label %241

229:                                              ; preds = %216
  %230 = load i32, i32* @OCTEON_MBOX_STATE_RESPONSE_RECEIVING, align 4
  %231 = xor i32 %230, -1
  %232 = load %struct.octeon_mbox*, %struct.octeon_mbox** %3, align 8
  %233 = getelementptr inbounds %struct.octeon_mbox, %struct.octeon_mbox* %232, i32 0, i32 0
  %234 = load i32, i32* %233, align 8
  %235 = and i32 %234, %231
  store i32 %235, i32* %233, align 8
  %236 = load i32, i32* @OCTEON_MBOX_STATE_RESPONSE_RECEIVED, align 4
  %237 = load %struct.octeon_mbox*, %struct.octeon_mbox** %3, align 8
  %238 = getelementptr inbounds %struct.octeon_mbox, %struct.octeon_mbox* %237, i32 0, i32 0
  %239 = load i32, i32* %238, align 8
  %240 = or i32 %239, %236
  store i32 %240, i32* %238, align 8
  store i32 1, i32* %5, align 4
  br label %241

241:                                              ; preds = %229, %228
  br label %244

242:                                              ; preds = %209
  %243 = call i32 @WARN_ON(i32 1)
  br label %244

244:                                              ; preds = %242, %241
  br label %245

245:                                              ; preds = %244, %208
  %246 = load i64, i64* @OCTEON_PFVFACK, align 8
  %247 = load %struct.octeon_mbox*, %struct.octeon_mbox** %3, align 8
  %248 = getelementptr inbounds %struct.octeon_mbox, %struct.octeon_mbox* %247, i32 0, i32 2
  %249 = load i32, i32* %248, align 8
  %250 = call i32 @writeq(i64 %246, i32 %249)
  %251 = load %struct.octeon_mbox*, %struct.octeon_mbox** %3, align 8
  %252 = getelementptr inbounds %struct.octeon_mbox, %struct.octeon_mbox* %251, i32 0, i32 1
  %253 = call i32 @spin_unlock(i32* %252)
  %254 = load i32, i32* %5, align 4
  store i32 %254, i32* %2, align 4
  br label %255

255:                                              ; preds = %245, %159, %23
  %256 = load i32, i32* %2, align 4
  ret i32 %256
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @readq(i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @writeq(i64, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
