; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/ubi/extr_wl.c___erase_worker.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/ubi/extr_wl.c___erase_worker.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubi_device = type { i32, i64, i32, i32, i32, i32, i32, i32, i32 }
%struct.ubi_work = type { i32, i32, i32, %struct.ubi_wl_entry* }
%struct.ubi_wl_entry = type { i32, i32 }

@.str = private unnamed_addr constant [29 x i8] c"erase PEB %d EC %d LEB %d:%d\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"failed to erase PEB %d, error %d\00", align 1
@EINTR = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"bad physical eraseblock %d detected\00", align 1
@.str.3 = private unnamed_addr constant [43 x i8] c"no reserved/available physical eraseblocks\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"mark PEB %d as bad\00", align 1
@.str.5 = private unnamed_addr constant [52 x i8] c"no PEBs in the reserved pool, used an available PEB\00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"%d PEBs left in the reserve\00", align 1
@.str.7 = private unnamed_addr constant [35 x i8] c"last PEB from the reserve was used\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ubi_device*, %struct.ubi_work*)* @__erase_worker to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__erase_worker(%struct.ubi_device* %0, %struct.ubi_work* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ubi_device*, align 8
  %5 = alloca %struct.ubi_work*, align 8
  %6 = alloca %struct.ubi_wl_entry*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.ubi_device* %0, %struct.ubi_device** %4, align 8
  store %struct.ubi_work* %1, %struct.ubi_work** %5, align 8
  %13 = load %struct.ubi_work*, %struct.ubi_work** %5, align 8
  %14 = getelementptr inbounds %struct.ubi_work, %struct.ubi_work* %13, i32 0, i32 3
  %15 = load %struct.ubi_wl_entry*, %struct.ubi_wl_entry** %14, align 8
  store %struct.ubi_wl_entry* %15, %struct.ubi_wl_entry** %6, align 8
  %16 = load %struct.ubi_wl_entry*, %struct.ubi_wl_entry** %6, align 8
  %17 = getelementptr inbounds %struct.ubi_wl_entry, %struct.ubi_wl_entry* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %7, align 4
  %19 = load %struct.ubi_work*, %struct.ubi_work** %5, align 8
  %20 = getelementptr inbounds %struct.ubi_work, %struct.ubi_work* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* %8, align 4
  %22 = load %struct.ubi_work*, %struct.ubi_work** %5, align 8
  %23 = getelementptr inbounds %struct.ubi_work, %struct.ubi_work* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %9, align 4
  store i32 0, i32* %11, align 4
  %25 = load i32, i32* %7, align 4
  %26 = load %struct.ubi_wl_entry*, %struct.ubi_wl_entry** %6, align 8
  %27 = getelementptr inbounds %struct.ubi_wl_entry, %struct.ubi_wl_entry* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.ubi_work*, %struct.ubi_work** %5, align 8
  %30 = getelementptr inbounds %struct.ubi_work, %struct.ubi_work* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.ubi_work*, %struct.ubi_work** %5, align 8
  %33 = getelementptr inbounds %struct.ubi_work, %struct.ubi_work* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @dbg_wl(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %25, i32 %28, i32 %31, i32 %34)
  %36 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %37 = load %struct.ubi_wl_entry*, %struct.ubi_wl_entry** %6, align 8
  %38 = load %struct.ubi_work*, %struct.ubi_work** %5, align 8
  %39 = getelementptr inbounds %struct.ubi_work, %struct.ubi_work* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @sync_erase(%struct.ubi_device* %36, %struct.ubi_wl_entry* %37, i32 %40)
  store i32 %41, i32* %10, align 4
  %42 = load i32, i32* %10, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %64, label %44

44:                                               ; preds = %2
  %45 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %46 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %45, i32 0, i32 6
  %47 = call i32 @spin_lock(i32* %46)
  %48 = load %struct.ubi_wl_entry*, %struct.ubi_wl_entry** %6, align 8
  %49 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %50 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %49, i32 0, i32 8
  %51 = call i32 @wl_tree_add(%struct.ubi_wl_entry* %48, i32* %50)
  %52 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %53 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %52, i32 0, i32 7
  %54 = load i32, i32* %53, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %53, align 4
  %56 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %57 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %56, i32 0, i32 6
  %58 = call i32 @spin_unlock(i32* %57)
  %59 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %60 = call i32 @serve_prot_queue(%struct.ubi_device* %59)
  %61 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %62 = call i32 @ensure_wear_leveling(%struct.ubi_device* %61, i32 1)
  store i32 %62, i32* %10, align 4
  %63 = load i32, i32* %10, align 4
  store i32 %63, i32* %3, align 4
  br label %233

64:                                               ; preds = %2
  %65 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %66 = load i32, i32* %7, align 4
  %67 = load i32, i32* %10, align 4
  %68 = call i32 (%struct.ubi_device*, i8*, ...) @ubi_err(%struct.ubi_device* %65, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %66, i32 %67)
  %69 = load i32, i32* %10, align 4
  %70 = load i32, i32* @EINTR, align 4
  %71 = sub nsw i32 0, %70
  %72 = icmp eq i32 %69, %71
  br i1 %72, label %88, label %73

73:                                               ; preds = %64
  %74 = load i32, i32* %10, align 4
  %75 = load i32, i32* @ENOMEM, align 4
  %76 = sub nsw i32 0, %75
  %77 = icmp eq i32 %74, %76
  br i1 %77, label %88, label %78

78:                                               ; preds = %73
  %79 = load i32, i32* %10, align 4
  %80 = load i32, i32* @EAGAIN, align 4
  %81 = sub nsw i32 0, %80
  %82 = icmp eq i32 %79, %81
  br i1 %82, label %88, label %83

83:                                               ; preds = %78
  %84 = load i32, i32* %10, align 4
  %85 = load i32, i32* @EBUSY, align 4
  %86 = sub nsw i32 0, %85
  %87 = icmp eq i32 %84, %86
  br i1 %87, label %88, label %103

88:                                               ; preds = %83, %78, %73, %64
  %89 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %90 = load %struct.ubi_wl_entry*, %struct.ubi_wl_entry** %6, align 8
  %91 = load i32, i32* %8, align 4
  %92 = load i32, i32* %9, align 4
  %93 = call i32 @schedule_erase(%struct.ubi_device* %89, %struct.ubi_wl_entry* %90, i32 %91, i32 %92, i32 0, i32 0)
  store i32 %93, i32* %12, align 4
  %94 = load i32, i32* %12, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %101

96:                                               ; preds = %88
  %97 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %98 = load %struct.ubi_wl_entry*, %struct.ubi_wl_entry** %6, align 8
  %99 = call i32 @wl_entry_destroy(%struct.ubi_device* %97, %struct.ubi_wl_entry* %98)
  %100 = load i32, i32* %12, align 4
  store i32 %100, i32* %10, align 4
  br label %215

101:                                              ; preds = %88
  %102 = load i32, i32* %10, align 4
  store i32 %102, i32* %3, align 4
  br label %233

103:                                              ; preds = %83
  %104 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %105 = load %struct.ubi_wl_entry*, %struct.ubi_wl_entry** %6, align 8
  %106 = call i32 @wl_entry_destroy(%struct.ubi_device* %104, %struct.ubi_wl_entry* %105)
  %107 = load i32, i32* %10, align 4
  %108 = load i32, i32* @EIO, align 4
  %109 = sub nsw i32 0, %108
  %110 = icmp ne i32 %107, %109
  br i1 %110, label %111, label %112

111:                                              ; preds = %103
  br label %215

112:                                              ; preds = %103
  %113 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %114 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %113, i32 0, i32 5
  %115 = load i32, i32* %114, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %121, label %117

117:                                              ; preds = %112
  %118 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %119 = load i32, i32* %7, align 4
  %120 = call i32 (%struct.ubi_device*, i8*, ...) @ubi_err(%struct.ubi_device* %118, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32 %119)
  br label %215

121:                                              ; preds = %112
  %122 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %123 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %122, i32 0, i32 4
  %124 = call i32 @spin_lock(i32* %123)
  %125 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %126 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %129, label %145

129:                                              ; preds = %121
  %130 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %131 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %130, i32 0, i32 1
  %132 = load i64, i64* %131, align 8
  %133 = icmp eq i64 %132, 0
  br i1 %133, label %134, label %140

134:                                              ; preds = %129
  %135 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %136 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %135, i32 0, i32 4
  %137 = call i32 @spin_unlock(i32* %136)
  %138 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %139 = call i32 (%struct.ubi_device*, i8*, ...) @ubi_err(%struct.ubi_device* %138, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0))
  br label %215

140:                                              ; preds = %129
  %141 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %142 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %141, i32 0, i32 1
  %143 = load i64, i64* %142, align 8
  %144 = sub nsw i64 %143, 1
  store i64 %144, i64* %142, align 8
  store i32 1, i32* %11, align 4
  br label %145

145:                                              ; preds = %140, %121
  %146 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %147 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %146, i32 0, i32 4
  %148 = call i32 @spin_unlock(i32* %147)
  %149 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %150 = load i32, i32* %7, align 4
  %151 = call i32 @ubi_msg(%struct.ubi_device* %149, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i32 %150)
  %152 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %153 = load i32, i32* %7, align 4
  %154 = call i32 @ubi_io_mark_bad(%struct.ubi_device* %152, i32 %153)
  store i32 %154, i32* %10, align 4
  %155 = load i32, i32* %10, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %158

157:                                              ; preds = %145
  br label %215

158:                                              ; preds = %145
  %159 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %160 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %159, i32 0, i32 4
  %161 = call i32 @spin_lock(i32* %160)
  %162 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %163 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 8
  %165 = icmp sgt i32 %164, 0
  br i1 %165, label %166, label %179

166:                                              ; preds = %158
  %167 = load i32, i32* %11, align 4
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %174

169:                                              ; preds = %166
  %170 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %171 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %170, i32 0, i32 1
  %172 = load i64, i64* %171, align 8
  %173 = add nsw i64 %172, 1
  store i64 %173, i64* %171, align 8
  store i32 0, i32* %11, align 4
  br label %174

174:                                              ; preds = %169, %166
  %175 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %176 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 8
  %178 = sub nsw i32 %177, 1
  store i32 %178, i32* %176, align 8
  br label %179

179:                                              ; preds = %174, %158
  %180 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %181 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %180, i32 0, i32 2
  %182 = load i32, i32* %181, align 8
  %183 = add nsw i32 %182, 1
  store i32 %183, i32* %181, align 8
  %184 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %185 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %184, i32 0, i32 3
  %186 = load i32, i32* %185, align 4
  %187 = sub nsw i32 %186, 1
  store i32 %187, i32* %185, align 4
  %188 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %189 = call i32 @ubi_calculate_reserved(%struct.ubi_device* %188)
  %190 = load i32, i32* %11, align 4
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %195

192:                                              ; preds = %179
  %193 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %194 = call i32 @ubi_warn(%struct.ubi_device* %193, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.5, i64 0, i64 0))
  br label %210

195:                                              ; preds = %179
  %196 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %197 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 8
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %200, label %206

200:                                              ; preds = %195
  %201 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %202 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %203 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 8
  %205 = call i32 @ubi_msg(%struct.ubi_device* %201, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0), i32 %204)
  br label %209

206:                                              ; preds = %195
  %207 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %208 = call i32 @ubi_warn(%struct.ubi_device* %207, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.7, i64 0, i64 0))
  br label %209

209:                                              ; preds = %206, %200
  br label %210

210:                                              ; preds = %209, %192
  %211 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %212 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %211, i32 0, i32 4
  %213 = call i32 @spin_unlock(i32* %212)
  %214 = load i32, i32* %10, align 4
  store i32 %214, i32* %3, align 4
  br label %233

215:                                              ; preds = %157, %134, %117, %111, %96
  %216 = load i32, i32* %11, align 4
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %218, label %229

218:                                              ; preds = %215
  %219 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %220 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %219, i32 0, i32 4
  %221 = call i32 @spin_lock(i32* %220)
  %222 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %223 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %222, i32 0, i32 1
  %224 = load i64, i64* %223, align 8
  %225 = add nsw i64 %224, 1
  store i64 %225, i64* %223, align 8
  %226 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %227 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %226, i32 0, i32 4
  %228 = call i32 @spin_unlock(i32* %227)
  br label %229

229:                                              ; preds = %218, %215
  %230 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %231 = call i32 @ubi_ro_mode(%struct.ubi_device* %230)
  %232 = load i32, i32* %10, align 4
  store i32 %232, i32* %3, align 4
  br label %233

233:                                              ; preds = %229, %210, %101, %44
  %234 = load i32, i32* %3, align 4
  ret i32 %234
}

declare dso_local i32 @dbg_wl(i8*, i32, i32, i32, i32) #1

declare dso_local i32 @sync_erase(%struct.ubi_device*, %struct.ubi_wl_entry*, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @wl_tree_add(%struct.ubi_wl_entry*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @serve_prot_queue(%struct.ubi_device*) #1

declare dso_local i32 @ensure_wear_leveling(%struct.ubi_device*, i32) #1

declare dso_local i32 @ubi_err(%struct.ubi_device*, i8*, ...) #1

declare dso_local i32 @schedule_erase(%struct.ubi_device*, %struct.ubi_wl_entry*, i32, i32, i32, i32) #1

declare dso_local i32 @wl_entry_destroy(%struct.ubi_device*, %struct.ubi_wl_entry*) #1

declare dso_local i32 @ubi_msg(%struct.ubi_device*, i8*, i32) #1

declare dso_local i32 @ubi_io_mark_bad(%struct.ubi_device*, i32) #1

declare dso_local i32 @ubi_calculate_reserved(%struct.ubi_device*) #1

declare dso_local i32 @ubi_warn(%struct.ubi_device*, i8*) #1

declare dso_local i32 @ubi_ro_mode(%struct.ubi_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
