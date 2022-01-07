; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/ubi/extr_debug.c_ubi_debugfs_init_dev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/ubi/extr_debug.c_ubi_debugfs_init_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubi_device = type { i64, %struct.ubi_debug_info }
%struct.ubi_debug_info = type { i8*, %struct.dentry*, %struct.dentry*, %struct.dentry*, %struct.dentry*, %struct.dentry*, %struct.dentry*, %struct.dentry*, %struct.dentry*, %struct.dentry*, %struct.dentry* }
%struct.dentry = type { i32 }

@CONFIG_DEBUG_FS = common dso_local global i32 0, align 4
@UBI_DFS_DIR_LEN = common dso_local global i32 0, align 4
@UBI_DFS_DIR_NAME = common dso_local global i8* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@dfs_rootdir = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"chk_gen\00", align 1
@S_IWUSR = common dso_local global i32 0, align 4
@dfs_fops = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"chk_io\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"chk_fastmap\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"tst_disable_bgt\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"tst_emulate_bitflips\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"tst_emulate_io_failures\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"tst_emulate_power_cut\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"tst_emulate_power_cut_min\00", align 1
@.str.8 = private unnamed_addr constant [26 x i8] c"tst_emulate_power_cut_max\00", align 1
@.str.9 = private unnamed_addr constant [26 x i8] c"detailed_erase_block_info\00", align 1
@S_IRUSR = common dso_local global i32 0, align 4
@eraseblk_count_fops = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [56 x i8] c"cannot create \22%s\22 debugfs file or directory, error %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ubi_debugfs_init_dev(%struct.ubi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ubi_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.dentry*, align 8
  %9 = alloca %struct.ubi_debug_info*, align 8
  store %struct.ubi_device* %0, %struct.ubi_device** %3, align 8
  %10 = load %struct.ubi_device*, %struct.ubi_device** %3, align 8
  %11 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  store i64 %12, i64* %6, align 8
  %13 = load %struct.ubi_device*, %struct.ubi_device** %3, align 8
  %14 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %13, i32 0, i32 1
  store %struct.ubi_debug_info* %14, %struct.ubi_debug_info** %9, align 8
  %15 = load i32, i32* @CONFIG_DEBUG_FS, align 4
  %16 = call i32 @IS_ENABLED(i32 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %231

19:                                               ; preds = %1
  %20 = load %struct.ubi_debug_info*, %struct.ubi_debug_info** %9, align 8
  %21 = getelementptr inbounds %struct.ubi_debug_info, %struct.ubi_debug_info* %20, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  %23 = load i32, i32* @UBI_DFS_DIR_LEN, align 4
  %24 = add nsw i32 %23, 1
  %25 = load i8*, i8** @UBI_DFS_DIR_NAME, align 8
  %26 = load %struct.ubi_device*, %struct.ubi_device** %3, align 8
  %27 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = call i32 @snprintf(i8* %22, i32 %24, i8* %25, i64 %28)
  store i32 %29, i32* %5, align 4
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* @UBI_DFS_DIR_LEN, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %38

33:                                               ; preds = %19
  %34 = load i8*, i8** @UBI_DFS_DIR_NAME, align 8
  store i8* %34, i8** %7, align 8
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  %37 = call %struct.dentry* @ERR_PTR(i32 %36)
  store %struct.dentry* %37, %struct.dentry** %8, align 8
  br label %215

38:                                               ; preds = %19
  %39 = load %struct.ubi_debug_info*, %struct.ubi_debug_info** %9, align 8
  %40 = getelementptr inbounds %struct.ubi_debug_info, %struct.ubi_debug_info* %39, i32 0, i32 0
  %41 = load i8*, i8** %40, align 8
  store i8* %41, i8** %7, align 8
  %42 = load i8*, i8** %7, align 8
  %43 = load i32, i32* @dfs_rootdir, align 4
  %44 = call %struct.dentry* @debugfs_create_dir(i8* %42, i32 %43)
  store %struct.dentry* %44, %struct.dentry** %8, align 8
  %45 = load %struct.dentry*, %struct.dentry** %8, align 8
  %46 = call i64 @IS_ERR_OR_NULL(%struct.dentry* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %38
  br label %215

49:                                               ; preds = %38
  %50 = load %struct.dentry*, %struct.dentry** %8, align 8
  %51 = load %struct.ubi_debug_info*, %struct.ubi_debug_info** %9, align 8
  %52 = getelementptr inbounds %struct.ubi_debug_info, %struct.ubi_debug_info* %51, i32 0, i32 1
  store %struct.dentry* %50, %struct.dentry** %52, align 8
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8** %7, align 8
  %53 = load i8*, i8** %7, align 8
  %54 = load i32, i32* @S_IWUSR, align 4
  %55 = load %struct.ubi_debug_info*, %struct.ubi_debug_info** %9, align 8
  %56 = getelementptr inbounds %struct.ubi_debug_info, %struct.ubi_debug_info* %55, i32 0, i32 1
  %57 = load %struct.dentry*, %struct.dentry** %56, align 8
  %58 = load i64, i64* %6, align 8
  %59 = inttoptr i64 %58 to i8*
  %60 = call %struct.dentry* @debugfs_create_file(i8* %53, i32 %54, %struct.dentry* %57, i8* %59, i32* @dfs_fops)
  store %struct.dentry* %60, %struct.dentry** %8, align 8
  %61 = load %struct.dentry*, %struct.dentry** %8, align 8
  %62 = call i64 @IS_ERR_OR_NULL(%struct.dentry* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %49
  br label %210

65:                                               ; preds = %49
  %66 = load %struct.dentry*, %struct.dentry** %8, align 8
  %67 = load %struct.ubi_debug_info*, %struct.ubi_debug_info** %9, align 8
  %68 = getelementptr inbounds %struct.ubi_debug_info, %struct.ubi_debug_info* %67, i32 0, i32 10
  store %struct.dentry* %66, %struct.dentry** %68, align 8
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8** %7, align 8
  %69 = load i8*, i8** %7, align 8
  %70 = load i32, i32* @S_IWUSR, align 4
  %71 = load %struct.ubi_debug_info*, %struct.ubi_debug_info** %9, align 8
  %72 = getelementptr inbounds %struct.ubi_debug_info, %struct.ubi_debug_info* %71, i32 0, i32 1
  %73 = load %struct.dentry*, %struct.dentry** %72, align 8
  %74 = load i64, i64* %6, align 8
  %75 = inttoptr i64 %74 to i8*
  %76 = call %struct.dentry* @debugfs_create_file(i8* %69, i32 %70, %struct.dentry* %73, i8* %75, i32* @dfs_fops)
  store %struct.dentry* %76, %struct.dentry** %8, align 8
  %77 = load %struct.dentry*, %struct.dentry** %8, align 8
  %78 = call i64 @IS_ERR_OR_NULL(%struct.dentry* %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %65
  br label %210

81:                                               ; preds = %65
  %82 = load %struct.dentry*, %struct.dentry** %8, align 8
  %83 = load %struct.ubi_debug_info*, %struct.ubi_debug_info** %9, align 8
  %84 = getelementptr inbounds %struct.ubi_debug_info, %struct.ubi_debug_info* %83, i32 0, i32 9
  store %struct.dentry* %82, %struct.dentry** %84, align 8
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i8** %7, align 8
  %85 = load i8*, i8** %7, align 8
  %86 = load i32, i32* @S_IWUSR, align 4
  %87 = load %struct.ubi_debug_info*, %struct.ubi_debug_info** %9, align 8
  %88 = getelementptr inbounds %struct.ubi_debug_info, %struct.ubi_debug_info* %87, i32 0, i32 1
  %89 = load %struct.dentry*, %struct.dentry** %88, align 8
  %90 = load i64, i64* %6, align 8
  %91 = inttoptr i64 %90 to i8*
  %92 = call %struct.dentry* @debugfs_create_file(i8* %85, i32 %86, %struct.dentry* %89, i8* %91, i32* @dfs_fops)
  store %struct.dentry* %92, %struct.dentry** %8, align 8
  %93 = load %struct.dentry*, %struct.dentry** %8, align 8
  %94 = call i64 @IS_ERR_OR_NULL(%struct.dentry* %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %81
  br label %210

97:                                               ; preds = %81
  %98 = load %struct.dentry*, %struct.dentry** %8, align 8
  %99 = load %struct.ubi_debug_info*, %struct.ubi_debug_info** %9, align 8
  %100 = getelementptr inbounds %struct.ubi_debug_info, %struct.ubi_debug_info* %99, i32 0, i32 8
  store %struct.dentry* %98, %struct.dentry** %100, align 8
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i8** %7, align 8
  %101 = load i8*, i8** %7, align 8
  %102 = load i32, i32* @S_IWUSR, align 4
  %103 = load %struct.ubi_debug_info*, %struct.ubi_debug_info** %9, align 8
  %104 = getelementptr inbounds %struct.ubi_debug_info, %struct.ubi_debug_info* %103, i32 0, i32 1
  %105 = load %struct.dentry*, %struct.dentry** %104, align 8
  %106 = load i64, i64* %6, align 8
  %107 = inttoptr i64 %106 to i8*
  %108 = call %struct.dentry* @debugfs_create_file(i8* %101, i32 %102, %struct.dentry* %105, i8* %107, i32* @dfs_fops)
  store %struct.dentry* %108, %struct.dentry** %8, align 8
  %109 = load %struct.dentry*, %struct.dentry** %8, align 8
  %110 = call i64 @IS_ERR_OR_NULL(%struct.dentry* %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %97
  br label %210

113:                                              ; preds = %97
  %114 = load %struct.dentry*, %struct.dentry** %8, align 8
  %115 = load %struct.ubi_debug_info*, %struct.ubi_debug_info** %9, align 8
  %116 = getelementptr inbounds %struct.ubi_debug_info, %struct.ubi_debug_info* %115, i32 0, i32 7
  store %struct.dentry* %114, %struct.dentry** %116, align 8
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i8** %7, align 8
  %117 = load i8*, i8** %7, align 8
  %118 = load i32, i32* @S_IWUSR, align 4
  %119 = load %struct.ubi_debug_info*, %struct.ubi_debug_info** %9, align 8
  %120 = getelementptr inbounds %struct.ubi_debug_info, %struct.ubi_debug_info* %119, i32 0, i32 1
  %121 = load %struct.dentry*, %struct.dentry** %120, align 8
  %122 = load i64, i64* %6, align 8
  %123 = inttoptr i64 %122 to i8*
  %124 = call %struct.dentry* @debugfs_create_file(i8* %117, i32 %118, %struct.dentry* %121, i8* %123, i32* @dfs_fops)
  store %struct.dentry* %124, %struct.dentry** %8, align 8
  %125 = load %struct.dentry*, %struct.dentry** %8, align 8
  %126 = call i64 @IS_ERR_OR_NULL(%struct.dentry* %125)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %129

128:                                              ; preds = %113
  br label %210

129:                                              ; preds = %113
  %130 = load %struct.dentry*, %struct.dentry** %8, align 8
  %131 = load %struct.ubi_debug_info*, %struct.ubi_debug_info** %9, align 8
  %132 = getelementptr inbounds %struct.ubi_debug_info, %struct.ubi_debug_info* %131, i32 0, i32 6
  store %struct.dentry* %130, %struct.dentry** %132, align 8
  store i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0), i8** %7, align 8
  %133 = load i8*, i8** %7, align 8
  %134 = load i32, i32* @S_IWUSR, align 4
  %135 = load %struct.ubi_debug_info*, %struct.ubi_debug_info** %9, align 8
  %136 = getelementptr inbounds %struct.ubi_debug_info, %struct.ubi_debug_info* %135, i32 0, i32 1
  %137 = load %struct.dentry*, %struct.dentry** %136, align 8
  %138 = load i64, i64* %6, align 8
  %139 = inttoptr i64 %138 to i8*
  %140 = call %struct.dentry* @debugfs_create_file(i8* %133, i32 %134, %struct.dentry* %137, i8* %139, i32* @dfs_fops)
  store %struct.dentry* %140, %struct.dentry** %8, align 8
  %141 = load %struct.dentry*, %struct.dentry** %8, align 8
  %142 = call i64 @IS_ERR_OR_NULL(%struct.dentry* %141)
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %145

144:                                              ; preds = %129
  br label %210

145:                                              ; preds = %129
  %146 = load %struct.dentry*, %struct.dentry** %8, align 8
  %147 = load %struct.ubi_debug_info*, %struct.ubi_debug_info** %9, align 8
  %148 = getelementptr inbounds %struct.ubi_debug_info, %struct.ubi_debug_info* %147, i32 0, i32 5
  store %struct.dentry* %146, %struct.dentry** %148, align 8
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0), i8** %7, align 8
  %149 = load i8*, i8** %7, align 8
  %150 = load i32, i32* @S_IWUSR, align 4
  %151 = load %struct.ubi_debug_info*, %struct.ubi_debug_info** %9, align 8
  %152 = getelementptr inbounds %struct.ubi_debug_info, %struct.ubi_debug_info* %151, i32 0, i32 1
  %153 = load %struct.dentry*, %struct.dentry** %152, align 8
  %154 = load i64, i64* %6, align 8
  %155 = inttoptr i64 %154 to i8*
  %156 = call %struct.dentry* @debugfs_create_file(i8* %149, i32 %150, %struct.dentry* %153, i8* %155, i32* @dfs_fops)
  store %struct.dentry* %156, %struct.dentry** %8, align 8
  %157 = load %struct.dentry*, %struct.dentry** %8, align 8
  %158 = call i64 @IS_ERR_OR_NULL(%struct.dentry* %157)
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %161

160:                                              ; preds = %145
  br label %210

161:                                              ; preds = %145
  %162 = load %struct.dentry*, %struct.dentry** %8, align 8
  %163 = load %struct.ubi_debug_info*, %struct.ubi_debug_info** %9, align 8
  %164 = getelementptr inbounds %struct.ubi_debug_info, %struct.ubi_debug_info* %163, i32 0, i32 4
  store %struct.dentry* %162, %struct.dentry** %164, align 8
  store i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0), i8** %7, align 8
  %165 = load i8*, i8** %7, align 8
  %166 = load i32, i32* @S_IWUSR, align 4
  %167 = load %struct.ubi_debug_info*, %struct.ubi_debug_info** %9, align 8
  %168 = getelementptr inbounds %struct.ubi_debug_info, %struct.ubi_debug_info* %167, i32 0, i32 1
  %169 = load %struct.dentry*, %struct.dentry** %168, align 8
  %170 = load i64, i64* %6, align 8
  %171 = inttoptr i64 %170 to i8*
  %172 = call %struct.dentry* @debugfs_create_file(i8* %165, i32 %166, %struct.dentry* %169, i8* %171, i32* @dfs_fops)
  store %struct.dentry* %172, %struct.dentry** %8, align 8
  %173 = load %struct.dentry*, %struct.dentry** %8, align 8
  %174 = call i64 @IS_ERR_OR_NULL(%struct.dentry* %173)
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %176, label %177

176:                                              ; preds = %161
  br label %210

177:                                              ; preds = %161
  %178 = load %struct.dentry*, %struct.dentry** %8, align 8
  %179 = load %struct.ubi_debug_info*, %struct.ubi_debug_info** %9, align 8
  %180 = getelementptr inbounds %struct.ubi_debug_info, %struct.ubi_debug_info* %179, i32 0, i32 3
  store %struct.dentry* %178, %struct.dentry** %180, align 8
  store i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i64 0, i64 0), i8** %7, align 8
  %181 = load i8*, i8** %7, align 8
  %182 = load i32, i32* @S_IWUSR, align 4
  %183 = load %struct.ubi_debug_info*, %struct.ubi_debug_info** %9, align 8
  %184 = getelementptr inbounds %struct.ubi_debug_info, %struct.ubi_debug_info* %183, i32 0, i32 1
  %185 = load %struct.dentry*, %struct.dentry** %184, align 8
  %186 = load i64, i64* %6, align 8
  %187 = inttoptr i64 %186 to i8*
  %188 = call %struct.dentry* @debugfs_create_file(i8* %181, i32 %182, %struct.dentry* %185, i8* %187, i32* @dfs_fops)
  store %struct.dentry* %188, %struct.dentry** %8, align 8
  %189 = load %struct.dentry*, %struct.dentry** %8, align 8
  %190 = call i64 @IS_ERR_OR_NULL(%struct.dentry* %189)
  %191 = icmp ne i64 %190, 0
  br i1 %191, label %192, label %193

192:                                              ; preds = %177
  br label %210

193:                                              ; preds = %177
  %194 = load %struct.dentry*, %struct.dentry** %8, align 8
  %195 = load %struct.ubi_debug_info*, %struct.ubi_debug_info** %9, align 8
  %196 = getelementptr inbounds %struct.ubi_debug_info, %struct.ubi_debug_info* %195, i32 0, i32 2
  store %struct.dentry* %194, %struct.dentry** %196, align 8
  store i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.9, i64 0, i64 0), i8** %7, align 8
  %197 = load i8*, i8** %7, align 8
  %198 = load i32, i32* @S_IRUSR, align 4
  %199 = load %struct.ubi_debug_info*, %struct.ubi_debug_info** %9, align 8
  %200 = getelementptr inbounds %struct.ubi_debug_info, %struct.ubi_debug_info* %199, i32 0, i32 1
  %201 = load %struct.dentry*, %struct.dentry** %200, align 8
  %202 = load i64, i64* %6, align 8
  %203 = inttoptr i64 %202 to i8*
  %204 = call %struct.dentry* @debugfs_create_file(i8* %197, i32 %198, %struct.dentry* %201, i8* %203, i32* @eraseblk_count_fops)
  store %struct.dentry* %204, %struct.dentry** %8, align 8
  %205 = load %struct.dentry*, %struct.dentry** %8, align 8
  %206 = call i64 @IS_ERR_OR_NULL(%struct.dentry* %205)
  %207 = icmp ne i64 %206, 0
  br i1 %207, label %208, label %209

208:                                              ; preds = %193
  br label %210

209:                                              ; preds = %193
  store i32 0, i32* %2, align 4
  br label %231

210:                                              ; preds = %208, %192, %176, %160, %144, %128, %112, %96, %80, %64
  %211 = load %struct.ubi_debug_info*, %struct.ubi_debug_info** %9, align 8
  %212 = getelementptr inbounds %struct.ubi_debug_info, %struct.ubi_debug_info* %211, i32 0, i32 1
  %213 = load %struct.dentry*, %struct.dentry** %212, align 8
  %214 = call i32 @debugfs_remove_recursive(%struct.dentry* %213)
  br label %215

215:                                              ; preds = %210, %48, %33
  %216 = load %struct.dentry*, %struct.dentry** %8, align 8
  %217 = icmp ne %struct.dentry* %216, null
  br i1 %217, label %218, label %221

218:                                              ; preds = %215
  %219 = load %struct.dentry*, %struct.dentry** %8, align 8
  %220 = call i32 @PTR_ERR(%struct.dentry* %219)
  br label %224

221:                                              ; preds = %215
  %222 = load i32, i32* @ENODEV, align 4
  %223 = sub nsw i32 0, %222
  br label %224

224:                                              ; preds = %221, %218
  %225 = phi i32 [ %220, %218 ], [ %223, %221 ]
  store i32 %225, i32* %4, align 4
  %226 = load %struct.ubi_device*, %struct.ubi_device** %3, align 8
  %227 = load i8*, i8** %7, align 8
  %228 = load i32, i32* %4, align 4
  %229 = call i32 @ubi_err(%struct.ubi_device* %226, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.10, i64 0, i64 0), i8* %227, i32 %228)
  %230 = load i32, i32* %4, align 4
  store i32 %230, i32* %2, align 4
  br label %231

231:                                              ; preds = %224, %209, %18
  %232 = load i32, i32* %2, align 4
  ret i32 %232
}

declare dso_local i32 @IS_ENABLED(i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i64) #1

declare dso_local %struct.dentry* @ERR_PTR(i32) #1

declare dso_local %struct.dentry* @debugfs_create_dir(i8*, i32) #1

declare dso_local i64 @IS_ERR_OR_NULL(%struct.dentry*) #1

declare dso_local %struct.dentry* @debugfs_create_file(i8*, i32, %struct.dentry*, i8*, i32*) #1

declare dso_local i32 @debugfs_remove_recursive(%struct.dentry*) #1

declare dso_local i32 @PTR_ERR(%struct.dentry*) #1

declare dso_local i32 @ubi_err(%struct.ubi_device*, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
