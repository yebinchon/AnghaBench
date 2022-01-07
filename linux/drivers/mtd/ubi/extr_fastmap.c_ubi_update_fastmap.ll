; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/ubi/extr_fastmap.c_ubi_update_fastmap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/ubi/extr_fastmap.c_ubi_update_fastmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubi_device = type { i32, i32, i32, i32, i32, i32, %struct.ubi_fastmap_layout*, i64, i64 }
%struct.ubi_fastmap_layout = type { i32, %struct.ubi_wl_entry**, i32* }
%struct.ubi_wl_entry = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@UBI_FM_MAX_BLOCKS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"fastmap too large\00", align 1
@ENOSPC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"could not erase old fastmap PEB\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"could not get any free erase block\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"could not erase old anchor PEB\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"could not find any anchor PEB\00", align 1
@.str.5 = private unnamed_addr constant [36 x i8] c"Unable to write new fastmap, err=%i\00", align 1
@.str.6 = private unnamed_addr constant [38 x i8] c"Unable to invalidate current fastmap!\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ubi_update_fastmap(%struct.ubi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ubi_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.ubi_fastmap_layout*, align 8
  %8 = alloca %struct.ubi_fastmap_layout*, align 8
  %9 = alloca %struct.ubi_wl_entry*, align 8
  store %struct.ubi_device* %0, %struct.ubi_device** %3, align 8
  %10 = load %struct.ubi_device*, %struct.ubi_device** %3, align 8
  %11 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %10, i32 0, i32 2
  %12 = call i32 @down_write(i32* %11)
  %13 = load %struct.ubi_device*, %struct.ubi_device** %3, align 8
  %14 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %13, i32 0, i32 3
  %15 = call i32 @down_write(i32* %14)
  %16 = load %struct.ubi_device*, %struct.ubi_device** %3, align 8
  %17 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %16, i32 0, i32 4
  %18 = call i32 @down_write(i32* %17)
  %19 = load %struct.ubi_device*, %struct.ubi_device** %3, align 8
  %20 = call i32 @ubi_refill_pools(%struct.ubi_device* %19)
  %21 = load %struct.ubi_device*, %struct.ubi_device** %3, align 8
  %22 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %21, i32 0, i32 8
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %30, label %25

25:                                               ; preds = %1
  %26 = load %struct.ubi_device*, %struct.ubi_device** %3, align 8
  %27 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %26, i32 0, i32 7
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %40

30:                                               ; preds = %25, %1
  %31 = load %struct.ubi_device*, %struct.ubi_device** %3, align 8
  %32 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %31, i32 0, i32 4
  %33 = call i32 @up_write(i32* %32)
  %34 = load %struct.ubi_device*, %struct.ubi_device** %3, align 8
  %35 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %34, i32 0, i32 3
  %36 = call i32 @up_write(i32* %35)
  %37 = load %struct.ubi_device*, %struct.ubi_device** %3, align 8
  %38 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %37, i32 0, i32 2
  %39 = call i32 @up_write(i32* %38)
  store i32 0, i32* %2, align 4
  br label %503

40:                                               ; preds = %25
  %41 = load %struct.ubi_device*, %struct.ubi_device** %3, align 8
  %42 = call i32 @ubi_ensure_anchor_pebs(%struct.ubi_device* %41)
  store i32 %42, i32* %4, align 4
  %43 = load i32, i32* %4, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %56

45:                                               ; preds = %40
  %46 = load %struct.ubi_device*, %struct.ubi_device** %3, align 8
  %47 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %46, i32 0, i32 4
  %48 = call i32 @up_write(i32* %47)
  %49 = load %struct.ubi_device*, %struct.ubi_device** %3, align 8
  %50 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %49, i32 0, i32 3
  %51 = call i32 @up_write(i32* %50)
  %52 = load %struct.ubi_device*, %struct.ubi_device** %3, align 8
  %53 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %52, i32 0, i32 2
  %54 = call i32 @up_write(i32* %53)
  %55 = load i32, i32* %4, align 4
  store i32 %55, i32* %2, align 4
  br label %503

56:                                               ; preds = %40
  %57 = load i32, i32* @GFP_KERNEL, align 4
  %58 = call %struct.ubi_fastmap_layout* @kzalloc(i32 24, i32 %57)
  store %struct.ubi_fastmap_layout* %58, %struct.ubi_fastmap_layout** %7, align 8
  %59 = load %struct.ubi_fastmap_layout*, %struct.ubi_fastmap_layout** %7, align 8
  %60 = icmp ne %struct.ubi_fastmap_layout* %59, null
  br i1 %60, label %73, label %61

61:                                               ; preds = %56
  %62 = load %struct.ubi_device*, %struct.ubi_device** %3, align 8
  %63 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %62, i32 0, i32 4
  %64 = call i32 @up_write(i32* %63)
  %65 = load %struct.ubi_device*, %struct.ubi_device** %3, align 8
  %66 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %65, i32 0, i32 3
  %67 = call i32 @up_write(i32* %66)
  %68 = load %struct.ubi_device*, %struct.ubi_device** %3, align 8
  %69 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %68, i32 0, i32 2
  %70 = call i32 @up_write(i32* %69)
  %71 = load i32, i32* @ENOMEM, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %2, align 4
  br label %503

73:                                               ; preds = %56
  %74 = load %struct.ubi_device*, %struct.ubi_device** %3, align 8
  %75 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.ubi_device*, %struct.ubi_device** %3, align 8
  %78 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = sdiv i32 %76, %79
  %81 = load %struct.ubi_fastmap_layout*, %struct.ubi_fastmap_layout** %7, align 8
  %82 = getelementptr inbounds %struct.ubi_fastmap_layout, %struct.ubi_fastmap_layout* %81, i32 0, i32 0
  store i32 %80, i32* %82, align 8
  %83 = load %struct.ubi_device*, %struct.ubi_device** %3, align 8
  %84 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %83, i32 0, i32 6
  %85 = load %struct.ubi_fastmap_layout*, %struct.ubi_fastmap_layout** %84, align 8
  store %struct.ubi_fastmap_layout* %85, %struct.ubi_fastmap_layout** %8, align 8
  %86 = load %struct.ubi_device*, %struct.ubi_device** %3, align 8
  %87 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %86, i32 0, i32 6
  store %struct.ubi_fastmap_layout* null, %struct.ubi_fastmap_layout** %87, align 8
  %88 = load %struct.ubi_fastmap_layout*, %struct.ubi_fastmap_layout** %7, align 8
  %89 = getelementptr inbounds %struct.ubi_fastmap_layout, %struct.ubi_fastmap_layout* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = load i32, i32* @UBI_FM_MAX_BLOCKS, align 4
  %92 = icmp sgt i32 %90, %91
  br i1 %92, label %93, label %98

93:                                               ; preds = %73
  %94 = load %struct.ubi_device*, %struct.ubi_device** %3, align 8
  %95 = call i32 @ubi_err(%struct.ubi_device* %94, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %96 = load i32, i32* @ENOSPC, align 4
  %97 = sub nsw i32 0, %96
  store i32 %97, i32* %4, align 4
  br label %480

98:                                               ; preds = %73
  store i32 1, i32* %5, align 4
  br label %99

99:                                               ; preds = %266, %98
  %100 = load i32, i32* %5, align 4
  %101 = load %struct.ubi_fastmap_layout*, %struct.ubi_fastmap_layout** %7, align 8
  %102 = getelementptr inbounds %struct.ubi_fastmap_layout, %struct.ubi_fastmap_layout* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = icmp slt i32 %100, %103
  br i1 %104, label %105, label %269

105:                                              ; preds = %99
  %106 = load %struct.ubi_device*, %struct.ubi_device** %3, align 8
  %107 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %106, i32 0, i32 5
  %108 = call i32 @spin_lock(i32* %107)
  %109 = load %struct.ubi_device*, %struct.ubi_device** %3, align 8
  %110 = call %struct.ubi_wl_entry* @ubi_wl_get_fm_peb(%struct.ubi_device* %109, i32 0)
  store %struct.ubi_wl_entry* %110, %struct.ubi_wl_entry** %9, align 8
  %111 = load %struct.ubi_device*, %struct.ubi_device** %3, align 8
  %112 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %111, i32 0, i32 5
  %113 = call i32 @spin_unlock(i32* %112)
  %114 = load %struct.ubi_wl_entry*, %struct.ubi_wl_entry** %9, align 8
  %115 = icmp ne %struct.ubi_wl_entry* %114, null
  br i1 %115, label %221, label %116

116:                                              ; preds = %105
  %117 = load %struct.ubi_fastmap_layout*, %struct.ubi_fastmap_layout** %8, align 8
  %118 = icmp ne %struct.ubi_fastmap_layout* %117, null
  br i1 %118, label %119, label %190

119:                                              ; preds = %116
  %120 = load %struct.ubi_fastmap_layout*, %struct.ubi_fastmap_layout** %8, align 8
  %121 = getelementptr inbounds %struct.ubi_fastmap_layout, %struct.ubi_fastmap_layout* %120, i32 0, i32 1
  %122 = load %struct.ubi_wl_entry**, %struct.ubi_wl_entry*** %121, align 8
  %123 = load i32, i32* %5, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds %struct.ubi_wl_entry*, %struct.ubi_wl_entry** %122, i64 %124
  %126 = load %struct.ubi_wl_entry*, %struct.ubi_wl_entry** %125, align 8
  %127 = icmp ne %struct.ubi_wl_entry* %126, null
  br i1 %127, label %128, label %190

128:                                              ; preds = %119
  %129 = load %struct.ubi_device*, %struct.ubi_device** %3, align 8
  %130 = load %struct.ubi_fastmap_layout*, %struct.ubi_fastmap_layout** %8, align 8
  %131 = getelementptr inbounds %struct.ubi_fastmap_layout, %struct.ubi_fastmap_layout* %130, i32 0, i32 1
  %132 = load %struct.ubi_wl_entry**, %struct.ubi_wl_entry*** %131, align 8
  %133 = load i32, i32* %5, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds %struct.ubi_wl_entry*, %struct.ubi_wl_entry** %132, i64 %134
  %136 = load %struct.ubi_wl_entry*, %struct.ubi_wl_entry** %135, align 8
  %137 = getelementptr inbounds %struct.ubi_wl_entry, %struct.ubi_wl_entry* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = call i32 @erase_block(%struct.ubi_device* %129, i32 %138)
  store i32 %139, i32* %4, align 4
  %140 = load i32, i32* %4, align 4
  %141 = icmp slt i32 %140, 0
  br i1 %141, label %142, label %170

142:                                              ; preds = %128
  %143 = load %struct.ubi_device*, %struct.ubi_device** %3, align 8
  %144 = call i32 @ubi_err(%struct.ubi_device* %143, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %6, align 4
  br label %145

145:                                              ; preds = %166, %142
  %146 = load i32, i32* %6, align 4
  %147 = load i32, i32* %5, align 4
  %148 = icmp slt i32 %146, %147
  br i1 %148, label %149, label %169

149:                                              ; preds = %145
  %150 = load %struct.ubi_device*, %struct.ubi_device** %3, align 8
  %151 = load %struct.ubi_fastmap_layout*, %struct.ubi_fastmap_layout** %7, align 8
  %152 = getelementptr inbounds %struct.ubi_fastmap_layout, %struct.ubi_fastmap_layout* %151, i32 0, i32 1
  %153 = load %struct.ubi_wl_entry**, %struct.ubi_wl_entry*** %152, align 8
  %154 = load i32, i32* %6, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds %struct.ubi_wl_entry*, %struct.ubi_wl_entry** %153, i64 %155
  %157 = load %struct.ubi_wl_entry*, %struct.ubi_wl_entry** %156, align 8
  %158 = load i32, i32* %6, align 4
  %159 = call i32 @ubi_wl_put_fm_peb(%struct.ubi_device* %150, %struct.ubi_wl_entry* %157, i32 %158, i32 0)
  %160 = load %struct.ubi_fastmap_layout*, %struct.ubi_fastmap_layout** %7, align 8
  %161 = getelementptr inbounds %struct.ubi_fastmap_layout, %struct.ubi_fastmap_layout* %160, i32 0, i32 1
  %162 = load %struct.ubi_wl_entry**, %struct.ubi_wl_entry*** %161, align 8
  %163 = load i32, i32* %6, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds %struct.ubi_wl_entry*, %struct.ubi_wl_entry** %162, i64 %164
  store %struct.ubi_wl_entry* null, %struct.ubi_wl_entry** %165, align 8
  br label %166

166:                                              ; preds = %149
  %167 = load i32, i32* %6, align 4
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %6, align 4
  br label %145

169:                                              ; preds = %145
  br label %480

170:                                              ; preds = %128
  %171 = load %struct.ubi_fastmap_layout*, %struct.ubi_fastmap_layout** %8, align 8
  %172 = getelementptr inbounds %struct.ubi_fastmap_layout, %struct.ubi_fastmap_layout* %171, i32 0, i32 1
  %173 = load %struct.ubi_wl_entry**, %struct.ubi_wl_entry*** %172, align 8
  %174 = load i32, i32* %5, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds %struct.ubi_wl_entry*, %struct.ubi_wl_entry** %173, i64 %175
  %177 = load %struct.ubi_wl_entry*, %struct.ubi_wl_entry** %176, align 8
  %178 = load %struct.ubi_fastmap_layout*, %struct.ubi_fastmap_layout** %7, align 8
  %179 = getelementptr inbounds %struct.ubi_fastmap_layout, %struct.ubi_fastmap_layout* %178, i32 0, i32 1
  %180 = load %struct.ubi_wl_entry**, %struct.ubi_wl_entry*** %179, align 8
  %181 = load i32, i32* %5, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds %struct.ubi_wl_entry*, %struct.ubi_wl_entry** %180, i64 %182
  store %struct.ubi_wl_entry* %177, %struct.ubi_wl_entry** %183, align 8
  %184 = load %struct.ubi_fastmap_layout*, %struct.ubi_fastmap_layout** %8, align 8
  %185 = getelementptr inbounds %struct.ubi_fastmap_layout, %struct.ubi_fastmap_layout* %184, i32 0, i32 1
  %186 = load %struct.ubi_wl_entry**, %struct.ubi_wl_entry*** %185, align 8
  %187 = load i32, i32* %5, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds %struct.ubi_wl_entry*, %struct.ubi_wl_entry** %186, i64 %188
  store %struct.ubi_wl_entry* null, %struct.ubi_wl_entry** %189, align 8
  br label %220

190:                                              ; preds = %119, %116
  %191 = load %struct.ubi_device*, %struct.ubi_device** %3, align 8
  %192 = call i32 @ubi_err(%struct.ubi_device* %191, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  store i32 1, i32* %6, align 4
  br label %193

193:                                              ; preds = %214, %190
  %194 = load i32, i32* %6, align 4
  %195 = load i32, i32* %5, align 4
  %196 = icmp slt i32 %194, %195
  br i1 %196, label %197, label %217

197:                                              ; preds = %193
  %198 = load %struct.ubi_device*, %struct.ubi_device** %3, align 8
  %199 = load %struct.ubi_fastmap_layout*, %struct.ubi_fastmap_layout** %7, align 8
  %200 = getelementptr inbounds %struct.ubi_fastmap_layout, %struct.ubi_fastmap_layout* %199, i32 0, i32 1
  %201 = load %struct.ubi_wl_entry**, %struct.ubi_wl_entry*** %200, align 8
  %202 = load i32, i32* %6, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds %struct.ubi_wl_entry*, %struct.ubi_wl_entry** %201, i64 %203
  %205 = load %struct.ubi_wl_entry*, %struct.ubi_wl_entry** %204, align 8
  %206 = load i32, i32* %6, align 4
  %207 = call i32 @ubi_wl_put_fm_peb(%struct.ubi_device* %198, %struct.ubi_wl_entry* %205, i32 %206, i32 0)
  %208 = load %struct.ubi_fastmap_layout*, %struct.ubi_fastmap_layout** %7, align 8
  %209 = getelementptr inbounds %struct.ubi_fastmap_layout, %struct.ubi_fastmap_layout* %208, i32 0, i32 1
  %210 = load %struct.ubi_wl_entry**, %struct.ubi_wl_entry*** %209, align 8
  %211 = load i32, i32* %6, align 4
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds %struct.ubi_wl_entry*, %struct.ubi_wl_entry** %210, i64 %212
  store %struct.ubi_wl_entry* null, %struct.ubi_wl_entry** %213, align 8
  br label %214

214:                                              ; preds = %197
  %215 = load i32, i32* %6, align 4
  %216 = add nsw i32 %215, 1
  store i32 %216, i32* %6, align 4
  br label %193

217:                                              ; preds = %193
  %218 = load i32, i32* @ENOSPC, align 4
  %219 = sub nsw i32 0, %218
  store i32 %219, i32* %4, align 4
  br label %480

220:                                              ; preds = %170
  br label %265

221:                                              ; preds = %105
  %222 = load %struct.ubi_wl_entry*, %struct.ubi_wl_entry** %9, align 8
  %223 = load %struct.ubi_fastmap_layout*, %struct.ubi_fastmap_layout** %7, align 8
  %224 = getelementptr inbounds %struct.ubi_fastmap_layout, %struct.ubi_fastmap_layout* %223, i32 0, i32 1
  %225 = load %struct.ubi_wl_entry**, %struct.ubi_wl_entry*** %224, align 8
  %226 = load i32, i32* %5, align 4
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds %struct.ubi_wl_entry*, %struct.ubi_wl_entry** %225, i64 %227
  store %struct.ubi_wl_entry* %222, %struct.ubi_wl_entry** %228, align 8
  %229 = load %struct.ubi_fastmap_layout*, %struct.ubi_fastmap_layout** %8, align 8
  %230 = icmp ne %struct.ubi_fastmap_layout* %229, null
  br i1 %230, label %231, label %264

231:                                              ; preds = %221
  %232 = load %struct.ubi_fastmap_layout*, %struct.ubi_fastmap_layout** %8, align 8
  %233 = getelementptr inbounds %struct.ubi_fastmap_layout, %struct.ubi_fastmap_layout* %232, i32 0, i32 1
  %234 = load %struct.ubi_wl_entry**, %struct.ubi_wl_entry*** %233, align 8
  %235 = load i32, i32* %5, align 4
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds %struct.ubi_wl_entry*, %struct.ubi_wl_entry** %234, i64 %236
  %238 = load %struct.ubi_wl_entry*, %struct.ubi_wl_entry** %237, align 8
  %239 = icmp ne %struct.ubi_wl_entry* %238, null
  br i1 %239, label %240, label %264

240:                                              ; preds = %231
  %241 = load %struct.ubi_device*, %struct.ubi_device** %3, align 8
  %242 = load %struct.ubi_fastmap_layout*, %struct.ubi_fastmap_layout** %8, align 8
  %243 = getelementptr inbounds %struct.ubi_fastmap_layout, %struct.ubi_fastmap_layout* %242, i32 0, i32 1
  %244 = load %struct.ubi_wl_entry**, %struct.ubi_wl_entry*** %243, align 8
  %245 = load i32, i32* %5, align 4
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds %struct.ubi_wl_entry*, %struct.ubi_wl_entry** %244, i64 %246
  %248 = load %struct.ubi_wl_entry*, %struct.ubi_wl_entry** %247, align 8
  %249 = load i32, i32* %5, align 4
  %250 = load %struct.ubi_fastmap_layout*, %struct.ubi_fastmap_layout** %8, align 8
  %251 = getelementptr inbounds %struct.ubi_fastmap_layout, %struct.ubi_fastmap_layout* %250, i32 0, i32 2
  %252 = load i32*, i32** %251, align 8
  %253 = load i32, i32* %5, align 4
  %254 = sext i32 %253 to i64
  %255 = getelementptr inbounds i32, i32* %252, i64 %254
  %256 = load i32, i32* %255, align 4
  %257 = call i32 @ubi_wl_put_fm_peb(%struct.ubi_device* %241, %struct.ubi_wl_entry* %248, i32 %249, i32 %256)
  %258 = load %struct.ubi_fastmap_layout*, %struct.ubi_fastmap_layout** %8, align 8
  %259 = getelementptr inbounds %struct.ubi_fastmap_layout, %struct.ubi_fastmap_layout* %258, i32 0, i32 1
  %260 = load %struct.ubi_wl_entry**, %struct.ubi_wl_entry*** %259, align 8
  %261 = load i32, i32* %5, align 4
  %262 = sext i32 %261 to i64
  %263 = getelementptr inbounds %struct.ubi_wl_entry*, %struct.ubi_wl_entry** %260, i64 %262
  store %struct.ubi_wl_entry* null, %struct.ubi_wl_entry** %263, align 8
  br label %264

264:                                              ; preds = %240, %231, %221
  br label %265

265:                                              ; preds = %264, %220
  br label %266

266:                                              ; preds = %265
  %267 = load i32, i32* %5, align 4
  %268 = add nsw i32 %267, 1
  store i32 %268, i32* %5, align 4
  br label %99

269:                                              ; preds = %99
  %270 = load %struct.ubi_fastmap_layout*, %struct.ubi_fastmap_layout** %8, align 8
  %271 = icmp ne %struct.ubi_fastmap_layout* %270, null
  br i1 %271, label %272, label %318

272:                                              ; preds = %269
  %273 = load %struct.ubi_fastmap_layout*, %struct.ubi_fastmap_layout** %7, align 8
  %274 = getelementptr inbounds %struct.ubi_fastmap_layout, %struct.ubi_fastmap_layout* %273, i32 0, i32 0
  %275 = load i32, i32* %274, align 8
  %276 = load %struct.ubi_fastmap_layout*, %struct.ubi_fastmap_layout** %8, align 8
  %277 = getelementptr inbounds %struct.ubi_fastmap_layout, %struct.ubi_fastmap_layout* %276, i32 0, i32 0
  %278 = load i32, i32* %277, align 8
  %279 = icmp slt i32 %275, %278
  br i1 %279, label %280, label %318

280:                                              ; preds = %272
  %281 = load %struct.ubi_fastmap_layout*, %struct.ubi_fastmap_layout** %7, align 8
  %282 = getelementptr inbounds %struct.ubi_fastmap_layout, %struct.ubi_fastmap_layout* %281, i32 0, i32 0
  %283 = load i32, i32* %282, align 8
  store i32 %283, i32* %5, align 4
  br label %284

284:                                              ; preds = %314, %280
  %285 = load i32, i32* %5, align 4
  %286 = load %struct.ubi_fastmap_layout*, %struct.ubi_fastmap_layout** %8, align 8
  %287 = getelementptr inbounds %struct.ubi_fastmap_layout, %struct.ubi_fastmap_layout* %286, i32 0, i32 0
  %288 = load i32, i32* %287, align 8
  %289 = icmp slt i32 %285, %288
  br i1 %289, label %290, label %317

290:                                              ; preds = %284
  %291 = load %struct.ubi_device*, %struct.ubi_device** %3, align 8
  %292 = load %struct.ubi_fastmap_layout*, %struct.ubi_fastmap_layout** %8, align 8
  %293 = getelementptr inbounds %struct.ubi_fastmap_layout, %struct.ubi_fastmap_layout* %292, i32 0, i32 1
  %294 = load %struct.ubi_wl_entry**, %struct.ubi_wl_entry*** %293, align 8
  %295 = load i32, i32* %5, align 4
  %296 = sext i32 %295 to i64
  %297 = getelementptr inbounds %struct.ubi_wl_entry*, %struct.ubi_wl_entry** %294, i64 %296
  %298 = load %struct.ubi_wl_entry*, %struct.ubi_wl_entry** %297, align 8
  %299 = load i32, i32* %5, align 4
  %300 = load %struct.ubi_fastmap_layout*, %struct.ubi_fastmap_layout** %8, align 8
  %301 = getelementptr inbounds %struct.ubi_fastmap_layout, %struct.ubi_fastmap_layout* %300, i32 0, i32 2
  %302 = load i32*, i32** %301, align 8
  %303 = load i32, i32* %5, align 4
  %304 = sext i32 %303 to i64
  %305 = getelementptr inbounds i32, i32* %302, i64 %304
  %306 = load i32, i32* %305, align 4
  %307 = call i32 @ubi_wl_put_fm_peb(%struct.ubi_device* %291, %struct.ubi_wl_entry* %298, i32 %299, i32 %306)
  %308 = load %struct.ubi_fastmap_layout*, %struct.ubi_fastmap_layout** %8, align 8
  %309 = getelementptr inbounds %struct.ubi_fastmap_layout, %struct.ubi_fastmap_layout* %308, i32 0, i32 1
  %310 = load %struct.ubi_wl_entry**, %struct.ubi_wl_entry*** %309, align 8
  %311 = load i32, i32* %5, align 4
  %312 = sext i32 %311 to i64
  %313 = getelementptr inbounds %struct.ubi_wl_entry*, %struct.ubi_wl_entry** %310, i64 %312
  store %struct.ubi_wl_entry* null, %struct.ubi_wl_entry** %313, align 8
  br label %314

314:                                              ; preds = %290
  %315 = load i32, i32* %5, align 4
  %316 = add nsw i32 %315, 1
  store i32 %316, i32* %5, align 4
  br label %284

317:                                              ; preds = %284
  br label %318

318:                                              ; preds = %317, %272, %269
  %319 = load %struct.ubi_device*, %struct.ubi_device** %3, align 8
  %320 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %319, i32 0, i32 5
  %321 = call i32 @spin_lock(i32* %320)
  %322 = load %struct.ubi_device*, %struct.ubi_device** %3, align 8
  %323 = call %struct.ubi_wl_entry* @ubi_wl_get_fm_peb(%struct.ubi_device* %322, i32 1)
  store %struct.ubi_wl_entry* %323, %struct.ubi_wl_entry** %9, align 8
  %324 = load %struct.ubi_device*, %struct.ubi_device** %3, align 8
  %325 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %324, i32 0, i32 5
  %326 = call i32 @spin_unlock(i32* %325)
  %327 = load %struct.ubi_fastmap_layout*, %struct.ubi_fastmap_layout** %8, align 8
  %328 = icmp ne %struct.ubi_fastmap_layout* %327, null
  br i1 %328, label %329, label %418

329:                                              ; preds = %318
  %330 = load %struct.ubi_wl_entry*, %struct.ubi_wl_entry** %9, align 8
  %331 = icmp ne %struct.ubi_wl_entry* %330, null
  br i1 %331, label %395, label %332

332:                                              ; preds = %329
  %333 = load %struct.ubi_device*, %struct.ubi_device** %3, align 8
  %334 = load %struct.ubi_fastmap_layout*, %struct.ubi_fastmap_layout** %8, align 8
  %335 = getelementptr inbounds %struct.ubi_fastmap_layout, %struct.ubi_fastmap_layout* %334, i32 0, i32 1
  %336 = load %struct.ubi_wl_entry**, %struct.ubi_wl_entry*** %335, align 8
  %337 = getelementptr inbounds %struct.ubi_wl_entry*, %struct.ubi_wl_entry** %336, i64 0
  %338 = load %struct.ubi_wl_entry*, %struct.ubi_wl_entry** %337, align 8
  %339 = getelementptr inbounds %struct.ubi_wl_entry, %struct.ubi_wl_entry* %338, i32 0, i32 1
  %340 = load i32, i32* %339, align 4
  %341 = call i32 @erase_block(%struct.ubi_device* %333, i32 %340)
  store i32 %341, i32* %4, align 4
  %342 = load i32, i32* %4, align 4
  %343 = icmp slt i32 %342, 0
  br i1 %343, label %344, label %374

344:                                              ; preds = %332
  %345 = load %struct.ubi_device*, %struct.ubi_device** %3, align 8
  %346 = call i32 @ubi_err(%struct.ubi_device* %345, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  store i32 1, i32* %5, align 4
  br label %347

347:                                              ; preds = %370, %344
  %348 = load i32, i32* %5, align 4
  %349 = load %struct.ubi_fastmap_layout*, %struct.ubi_fastmap_layout** %7, align 8
  %350 = getelementptr inbounds %struct.ubi_fastmap_layout, %struct.ubi_fastmap_layout* %349, i32 0, i32 0
  %351 = load i32, i32* %350, align 8
  %352 = icmp slt i32 %348, %351
  br i1 %352, label %353, label %373

353:                                              ; preds = %347
  %354 = load %struct.ubi_device*, %struct.ubi_device** %3, align 8
  %355 = load %struct.ubi_fastmap_layout*, %struct.ubi_fastmap_layout** %7, align 8
  %356 = getelementptr inbounds %struct.ubi_fastmap_layout, %struct.ubi_fastmap_layout* %355, i32 0, i32 1
  %357 = load %struct.ubi_wl_entry**, %struct.ubi_wl_entry*** %356, align 8
  %358 = load i32, i32* %5, align 4
  %359 = sext i32 %358 to i64
  %360 = getelementptr inbounds %struct.ubi_wl_entry*, %struct.ubi_wl_entry** %357, i64 %359
  %361 = load %struct.ubi_wl_entry*, %struct.ubi_wl_entry** %360, align 8
  %362 = load i32, i32* %5, align 4
  %363 = call i32 @ubi_wl_put_fm_peb(%struct.ubi_device* %354, %struct.ubi_wl_entry* %361, i32 %362, i32 0)
  %364 = load %struct.ubi_fastmap_layout*, %struct.ubi_fastmap_layout** %7, align 8
  %365 = getelementptr inbounds %struct.ubi_fastmap_layout, %struct.ubi_fastmap_layout* %364, i32 0, i32 1
  %366 = load %struct.ubi_wl_entry**, %struct.ubi_wl_entry*** %365, align 8
  %367 = load i32, i32* %5, align 4
  %368 = sext i32 %367 to i64
  %369 = getelementptr inbounds %struct.ubi_wl_entry*, %struct.ubi_wl_entry** %366, i64 %368
  store %struct.ubi_wl_entry* null, %struct.ubi_wl_entry** %369, align 8
  br label %370

370:                                              ; preds = %353
  %371 = load i32, i32* %5, align 4
  %372 = add nsw i32 %371, 1
  store i32 %372, i32* %5, align 4
  br label %347

373:                                              ; preds = %347
  br label %480

374:                                              ; preds = %332
  %375 = load %struct.ubi_fastmap_layout*, %struct.ubi_fastmap_layout** %8, align 8
  %376 = getelementptr inbounds %struct.ubi_fastmap_layout, %struct.ubi_fastmap_layout* %375, i32 0, i32 1
  %377 = load %struct.ubi_wl_entry**, %struct.ubi_wl_entry*** %376, align 8
  %378 = getelementptr inbounds %struct.ubi_wl_entry*, %struct.ubi_wl_entry** %377, i64 0
  %379 = load %struct.ubi_wl_entry*, %struct.ubi_wl_entry** %378, align 8
  %380 = load %struct.ubi_fastmap_layout*, %struct.ubi_fastmap_layout** %7, align 8
  %381 = getelementptr inbounds %struct.ubi_fastmap_layout, %struct.ubi_fastmap_layout* %380, i32 0, i32 1
  %382 = load %struct.ubi_wl_entry**, %struct.ubi_wl_entry*** %381, align 8
  %383 = getelementptr inbounds %struct.ubi_wl_entry*, %struct.ubi_wl_entry** %382, i64 0
  store %struct.ubi_wl_entry* %379, %struct.ubi_wl_entry** %383, align 8
  %384 = load i32, i32* %4, align 4
  %385 = load %struct.ubi_fastmap_layout*, %struct.ubi_fastmap_layout** %7, align 8
  %386 = getelementptr inbounds %struct.ubi_fastmap_layout, %struct.ubi_fastmap_layout* %385, i32 0, i32 1
  %387 = load %struct.ubi_wl_entry**, %struct.ubi_wl_entry*** %386, align 8
  %388 = getelementptr inbounds %struct.ubi_wl_entry*, %struct.ubi_wl_entry** %387, i64 0
  %389 = load %struct.ubi_wl_entry*, %struct.ubi_wl_entry** %388, align 8
  %390 = getelementptr inbounds %struct.ubi_wl_entry, %struct.ubi_wl_entry* %389, i32 0, i32 0
  store i32 %384, i32* %390, align 4
  %391 = load %struct.ubi_fastmap_layout*, %struct.ubi_fastmap_layout** %8, align 8
  %392 = getelementptr inbounds %struct.ubi_fastmap_layout, %struct.ubi_fastmap_layout* %391, i32 0, i32 1
  %393 = load %struct.ubi_wl_entry**, %struct.ubi_wl_entry*** %392, align 8
  %394 = getelementptr inbounds %struct.ubi_wl_entry*, %struct.ubi_wl_entry** %393, i64 0
  store %struct.ubi_wl_entry* null, %struct.ubi_wl_entry** %394, align 8
  br label %417

395:                                              ; preds = %329
  %396 = load %struct.ubi_device*, %struct.ubi_device** %3, align 8
  %397 = load %struct.ubi_fastmap_layout*, %struct.ubi_fastmap_layout** %8, align 8
  %398 = getelementptr inbounds %struct.ubi_fastmap_layout, %struct.ubi_fastmap_layout* %397, i32 0, i32 1
  %399 = load %struct.ubi_wl_entry**, %struct.ubi_wl_entry*** %398, align 8
  %400 = getelementptr inbounds %struct.ubi_wl_entry*, %struct.ubi_wl_entry** %399, i64 0
  %401 = load %struct.ubi_wl_entry*, %struct.ubi_wl_entry** %400, align 8
  %402 = load %struct.ubi_fastmap_layout*, %struct.ubi_fastmap_layout** %8, align 8
  %403 = getelementptr inbounds %struct.ubi_fastmap_layout, %struct.ubi_fastmap_layout* %402, i32 0, i32 2
  %404 = load i32*, i32** %403, align 8
  %405 = getelementptr inbounds i32, i32* %404, i64 0
  %406 = load i32, i32* %405, align 4
  %407 = call i32 @ubi_wl_put_fm_peb(%struct.ubi_device* %396, %struct.ubi_wl_entry* %401, i32 0, i32 %406)
  %408 = load %struct.ubi_wl_entry*, %struct.ubi_wl_entry** %9, align 8
  %409 = load %struct.ubi_fastmap_layout*, %struct.ubi_fastmap_layout** %7, align 8
  %410 = getelementptr inbounds %struct.ubi_fastmap_layout, %struct.ubi_fastmap_layout* %409, i32 0, i32 1
  %411 = load %struct.ubi_wl_entry**, %struct.ubi_wl_entry*** %410, align 8
  %412 = getelementptr inbounds %struct.ubi_wl_entry*, %struct.ubi_wl_entry** %411, i64 0
  store %struct.ubi_wl_entry* %408, %struct.ubi_wl_entry** %412, align 8
  %413 = load %struct.ubi_fastmap_layout*, %struct.ubi_fastmap_layout** %8, align 8
  %414 = getelementptr inbounds %struct.ubi_fastmap_layout, %struct.ubi_fastmap_layout* %413, i32 0, i32 1
  %415 = load %struct.ubi_wl_entry**, %struct.ubi_wl_entry*** %414, align 8
  %416 = getelementptr inbounds %struct.ubi_wl_entry*, %struct.ubi_wl_entry** %415, i64 0
  store %struct.ubi_wl_entry* null, %struct.ubi_wl_entry** %416, align 8
  br label %417

417:                                              ; preds = %395, %374
  br label %459

418:                                              ; preds = %318
  %419 = load %struct.ubi_wl_entry*, %struct.ubi_wl_entry** %9, align 8
  %420 = icmp ne %struct.ubi_wl_entry* %419, null
  br i1 %420, label %453, label %421

421:                                              ; preds = %418
  %422 = load %struct.ubi_device*, %struct.ubi_device** %3, align 8
  %423 = call i32 @ubi_err(%struct.ubi_device* %422, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0))
  store i32 1, i32* %5, align 4
  br label %424

424:                                              ; preds = %447, %421
  %425 = load i32, i32* %5, align 4
  %426 = load %struct.ubi_fastmap_layout*, %struct.ubi_fastmap_layout** %7, align 8
  %427 = getelementptr inbounds %struct.ubi_fastmap_layout, %struct.ubi_fastmap_layout* %426, i32 0, i32 0
  %428 = load i32, i32* %427, align 8
  %429 = icmp slt i32 %425, %428
  br i1 %429, label %430, label %450

430:                                              ; preds = %424
  %431 = load %struct.ubi_device*, %struct.ubi_device** %3, align 8
  %432 = load %struct.ubi_fastmap_layout*, %struct.ubi_fastmap_layout** %7, align 8
  %433 = getelementptr inbounds %struct.ubi_fastmap_layout, %struct.ubi_fastmap_layout* %432, i32 0, i32 1
  %434 = load %struct.ubi_wl_entry**, %struct.ubi_wl_entry*** %433, align 8
  %435 = load i32, i32* %5, align 4
  %436 = sext i32 %435 to i64
  %437 = getelementptr inbounds %struct.ubi_wl_entry*, %struct.ubi_wl_entry** %434, i64 %436
  %438 = load %struct.ubi_wl_entry*, %struct.ubi_wl_entry** %437, align 8
  %439 = load i32, i32* %5, align 4
  %440 = call i32 @ubi_wl_put_fm_peb(%struct.ubi_device* %431, %struct.ubi_wl_entry* %438, i32 %439, i32 0)
  %441 = load %struct.ubi_fastmap_layout*, %struct.ubi_fastmap_layout** %7, align 8
  %442 = getelementptr inbounds %struct.ubi_fastmap_layout, %struct.ubi_fastmap_layout* %441, i32 0, i32 1
  %443 = load %struct.ubi_wl_entry**, %struct.ubi_wl_entry*** %442, align 8
  %444 = load i32, i32* %5, align 4
  %445 = sext i32 %444 to i64
  %446 = getelementptr inbounds %struct.ubi_wl_entry*, %struct.ubi_wl_entry** %443, i64 %445
  store %struct.ubi_wl_entry* null, %struct.ubi_wl_entry** %446, align 8
  br label %447

447:                                              ; preds = %430
  %448 = load i32, i32* %5, align 4
  %449 = add nsw i32 %448, 1
  store i32 %449, i32* %5, align 4
  br label %424

450:                                              ; preds = %424
  %451 = load i32, i32* @ENOSPC, align 4
  %452 = sub nsw i32 0, %451
  store i32 %452, i32* %4, align 4
  br label %480

453:                                              ; preds = %418
  %454 = load %struct.ubi_wl_entry*, %struct.ubi_wl_entry** %9, align 8
  %455 = load %struct.ubi_fastmap_layout*, %struct.ubi_fastmap_layout** %7, align 8
  %456 = getelementptr inbounds %struct.ubi_fastmap_layout, %struct.ubi_fastmap_layout* %455, i32 0, i32 1
  %457 = load %struct.ubi_wl_entry**, %struct.ubi_wl_entry*** %456, align 8
  %458 = getelementptr inbounds %struct.ubi_wl_entry*, %struct.ubi_wl_entry** %457, i64 0
  store %struct.ubi_wl_entry* %454, %struct.ubi_wl_entry** %458, align 8
  br label %459

459:                                              ; preds = %453, %417
  %460 = load %struct.ubi_device*, %struct.ubi_device** %3, align 8
  %461 = load %struct.ubi_fastmap_layout*, %struct.ubi_fastmap_layout** %7, align 8
  %462 = call i32 @ubi_write_fastmap(%struct.ubi_device* %460, %struct.ubi_fastmap_layout* %461)
  store i32 %462, i32* %4, align 4
  %463 = load i32, i32* %4, align 4
  %464 = icmp ne i32 %463, 0
  br i1 %464, label %465, label %466

465:                                              ; preds = %459
  br label %480

466:                                              ; preds = %459
  br label %467

467:                                              ; preds = %500, %466
  %468 = load %struct.ubi_device*, %struct.ubi_device** %3, align 8
  %469 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %468, i32 0, i32 4
  %470 = call i32 @up_write(i32* %469)
  %471 = load %struct.ubi_device*, %struct.ubi_device** %3, align 8
  %472 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %471, i32 0, i32 3
  %473 = call i32 @up_write(i32* %472)
  %474 = load %struct.ubi_device*, %struct.ubi_device** %3, align 8
  %475 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %474, i32 0, i32 2
  %476 = call i32 @up_write(i32* %475)
  %477 = load %struct.ubi_fastmap_layout*, %struct.ubi_fastmap_layout** %8, align 8
  %478 = call i32 @kfree(%struct.ubi_fastmap_layout* %477)
  %479 = load i32, i32* %4, align 4
  store i32 %479, i32* %2, align 4
  br label %503

480:                                              ; preds = %465, %450, %373, %217, %169, %93
  %481 = load %struct.ubi_device*, %struct.ubi_device** %3, align 8
  %482 = load i32, i32* %4, align 4
  %483 = call i32 @ubi_warn(%struct.ubi_device* %481, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0), i32 %482)
  %484 = load %struct.ubi_device*, %struct.ubi_device** %3, align 8
  %485 = call i32 @invalidate_fastmap(%struct.ubi_device* %484)
  store i32 %485, i32* %4, align 4
  %486 = load i32, i32* %4, align 4
  %487 = icmp slt i32 %486, 0
  br i1 %487, label %488, label %493

488:                                              ; preds = %480
  %489 = load %struct.ubi_device*, %struct.ubi_device** %3, align 8
  %490 = call i32 @ubi_err(%struct.ubi_device* %489, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.6, i64 0, i64 0))
  %491 = load %struct.ubi_device*, %struct.ubi_device** %3, align 8
  %492 = call i32 @ubi_ro_mode(%struct.ubi_device* %491)
  br label %500

493:                                              ; preds = %480
  %494 = load %struct.ubi_device*, %struct.ubi_device** %3, align 8
  %495 = load %struct.ubi_fastmap_layout*, %struct.ubi_fastmap_layout** %8, align 8
  %496 = call i32 @return_fm_pebs(%struct.ubi_device* %494, %struct.ubi_fastmap_layout* %495)
  %497 = load %struct.ubi_device*, %struct.ubi_device** %3, align 8
  %498 = load %struct.ubi_fastmap_layout*, %struct.ubi_fastmap_layout** %7, align 8
  %499 = call i32 @return_fm_pebs(%struct.ubi_device* %497, %struct.ubi_fastmap_layout* %498)
  store i32 0, i32* %4, align 4
  br label %500

500:                                              ; preds = %493, %488
  %501 = load %struct.ubi_fastmap_layout*, %struct.ubi_fastmap_layout** %7, align 8
  %502 = call i32 @kfree(%struct.ubi_fastmap_layout* %501)
  br label %467

503:                                              ; preds = %467, %61, %45, %30
  %504 = load i32, i32* %2, align 4
  ret i32 %504
}

declare dso_local i32 @down_write(i32*) #1

declare dso_local i32 @ubi_refill_pools(%struct.ubi_device*) #1

declare dso_local i32 @up_write(i32*) #1

declare dso_local i32 @ubi_ensure_anchor_pebs(%struct.ubi_device*) #1

declare dso_local %struct.ubi_fastmap_layout* @kzalloc(i32, i32) #1

declare dso_local i32 @ubi_err(%struct.ubi_device*, i8*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.ubi_wl_entry* @ubi_wl_get_fm_peb(%struct.ubi_device*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @erase_block(%struct.ubi_device*, i32) #1

declare dso_local i32 @ubi_wl_put_fm_peb(%struct.ubi_device*, %struct.ubi_wl_entry*, i32, i32) #1

declare dso_local i32 @ubi_write_fastmap(%struct.ubi_device*, %struct.ubi_fastmap_layout*) #1

declare dso_local i32 @kfree(%struct.ubi_fastmap_layout*) #1

declare dso_local i32 @ubi_warn(%struct.ubi_device*, i8*, i32) #1

declare dso_local i32 @invalidate_fastmap(%struct.ubi_device*) #1

declare dso_local i32 @ubi_ro_mode(%struct.ubi_device*) #1

declare dso_local i32 @return_fm_pebs(%struct.ubi_device*, %struct.ubi_fastmap_layout*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
