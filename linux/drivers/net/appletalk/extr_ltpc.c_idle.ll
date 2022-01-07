; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/appletalk/extr_ltpc.c_idle.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/appletalk/extr_ltpc.c_idle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i8*, i8* }
%struct.net_device = type { i32, i64 }
%struct.xmitQel = type { i32*, i32, i32, i32*, i32, i32 }

@txqueue_lock = common dso_local global i32 0, align 4
@QInIdle = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"idle: looped too many times\0A\00", align 1
@debug = common dso_local global i32 0, align 4
@DEBUG_LOWER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"idle: fc\0A\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"idle: fd\0A\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"idle: f9\0A\00", align 1
@mboxinuse = common dso_local global i32* null, align 8
@rescbuf = common dso_local global i8* null, align 8
@qels = common dso_local global %struct.TYPE_3__* null, align 8
@resdbuf = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [19 x i8] c"timed out idle f9\0A\00", align 1
@xmQhd = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [19 x i8] c"timed out idle f8\0A\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"idle: fa\0A\00", align 1
@ltdmacbuf = common dso_local global i32* null, align 8
@.str.7 = private unnamed_addr constant [24 x i8] c"ltpc: sent command     \00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"%02x \00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.10 = private unnamed_addr constant [42 x i8] c"trouble: response command already queued\0A\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"idle: fb\0A\00", align 1
@ltdmabuf = common dso_local global i32* null, align 8
@mailbox = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @idle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @idle(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.xmitQel*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  store %struct.xmitQel* null, %struct.xmitQel** %5, align 8
  %10 = load %struct.net_device*, %struct.net_device** %2, align 8
  %11 = getelementptr inbounds %struct.net_device, %struct.net_device* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  store i32 %12, i32* %8, align 4
  %13 = load i64, i64* %3, align 8
  %14 = call i32 @spin_lock_irqsave(i32* @txqueue_lock, i64 %13)
  %15 = load i32, i32* @QInIdle, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %1
  %18 = load i64, i64* %3, align 8
  %19 = call i32 @spin_unlock_irqrestore(i32* @txqueue_lock, i64 %18)
  br label %304

20:                                               ; preds = %1
  store i32 1, i32* @QInIdle, align 4
  %21 = load i64, i64* %3, align 8
  %22 = call i32 @spin_unlock_irqrestore(i32* @txqueue_lock, i64 %21)
  %23 = load i32, i32* %8, align 4
  %24 = add nsw i32 %23, 6
  %25 = call i32 @inb_p(i32 %24)
  store i32 100, i32* %6, align 4
  br label %26

26:                                               ; preds = %291, %41, %20
  %27 = load i32, i32* %6, align 4
  %28 = add nsw i32 %27, -1
  store i32 %28, i32* %6, align 4
  %29 = icmp sgt i32 0, %27
  br i1 %29, label %30, label %32

30:                                               ; preds = %26
  %31 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %292

32:                                               ; preds = %26
  %33 = load i32, i32* %8, align 4
  %34 = add nsw i32 %33, 6
  %35 = call i32 @inb_p(i32 %34)
  store i32 %35, i32* %4, align 4
  %36 = load i32, i32* %4, align 4
  %37 = load i32, i32* %8, align 4
  %38 = add nsw i32 %37, 6
  %39 = call i32 @inb_p(i32 %38)
  %40 = icmp ne i32 %36, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %32
  br label %26

42:                                               ; preds = %32
  %43 = load i32, i32* %4, align 4
  switch i32 %43, label %291 [
    i32 252, label %44
    i32 253, label %54
    i32 249, label %64
    i32 248, label %119
    i32 250, label %141
    i32 251, label %237
  ]

44:                                               ; preds = %42
  %45 = load i32, i32* @debug, align 4
  %46 = load i32, i32* @DEBUG_LOWER, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %44
  %50 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  br label %51

51:                                               ; preds = %49, %44
  %52 = load %struct.net_device*, %struct.net_device** %2, align 8
  %53 = call i32 @handlefc(%struct.net_device* %52)
  br label %291

54:                                               ; preds = %42
  %55 = load i32, i32* @debug, align 4
  %56 = load i32, i32* @DEBUG_LOWER, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %54
  %60 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  br label %61

61:                                               ; preds = %59, %54
  %62 = load %struct.net_device*, %struct.net_device** %2, align 8
  %63 = call i32 @handlefd(%struct.net_device* %62)
  br label %291

64:                                               ; preds = %42
  %65 = load i32, i32* @debug, align 4
  %66 = load i32, i32* @DEBUG_LOWER, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %64
  %70 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  br label %71

71:                                               ; preds = %69, %64
  %72 = load i32*, i32** @mboxinuse, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 0
  %74 = load i32, i32* %73, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %102, label %76

76:                                               ; preds = %71
  %77 = load i32*, i32** @mboxinuse, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 0
  store i32 1, i32* %78, align 4
  %79 = load i8*, i8** @rescbuf, align 8
  %80 = load %struct.TYPE_3__*, %struct.TYPE_3__** @qels, align 8
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i64 0
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 5
  store i8* %79, i8** %82, align 8
  %83 = load %struct.TYPE_3__*, %struct.TYPE_3__** @qels, align 8
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i64 0
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 0
  store i32 2, i32* %85, align 8
  %86 = load i8*, i8** @resdbuf, align 8
  %87 = load %struct.TYPE_3__*, %struct.TYPE_3__** @qels, align 8
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i64 0
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 4
  store i8* %86, i8** %89, align 8
  %90 = load %struct.TYPE_3__*, %struct.TYPE_3__** @qels, align 8
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i64 0
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 1
  store i32 2, i32* %92, align 4
  %93 = load %struct.TYPE_3__*, %struct.TYPE_3__** @qels, align 8
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i64 0
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 3
  store i32 0, i32* %95, align 4
  %96 = load %struct.TYPE_3__*, %struct.TYPE_3__** @qels, align 8
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i64 0
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 2
  store i32 0, i32* %98, align 8
  %99 = load %struct.TYPE_3__*, %struct.TYPE_3__** @qels, align 8
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i64 0
  %101 = call i32 @enQ(%struct.TYPE_3__* %100)
  br label %102

102:                                              ; preds = %76, %71
  %103 = load %struct.net_device*, %struct.net_device** %2, align 8
  %104 = getelementptr inbounds %struct.net_device, %struct.net_device* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = add nsw i32 %105, 1
  %107 = call i32 @inb_p(i32 %106)
  %108 = load %struct.net_device*, %struct.net_device** %2, align 8
  %109 = getelementptr inbounds %struct.net_device, %struct.net_device* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = add nsw i32 %110, 0
  %112 = call i32 @inb_p(i32 %111)
  %113 = load %struct.net_device*, %struct.net_device** %2, align 8
  %114 = call i32 @wait_timeout(%struct.net_device* %113, i32 249)
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %118

116:                                              ; preds = %102
  %117 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0))
  br label %118

118:                                              ; preds = %116, %102
  br label %291

119:                                              ; preds = %42
  %120 = load i32, i32* @xmQhd, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %139

122:                                              ; preds = %119
  %123 = load %struct.net_device*, %struct.net_device** %2, align 8
  %124 = getelementptr inbounds %struct.net_device, %struct.net_device* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = add nsw i32 %125, 1
  %127 = call i32 @inb_p(i32 %126)
  %128 = load %struct.net_device*, %struct.net_device** %2, align 8
  %129 = getelementptr inbounds %struct.net_device, %struct.net_device* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = add nsw i32 %130, 0
  %132 = call i32 @inb_p(i32 %131)
  %133 = load %struct.net_device*, %struct.net_device** %2, align 8
  %134 = call i32 @wait_timeout(%struct.net_device* %133, i32 248)
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %138

136:                                              ; preds = %122
  %137 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0))
  br label %138

138:                                              ; preds = %136, %122
  br label %140

139:                                              ; preds = %119
  br label %292

140:                                              ; preds = %138
  br label %291

141:                                              ; preds = %42
  %142 = load i32, i32* @debug, align 4
  %143 = load i32, i32* @DEBUG_LOWER, align 4
  %144 = and i32 %142, %143
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %148

146:                                              ; preds = %141
  %147 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0))
  br label %148

148:                                              ; preds = %146, %141
  %149 = load i32, i32* @xmQhd, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %202

151:                                              ; preds = %148
  %152 = call %struct.xmitQel* (...) @deQ()
  store %struct.xmitQel* %152, %struct.xmitQel** %5, align 8
  %153 = load i32*, i32** @ltdmacbuf, align 8
  %154 = load %struct.xmitQel*, %struct.xmitQel** %5, align 8
  %155 = getelementptr inbounds %struct.xmitQel, %struct.xmitQel* %154, i32 0, i32 0
  %156 = load i32*, i32** %155, align 8
  %157 = load %struct.xmitQel*, %struct.xmitQel** %5, align 8
  %158 = getelementptr inbounds %struct.xmitQel, %struct.xmitQel* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 8
  %160 = call i32 @memcpy(i32* %153, i32* %156, i32 %159)
  %161 = load %struct.xmitQel*, %struct.xmitQel** %5, align 8
  %162 = getelementptr inbounds %struct.xmitQel, %struct.xmitQel* %161, i32 0, i32 2
  %163 = load i32, i32* %162, align 4
  %164 = load i32*, i32** @ltdmacbuf, align 8
  %165 = getelementptr inbounds i32, i32* %164, i64 1
  store i32 %163, i32* %165, align 4
  %166 = load i32, i32* @debug, align 4
  %167 = icmp sgt i32 %166, 1
  br i1 %167, label %168, label %193

168:                                              ; preds = %151
  %169 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0))
  %170 = load %struct.xmitQel*, %struct.xmitQel** %5, align 8
  %171 = getelementptr inbounds %struct.xmitQel, %struct.xmitQel* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 8
  store i32 %172, i32* %9, align 4
  %173 = load i32, i32* %9, align 4
  %174 = icmp sgt i32 %173, 100
  br i1 %174, label %175, label %176

175:                                              ; preds = %168
  store i32 100, i32* %9, align 4
  br label %176

176:                                              ; preds = %175, %168
  store i32 0, i32* %7, align 4
  br label %177

177:                                              ; preds = %188, %176
  %178 = load i32, i32* %7, align 4
  %179 = load i32, i32* %9, align 4
  %180 = icmp slt i32 %178, %179
  br i1 %180, label %181, label %191

181:                                              ; preds = %177
  %182 = load i32*, i32** @ltdmacbuf, align 8
  %183 = load i32, i32* %7, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds i32, i32* %182, i64 %184
  %186 = load i32, i32* %185, align 4
  %187 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), i32 %186)
  br label %188

188:                                              ; preds = %181
  %189 = load i32, i32* %7, align 4
  %190 = add nsw i32 %189, 1
  store i32 %190, i32* %7, align 4
  br label %177

191:                                              ; preds = %177
  %192 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0))
  br label %193

193:                                              ; preds = %191, %151
  %194 = load %struct.net_device*, %struct.net_device** %2, align 8
  %195 = call i32 @handlecommand(%struct.net_device* %194)
  %196 = load i32, i32* %8, align 4
  %197 = add nsw i32 %196, 6
  %198 = call i32 @inb_p(i32 %197)
  %199 = icmp eq i32 250, %198
  br i1 %199, label %200, label %201

200:                                              ; preds = %193
  br label %292

201:                                              ; preds = %193
  br label %236

202:                                              ; preds = %148
  %203 = load i32*, i32** @mboxinuse, align 8
  %204 = getelementptr inbounds i32, i32* %203, i64 0
  %205 = load i32, i32* %204, align 4
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %233, label %207

207:                                              ; preds = %202
  %208 = load i32*, i32** @mboxinuse, align 8
  %209 = getelementptr inbounds i32, i32* %208, i64 0
  store i32 1, i32* %209, align 4
  %210 = load i8*, i8** @rescbuf, align 8
  %211 = load %struct.TYPE_3__*, %struct.TYPE_3__** @qels, align 8
  %212 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %211, i64 0
  %213 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %212, i32 0, i32 5
  store i8* %210, i8** %213, align 8
  %214 = load %struct.TYPE_3__*, %struct.TYPE_3__** @qels, align 8
  %215 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %214, i64 0
  %216 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %215, i32 0, i32 0
  store i32 2, i32* %216, align 8
  %217 = load i8*, i8** @resdbuf, align 8
  %218 = load %struct.TYPE_3__*, %struct.TYPE_3__** @qels, align 8
  %219 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %218, i64 0
  %220 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %219, i32 0, i32 4
  store i8* %217, i8** %220, align 8
  %221 = load %struct.TYPE_3__*, %struct.TYPE_3__** @qels, align 8
  %222 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %221, i64 0
  %223 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %222, i32 0, i32 1
  store i32 2, i32* %223, align 4
  %224 = load %struct.TYPE_3__*, %struct.TYPE_3__** @qels, align 8
  %225 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %224, i64 0
  %226 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %225, i32 0, i32 3
  store i32 0, i32* %226, align 4
  %227 = load %struct.TYPE_3__*, %struct.TYPE_3__** @qels, align 8
  %228 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %227, i64 0
  %229 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %228, i32 0, i32 2
  store i32 0, i32* %229, align 8
  %230 = load %struct.TYPE_3__*, %struct.TYPE_3__** @qels, align 8
  %231 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %230, i64 0
  %232 = call i32 @enQ(%struct.TYPE_3__* %231)
  br label %235

233:                                              ; preds = %202
  %234 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.10, i64 0, i64 0))
  br label %292

235:                                              ; preds = %207
  br label %236

236:                                              ; preds = %235, %201
  br label %291

237:                                              ; preds = %42
  %238 = load i32, i32* @debug, align 4
  %239 = load i32, i32* @DEBUG_LOWER, align 4
  %240 = and i32 %238, %239
  %241 = icmp ne i32 %240, 0
  br i1 %241, label %242, label %244

242:                                              ; preds = %237
  %243 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i64 0, i64 0))
  br label %244

244:                                              ; preds = %242, %237
  %245 = load %struct.xmitQel*, %struct.xmitQel** %5, align 8
  %246 = getelementptr inbounds %struct.xmitQel, %struct.xmitQel* %245, i32 0, i32 5
  %247 = load i32, i32* %246, align 4
  %248 = icmp ne i32 %247, 0
  br i1 %248, label %249, label %260

249:                                              ; preds = %244
  %250 = load i32*, i32** @ltdmabuf, align 8
  %251 = load %struct.xmitQel*, %struct.xmitQel** %5, align 8
  %252 = getelementptr inbounds %struct.xmitQel, %struct.xmitQel* %251, i32 0, i32 3
  %253 = load i32*, i32** %252, align 8
  %254 = load %struct.xmitQel*, %struct.xmitQel** %5, align 8
  %255 = getelementptr inbounds %struct.xmitQel, %struct.xmitQel* %254, i32 0, i32 4
  %256 = load i32, i32* %255, align 8
  %257 = call i32 @memcpy(i32* %250, i32* %253, i32 %256)
  %258 = load %struct.net_device*, %struct.net_device** %2, align 8
  %259 = call i32 @handlewrite(%struct.net_device* %258)
  br label %290

260:                                              ; preds = %244
  %261 = load %struct.net_device*, %struct.net_device** %2, align 8
  %262 = call i32 @handleread(%struct.net_device* %261)
  %263 = load %struct.xmitQel*, %struct.xmitQel** %5, align 8
  %264 = getelementptr inbounds %struct.xmitQel, %struct.xmitQel* %263, i32 0, i32 2
  %265 = load i32, i32* %264, align 4
  %266 = icmp ne i32 %265, 0
  br i1 %266, label %267, label %276

267:                                              ; preds = %260
  %268 = load %struct.xmitQel*, %struct.xmitQel** %5, align 8
  %269 = getelementptr inbounds %struct.xmitQel, %struct.xmitQel* %268, i32 0, i32 3
  %270 = load i32*, i32** %269, align 8
  %271 = load i32*, i32** @ltdmabuf, align 8
  %272 = load %struct.xmitQel*, %struct.xmitQel** %5, align 8
  %273 = getelementptr inbounds %struct.xmitQel, %struct.xmitQel* %272, i32 0, i32 4
  %274 = load i32, i32* %273, align 8
  %275 = call i32 @memcpy(i32* %270, i32* %271, i32 %274)
  br label %289

276:                                              ; preds = %260
  %277 = load i32*, i32** @ltdmabuf, align 8
  %278 = getelementptr inbounds i32, i32* %277, i64 1
  %279 = load i32, i32* %278, align 4
  %280 = load i32*, i32** @mailbox, align 8
  %281 = load i32*, i32** @ltdmabuf, align 8
  %282 = getelementptr inbounds i32, i32* %281, i64 0
  %283 = load i32, i32* %282, align 4
  %284 = and i32 15, %283
  %285 = sext i32 %284 to i64
  %286 = getelementptr inbounds i32, i32* %280, i64 %285
  store i32 %279, i32* %286, align 4
  %287 = load i32*, i32** @mboxinuse, align 8
  %288 = getelementptr inbounds i32, i32* %287, i64 0
  store i32 0, i32* %288, align 4
  br label %289

289:                                              ; preds = %276, %267
  br label %290

290:                                              ; preds = %289, %249
  br label %291

291:                                              ; preds = %42, %290, %236, %140, %118, %61, %51
  br label %26

292:                                              ; preds = %233, %200, %139, %30
  store i32 0, i32* @QInIdle, align 4
  %293 = load %struct.net_device*, %struct.net_device** %2, align 8
  %294 = getelementptr inbounds %struct.net_device, %struct.net_device* %293, i32 0, i32 1
  %295 = load i64, i64* %294, align 8
  %296 = icmp ne i64 %295, 0
  br i1 %296, label %297, label %304

297:                                              ; preds = %292
  %298 = load i32, i32* %8, align 4
  %299 = add nsw i32 %298, 7
  %300 = call i32 @inb_p(i32 %299)
  %301 = load i32, i32* %8, align 4
  %302 = add nsw i32 %301, 7
  %303 = call i32 @inb_p(i32 %302)
  br label %304

304:                                              ; preds = %17, %297, %292
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @inb_p(i32) #1

declare dso_local i32 @printk(i8*, ...) #1

declare dso_local i32 @handlefc(%struct.net_device*) #1

declare dso_local i32 @handlefd(%struct.net_device*) #1

declare dso_local i32 @enQ(%struct.TYPE_3__*) #1

declare dso_local i32 @wait_timeout(%struct.net_device*, i32) #1

declare dso_local %struct.xmitQel* @deQ(...) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @handlecommand(%struct.net_device*) #1

declare dso_local i32 @handlewrite(%struct.net_device*) #1

declare dso_local i32 @handleread(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
