; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/ubi/extr_vmt.c_ubi_resize_volume.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/ubi/extr_vmt.c_ubi_resize_volume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubi_volume_desc = type { %struct.ubi_volume* }
%struct.ubi_volume = type { i32, i32, i64, i32, i32, i64, i64, i64, %struct.ubi_device* }
%struct.ubi_device = type { i32, i32, i32, i32, %struct.ubi_vtbl_record*, i32, i64 }
%struct.ubi_vtbl_record = type { i32 }
%struct.ubi_eba_table = type { i32 }

@EROFS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"re-size device %d, volume %d to from %d to %d PEBs\00", align 1
@UBI_STATIC_VOLUME = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [40 x i8] c"too small size %d, %d LEBs contain data\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [44 x i8] c"not enough PEBs: requested %d, available %d\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"%d PEBs are corrupted and not used\00", align 1
@ENOSPC = common dso_local global i32 0, align 4
@UBI_ALL = common dso_local global i32 0, align 4
@UBI_DYNAMIC_VOLUME = common dso_local global i64 0, align 8
@UBI_VOLUME_RESIZED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ubi_resize_volume(%struct.ubi_volume_desc* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ubi_volume_desc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.ubi_volume*, align 8
  %10 = alloca %struct.ubi_device*, align 8
  %11 = alloca %struct.ubi_vtbl_record, align 4
  %12 = alloca %struct.ubi_eba_table*, align 8
  %13 = alloca i32, align 4
  store %struct.ubi_volume_desc* %0, %struct.ubi_volume_desc** %4, align 8
  store i32 %1, i32* %5, align 4
  %14 = load %struct.ubi_volume_desc*, %struct.ubi_volume_desc** %4, align 8
  %15 = getelementptr inbounds %struct.ubi_volume_desc, %struct.ubi_volume_desc* %14, i32 0, i32 0
  %16 = load %struct.ubi_volume*, %struct.ubi_volume** %15, align 8
  store %struct.ubi_volume* %16, %struct.ubi_volume** %9, align 8
  %17 = load %struct.ubi_volume*, %struct.ubi_volume** %9, align 8
  %18 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %17, i32 0, i32 8
  %19 = load %struct.ubi_device*, %struct.ubi_device** %18, align 8
  store %struct.ubi_device* %19, %struct.ubi_device** %10, align 8
  store %struct.ubi_eba_table* null, %struct.ubi_eba_table** %12, align 8
  %20 = load %struct.ubi_volume*, %struct.ubi_volume** %9, align 8
  %21 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* %13, align 4
  %23 = load %struct.ubi_device*, %struct.ubi_device** %10, align 8
  %24 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %23, i32 0, i32 6
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %2
  %28 = load i32, i32* @EROFS, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %3, align 4
  br label %297

30:                                               ; preds = %2
  %31 = load %struct.ubi_device*, %struct.ubi_device** %10, align 8
  %32 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %31, i32 0, i32 5
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* %13, align 4
  %35 = load %struct.ubi_volume*, %struct.ubi_volume** %9, align 8
  %36 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %5, align 4
  %39 = call i32 @dbg_gen(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %33, i32 %34, i32 %37, i32 %38)
  %40 = load %struct.ubi_volume*, %struct.ubi_volume** %9, align 8
  %41 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @UBI_STATIC_VOLUME, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %60

45:                                               ; preds = %30
  %46 = load i32, i32* %5, align 4
  %47 = load %struct.ubi_volume*, %struct.ubi_volume** %9, align 8
  %48 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 8
  %50 = icmp slt i32 %46, %49
  br i1 %50, label %51, label %60

51:                                               ; preds = %45
  %52 = load %struct.ubi_device*, %struct.ubi_device** %10, align 8
  %53 = load i32, i32* %5, align 4
  %54 = load %struct.ubi_volume*, %struct.ubi_volume** %9, align 8
  %55 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 8
  %57 = call i32 (%struct.ubi_device*, i8*, i32, ...) @ubi_err(%struct.ubi_device* %52, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %53, i32 %56)
  %58 = load i32, i32* @EINVAL, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %3, align 4
  br label %297

60:                                               ; preds = %45, %30
  %61 = load i32, i32* %5, align 4
  %62 = load %struct.ubi_volume*, %struct.ubi_volume** %9, align 8
  %63 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = icmp eq i32 %61, %64
  br i1 %65, label %66, label %67

66:                                               ; preds = %60
  store i32 0, i32* %3, align 4
  br label %297

67:                                               ; preds = %60
  %68 = load %struct.ubi_volume*, %struct.ubi_volume** %9, align 8
  %69 = load i32, i32* %5, align 4
  %70 = call %struct.ubi_eba_table* @ubi_eba_create_table(%struct.ubi_volume* %68, i32 %69)
  store %struct.ubi_eba_table* %70, %struct.ubi_eba_table** %12, align 8
  %71 = load %struct.ubi_eba_table*, %struct.ubi_eba_table** %12, align 8
  %72 = call i64 @IS_ERR(%struct.ubi_eba_table* %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %67
  %75 = load %struct.ubi_eba_table*, %struct.ubi_eba_table** %12, align 8
  %76 = call i32 @PTR_ERR(%struct.ubi_eba_table* %75)
  store i32 %76, i32* %3, align 4
  br label %297

77:                                               ; preds = %67
  %78 = load %struct.ubi_device*, %struct.ubi_device** %10, align 8
  %79 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %78, i32 0, i32 3
  %80 = call i32 @spin_lock(i32* %79)
  %81 = load %struct.ubi_volume*, %struct.ubi_volume** %9, align 8
  %82 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %81, i32 0, i32 4
  %83 = load i32, i32* %82, align 4
  %84 = icmp sgt i32 %83, 1
  br i1 %84, label %85, label %91

85:                                               ; preds = %77
  %86 = load %struct.ubi_device*, %struct.ubi_device** %10, align 8
  %87 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %86, i32 0, i32 3
  %88 = call i32 @spin_unlock(i32* %87)
  %89 = load i32, i32* @EBUSY, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %7, align 4
  br label %293

91:                                               ; preds = %77
  %92 = load %struct.ubi_device*, %struct.ubi_device** %10, align 8
  %93 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %92, i32 0, i32 3
  %94 = call i32 @spin_unlock(i32* %93)
  %95 = load i32, i32* %5, align 4
  %96 = load %struct.ubi_volume*, %struct.ubi_volume** %9, align 8
  %97 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = sub nsw i32 %95, %98
  store i32 %99, i32* %8, align 4
  %100 = load i32, i32* %8, align 4
  %101 = icmp sgt i32 %100, 0
  br i1 %101, label %102, label %157

102:                                              ; preds = %91
  %103 = load %struct.ubi_device*, %struct.ubi_device** %10, align 8
  %104 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %103, i32 0, i32 3
  %105 = call i32 @spin_lock(i32* %104)
  %106 = load i32, i32* %8, align 4
  %107 = load %struct.ubi_device*, %struct.ubi_device** %10, align 8
  %108 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = icmp sgt i32 %106, %109
  br i1 %110, label %111, label %134

111:                                              ; preds = %102
  %112 = load %struct.ubi_device*, %struct.ubi_device** %10, align 8
  %113 = load i32, i32* %8, align 4
  %114 = load %struct.ubi_device*, %struct.ubi_device** %10, align 8
  %115 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = call i32 (%struct.ubi_device*, i8*, i32, ...) @ubi_err(%struct.ubi_device* %112, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i32 %113, i32 %116)
  %118 = load %struct.ubi_device*, %struct.ubi_device** %10, align 8
  %119 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %128

122:                                              ; preds = %111
  %123 = load %struct.ubi_device*, %struct.ubi_device** %10, align 8
  %124 = load %struct.ubi_device*, %struct.ubi_device** %10, align 8
  %125 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = call i32 (%struct.ubi_device*, i8*, i32, ...) @ubi_err(%struct.ubi_device* %123, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i32 %126)
  br label %128

128:                                              ; preds = %122, %111
  %129 = load %struct.ubi_device*, %struct.ubi_device** %10, align 8
  %130 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %129, i32 0, i32 3
  %131 = call i32 @spin_unlock(i32* %130)
  %132 = load i32, i32* @ENOSPC, align 4
  %133 = sub nsw i32 0, %132
  store i32 %133, i32* %7, align 4
  br label %293

134:                                              ; preds = %102
  %135 = load i32, i32* %8, align 4
  %136 = load %struct.ubi_device*, %struct.ubi_device** %10, align 8
  %137 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = sub nsw i32 %138, %135
  store i32 %139, i32* %137, align 8
  %140 = load i32, i32* %8, align 4
  %141 = load %struct.ubi_device*, %struct.ubi_device** %10, align 8
  %142 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %141, i32 0, i32 2
  %143 = load i32, i32* %142, align 8
  %144 = add nsw i32 %143, %140
  store i32 %144, i32* %142, align 8
  %145 = load %struct.ubi_volume*, %struct.ubi_volume** %9, align 8
  %146 = load %struct.ubi_eba_table*, %struct.ubi_eba_table** %12, align 8
  %147 = load %struct.ubi_volume*, %struct.ubi_volume** %9, align 8
  %148 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = call i32 @ubi_eba_copy_table(%struct.ubi_volume* %145, %struct.ubi_eba_table* %146, i32 %149)
  %151 = load %struct.ubi_volume*, %struct.ubi_volume** %9, align 8
  %152 = load %struct.ubi_eba_table*, %struct.ubi_eba_table** %12, align 8
  %153 = call i32 @ubi_eba_replace_table(%struct.ubi_volume* %151, %struct.ubi_eba_table* %152)
  %154 = load %struct.ubi_device*, %struct.ubi_device** %10, align 8
  %155 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %154, i32 0, i32 3
  %156 = call i32 @spin_unlock(i32* %155)
  br label %157

157:                                              ; preds = %134, %91
  %158 = load i32, i32* %8, align 4
  %159 = icmp slt i32 %158, 0
  br i1 %159, label %160, label %206

160:                                              ; preds = %157
  store i32 0, i32* %6, align 4
  br label %161

161:                                              ; preds = %177, %160
  %162 = load i32, i32* %6, align 4
  %163 = load i32, i32* %8, align 4
  %164 = sub nsw i32 0, %163
  %165 = icmp slt i32 %162, %164
  br i1 %165, label %166, label %180

166:                                              ; preds = %161
  %167 = load %struct.ubi_device*, %struct.ubi_device** %10, align 8
  %168 = load %struct.ubi_volume*, %struct.ubi_volume** %9, align 8
  %169 = load i32, i32* %5, align 4
  %170 = load i32, i32* %6, align 4
  %171 = add nsw i32 %169, %170
  %172 = call i32 @ubi_eba_unmap_leb(%struct.ubi_device* %167, %struct.ubi_volume* %168, i32 %171)
  store i32 %172, i32* %7, align 4
  %173 = load i32, i32* %7, align 4
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %176

175:                                              ; preds = %166
  br label %272

176:                                              ; preds = %166
  br label %177

177:                                              ; preds = %176
  %178 = load i32, i32* %6, align 4
  %179 = add nsw i32 %178, 1
  store i32 %179, i32* %6, align 4
  br label %161

180:                                              ; preds = %161
  %181 = load %struct.ubi_device*, %struct.ubi_device** %10, align 8
  %182 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %181, i32 0, i32 3
  %183 = call i32 @spin_lock(i32* %182)
  %184 = load i32, i32* %8, align 4
  %185 = load %struct.ubi_device*, %struct.ubi_device** %10, align 8
  %186 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %185, i32 0, i32 2
  %187 = load i32, i32* %186, align 8
  %188 = add nsw i32 %187, %184
  store i32 %188, i32* %186, align 8
  %189 = load i32, i32* %8, align 4
  %190 = load %struct.ubi_device*, %struct.ubi_device** %10, align 8
  %191 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 8
  %193 = sub nsw i32 %192, %189
  store i32 %193, i32* %191, align 8
  %194 = load %struct.ubi_device*, %struct.ubi_device** %10, align 8
  %195 = call i32 @ubi_update_reserved(%struct.ubi_device* %194)
  %196 = load %struct.ubi_volume*, %struct.ubi_volume** %9, align 8
  %197 = load %struct.ubi_eba_table*, %struct.ubi_eba_table** %12, align 8
  %198 = load i32, i32* %5, align 4
  %199 = call i32 @ubi_eba_copy_table(%struct.ubi_volume* %196, %struct.ubi_eba_table* %197, i32 %198)
  %200 = load %struct.ubi_volume*, %struct.ubi_volume** %9, align 8
  %201 = load %struct.ubi_eba_table*, %struct.ubi_eba_table** %12, align 8
  %202 = call i32 @ubi_eba_replace_table(%struct.ubi_volume* %200, %struct.ubi_eba_table* %201)
  %203 = load %struct.ubi_device*, %struct.ubi_device** %10, align 8
  %204 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %203, i32 0, i32 3
  %205 = call i32 @spin_unlock(i32* %204)
  br label %206

206:                                              ; preds = %180, %157
  %207 = load i32, i32* %8, align 4
  %208 = icmp slt i32 %207, 0
  br i1 %208, label %209, label %218

209:                                              ; preds = %206
  %210 = load %struct.ubi_device*, %struct.ubi_device** %10, align 8
  %211 = load i32, i32* %13, align 4
  %212 = load i32, i32* @UBI_ALL, align 4
  %213 = call i32 @ubi_wl_flush(%struct.ubi_device* %210, i32 %211, i32 %212)
  store i32 %213, i32* %7, align 4
  %214 = load i32, i32* %7, align 4
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %216, label %217

216:                                              ; preds = %209
  br label %272

217:                                              ; preds = %209
  br label %218

218:                                              ; preds = %217, %206
  %219 = load %struct.ubi_device*, %struct.ubi_device** %10, align 8
  %220 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %219, i32 0, i32 4
  %221 = load %struct.ubi_vtbl_record*, %struct.ubi_vtbl_record** %220, align 8
  %222 = load i32, i32* %13, align 4
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds %struct.ubi_vtbl_record, %struct.ubi_vtbl_record* %221, i64 %223
  %225 = bitcast %struct.ubi_vtbl_record* %11 to i8*
  %226 = bitcast %struct.ubi_vtbl_record* %224 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %225, i8* align 4 %226, i64 4, i1 false)
  %227 = load i32, i32* %5, align 4
  %228 = call i32 @cpu_to_be32(i32 %227)
  %229 = getelementptr inbounds %struct.ubi_vtbl_record, %struct.ubi_vtbl_record* %11, i32 0, i32 0
  store i32 %228, i32* %229, align 4
  %230 = load %struct.ubi_device*, %struct.ubi_device** %10, align 8
  %231 = load i32, i32* %13, align 4
  %232 = call i32 @ubi_change_vtbl_record(%struct.ubi_device* %230, i32 %231, %struct.ubi_vtbl_record* %11)
  store i32 %232, i32* %7, align 4
  %233 = load i32, i32* %7, align 4
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %235, label %236

235:                                              ; preds = %218
  br label %272

236:                                              ; preds = %218
  %237 = load i32, i32* %5, align 4
  %238 = load %struct.ubi_volume*, %struct.ubi_volume** %9, align 8
  %239 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %238, i32 0, i32 1
  store i32 %237, i32* %239, align 4
  %240 = load %struct.ubi_volume*, %struct.ubi_volume** %9, align 8
  %241 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %240, i32 0, i32 2
  %242 = load i64, i64* %241, align 8
  %243 = load i64, i64* @UBI_DYNAMIC_VOLUME, align 8
  %244 = icmp eq i64 %242, %243
  br i1 %244, label %245, label %264

245:                                              ; preds = %236
  %246 = load i32, i32* %5, align 4
  %247 = load %struct.ubi_volume*, %struct.ubi_volume** %9, align 8
  %248 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %247, i32 0, i32 3
  store i32 %246, i32* %248, align 8
  %249 = load %struct.ubi_volume*, %struct.ubi_volume** %9, align 8
  %250 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %249, i32 0, i32 6
  %251 = load i64, i64* %250, align 8
  %252 = load %struct.ubi_volume*, %struct.ubi_volume** %9, align 8
  %253 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %252, i32 0, i32 5
  store i64 %251, i64* %253, align 8
  %254 = load %struct.ubi_volume*, %struct.ubi_volume** %9, align 8
  %255 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %254, i32 0, i32 3
  %256 = load i32, i32* %255, align 8
  %257 = sext i32 %256 to i64
  %258 = load %struct.ubi_volume*, %struct.ubi_volume** %9, align 8
  %259 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %258, i32 0, i32 6
  %260 = load i64, i64* %259, align 8
  %261 = mul nsw i64 %257, %260
  %262 = load %struct.ubi_volume*, %struct.ubi_volume** %9, align 8
  %263 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %262, i32 0, i32 7
  store i64 %261, i64* %263, align 8
  br label %264

264:                                              ; preds = %245, %236
  %265 = load %struct.ubi_device*, %struct.ubi_device** %10, align 8
  %266 = load %struct.ubi_volume*, %struct.ubi_volume** %9, align 8
  %267 = load i32, i32* @UBI_VOLUME_RESIZED, align 4
  %268 = call i32 @ubi_volume_notify(%struct.ubi_device* %265, %struct.ubi_volume* %266, i32 %267)
  %269 = load %struct.ubi_device*, %struct.ubi_device** %10, align 8
  %270 = call i32 @self_check_volumes(%struct.ubi_device* %269)
  %271 = load i32, i32* %7, align 4
  store i32 %271, i32* %3, align 4
  br label %297

272:                                              ; preds = %235, %216, %175
  %273 = load i32, i32* %8, align 4
  %274 = icmp sgt i32 %273, 0
  br i1 %274, label %275, label %292

275:                                              ; preds = %272
  %276 = load %struct.ubi_device*, %struct.ubi_device** %10, align 8
  %277 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %276, i32 0, i32 3
  %278 = call i32 @spin_lock(i32* %277)
  %279 = load i32, i32* %8, align 4
  %280 = load %struct.ubi_device*, %struct.ubi_device** %10, align 8
  %281 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %280, i32 0, i32 2
  %282 = load i32, i32* %281, align 8
  %283 = sub nsw i32 %282, %279
  store i32 %283, i32* %281, align 8
  %284 = load i32, i32* %8, align 4
  %285 = load %struct.ubi_device*, %struct.ubi_device** %10, align 8
  %286 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %285, i32 0, i32 0
  %287 = load i32, i32* %286, align 8
  %288 = add nsw i32 %287, %284
  store i32 %288, i32* %286, align 8
  %289 = load %struct.ubi_device*, %struct.ubi_device** %10, align 8
  %290 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %289, i32 0, i32 3
  %291 = call i32 @spin_unlock(i32* %290)
  br label %292

292:                                              ; preds = %275, %272
  br label %293

293:                                              ; preds = %292, %128, %85
  %294 = load %struct.ubi_eba_table*, %struct.ubi_eba_table** %12, align 8
  %295 = call i32 @kfree(%struct.ubi_eba_table* %294)
  %296 = load i32, i32* %7, align 4
  store i32 %296, i32* %3, align 4
  br label %297

297:                                              ; preds = %293, %264, %74, %66, %51, %27
  %298 = load i32, i32* %3, align 4
  ret i32 %298
}

declare dso_local i32 @dbg_gen(i8*, i32, i32, i32, i32) #1

declare dso_local i32 @ubi_err(%struct.ubi_device*, i8*, i32, ...) #1

declare dso_local %struct.ubi_eba_table* @ubi_eba_create_table(%struct.ubi_volume*, i32) #1

declare dso_local i64 @IS_ERR(%struct.ubi_eba_table*) #1

declare dso_local i32 @PTR_ERR(%struct.ubi_eba_table*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @ubi_eba_copy_table(%struct.ubi_volume*, %struct.ubi_eba_table*, i32) #1

declare dso_local i32 @ubi_eba_replace_table(%struct.ubi_volume*, %struct.ubi_eba_table*) #1

declare dso_local i32 @ubi_eba_unmap_leb(%struct.ubi_device*, %struct.ubi_volume*, i32) #1

declare dso_local i32 @ubi_update_reserved(%struct.ubi_device*) #1

declare dso_local i32 @ubi_wl_flush(%struct.ubi_device*, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @ubi_change_vtbl_record(%struct.ubi_device*, i32, %struct.ubi_vtbl_record*) #1

declare dso_local i32 @ubi_volume_notify(%struct.ubi_device*, %struct.ubi_volume*, i32) #1

declare dso_local i32 @self_check_volumes(%struct.ubi_device*) #1

declare dso_local i32 @kfree(%struct.ubi_eba_table*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
