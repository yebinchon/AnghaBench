; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cisco/enic/extr_vnic_dev.c__vnic_dev_cmd2.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cisco/enic/extr_vnic_dev.c__vnic_dev_cmd2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnic_dev = type { i32*, %struct.devcmd2_controller* }
%struct.devcmd2_controller = type { i32, i32, i64, i64, %struct.devcmd2_result*, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.devcmd2_result = type { i64, i32, i32* }
%struct.TYPE_4__ = type { i32, i32, i32* }
%struct.TYPE_3__ = type { i32, i32 }

@ENODEV = common dso_local global i32 0, align 4
@DEVCMD2_RING_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [59 x i8] c"devcmd2 %d: wq is full. fetch index: %u, posted index: %u\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@_CMD_FLAGS_NOWAIT = common dso_local global i32 0, align 4
@DEVCMD2_FNORESULT = common dso_local global i32 0, align 4
@_CMD_DIR_WRITE = common dso_local global i32 0, align 4
@VNIC_DEVCMD_NARGS = common dso_local global i32 0, align 4
@ERR_ECMDUNKNOWN = common dso_local global i32 0, align 4
@CMD_CAPABILITY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"Error %d devcmd %d\0A\00", align 1
@_CMD_DIR_READ = common dso_local global i32 0, align 4
@VNIC_DEVCMD2_NARGS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"devcmd %d timed out\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vnic_dev*, i32, i32)* @_vnic_dev_cmd2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_vnic_dev_cmd2(%struct.vnic_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.vnic_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.devcmd2_controller*, align 8
  %9 = alloca %struct.devcmd2_result*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.vnic_dev* %0, %struct.vnic_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %17 = load %struct.vnic_dev*, %struct.vnic_dev** %5, align 8
  %18 = getelementptr inbounds %struct.vnic_dev, %struct.vnic_dev* %17, i32 0, i32 1
  %19 = load %struct.devcmd2_controller*, %struct.devcmd2_controller** %18, align 8
  store %struct.devcmd2_controller* %19, %struct.devcmd2_controller** %8, align 8
  %20 = load %struct.devcmd2_controller*, %struct.devcmd2_controller** %8, align 8
  %21 = getelementptr inbounds %struct.devcmd2_controller, %struct.devcmd2_controller* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* %16, align 4
  %23 = load %struct.devcmd2_controller*, %struct.devcmd2_controller** %8, align 8
  %24 = getelementptr inbounds %struct.devcmd2_controller, %struct.devcmd2_controller* %23, i32 0, i32 6
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 1
  %27 = call i32 @ioread32(i32* %26)
  store i32 %27, i32* %14, align 4
  %28 = load i32, i32* %14, align 4
  %29 = icmp eq i32 %28, -1
  br i1 %29, label %30, label %33

30:                                               ; preds = %3
  %31 = load i32, i32* @ENODEV, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %4, align 4
  br label %253

33:                                               ; preds = %3
  %34 = load i32, i32* %16, align 4
  %35 = add nsw i32 %34, 1
  %36 = load i32, i32* @DEVCMD2_RING_SIZE, align 4
  %37 = srem i32 %35, %36
  store i32 %37, i32* %15, align 4
  %38 = load i32, i32* %15, align 4
  %39 = load i32, i32* %14, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %50

41:                                               ; preds = %33
  %42 = load %struct.vnic_dev*, %struct.vnic_dev** %5, align 8
  %43 = load i32, i32* %6, align 4
  %44 = call i32 @_CMD_N(i32 %43)
  %45 = load i32, i32* %14, align 4
  %46 = load i32, i32* %16, align 4
  %47 = call i32 (%struct.vnic_dev*, i8*, i32, ...) @vdev_neterr(%struct.vnic_dev* %42, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0), i32 %44, i32 %45, i32 %46)
  %48 = load i32, i32* @EBUSY, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %4, align 4
  br label %253

50:                                               ; preds = %33
  %51 = load i32, i32* %6, align 4
  %52 = load %struct.devcmd2_controller*, %struct.devcmd2_controller** %8, align 8
  %53 = getelementptr inbounds %struct.devcmd2_controller, %struct.devcmd2_controller* %52, i32 0, i32 5
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %53, align 8
  %55 = load i32, i32* %16, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  store i32 %51, i32* %58, align 8
  %59 = load %struct.devcmd2_controller*, %struct.devcmd2_controller** %8, align 8
  %60 = getelementptr inbounds %struct.devcmd2_controller, %struct.devcmd2_controller* %59, i32 0, i32 5
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %60, align 8
  %62 = load i32, i32* %16, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 1
  store i32 0, i32* %65, align 4
  %66 = load i32, i32* %6, align 4
  %67 = call i32 @_CMD_FLAGS(i32 %66)
  %68 = load i32, i32* @_CMD_FLAGS_NOWAIT, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %82

71:                                               ; preds = %50
  %72 = load i32, i32* @DEVCMD2_FNORESULT, align 4
  %73 = load %struct.devcmd2_controller*, %struct.devcmd2_controller** %8, align 8
  %74 = getelementptr inbounds %struct.devcmd2_controller, %struct.devcmd2_controller* %73, i32 0, i32 5
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %74, align 8
  %76 = load i32, i32* %16, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = or i32 %80, %72
  store i32 %81, i32* %79, align 4
  br label %82

82:                                               ; preds = %71, %50
  %83 = load i32, i32* %6, align 4
  %84 = call i32 @_CMD_DIR(i32 %83)
  %85 = load i32, i32* @_CMD_DIR_WRITE, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %116

88:                                               ; preds = %82
  store i32 0, i32* %11, align 4
  br label %89

89:                                               ; preds = %112, %88
  %90 = load i32, i32* %11, align 4
  %91 = load i32, i32* @VNIC_DEVCMD_NARGS, align 4
  %92 = icmp ult i32 %90, %91
  br i1 %92, label %93, label %115

93:                                               ; preds = %89
  %94 = load %struct.vnic_dev*, %struct.vnic_dev** %5, align 8
  %95 = getelementptr inbounds %struct.vnic_dev, %struct.vnic_dev* %94, i32 0, i32 0
  %96 = load i32*, i32** %95, align 8
  %97 = load i32, i32* %11, align 4
  %98 = zext i32 %97 to i64
  %99 = getelementptr inbounds i32, i32* %96, i64 %98
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.devcmd2_controller*, %struct.devcmd2_controller** %8, align 8
  %102 = getelementptr inbounds %struct.devcmd2_controller, %struct.devcmd2_controller* %101, i32 0, i32 5
  %103 = load %struct.TYPE_4__*, %struct.TYPE_4__** %102, align 8
  %104 = load i32, i32* %16, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i64 %105
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 2
  %108 = load i32*, i32** %107, align 8
  %109 = load i32, i32* %11, align 4
  %110 = zext i32 %109 to i64
  %111 = getelementptr inbounds i32, i32* %108, i64 %110
  store i32 %100, i32* %111, align 4
  br label %112

112:                                              ; preds = %93
  %113 = load i32, i32* %11, align 4
  %114 = add i32 %113, 1
  store i32 %114, i32* %11, align 4
  br label %89

115:                                              ; preds = %89
  br label %116

116:                                              ; preds = %115, %82
  %117 = call i32 (...) @wmb()
  %118 = load i32, i32* %15, align 4
  %119 = load %struct.devcmd2_controller*, %struct.devcmd2_controller** %8, align 8
  %120 = getelementptr inbounds %struct.devcmd2_controller, %struct.devcmd2_controller* %119, i32 0, i32 6
  %121 = load %struct.TYPE_3__*, %struct.TYPE_3__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %121, i32 0, i32 0
  %123 = call i32 @iowrite32(i32 %118, i32* %122)
  %124 = load i32, i32* %15, align 4
  %125 = load %struct.devcmd2_controller*, %struct.devcmd2_controller** %8, align 8
  %126 = getelementptr inbounds %struct.devcmd2_controller, %struct.devcmd2_controller* %125, i32 0, i32 0
  store i32 %124, i32* %126, align 8
  %127 = load %struct.devcmd2_controller*, %struct.devcmd2_controller** %8, align 8
  %128 = getelementptr inbounds %struct.devcmd2_controller, %struct.devcmd2_controller* %127, i32 0, i32 5
  %129 = load %struct.TYPE_4__*, %struct.TYPE_4__** %128, align 8
  %130 = load i32, i32* %16, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i64 %131
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = load i32, i32* @DEVCMD2_FNORESULT, align 4
  %136 = and i32 %134, %135
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %139

138:                                              ; preds = %116
  store i32 0, i32* %4, align 4
  br label %253

139:                                              ; preds = %116
  %140 = load %struct.devcmd2_controller*, %struct.devcmd2_controller** %8, align 8
  %141 = getelementptr inbounds %struct.devcmd2_controller, %struct.devcmd2_controller* %140, i32 0, i32 4
  %142 = load %struct.devcmd2_result*, %struct.devcmd2_result** %141, align 8
  %143 = load %struct.devcmd2_controller*, %struct.devcmd2_controller** %8, align 8
  %144 = getelementptr inbounds %struct.devcmd2_controller, %struct.devcmd2_controller* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds %struct.devcmd2_result, %struct.devcmd2_result* %142, i64 %146
  store %struct.devcmd2_result* %147, %struct.devcmd2_result** %9, align 8
  %148 = load %struct.devcmd2_controller*, %struct.devcmd2_controller** %8, align 8
  %149 = getelementptr inbounds %struct.devcmd2_controller, %struct.devcmd2_controller* %148, i32 0, i32 2
  %150 = load i64, i64* %149, align 8
  store i64 %150, i64* %10, align 8
  %151 = load %struct.devcmd2_controller*, %struct.devcmd2_controller** %8, align 8
  %152 = getelementptr inbounds %struct.devcmd2_controller, %struct.devcmd2_controller* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 4
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* %152, align 4
  %155 = load %struct.devcmd2_controller*, %struct.devcmd2_controller** %8, align 8
  %156 = getelementptr inbounds %struct.devcmd2_controller, %struct.devcmd2_controller* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 4
  %158 = sext i32 %157 to i64
  %159 = load %struct.devcmd2_controller*, %struct.devcmd2_controller** %8, align 8
  %160 = getelementptr inbounds %struct.devcmd2_controller, %struct.devcmd2_controller* %159, i32 0, i32 3
  %161 = load i64, i64* %160, align 8
  %162 = icmp eq i64 %158, %161
  br i1 %162, label %163, label %175

163:                                              ; preds = %139
  %164 = load %struct.devcmd2_controller*, %struct.devcmd2_controller** %8, align 8
  %165 = getelementptr inbounds %struct.devcmd2_controller, %struct.devcmd2_controller* %164, i32 0, i32 1
  store i32 0, i32* %165, align 4
  %166 = load %struct.devcmd2_controller*, %struct.devcmd2_controller** %8, align 8
  %167 = getelementptr inbounds %struct.devcmd2_controller, %struct.devcmd2_controller* %166, i32 0, i32 2
  %168 = load i64, i64* %167, align 8
  %169 = icmp ne i64 %168, 0
  %170 = zext i1 %169 to i64
  %171 = select i1 %169, i32 0, i32 1
  %172 = sext i32 %171 to i64
  %173 = load %struct.devcmd2_controller*, %struct.devcmd2_controller** %8, align 8
  %174 = getelementptr inbounds %struct.devcmd2_controller, %struct.devcmd2_controller* %173, i32 0, i32 2
  store i64 %172, i64* %174, align 8
  br label %175

175:                                              ; preds = %163, %139
  store i32 0, i32* %12, align 4
  br label %176

176:                                              ; preds = %243, %175
  %177 = load i32, i32* %12, align 4
  %178 = load i32, i32* %7, align 4
  %179 = icmp slt i32 %177, %178
  br i1 %179, label %180, label %246

180:                                              ; preds = %176
  %181 = load %struct.devcmd2_result*, %struct.devcmd2_result** %9, align 8
  %182 = getelementptr inbounds %struct.devcmd2_result, %struct.devcmd2_result* %181, i32 0, i32 0
  %183 = load i64, i64* %182, align 8
  %184 = load i64, i64* %10, align 8
  %185 = icmp eq i64 %183, %184
  br i1 %185, label %186, label %241

186:                                              ; preds = %180
  %187 = load %struct.devcmd2_result*, %struct.devcmd2_result** %9, align 8
  %188 = getelementptr inbounds %struct.devcmd2_result, %struct.devcmd2_result* %187, i32 0, i32 1
  %189 = load i32, i32* %188, align 8
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %211

191:                                              ; preds = %186
  %192 = load %struct.devcmd2_result*, %struct.devcmd2_result** %9, align 8
  %193 = getelementptr inbounds %struct.devcmd2_result, %struct.devcmd2_result* %192, i32 0, i32 1
  %194 = load i32, i32* %193, align 8
  store i32 %194, i32* %13, align 4
  %195 = load i32, i32* %13, align 4
  %196 = load i32, i32* @ERR_ECMDUNKNOWN, align 4
  %197 = icmp ne i32 %195, %196
  br i1 %197, label %202, label %198

198:                                              ; preds = %191
  %199 = load i32, i32* %6, align 4
  %200 = load i32, i32* @CMD_CAPABILITY, align 4
  %201 = icmp ne i32 %199, %200
  br i1 %201, label %202, label %208

202:                                              ; preds = %198, %191
  %203 = load %struct.vnic_dev*, %struct.vnic_dev** %5, align 8
  %204 = load i32, i32* %13, align 4
  %205 = load i32, i32* %6, align 4
  %206 = call i32 @_CMD_N(i32 %205)
  %207 = call i32 (%struct.vnic_dev*, i8*, i32, ...) @vdev_neterr(%struct.vnic_dev* %203, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %204, i32 %206)
  br label %208

208:                                              ; preds = %202, %198
  %209 = load i32, i32* %13, align 4
  %210 = sub nsw i32 0, %209
  store i32 %210, i32* %4, align 4
  br label %253

211:                                              ; preds = %186
  %212 = load i32, i32* %6, align 4
  %213 = call i32 @_CMD_DIR(i32 %212)
  %214 = load i32, i32* @_CMD_DIR_READ, align 4
  %215 = and i32 %213, %214
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %217, label %240

217:                                              ; preds = %211
  store i32 0, i32* %11, align 4
  br label %218

218:                                              ; preds = %236, %217
  %219 = load i32, i32* %11, align 4
  %220 = load i32, i32* @VNIC_DEVCMD2_NARGS, align 4
  %221 = icmp ult i32 %219, %220
  br i1 %221, label %222, label %239

222:                                              ; preds = %218
  %223 = load %struct.devcmd2_result*, %struct.devcmd2_result** %9, align 8
  %224 = getelementptr inbounds %struct.devcmd2_result, %struct.devcmd2_result* %223, i32 0, i32 2
  %225 = load i32*, i32** %224, align 8
  %226 = load i32, i32* %11, align 4
  %227 = zext i32 %226 to i64
  %228 = getelementptr inbounds i32, i32* %225, i64 %227
  %229 = load i32, i32* %228, align 4
  %230 = load %struct.vnic_dev*, %struct.vnic_dev** %5, align 8
  %231 = getelementptr inbounds %struct.vnic_dev, %struct.vnic_dev* %230, i32 0, i32 0
  %232 = load i32*, i32** %231, align 8
  %233 = load i32, i32* %11, align 4
  %234 = zext i32 %233 to i64
  %235 = getelementptr inbounds i32, i32* %232, i64 %234
  store i32 %229, i32* %235, align 4
  br label %236

236:                                              ; preds = %222
  %237 = load i32, i32* %11, align 4
  %238 = add i32 %237, 1
  store i32 %238, i32* %11, align 4
  br label %218

239:                                              ; preds = %218
  br label %240

240:                                              ; preds = %239, %211
  store i32 0, i32* %4, align 4
  br label %253

241:                                              ; preds = %180
  %242 = call i32 @udelay(i32 100)
  br label %243

243:                                              ; preds = %241
  %244 = load i32, i32* %12, align 4
  %245 = add nsw i32 %244, 1
  store i32 %245, i32* %12, align 4
  br label %176

246:                                              ; preds = %176
  %247 = load %struct.vnic_dev*, %struct.vnic_dev** %5, align 8
  %248 = load i32, i32* %6, align 4
  %249 = call i32 @_CMD_N(i32 %248)
  %250 = call i32 (%struct.vnic_dev*, i8*, i32, ...) @vdev_neterr(%struct.vnic_dev* %247, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 %249)
  %251 = load i32, i32* @ETIMEDOUT, align 4
  %252 = sub nsw i32 0, %251
  store i32 %252, i32* %4, align 4
  br label %253

253:                                              ; preds = %246, %240, %208, %138, %41, %30
  %254 = load i32, i32* %4, align 4
  ret i32 %254
}

declare dso_local i32 @ioread32(i32*) #1

declare dso_local i32 @vdev_neterr(%struct.vnic_dev*, i8*, i32, ...) #1

declare dso_local i32 @_CMD_N(i32) #1

declare dso_local i32 @_CMD_FLAGS(i32) #1

declare dso_local i32 @_CMD_DIR(i32) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @iowrite32(i32, i32*) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
