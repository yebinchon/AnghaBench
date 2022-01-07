; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/habanalabs/extr_debugfs.c_hl_debugfs_add_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/habanalabs/extr_debugfs.c_hl_debugfs_add_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8* }
%struct.hl_device = type { i32, %struct.hl_debugfs_entry }
%struct.hl_debugfs_entry = type { %struct.hl_debugfs_entry*, %struct.TYPE_3__*, %struct.dentry*, i32, %struct.hl_debugfs_entry*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.hl_device* }
%struct.dentry = type { i32 }
%struct.hl_dbg_device_entry = type { %struct.hl_dbg_device_entry*, %struct.TYPE_3__*, %struct.dentry*, i32, %struct.hl_dbg_device_entry*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.hl_device* }

@hl_debugfs_list = common dso_local global %struct.TYPE_3__* null, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@hl_debug_root = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"addr\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"data32\00", align 1
@hl_data32b_fops = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"set_power_state\00", align 1
@hl_power_fops = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [8 x i8] c"i2c_bus\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"i2c_addr\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"i2c_reg\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"i2c_data\00", align 1
@hl_i2c_data_fops = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [5 x i8] c"led0\00", align 1
@hl_led0_fops = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [5 x i8] c"led1\00", align 1
@hl_led1_fops = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [5 x i8] c"led2\00", align 1
@hl_led2_fops = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [7 x i8] c"device\00", align 1
@hl_device_fops = common dso_local global i32 0, align 4
@hl_debugfs_fops = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hl_debugfs_add_device(%struct.hl_device* %0) #0 {
  %2 = alloca %struct.hl_device*, align 8
  %3 = alloca %struct.hl_dbg_device_entry*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.hl_debugfs_entry*, align 8
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca i32, align 4
  store %struct.hl_device* %0, %struct.hl_device** %2, align 8
  %8 = load %struct.hl_device*, %struct.hl_device** %2, align 8
  %9 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %8, i32 0, i32 1
  %10 = bitcast %struct.hl_debugfs_entry* %9 to %struct.hl_dbg_device_entry*
  store %struct.hl_dbg_device_entry* %10, %struct.hl_dbg_device_entry** %3, align 8
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** @hl_debugfs_list, align 8
  %12 = call i32 @ARRAY_SIZE(%struct.TYPE_3__* %11)
  store i32 %12, i32* %4, align 4
  %13 = load %struct.hl_device*, %struct.hl_device** %2, align 8
  %14 = load %struct.hl_dbg_device_entry*, %struct.hl_dbg_device_entry** %3, align 8
  %15 = getelementptr inbounds %struct.hl_dbg_device_entry, %struct.hl_dbg_device_entry* %14, i32 0, i32 21
  store %struct.hl_device* %13, %struct.hl_device** %15, align 8
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call %struct.hl_debugfs_entry* @kmalloc_array(i32 %16, i32 112, i32 %17)
  %19 = bitcast %struct.hl_debugfs_entry* %18 to %struct.hl_dbg_device_entry*
  %20 = load %struct.hl_dbg_device_entry*, %struct.hl_dbg_device_entry** %3, align 8
  %21 = getelementptr inbounds %struct.hl_dbg_device_entry, %struct.hl_dbg_device_entry* %20, i32 0, i32 4
  store %struct.hl_dbg_device_entry* %19, %struct.hl_dbg_device_entry** %21, align 8
  %22 = load %struct.hl_dbg_device_entry*, %struct.hl_dbg_device_entry** %3, align 8
  %23 = getelementptr inbounds %struct.hl_dbg_device_entry, %struct.hl_dbg_device_entry* %22, i32 0, i32 4
  %24 = load %struct.hl_dbg_device_entry*, %struct.hl_dbg_device_entry** %23, align 8
  %25 = icmp ne %struct.hl_dbg_device_entry* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %1
  br label %176

27:                                               ; preds = %1
  %28 = load %struct.hl_dbg_device_entry*, %struct.hl_dbg_device_entry** %3, align 8
  %29 = getelementptr inbounds %struct.hl_dbg_device_entry, %struct.hl_dbg_device_entry* %28, i32 0, i32 20
  %30 = call i32 @INIT_LIST_HEAD(i32* %29)
  %31 = load %struct.hl_dbg_device_entry*, %struct.hl_dbg_device_entry** %3, align 8
  %32 = getelementptr inbounds %struct.hl_dbg_device_entry, %struct.hl_dbg_device_entry* %31, i32 0, i32 19
  %33 = call i32 @INIT_LIST_HEAD(i32* %32)
  %34 = load %struct.hl_dbg_device_entry*, %struct.hl_dbg_device_entry** %3, align 8
  %35 = getelementptr inbounds %struct.hl_dbg_device_entry, %struct.hl_dbg_device_entry* %34, i32 0, i32 18
  %36 = call i32 @INIT_LIST_HEAD(i32* %35)
  %37 = load %struct.hl_dbg_device_entry*, %struct.hl_dbg_device_entry** %3, align 8
  %38 = getelementptr inbounds %struct.hl_dbg_device_entry, %struct.hl_dbg_device_entry* %37, i32 0, i32 17
  %39 = call i32 @INIT_LIST_HEAD(i32* %38)
  %40 = load %struct.hl_dbg_device_entry*, %struct.hl_dbg_device_entry** %3, align 8
  %41 = getelementptr inbounds %struct.hl_dbg_device_entry, %struct.hl_dbg_device_entry* %40, i32 0, i32 16
  %42 = call i32 @INIT_LIST_HEAD(i32* %41)
  %43 = load %struct.hl_dbg_device_entry*, %struct.hl_dbg_device_entry** %3, align 8
  %44 = getelementptr inbounds %struct.hl_dbg_device_entry, %struct.hl_dbg_device_entry* %43, i32 0, i32 15
  %45 = call i32 @INIT_LIST_HEAD(i32* %44)
  %46 = load %struct.hl_dbg_device_entry*, %struct.hl_dbg_device_entry** %3, align 8
  %47 = getelementptr inbounds %struct.hl_dbg_device_entry, %struct.hl_dbg_device_entry* %46, i32 0, i32 14
  %48 = call i32 @mutex_init(i32* %47)
  %49 = load %struct.hl_dbg_device_entry*, %struct.hl_dbg_device_entry** %3, align 8
  %50 = getelementptr inbounds %struct.hl_dbg_device_entry, %struct.hl_dbg_device_entry* %49, i32 0, i32 13
  %51 = call i32 @spin_lock_init(i32* %50)
  %52 = load %struct.hl_dbg_device_entry*, %struct.hl_dbg_device_entry** %3, align 8
  %53 = getelementptr inbounds %struct.hl_dbg_device_entry, %struct.hl_dbg_device_entry* %52, i32 0, i32 12
  %54 = call i32 @spin_lock_init(i32* %53)
  %55 = load %struct.hl_dbg_device_entry*, %struct.hl_dbg_device_entry** %3, align 8
  %56 = getelementptr inbounds %struct.hl_dbg_device_entry, %struct.hl_dbg_device_entry* %55, i32 0, i32 11
  %57 = call i32 @spin_lock_init(i32* %56)
  %58 = load %struct.hl_dbg_device_entry*, %struct.hl_dbg_device_entry** %3, align 8
  %59 = getelementptr inbounds %struct.hl_dbg_device_entry, %struct.hl_dbg_device_entry* %58, i32 0, i32 10
  %60 = call i32 @spin_lock_init(i32* %59)
  %61 = load %struct.hl_dbg_device_entry*, %struct.hl_dbg_device_entry** %3, align 8
  %62 = getelementptr inbounds %struct.hl_dbg_device_entry, %struct.hl_dbg_device_entry* %61, i32 0, i32 9
  %63 = call i32 @spin_lock_init(i32* %62)
  %64 = load %struct.hl_device*, %struct.hl_device** %2, align 8
  %65 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @dev_name(i32 %66)
  %68 = load i32, i32* @hl_debug_root, align 4
  %69 = call i32 @debugfs_create_dir(i32 %67, i32 %68)
  %70 = load %struct.hl_dbg_device_entry*, %struct.hl_dbg_device_entry** %3, align 8
  %71 = getelementptr inbounds %struct.hl_dbg_device_entry, %struct.hl_dbg_device_entry* %70, i32 0, i32 3
  store i32 %69, i32* %71, align 8
  %72 = load %struct.hl_dbg_device_entry*, %struct.hl_dbg_device_entry** %3, align 8
  %73 = getelementptr inbounds %struct.hl_dbg_device_entry, %struct.hl_dbg_device_entry* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.hl_dbg_device_entry*, %struct.hl_dbg_device_entry** %3, align 8
  %76 = getelementptr inbounds %struct.hl_dbg_device_entry, %struct.hl_dbg_device_entry* %75, i32 0, i32 8
  %77 = call i32 @debugfs_create_x64(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 420, i32 %74, i32* %76)
  %78 = load %struct.hl_dbg_device_entry*, %struct.hl_dbg_device_entry** %3, align 8
  %79 = getelementptr inbounds %struct.hl_dbg_device_entry, %struct.hl_dbg_device_entry* %78, i32 0, i32 3
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.hl_dbg_device_entry*, %struct.hl_dbg_device_entry** %3, align 8
  %82 = bitcast %struct.hl_dbg_device_entry* %81 to %struct.hl_debugfs_entry*
  %83 = call %struct.dentry* @debugfs_create_file(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 420, i32 %80, %struct.hl_debugfs_entry* %82, i32* @hl_data32b_fops)
  %84 = load %struct.hl_dbg_device_entry*, %struct.hl_dbg_device_entry** %3, align 8
  %85 = getelementptr inbounds %struct.hl_dbg_device_entry, %struct.hl_dbg_device_entry* %84, i32 0, i32 3
  %86 = load i32, i32* %85, align 8
  %87 = load %struct.hl_dbg_device_entry*, %struct.hl_dbg_device_entry** %3, align 8
  %88 = bitcast %struct.hl_dbg_device_entry* %87 to %struct.hl_debugfs_entry*
  %89 = call %struct.dentry* @debugfs_create_file(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32 128, i32 %86, %struct.hl_debugfs_entry* %88, i32* @hl_power_fops)
  %90 = load %struct.hl_dbg_device_entry*, %struct.hl_dbg_device_entry** %3, align 8
  %91 = getelementptr inbounds %struct.hl_dbg_device_entry, %struct.hl_dbg_device_entry* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 8
  %93 = load %struct.hl_dbg_device_entry*, %struct.hl_dbg_device_entry** %3, align 8
  %94 = getelementptr inbounds %struct.hl_dbg_device_entry, %struct.hl_dbg_device_entry* %93, i32 0, i32 7
  %95 = call i32 @debugfs_create_u8(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 420, i32 %92, i32* %94)
  %96 = load %struct.hl_dbg_device_entry*, %struct.hl_dbg_device_entry** %3, align 8
  %97 = getelementptr inbounds %struct.hl_dbg_device_entry, %struct.hl_dbg_device_entry* %96, i32 0, i32 3
  %98 = load i32, i32* %97, align 8
  %99 = load %struct.hl_dbg_device_entry*, %struct.hl_dbg_device_entry** %3, align 8
  %100 = getelementptr inbounds %struct.hl_dbg_device_entry, %struct.hl_dbg_device_entry* %99, i32 0, i32 6
  %101 = call i32 @debugfs_create_u8(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i32 420, i32 %98, i32* %100)
  %102 = load %struct.hl_dbg_device_entry*, %struct.hl_dbg_device_entry** %3, align 8
  %103 = getelementptr inbounds %struct.hl_dbg_device_entry, %struct.hl_dbg_device_entry* %102, i32 0, i32 3
  %104 = load i32, i32* %103, align 8
  %105 = load %struct.hl_dbg_device_entry*, %struct.hl_dbg_device_entry** %3, align 8
  %106 = getelementptr inbounds %struct.hl_dbg_device_entry, %struct.hl_dbg_device_entry* %105, i32 0, i32 5
  %107 = call i32 @debugfs_create_u8(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i32 420, i32 %104, i32* %106)
  %108 = load %struct.hl_dbg_device_entry*, %struct.hl_dbg_device_entry** %3, align 8
  %109 = getelementptr inbounds %struct.hl_dbg_device_entry, %struct.hl_dbg_device_entry* %108, i32 0, i32 3
  %110 = load i32, i32* %109, align 8
  %111 = load %struct.hl_dbg_device_entry*, %struct.hl_dbg_device_entry** %3, align 8
  %112 = bitcast %struct.hl_dbg_device_entry* %111 to %struct.hl_debugfs_entry*
  %113 = call %struct.dentry* @debugfs_create_file(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i32 420, i32 %110, %struct.hl_debugfs_entry* %112, i32* @hl_i2c_data_fops)
  %114 = load %struct.hl_dbg_device_entry*, %struct.hl_dbg_device_entry** %3, align 8
  %115 = getelementptr inbounds %struct.hl_dbg_device_entry, %struct.hl_dbg_device_entry* %114, i32 0, i32 3
  %116 = load i32, i32* %115, align 8
  %117 = load %struct.hl_dbg_device_entry*, %struct.hl_dbg_device_entry** %3, align 8
  %118 = bitcast %struct.hl_dbg_device_entry* %117 to %struct.hl_debugfs_entry*
  %119 = call %struct.dentry* @debugfs_create_file(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i32 128, i32 %116, %struct.hl_debugfs_entry* %118, i32* @hl_led0_fops)
  %120 = load %struct.hl_dbg_device_entry*, %struct.hl_dbg_device_entry** %3, align 8
  %121 = getelementptr inbounds %struct.hl_dbg_device_entry, %struct.hl_dbg_device_entry* %120, i32 0, i32 3
  %122 = load i32, i32* %121, align 8
  %123 = load %struct.hl_dbg_device_entry*, %struct.hl_dbg_device_entry** %3, align 8
  %124 = bitcast %struct.hl_dbg_device_entry* %123 to %struct.hl_debugfs_entry*
  %125 = call %struct.dentry* @debugfs_create_file(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i32 128, i32 %122, %struct.hl_debugfs_entry* %124, i32* @hl_led1_fops)
  %126 = load %struct.hl_dbg_device_entry*, %struct.hl_dbg_device_entry** %3, align 8
  %127 = getelementptr inbounds %struct.hl_dbg_device_entry, %struct.hl_dbg_device_entry* %126, i32 0, i32 3
  %128 = load i32, i32* %127, align 8
  %129 = load %struct.hl_dbg_device_entry*, %struct.hl_dbg_device_entry** %3, align 8
  %130 = bitcast %struct.hl_dbg_device_entry* %129 to %struct.hl_debugfs_entry*
  %131 = call %struct.dentry* @debugfs_create_file(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i32 128, i32 %128, %struct.hl_debugfs_entry* %130, i32* @hl_led2_fops)
  %132 = load %struct.hl_dbg_device_entry*, %struct.hl_dbg_device_entry** %3, align 8
  %133 = getelementptr inbounds %struct.hl_dbg_device_entry, %struct.hl_dbg_device_entry* %132, i32 0, i32 3
  %134 = load i32, i32* %133, align 8
  %135 = load %struct.hl_dbg_device_entry*, %struct.hl_dbg_device_entry** %3, align 8
  %136 = bitcast %struct.hl_dbg_device_entry* %135 to %struct.hl_debugfs_entry*
  %137 = call %struct.dentry* @debugfs_create_file(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0), i32 128, i32 %134, %struct.hl_debugfs_entry* %136, i32* @hl_device_fops)
  store i32 0, i32* %7, align 4
  %138 = load %struct.hl_dbg_device_entry*, %struct.hl_dbg_device_entry** %3, align 8
  %139 = getelementptr inbounds %struct.hl_dbg_device_entry, %struct.hl_dbg_device_entry* %138, i32 0, i32 4
  %140 = load %struct.hl_dbg_device_entry*, %struct.hl_dbg_device_entry** %139, align 8
  %141 = bitcast %struct.hl_dbg_device_entry* %140 to %struct.hl_debugfs_entry*
  store %struct.hl_debugfs_entry* %141, %struct.hl_debugfs_entry** %5, align 8
  br label %142

142:                                              ; preds = %171, %27
  %143 = load i32, i32* %7, align 4
  %144 = load i32, i32* %4, align 4
  %145 = icmp slt i32 %143, %144
  br i1 %145, label %146, label %176

146:                                              ; preds = %142
  %147 = load %struct.TYPE_3__*, %struct.TYPE_3__** @hl_debugfs_list, align 8
  %148 = load i32, i32* %7, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %147, i64 %149
  %151 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %150, i32 0, i32 0
  %152 = load i8*, i8** %151, align 8
  %153 = load %struct.hl_dbg_device_entry*, %struct.hl_dbg_device_entry** %3, align 8
  %154 = getelementptr inbounds %struct.hl_dbg_device_entry, %struct.hl_dbg_device_entry* %153, i32 0, i32 3
  %155 = load i32, i32* %154, align 8
  %156 = load %struct.hl_debugfs_entry*, %struct.hl_debugfs_entry** %5, align 8
  %157 = call %struct.dentry* @debugfs_create_file(i8* %152, i32 292, i32 %155, %struct.hl_debugfs_entry* %156, i32* @hl_debugfs_fops)
  store %struct.dentry* %157, %struct.dentry** %6, align 8
  %158 = load %struct.dentry*, %struct.dentry** %6, align 8
  %159 = load %struct.hl_debugfs_entry*, %struct.hl_debugfs_entry** %5, align 8
  %160 = getelementptr inbounds %struct.hl_debugfs_entry, %struct.hl_debugfs_entry* %159, i32 0, i32 2
  store %struct.dentry* %158, %struct.dentry** %160, align 8
  %161 = load %struct.TYPE_3__*, %struct.TYPE_3__** @hl_debugfs_list, align 8
  %162 = load i32, i32* %7, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %161, i64 %163
  %165 = load %struct.hl_debugfs_entry*, %struct.hl_debugfs_entry** %5, align 8
  %166 = getelementptr inbounds %struct.hl_debugfs_entry, %struct.hl_debugfs_entry* %165, i32 0, i32 1
  store %struct.TYPE_3__* %164, %struct.TYPE_3__** %166, align 8
  %167 = load %struct.hl_dbg_device_entry*, %struct.hl_dbg_device_entry** %3, align 8
  %168 = bitcast %struct.hl_dbg_device_entry* %167 to %struct.hl_debugfs_entry*
  %169 = load %struct.hl_debugfs_entry*, %struct.hl_debugfs_entry** %5, align 8
  %170 = getelementptr inbounds %struct.hl_debugfs_entry, %struct.hl_debugfs_entry* %169, i32 0, i32 0
  store %struct.hl_debugfs_entry* %168, %struct.hl_debugfs_entry** %170, align 8
  br label %171

171:                                              ; preds = %146
  %172 = load i32, i32* %7, align 4
  %173 = add nsw i32 %172, 1
  store i32 %173, i32* %7, align 4
  %174 = load %struct.hl_debugfs_entry*, %struct.hl_debugfs_entry** %5, align 8
  %175 = getelementptr inbounds %struct.hl_debugfs_entry, %struct.hl_debugfs_entry* %174, i32 1
  store %struct.hl_debugfs_entry* %175, %struct.hl_debugfs_entry** %5, align 8
  br label %142

176:                                              ; preds = %26, %142
  ret void
}

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_3__*) #1

declare dso_local %struct.hl_debugfs_entry* @kmalloc_array(i32, i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @debugfs_create_dir(i32, i32) #1

declare dso_local i32 @dev_name(i32) #1

declare dso_local i32 @debugfs_create_x64(i8*, i32, i32, i32*) #1

declare dso_local %struct.dentry* @debugfs_create_file(i8*, i32, i32, %struct.hl_debugfs_entry*, i32*) #1

declare dso_local i32 @debugfs_create_u8(i8*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
