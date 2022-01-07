; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/mic/scif/extr_scif_api.c___scif_connect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/mic/scif/extr_scif_api.c___scif_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, i32, i32, i32, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.scif_dev = type { i32 }
%struct.scif_port_id = type { i64 }
%struct.scif_endpt = type { i64, i64, i32, i32, i32, i32, %struct.TYPE_9__, %struct.scif_dev*, i32, i32, i32, %struct.scif_port_id, %struct.TYPE_7__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.device = type { i32 }

@scif_info = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@.str = private unnamed_addr constant [27 x i8] c"SCIFAPI connect: ep %p %s\0A\00", align 1
@scif_ep_states = common dso_local global i32* null, align 8
@scif_dev = common dso_local global %struct.scif_dev* null, align 8
@ENODEV = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ASYNC_CONN_INPROGRESS = common dso_local global i64 0, align 8
@ASYNC_CONN_FLUSH_WORK = common dso_local global i64 0, align 8
@EOPNOTSUPP = common dso_local global i32 0, align 4
@EINPROGRESS = common dso_local global i32 0, align 4
@EISCONN = common dso_local global i32 0, align 4
@ASYNC_CONN_IDLE = common dso_local global i8* null, align 8
@SCIFEP_MAGIC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__scif_connect(i64 %0, %struct.scif_port_id* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.scif_port_id*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.scif_endpt*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.scif_dev*, align 8
  %11 = alloca %struct.device*, align 8
  store i64 %0, i64* %5, align 8
  store %struct.scif_port_id* %1, %struct.scif_port_id** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load i64, i64* %5, align 8
  %13 = inttoptr i64 %12 to %struct.scif_endpt*
  store %struct.scif_endpt* %13, %struct.scif_endpt** %8, align 8
  store i32 0, i32* %9, align 4
  %14 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @scif_info, i32 0, i32 5, i32 0), align 8
  %15 = load %struct.scif_endpt*, %struct.scif_endpt** %8, align 8
  %16 = load i32*, i32** @scif_ep_states, align 8
  %17 = load %struct.scif_endpt*, %struct.scif_endpt** %8, align 8
  %18 = getelementptr inbounds %struct.scif_endpt, %struct.scif_endpt* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = getelementptr inbounds i32, i32* %16, i64 %19
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @dev_dbg(i32 %14, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), %struct.scif_endpt* %15, i32 %21)
  %23 = load %struct.scif_dev*, %struct.scif_dev** @scif_dev, align 8
  %24 = icmp ne %struct.scif_dev* %23, null
  br i1 %24, label %25, label %31

25:                                               ; preds = %3
  %26 = load %struct.scif_port_id*, %struct.scif_port_id** %6, align 8
  %27 = getelementptr inbounds %struct.scif_port_id, %struct.scif_port_id* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @scif_info, i32 0, i32 0), align 8
  %30 = icmp ugt i64 %28, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %25, %3
  %32 = load i32, i32* @ENODEV, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %4, align 4
  br label %249

34:                                               ; preds = %25
  %35 = call i32 (...) @might_sleep()
  %36 = load %struct.scif_dev*, %struct.scif_dev** @scif_dev, align 8
  %37 = load %struct.scif_port_id*, %struct.scif_port_id** %6, align 8
  %38 = getelementptr inbounds %struct.scif_port_id, %struct.scif_port_id* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = getelementptr inbounds %struct.scif_dev, %struct.scif_dev* %36, i64 %39
  store %struct.scif_dev* %40, %struct.scif_dev** %10, align 8
  %41 = load %struct.scif_dev*, %struct.scif_dev** %10, align 8
  %42 = call %struct.device* @scif_get_peer_dev(%struct.scif_dev* %41)
  store %struct.device* %42, %struct.device** %11, align 8
  %43 = load %struct.device*, %struct.device** %11, align 8
  %44 = call i64 @IS_ERR(%struct.device* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %34
  %47 = load %struct.device*, %struct.device** %11, align 8
  %48 = call i32 @PTR_ERR(%struct.device* %47)
  store i32 %48, i32* %9, align 4
  %49 = load i32, i32* %9, align 4
  store i32 %49, i32* %4, align 4
  br label %249

50:                                               ; preds = %34
  %51 = load %struct.scif_endpt*, %struct.scif_endpt** %8, align 8
  %52 = getelementptr inbounds %struct.scif_endpt, %struct.scif_endpt* %51, i32 0, i32 3
  %53 = call i32 @spin_lock(i32* %52)
  %54 = load %struct.scif_endpt*, %struct.scif_endpt** %8, align 8
  %55 = getelementptr inbounds %struct.scif_endpt, %struct.scif_endpt* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  switch i64 %56, label %168 [
    i64 128, label %57
    i64 135, label %57
    i64 132, label %60
    i64 131, label %74
    i64 136, label %74
    i64 133, label %77
    i64 130, label %77
    i64 134, label %90
    i64 129, label %104
    i64 137, label %122
  ]

57:                                               ; preds = %50, %50
  %58 = load i32, i32* @EINVAL, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %9, align 4
  br label %168

60:                                               ; preds = %50
  %61 = load %struct.scif_endpt*, %struct.scif_endpt** %8, align 8
  %62 = getelementptr inbounds %struct.scif_endpt, %struct.scif_endpt* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @ASYNC_CONN_INPROGRESS, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %70

66:                                               ; preds = %60
  %67 = load i64, i64* @ASYNC_CONN_FLUSH_WORK, align 8
  %68 = load %struct.scif_endpt*, %struct.scif_endpt** %8, align 8
  %69 = getelementptr inbounds %struct.scif_endpt, %struct.scif_endpt* %68, i32 0, i32 1
  store i64 %67, i64* %69, align 8
  br label %73

70:                                               ; preds = %60
  %71 = load i32, i32* @EINVAL, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %9, align 4
  br label %73

73:                                               ; preds = %70, %66
  br label %168

74:                                               ; preds = %50, %50
  %75 = load i32, i32* @EOPNOTSUPP, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %9, align 4
  br label %168

77:                                               ; preds = %50, %50
  %78 = load %struct.scif_endpt*, %struct.scif_endpt** %8, align 8
  %79 = getelementptr inbounds %struct.scif_endpt, %struct.scif_endpt* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @ASYNC_CONN_INPROGRESS, align 8
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %83, label %86

83:                                               ; preds = %77
  %84 = load i32, i32* @EINPROGRESS, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %9, align 4
  br label %89

86:                                               ; preds = %77
  %87 = load i32, i32* @EISCONN, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %9, align 4
  br label %89

89:                                               ; preds = %86, %83
  br label %168

90:                                               ; preds = %50
  %91 = load %struct.scif_endpt*, %struct.scif_endpt** %8, align 8
  %92 = getelementptr inbounds %struct.scif_endpt, %struct.scif_endpt* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* @ASYNC_CONN_INPROGRESS, align 8
  %95 = icmp eq i64 %93, %94
  br i1 %95, label %96, label %100

96:                                               ; preds = %90
  %97 = load i64, i64* @ASYNC_CONN_FLUSH_WORK, align 8
  %98 = load %struct.scif_endpt*, %struct.scif_endpt** %8, align 8
  %99 = getelementptr inbounds %struct.scif_endpt, %struct.scif_endpt* %98, i32 0, i32 1
  store i64 %97, i64* %99, align 8
  br label %103

100:                                              ; preds = %90
  %101 = load i32, i32* @EISCONN, align 4
  %102 = sub nsw i32 0, %101
  store i32 %102, i32* %9, align 4
  br label %103

103:                                              ; preds = %100, %96
  br label %168

104:                                              ; preds = %50
  %105 = call i32 (...) @scif_get_new_port()
  store i32 %105, i32* %9, align 4
  %106 = load i32, i32* %9, align 4
  %107 = icmp slt i32 %106, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %104
  br label %168

109:                                              ; preds = %104
  %110 = load i32, i32* %9, align 4
  %111 = load %struct.scif_endpt*, %struct.scif_endpt** %8, align 8
  %112 = getelementptr inbounds %struct.scif_endpt, %struct.scif_endpt* %111, i32 0, i32 12
  %113 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %112, i32 0, i32 0
  store i32 %110, i32* %113, align 8
  %114 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @scif_info, i32 0, i32 4), align 4
  %115 = load %struct.scif_endpt*, %struct.scif_endpt** %8, align 8
  %116 = getelementptr inbounds %struct.scif_endpt, %struct.scif_endpt* %115, i32 0, i32 12
  %117 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %116, i32 0, i32 1
  store i32 %114, i32* %117, align 4
  %118 = load i8*, i8** @ASYNC_CONN_IDLE, align 8
  %119 = ptrtoint i8* %118 to i64
  %120 = load %struct.scif_endpt*, %struct.scif_endpt** %8, align 8
  %121 = getelementptr inbounds %struct.scif_endpt, %struct.scif_endpt* %120, i32 0, i32 1
  store i64 %119, i64* %121, align 8
  br label %122

122:                                              ; preds = %50, %109
  %123 = load %struct.scif_endpt*, %struct.scif_endpt** %8, align 8
  %124 = getelementptr inbounds %struct.scif_endpt, %struct.scif_endpt* %123, i32 0, i32 1
  %125 = load i64, i64* %124, align 8
  %126 = load i64, i64* @ASYNC_CONN_INPROGRESS, align 8
  %127 = icmp eq i64 %125, %126
  br i1 %127, label %128, label %132

128:                                              ; preds = %122
  %129 = load i64, i64* @ASYNC_CONN_FLUSH_WORK, align 8
  %130 = load %struct.scif_endpt*, %struct.scif_endpt** %8, align 8
  %131 = getelementptr inbounds %struct.scif_endpt, %struct.scif_endpt* %130, i32 0, i32 1
  store i64 %129, i64* %131, align 8
  br label %167

132:                                              ; preds = %122
  %133 = load %struct.scif_endpt*, %struct.scif_endpt** %8, align 8
  %134 = getelementptr inbounds %struct.scif_endpt, %struct.scif_endpt* %133, i32 0, i32 1
  %135 = load i64, i64* %134, align 8
  %136 = load i64, i64* @ASYNC_CONN_FLUSH_WORK, align 8
  %137 = icmp eq i64 %135, %136
  br i1 %137, label %138, label %141

138:                                              ; preds = %132
  %139 = load i32, i32* @EINPROGRESS, align 4
  %140 = sub nsw i32 0, %139
  store i32 %140, i32* %9, align 4
  br label %166

141:                                              ; preds = %132
  %142 = load %struct.scif_endpt*, %struct.scif_endpt** %8, align 8
  %143 = getelementptr inbounds %struct.scif_endpt, %struct.scif_endpt* %142, i32 0, i32 11
  %144 = load %struct.scif_port_id*, %struct.scif_port_id** %6, align 8
  %145 = bitcast %struct.scif_port_id* %143 to i8*
  %146 = bitcast %struct.scif_port_id* %144 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %145, i8* align 8 %146, i64 8, i1 false)
  %147 = load %struct.scif_endpt*, %struct.scif_endpt** %8, align 8
  %148 = getelementptr inbounds %struct.scif_endpt, %struct.scif_endpt* %147, i32 0, i32 10
  %149 = call i32 @init_waitqueue_head(i32* %148)
  %150 = load %struct.scif_endpt*, %struct.scif_endpt** %8, align 8
  %151 = getelementptr inbounds %struct.scif_endpt, %struct.scif_endpt* %150, i32 0, i32 9
  %152 = call i32 @init_waitqueue_head(i32* %151)
  %153 = load %struct.scif_endpt*, %struct.scif_endpt** %8, align 8
  %154 = getelementptr inbounds %struct.scif_endpt, %struct.scif_endpt* %153, i32 0, i32 8
  %155 = call i32 @init_waitqueue_head(i32* %154)
  %156 = load %struct.scif_endpt*, %struct.scif_endpt** %8, align 8
  %157 = getelementptr inbounds %struct.scif_endpt, %struct.scif_endpt* %156, i32 0, i32 1
  store i64 0, i64* %157, align 8
  %158 = load i32, i32* %7, align 4
  %159 = call i32 @unlikely(i32 %158)
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %165

161:                                              ; preds = %141
  %162 = load i64, i64* @ASYNC_CONN_INPROGRESS, align 8
  %163 = load %struct.scif_endpt*, %struct.scif_endpt** %8, align 8
  %164 = getelementptr inbounds %struct.scif_endpt, %struct.scif_endpt* %163, i32 0, i32 1
  store i64 %162, i64* %164, align 8
  br label %165

165:                                              ; preds = %161, %141
  br label %166

166:                                              ; preds = %165, %138
  br label %167

167:                                              ; preds = %166, %128
  br label %168

168:                                              ; preds = %50, %167, %108, %103, %89, %74, %73, %57
  %169 = load i32, i32* %9, align 4
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %177, label %171

171:                                              ; preds = %168
  %172 = load %struct.scif_endpt*, %struct.scif_endpt** %8, align 8
  %173 = getelementptr inbounds %struct.scif_endpt, %struct.scif_endpt* %172, i32 0, i32 1
  %174 = load i64, i64* %173, align 8
  %175 = load i64, i64* @ASYNC_CONN_FLUSH_WORK, align 8
  %176 = icmp eq i64 %174, %175
  br i1 %176, label %177, label %178

177:                                              ; preds = %171, %168
  br label %212

178:                                              ; preds = %171
  %179 = load %struct.scif_endpt*, %struct.scif_endpt** %8, align 8
  %180 = getelementptr inbounds %struct.scif_endpt, %struct.scif_endpt* %179, i32 0, i32 0
  store i64 133, i64* %180, align 8
  %181 = load %struct.scif_dev*, %struct.scif_dev** @scif_dev, align 8
  %182 = load %struct.scif_port_id*, %struct.scif_port_id** %6, align 8
  %183 = getelementptr inbounds %struct.scif_port_id, %struct.scif_port_id* %182, i32 0, i32 0
  %184 = load i64, i64* %183, align 8
  %185 = getelementptr inbounds %struct.scif_dev, %struct.scif_dev* %181, i64 %184
  %186 = load %struct.scif_endpt*, %struct.scif_endpt** %8, align 8
  %187 = getelementptr inbounds %struct.scif_endpt, %struct.scif_endpt* %186, i32 0, i32 7
  store %struct.scif_dev* %185, %struct.scif_dev** %187, align 8
  %188 = load i32, i32* @SCIFEP_MAGIC, align 4
  %189 = load %struct.scif_endpt*, %struct.scif_endpt** %8, align 8
  %190 = getelementptr inbounds %struct.scif_endpt, %struct.scif_endpt* %189, i32 0, i32 6
  %191 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %190, i32 0, i32 0
  %192 = load %struct.TYPE_8__*, %struct.TYPE_8__** %191, align 8
  %193 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %192, i32 0, i32 0
  store i32 %188, i32* %193, align 4
  %194 = load %struct.scif_endpt*, %struct.scif_endpt** %8, align 8
  %195 = getelementptr inbounds %struct.scif_endpt, %struct.scif_endpt* %194, i32 0, i32 1
  %196 = load i64, i64* %195, align 8
  %197 = load i64, i64* @ASYNC_CONN_INPROGRESS, align 8
  %198 = icmp eq i64 %196, %197
  br i1 %198, label %199, label %211

199:                                              ; preds = %178
  %200 = load %struct.scif_endpt*, %struct.scif_endpt** %8, align 8
  %201 = getelementptr inbounds %struct.scif_endpt, %struct.scif_endpt* %200, i32 0, i32 5
  %202 = call i32 @init_waitqueue_head(i32* %201)
  %203 = call i32 @spin_lock(i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @scif_info, i32 0, i32 2))
  %204 = load %struct.scif_endpt*, %struct.scif_endpt** %8, align 8
  %205 = getelementptr inbounds %struct.scif_endpt, %struct.scif_endpt* %204, i32 0, i32 4
  %206 = call i32 @list_add_tail(i32* %205, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @scif_info, i32 0, i32 3))
  %207 = call i32 @spin_unlock(i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @scif_info, i32 0, i32 2))
  %208 = load i32, i32* @EINPROGRESS, align 4
  %209 = sub nsw i32 0, %208
  store i32 %209, i32* %9, align 4
  %210 = call i32 @schedule_work(i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @scif_info, i32 0, i32 1))
  br label %211

211:                                              ; preds = %199, %178
  br label %212

212:                                              ; preds = %211, %177
  %213 = load %struct.scif_endpt*, %struct.scif_endpt** %8, align 8
  %214 = getelementptr inbounds %struct.scif_endpt, %struct.scif_endpt* %213, i32 0, i32 3
  %215 = call i32 @spin_unlock(i32* %214)
  %216 = load %struct.device*, %struct.device** %11, align 8
  %217 = call i32 @scif_put_peer_dev(%struct.device* %216)
  %218 = load i32, i32* %9, align 4
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %220, label %222

220:                                              ; preds = %212
  %221 = load i32, i32* %9, align 4
  store i32 %221, i32* %4, align 4
  br label %249

222:                                              ; preds = %212
  %223 = load %struct.scif_endpt*, %struct.scif_endpt** %8, align 8
  %224 = getelementptr inbounds %struct.scif_endpt, %struct.scif_endpt* %223, i32 0, i32 1
  %225 = load i64, i64* %224, align 8
  %226 = load i64, i64* @ASYNC_CONN_FLUSH_WORK, align 8
  %227 = icmp eq i64 %225, %226
  br i1 %227, label %228, label %243

228:                                              ; preds = %222
  %229 = call i32 @flush_work(i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @scif_info, i32 0, i32 1))
  %230 = load %struct.scif_endpt*, %struct.scif_endpt** %8, align 8
  %231 = getelementptr inbounds %struct.scif_endpt, %struct.scif_endpt* %230, i32 0, i32 2
  %232 = load i32, i32* %231, align 8
  store i32 %232, i32* %9, align 4
  %233 = load %struct.scif_endpt*, %struct.scif_endpt** %8, align 8
  %234 = getelementptr inbounds %struct.scif_endpt, %struct.scif_endpt* %233, i32 0, i32 3
  %235 = call i32 @spin_lock(i32* %234)
  %236 = load i8*, i8** @ASYNC_CONN_IDLE, align 8
  %237 = ptrtoint i8* %236 to i64
  %238 = load %struct.scif_endpt*, %struct.scif_endpt** %8, align 8
  %239 = getelementptr inbounds %struct.scif_endpt, %struct.scif_endpt* %238, i32 0, i32 1
  store i64 %237, i64* %239, align 8
  %240 = load %struct.scif_endpt*, %struct.scif_endpt** %8, align 8
  %241 = getelementptr inbounds %struct.scif_endpt, %struct.scif_endpt* %240, i32 0, i32 3
  %242 = call i32 @spin_unlock(i32* %241)
  br label %246

243:                                              ; preds = %222
  %244 = load %struct.scif_endpt*, %struct.scif_endpt** %8, align 8
  %245 = call i32 @scif_conn_func(%struct.scif_endpt* %244)
  store i32 %245, i32* %9, align 4
  br label %246

246:                                              ; preds = %243, %228
  br label %247

247:                                              ; preds = %246
  %248 = load i32, i32* %9, align 4
  store i32 %248, i32* %4, align 4
  br label %249

249:                                              ; preds = %247, %220, %46, %31
  %250 = load i32, i32* %4, align 4
  ret i32 %250
}

declare dso_local i32 @dev_dbg(i32, i8*, %struct.scif_endpt*, i32) #1

declare dso_local i32 @might_sleep(...) #1

declare dso_local %struct.device* @scif_get_peer_dev(%struct.scif_dev*) #1

declare dso_local i64 @IS_ERR(%struct.device*) #1

declare dso_local i32 @PTR_ERR(%struct.device*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @scif_get_new_port(...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @unlikely(i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @schedule_work(i32*) #1

declare dso_local i32 @scif_put_peer_dev(%struct.device*) #1

declare dso_local i32 @flush_work(i32*) #1

declare dso_local i32 @scif_conn_func(%struct.scif_endpt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
