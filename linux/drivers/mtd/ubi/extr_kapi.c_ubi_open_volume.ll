; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/ubi/extr_kapi.c_ubi_open_volume.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/ubi/extr_kapi.c_ubi_open_volume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubi_volume_desc = type { i32, %struct.ubi_volume* }
%struct.ubi_volume = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ubi_device = type { i32, i32, i32, i32, %struct.ubi_volume** }

@.str = private unnamed_addr constant [35 x i8] c"open device %d, volume %d, mode %d\00", align 1
@UBI_MAX_DEVICES = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"volume %d on UBI device %d is corrupted\00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"cannot open device %d, volume %d, error %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ubi_volume_desc* @ubi_open_volume(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.ubi_volume_desc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.ubi_volume_desc*, align 8
  %10 = alloca %struct.ubi_device*, align 8
  %11 = alloca %struct.ubi_volume*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* %7, align 4
  %15 = call i32 @dbg_gen(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %12, i32 %13, i32 %14)
  %16 = load i32, i32* %5, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %3
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @UBI_MAX_DEVICES, align 4
  %21 = icmp sge i32 %19, %20
  br i1 %21, label %22, label %26

22:                                               ; preds = %18, %3
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  %25 = call %struct.ubi_volume_desc* @ERR_PTR(i32 %24)
  store %struct.ubi_volume_desc* %25, %struct.ubi_volume_desc** %4, align 8
  br label %243

26:                                               ; preds = %18
  %27 = load i32, i32* %7, align 4
  %28 = icmp ne i32 %27, 129
  br i1 %28, label %29, label %42

29:                                               ; preds = %26
  %30 = load i32, i32* %7, align 4
  %31 = icmp ne i32 %30, 128
  br i1 %31, label %32, label %42

32:                                               ; preds = %29
  %33 = load i32, i32* %7, align 4
  %34 = icmp ne i32 %33, 131
  br i1 %34, label %35, label %42

35:                                               ; preds = %32
  %36 = load i32, i32* %7, align 4
  %37 = icmp ne i32 %36, 130
  br i1 %37, label %38, label %42

38:                                               ; preds = %35
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  %41 = call %struct.ubi_volume_desc* @ERR_PTR(i32 %40)
  store %struct.ubi_volume_desc* %41, %struct.ubi_volume_desc** %4, align 8
  br label %243

42:                                               ; preds = %35, %32, %29, %26
  %43 = load i32, i32* %5, align 4
  %44 = call %struct.ubi_device* @ubi_get_device(i32 %43)
  store %struct.ubi_device* %44, %struct.ubi_device** %10, align 8
  %45 = load %struct.ubi_device*, %struct.ubi_device** %10, align 8
  %46 = icmp ne %struct.ubi_device* %45, null
  br i1 %46, label %51, label %47

47:                                               ; preds = %42
  %48 = load i32, i32* @ENODEV, align 4
  %49 = sub nsw i32 0, %48
  %50 = call %struct.ubi_volume_desc* @ERR_PTR(i32 %49)
  store %struct.ubi_volume_desc* %50, %struct.ubi_volume_desc** %4, align 8
  br label %243

51:                                               ; preds = %42
  %52 = load i32, i32* %6, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %60, label %54

54:                                               ; preds = %51
  %55 = load i32, i32* %6, align 4
  %56 = load %struct.ubi_device*, %struct.ubi_device** %10, align 8
  %57 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = icmp sge i32 %55, %58
  br i1 %59, label %60, label %63

60:                                               ; preds = %54, %51
  %61 = load i32, i32* @EINVAL, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %8, align 4
  br label %233

63:                                               ; preds = %54
  %64 = load i32, i32* @GFP_KERNEL, align 4
  %65 = call %struct.ubi_volume_desc* @kmalloc(i32 16, i32 %64)
  store %struct.ubi_volume_desc* %65, %struct.ubi_volume_desc** %9, align 8
  %66 = load %struct.ubi_volume_desc*, %struct.ubi_volume_desc** %9, align 8
  %67 = icmp ne %struct.ubi_volume_desc* %66, null
  br i1 %67, label %71, label %68

68:                                               ; preds = %63
  %69 = load i32, i32* @ENOMEM, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %8, align 4
  br label %233

71:                                               ; preds = %63
  %72 = load i32, i32* @ENODEV, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %8, align 4
  %74 = load i32, i32* @THIS_MODULE, align 4
  %75 = call i32 @try_module_get(i32 %74)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %78, label %77

77:                                               ; preds = %71
  br label %230

78:                                               ; preds = %71
  %79 = load %struct.ubi_device*, %struct.ubi_device** %10, align 8
  %80 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %79, i32 0, i32 1
  %81 = call i32 @spin_lock(i32* %80)
  %82 = load %struct.ubi_device*, %struct.ubi_device** %10, align 8
  %83 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %82, i32 0, i32 4
  %84 = load %struct.ubi_volume**, %struct.ubi_volume*** %83, align 8
  %85 = load i32, i32* %6, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.ubi_volume*, %struct.ubi_volume** %84, i64 %86
  %88 = load %struct.ubi_volume*, %struct.ubi_volume** %87, align 8
  store %struct.ubi_volume* %88, %struct.ubi_volume** %11, align 8
  %89 = load %struct.ubi_volume*, %struct.ubi_volume** %11, align 8
  %90 = icmp ne %struct.ubi_volume* %89, null
  br i1 %90, label %92, label %91

91:                                               ; preds = %78
  br label %224

92:                                               ; preds = %78
  %93 = load i32, i32* @EBUSY, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %8, align 4
  %95 = load i32, i32* %7, align 4
  switch i32 %95, label %161 [
    i32 129, label %96
    i32 128, label %107
    i32 131, label %123
    i32 130, label %147
  ]

96:                                               ; preds = %92
  %97 = load %struct.ubi_volume*, %struct.ubi_volume** %11, align 8
  %98 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %96
  br label %224

102:                                              ; preds = %96
  %103 = load %struct.ubi_volume*, %struct.ubi_volume** %11, align 8
  %104 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %104, align 4
  br label %161

107:                                              ; preds = %92
  %108 = load %struct.ubi_volume*, %struct.ubi_volume** %11, align 8
  %109 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %117, label %112

112:                                              ; preds = %107
  %113 = load %struct.ubi_volume*, %struct.ubi_volume** %11, align 8
  %114 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 4
  %116 = icmp sgt i32 %115, 0
  br i1 %116, label %117, label %118

117:                                              ; preds = %112, %107
  br label %224

118:                                              ; preds = %112
  %119 = load %struct.ubi_volume*, %struct.ubi_volume** %11, align 8
  %120 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %120, align 4
  br label %161

123:                                              ; preds = %92
  %124 = load %struct.ubi_volume*, %struct.ubi_volume** %11, align 8
  %125 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %143, label %128

128:                                              ; preds = %123
  %129 = load %struct.ubi_volume*, %struct.ubi_volume** %11, align 8
  %130 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %129, i32 0, i32 2
  %131 = load i32, i32* %130, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %143, label %133

133:                                              ; preds = %128
  %134 = load %struct.ubi_volume*, %struct.ubi_volume** %11, align 8
  %135 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %143, label %138

138:                                              ; preds = %133
  %139 = load %struct.ubi_volume*, %struct.ubi_volume** %11, align 8
  %140 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %139, i32 0, i32 3
  %141 = load i32, i32* %140, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %144

143:                                              ; preds = %138, %133, %128, %123
  br label %224

144:                                              ; preds = %138
  %145 = load %struct.ubi_volume*, %struct.ubi_volume** %11, align 8
  %146 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %145, i32 0, i32 0
  store i32 1, i32* %146, align 4
  br label %161

147:                                              ; preds = %92
  %148 = load %struct.ubi_volume*, %struct.ubi_volume** %11, align 8
  %149 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %148, i32 0, i32 3
  %150 = load i32, i32* %149, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %157, label %152

152:                                              ; preds = %147
  %153 = load %struct.ubi_volume*, %struct.ubi_volume** %11, align 8
  %154 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %158

157:                                              ; preds = %152, %147
  br label %224

158:                                              ; preds = %152
  %159 = load %struct.ubi_volume*, %struct.ubi_volume** %11, align 8
  %160 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %159, i32 0, i32 3
  store i32 1, i32* %160, align 4
  br label %161

161:                                              ; preds = %92, %158, %144, %118, %102
  %162 = load %struct.ubi_volume*, %struct.ubi_volume** %11, align 8
  %163 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %162, i32 0, i32 8
  %164 = call i32 @get_device(i32* %163)
  %165 = load %struct.ubi_volume*, %struct.ubi_volume** %11, align 8
  %166 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %165, i32 0, i32 4
  %167 = load i32, i32* %166, align 4
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %166, align 4
  %169 = load %struct.ubi_device*, %struct.ubi_device** %10, align 8
  %170 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %169, i32 0, i32 1
  %171 = call i32 @spin_unlock(i32* %170)
  %172 = load %struct.ubi_volume*, %struct.ubi_volume** %11, align 8
  %173 = load %struct.ubi_volume_desc*, %struct.ubi_volume_desc** %9, align 8
  %174 = getelementptr inbounds %struct.ubi_volume_desc, %struct.ubi_volume_desc* %173, i32 0, i32 1
  store %struct.ubi_volume* %172, %struct.ubi_volume** %174, align 8
  %175 = load i32, i32* %7, align 4
  %176 = load %struct.ubi_volume_desc*, %struct.ubi_volume_desc** %9, align 8
  %177 = getelementptr inbounds %struct.ubi_volume_desc, %struct.ubi_volume_desc* %176, i32 0, i32 0
  store i32 %175, i32* %177, align 8
  %178 = load %struct.ubi_device*, %struct.ubi_device** %10, align 8
  %179 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %178, i32 0, i32 2
  %180 = call i32 @mutex_lock(i32* %179)
  %181 = load %struct.ubi_volume*, %struct.ubi_volume** %11, align 8
  %182 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %181, i32 0, i32 5
  %183 = load i32, i32* %182, align 4
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %219, label %185

185:                                              ; preds = %161
  %186 = load %struct.ubi_volume*, %struct.ubi_volume** %11, align 8
  %187 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %186, i32 0, i32 7
  %188 = load i32, i32* %187, align 4
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %219, label %190

190:                                              ; preds = %185
  %191 = load %struct.ubi_device*, %struct.ubi_device** %10, align 8
  %192 = load i32, i32* %6, align 4
  %193 = call i32 @ubi_check_volume(%struct.ubi_device* %191, i32 %192)
  store i32 %193, i32* %8, align 4
  %194 = load i32, i32* %8, align 4
  %195 = icmp slt i32 %194, 0
  br i1 %195, label %196, label %204

196:                                              ; preds = %190
  %197 = load %struct.ubi_device*, %struct.ubi_device** %10, align 8
  %198 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %197, i32 0, i32 2
  %199 = call i32 @mutex_unlock(i32* %198)
  %200 = load %struct.ubi_volume_desc*, %struct.ubi_volume_desc** %9, align 8
  %201 = call i32 @ubi_close_volume(%struct.ubi_volume_desc* %200)
  %202 = load i32, i32* %8, align 4
  %203 = call %struct.ubi_volume_desc* @ERR_PTR(i32 %202)
  store %struct.ubi_volume_desc* %203, %struct.ubi_volume_desc** %4, align 8
  br label %243

204:                                              ; preds = %190
  %205 = load i32, i32* %8, align 4
  %206 = icmp eq i32 %205, 1
  br i1 %206, label %207, label %216

207:                                              ; preds = %204
  %208 = load %struct.ubi_device*, %struct.ubi_device** %10, align 8
  %209 = load i32, i32* %6, align 4
  %210 = load %struct.ubi_device*, %struct.ubi_device** %10, align 8
  %211 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %210, i32 0, i32 3
  %212 = load i32, i32* %211, align 4
  %213 = call i32 @ubi_warn(%struct.ubi_device* %208, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %209, i32 %212)
  %214 = load %struct.ubi_volume*, %struct.ubi_volume** %11, align 8
  %215 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %214, i32 0, i32 6
  store i32 1, i32* %215, align 4
  br label %216

216:                                              ; preds = %207, %204
  %217 = load %struct.ubi_volume*, %struct.ubi_volume** %11, align 8
  %218 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %217, i32 0, i32 5
  store i32 1, i32* %218, align 4
  br label %219

219:                                              ; preds = %216, %185, %161
  %220 = load %struct.ubi_device*, %struct.ubi_device** %10, align 8
  %221 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %220, i32 0, i32 2
  %222 = call i32 @mutex_unlock(i32* %221)
  %223 = load %struct.ubi_volume_desc*, %struct.ubi_volume_desc** %9, align 8
  store %struct.ubi_volume_desc* %223, %struct.ubi_volume_desc** %4, align 8
  br label %243

224:                                              ; preds = %157, %143, %117, %101, %91
  %225 = load %struct.ubi_device*, %struct.ubi_device** %10, align 8
  %226 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %225, i32 0, i32 1
  %227 = call i32 @spin_unlock(i32* %226)
  %228 = load i32, i32* @THIS_MODULE, align 4
  %229 = call i32 @module_put(i32 %228)
  br label %230

230:                                              ; preds = %224, %77
  %231 = load %struct.ubi_volume_desc*, %struct.ubi_volume_desc** %9, align 8
  %232 = call i32 @kfree(%struct.ubi_volume_desc* %231)
  br label %233

233:                                              ; preds = %230, %68, %60
  %234 = load %struct.ubi_device*, %struct.ubi_device** %10, align 8
  %235 = load i32, i32* %5, align 4
  %236 = load i32, i32* %6, align 4
  %237 = load i32, i32* %8, align 4
  %238 = call i32 @ubi_err(%struct.ubi_device* %234, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i32 %235, i32 %236, i32 %237)
  %239 = load %struct.ubi_device*, %struct.ubi_device** %10, align 8
  %240 = call i32 @ubi_put_device(%struct.ubi_device* %239)
  %241 = load i32, i32* %8, align 4
  %242 = call %struct.ubi_volume_desc* @ERR_PTR(i32 %241)
  store %struct.ubi_volume_desc* %242, %struct.ubi_volume_desc** %4, align 8
  br label %243

243:                                              ; preds = %233, %219, %196, %47, %38, %22
  %244 = load %struct.ubi_volume_desc*, %struct.ubi_volume_desc** %4, align 8
  ret %struct.ubi_volume_desc* %244
}

declare dso_local i32 @dbg_gen(i8*, i32, i32, i32) #1

declare dso_local %struct.ubi_volume_desc* @ERR_PTR(i32) #1

declare dso_local %struct.ubi_device* @ubi_get_device(i32) #1

declare dso_local %struct.ubi_volume_desc* @kmalloc(i32, i32) #1

declare dso_local i32 @try_module_get(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @get_device(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ubi_check_volume(%struct.ubi_device*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @ubi_close_volume(%struct.ubi_volume_desc*) #1

declare dso_local i32 @ubi_warn(%struct.ubi_device*, i8*, i32, i32) #1

declare dso_local i32 @module_put(i32) #1

declare dso_local i32 @kfree(%struct.ubi_volume_desc*) #1

declare dso_local i32 @ubi_err(%struct.ubi_device*, i8*, i32, i32, i32) #1

declare dso_local i32 @ubi_put_device(%struct.ubi_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
