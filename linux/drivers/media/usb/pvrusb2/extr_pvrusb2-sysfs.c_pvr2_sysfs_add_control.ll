; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/pvrusb2/extr_pvrusb2-sysfs.c_pvr2_sysfs_add_control.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/pvrusb2/extr_pvrusb2-sysfs.c_pvr2_sysfs_add_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pvr2_sysfs = type { %struct.TYPE_20__*, %struct.pvr2_sysfs_ctl_item*, %struct.pvr2_sysfs_ctl_item*, %struct.TYPE_21__ }
%struct.TYPE_20__ = type { i32 }
%struct.pvr2_sysfs_ctl_item = type { i32, i32, %struct.TYPE_16__, %struct.TYPE_17__**, i64*, %struct.TYPE_19__, %struct.TYPE_25__, %struct.TYPE_24__, %struct.TYPE_18__, %struct.TYPE_15__, %struct.TYPE_14__, %struct.TYPE_26__, %struct.TYPE_23__, %struct.TYPE_22__, %struct.pvr2_sysfs_ctl_item*, %struct.pvr2_sysfs*, %struct.pvr2_ctrl* }
%struct.TYPE_16__ = type { %struct.TYPE_17__**, i64* }
%struct.TYPE_17__ = type { i8*, i32 }
%struct.TYPE_19__ = type { %struct.TYPE_17__, i32 }
%struct.TYPE_25__ = type { %struct.TYPE_17__, i32 }
%struct.TYPE_24__ = type { %struct.TYPE_17__, i32 }
%struct.TYPE_18__ = type { %struct.TYPE_17__, i32 }
%struct.TYPE_15__ = type { i32, i32, %struct.TYPE_17__ }
%struct.TYPE_14__ = type { i32, i32, %struct.TYPE_17__ }
%struct.TYPE_26__ = type { %struct.TYPE_17__, i32 }
%struct.TYPE_23__ = type { %struct.TYPE_17__, i32 }
%struct.TYPE_22__ = type { %struct.TYPE_17__, i32 }
%struct.pvr2_ctrl = type { i32 }
%struct.TYPE_21__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Creating pvr2_sysfs_ctl_item id=%p\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@S_IRUGO = common dso_local global i8* null, align 8
@show_name = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@show_type = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [8 x i8] c"min_val\00", align 1
@show_min = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [8 x i8] c"max_val\00", align 1
@show_max = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [8 x i8] c"def_val\00", align 1
@show_def = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [8 x i8] c"cur_val\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"custom_val\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"enum_val\00", align 1
@show_enum = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [8 x i8] c"bit_val\00", align 1
@show_bits = common dso_local global i32 0, align 4
@S_IWUSR = common dso_local global i32 0, align 4
@S_IWGRP = common dso_local global i32 0, align 4
@show_val_norm = common dso_local global i32 0, align 4
@store_val_norm = common dso_local global i32 0, align 4
@show_val_custom = common dso_local global i32 0, align 4
@store_val_custom = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [7 x i8] c"ctl_%s\00", align 1
@PVR2_TRACE_ERROR_LEGS = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [29 x i8] c"sysfs_create_group error: %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pvr2_sysfs*, i32)* @pvr2_sysfs_add_control to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pvr2_sysfs_add_control(%struct.pvr2_sysfs* %0, i32 %1) #0 {
  %3 = alloca %struct.pvr2_sysfs*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.pvr2_sysfs_ctl_item*, align 8
  %6 = alloca %struct.pvr2_ctrl*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.pvr2_sysfs* %0, %struct.pvr2_sysfs** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.pvr2_sysfs*, %struct.pvr2_sysfs** %3, align 8
  %11 = getelementptr inbounds %struct.pvr2_sysfs, %struct.pvr2_sysfs* %10, i32 0, i32 3
  %12 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* %4, align 4
  %15 = call %struct.pvr2_ctrl* @pvr2_hdw_get_ctrl_by_index(i32 %13, i32 %14)
  store %struct.pvr2_ctrl* %15, %struct.pvr2_ctrl** %6, align 8
  %16 = load %struct.pvr2_ctrl*, %struct.pvr2_ctrl** %6, align 8
  %17 = icmp ne %struct.pvr2_ctrl* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %2
  br label %392

19:                                               ; preds = %2
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = call %struct.pvr2_sysfs_ctl_item* @kzalloc(i32 280, i32 %20)
  store %struct.pvr2_sysfs_ctl_item* %21, %struct.pvr2_sysfs_ctl_item** %5, align 8
  %22 = load %struct.pvr2_sysfs_ctl_item*, %struct.pvr2_sysfs_ctl_item** %5, align 8
  %23 = icmp ne %struct.pvr2_sysfs_ctl_item* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %19
  br label %392

25:                                               ; preds = %19
  %26 = load %struct.pvr2_sysfs_ctl_item*, %struct.pvr2_sysfs_ctl_item** %5, align 8
  %27 = call i32 @pvr2_sysfs_trace(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), %struct.pvr2_sysfs_ctl_item* %26)
  %28 = load %struct.pvr2_ctrl*, %struct.pvr2_ctrl** %6, align 8
  %29 = load %struct.pvr2_sysfs_ctl_item*, %struct.pvr2_sysfs_ctl_item** %5, align 8
  %30 = getelementptr inbounds %struct.pvr2_sysfs_ctl_item, %struct.pvr2_sysfs_ctl_item* %29, i32 0, i32 16
  store %struct.pvr2_ctrl* %28, %struct.pvr2_ctrl** %30, align 8
  %31 = load i32, i32* %4, align 4
  %32 = load %struct.pvr2_sysfs_ctl_item*, %struct.pvr2_sysfs_ctl_item** %5, align 8
  %33 = getelementptr inbounds %struct.pvr2_sysfs_ctl_item, %struct.pvr2_sysfs_ctl_item* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 8
  %34 = load %struct.pvr2_sysfs*, %struct.pvr2_sysfs** %3, align 8
  %35 = load %struct.pvr2_sysfs_ctl_item*, %struct.pvr2_sysfs_ctl_item** %5, align 8
  %36 = getelementptr inbounds %struct.pvr2_sysfs_ctl_item, %struct.pvr2_sysfs_ctl_item* %35, i32 0, i32 15
  store %struct.pvr2_sysfs* %34, %struct.pvr2_sysfs** %36, align 8
  %37 = load %struct.pvr2_sysfs_ctl_item*, %struct.pvr2_sysfs_ctl_item** %5, align 8
  %38 = getelementptr inbounds %struct.pvr2_sysfs_ctl_item, %struct.pvr2_sysfs_ctl_item* %37, i32 0, i32 14
  store %struct.pvr2_sysfs_ctl_item* null, %struct.pvr2_sysfs_ctl_item** %38, align 8
  %39 = load %struct.pvr2_sysfs*, %struct.pvr2_sysfs** %3, align 8
  %40 = getelementptr inbounds %struct.pvr2_sysfs, %struct.pvr2_sysfs* %39, i32 0, i32 1
  %41 = load %struct.pvr2_sysfs_ctl_item*, %struct.pvr2_sysfs_ctl_item** %40, align 8
  %42 = icmp ne %struct.pvr2_sysfs_ctl_item* %41, null
  br i1 %42, label %43, label %49

43:                                               ; preds = %25
  %44 = load %struct.pvr2_sysfs_ctl_item*, %struct.pvr2_sysfs_ctl_item** %5, align 8
  %45 = load %struct.pvr2_sysfs*, %struct.pvr2_sysfs** %3, align 8
  %46 = getelementptr inbounds %struct.pvr2_sysfs, %struct.pvr2_sysfs* %45, i32 0, i32 1
  %47 = load %struct.pvr2_sysfs_ctl_item*, %struct.pvr2_sysfs_ctl_item** %46, align 8
  %48 = getelementptr inbounds %struct.pvr2_sysfs_ctl_item, %struct.pvr2_sysfs_ctl_item* %47, i32 0, i32 14
  store %struct.pvr2_sysfs_ctl_item* %44, %struct.pvr2_sysfs_ctl_item** %48, align 8
  br label %53

49:                                               ; preds = %25
  %50 = load %struct.pvr2_sysfs_ctl_item*, %struct.pvr2_sysfs_ctl_item** %5, align 8
  %51 = load %struct.pvr2_sysfs*, %struct.pvr2_sysfs** %3, align 8
  %52 = getelementptr inbounds %struct.pvr2_sysfs, %struct.pvr2_sysfs* %51, i32 0, i32 2
  store %struct.pvr2_sysfs_ctl_item* %50, %struct.pvr2_sysfs_ctl_item** %52, align 8
  br label %53

53:                                               ; preds = %49, %43
  %54 = load %struct.pvr2_sysfs_ctl_item*, %struct.pvr2_sysfs_ctl_item** %5, align 8
  %55 = load %struct.pvr2_sysfs*, %struct.pvr2_sysfs** %3, align 8
  %56 = getelementptr inbounds %struct.pvr2_sysfs, %struct.pvr2_sysfs* %55, i32 0, i32 1
  store %struct.pvr2_sysfs_ctl_item* %54, %struct.pvr2_sysfs_ctl_item** %56, align 8
  %57 = load %struct.pvr2_sysfs_ctl_item*, %struct.pvr2_sysfs_ctl_item** %5, align 8
  %58 = getelementptr inbounds %struct.pvr2_sysfs_ctl_item, %struct.pvr2_sysfs_ctl_item* %57, i32 0, i32 13
  %59 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %58, i32 0, i32 0
  %60 = call i32 @sysfs_attr_init(%struct.TYPE_17__* %59)
  %61 = load %struct.pvr2_sysfs_ctl_item*, %struct.pvr2_sysfs_ctl_item** %5, align 8
  %62 = getelementptr inbounds %struct.pvr2_sysfs_ctl_item, %struct.pvr2_sysfs_ctl_item* %61, i32 0, i32 13
  %63 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %63, i32 0, i32 0
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8** %64, align 8
  %65 = load i8*, i8** @S_IRUGO, align 8
  %66 = ptrtoint i8* %65 to i32
  %67 = load %struct.pvr2_sysfs_ctl_item*, %struct.pvr2_sysfs_ctl_item** %5, align 8
  %68 = getelementptr inbounds %struct.pvr2_sysfs_ctl_item, %struct.pvr2_sysfs_ctl_item* %67, i32 0, i32 13
  %69 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %69, i32 0, i32 1
  store i32 %66, i32* %70, align 8
  %71 = load i32, i32* @show_name, align 4
  %72 = load %struct.pvr2_sysfs_ctl_item*, %struct.pvr2_sysfs_ctl_item** %5, align 8
  %73 = getelementptr inbounds %struct.pvr2_sysfs_ctl_item, %struct.pvr2_sysfs_ctl_item* %72, i32 0, i32 13
  %74 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %73, i32 0, i32 1
  store i32 %71, i32* %74, align 8
  %75 = load %struct.pvr2_sysfs_ctl_item*, %struct.pvr2_sysfs_ctl_item** %5, align 8
  %76 = getelementptr inbounds %struct.pvr2_sysfs_ctl_item, %struct.pvr2_sysfs_ctl_item* %75, i32 0, i32 12
  %77 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %76, i32 0, i32 0
  %78 = call i32 @sysfs_attr_init(%struct.TYPE_17__* %77)
  %79 = load %struct.pvr2_sysfs_ctl_item*, %struct.pvr2_sysfs_ctl_item** %5, align 8
  %80 = getelementptr inbounds %struct.pvr2_sysfs_ctl_item, %struct.pvr2_sysfs_ctl_item* %79, i32 0, i32 12
  %81 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %81, i32 0, i32 0
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8** %82, align 8
  %83 = load i8*, i8** @S_IRUGO, align 8
  %84 = ptrtoint i8* %83 to i32
  %85 = load %struct.pvr2_sysfs_ctl_item*, %struct.pvr2_sysfs_ctl_item** %5, align 8
  %86 = getelementptr inbounds %struct.pvr2_sysfs_ctl_item, %struct.pvr2_sysfs_ctl_item* %85, i32 0, i32 12
  %87 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %87, i32 0, i32 1
  store i32 %84, i32* %88, align 8
  %89 = load i32, i32* @show_type, align 4
  %90 = load %struct.pvr2_sysfs_ctl_item*, %struct.pvr2_sysfs_ctl_item** %5, align 8
  %91 = getelementptr inbounds %struct.pvr2_sysfs_ctl_item, %struct.pvr2_sysfs_ctl_item* %90, i32 0, i32 12
  %92 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %91, i32 0, i32 1
  store i32 %89, i32* %92, align 8
  %93 = load %struct.pvr2_sysfs_ctl_item*, %struct.pvr2_sysfs_ctl_item** %5, align 8
  %94 = getelementptr inbounds %struct.pvr2_sysfs_ctl_item, %struct.pvr2_sysfs_ctl_item* %93, i32 0, i32 7
  %95 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %94, i32 0, i32 0
  %96 = call i32 @sysfs_attr_init(%struct.TYPE_17__* %95)
  %97 = load %struct.pvr2_sysfs_ctl_item*, %struct.pvr2_sysfs_ctl_item** %5, align 8
  %98 = getelementptr inbounds %struct.pvr2_sysfs_ctl_item, %struct.pvr2_sysfs_ctl_item* %97, i32 0, i32 7
  %99 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %99, i32 0, i32 0
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8** %100, align 8
  %101 = load i8*, i8** @S_IRUGO, align 8
  %102 = ptrtoint i8* %101 to i32
  %103 = load %struct.pvr2_sysfs_ctl_item*, %struct.pvr2_sysfs_ctl_item** %5, align 8
  %104 = getelementptr inbounds %struct.pvr2_sysfs_ctl_item, %struct.pvr2_sysfs_ctl_item* %103, i32 0, i32 7
  %105 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %105, i32 0, i32 1
  store i32 %102, i32* %106, align 8
  %107 = load i32, i32* @show_min, align 4
  %108 = load %struct.pvr2_sysfs_ctl_item*, %struct.pvr2_sysfs_ctl_item** %5, align 8
  %109 = getelementptr inbounds %struct.pvr2_sysfs_ctl_item, %struct.pvr2_sysfs_ctl_item* %108, i32 0, i32 7
  %110 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %109, i32 0, i32 1
  store i32 %107, i32* %110, align 8
  %111 = load %struct.pvr2_sysfs_ctl_item*, %struct.pvr2_sysfs_ctl_item** %5, align 8
  %112 = getelementptr inbounds %struct.pvr2_sysfs_ctl_item, %struct.pvr2_sysfs_ctl_item* %111, i32 0, i32 6
  %113 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %112, i32 0, i32 0
  %114 = call i32 @sysfs_attr_init(%struct.TYPE_17__* %113)
  %115 = load %struct.pvr2_sysfs_ctl_item*, %struct.pvr2_sysfs_ctl_item** %5, align 8
  %116 = getelementptr inbounds %struct.pvr2_sysfs_ctl_item, %struct.pvr2_sysfs_ctl_item* %115, i32 0, i32 6
  %117 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %117, i32 0, i32 0
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i8** %118, align 8
  %119 = load i8*, i8** @S_IRUGO, align 8
  %120 = ptrtoint i8* %119 to i32
  %121 = load %struct.pvr2_sysfs_ctl_item*, %struct.pvr2_sysfs_ctl_item** %5, align 8
  %122 = getelementptr inbounds %struct.pvr2_sysfs_ctl_item, %struct.pvr2_sysfs_ctl_item* %121, i32 0, i32 6
  %123 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %123, i32 0, i32 1
  store i32 %120, i32* %124, align 8
  %125 = load i32, i32* @show_max, align 4
  %126 = load %struct.pvr2_sysfs_ctl_item*, %struct.pvr2_sysfs_ctl_item** %5, align 8
  %127 = getelementptr inbounds %struct.pvr2_sysfs_ctl_item, %struct.pvr2_sysfs_ctl_item* %126, i32 0, i32 6
  %128 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %127, i32 0, i32 1
  store i32 %125, i32* %128, align 8
  %129 = load %struct.pvr2_sysfs_ctl_item*, %struct.pvr2_sysfs_ctl_item** %5, align 8
  %130 = getelementptr inbounds %struct.pvr2_sysfs_ctl_item, %struct.pvr2_sysfs_ctl_item* %129, i32 0, i32 11
  %131 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %130, i32 0, i32 0
  %132 = call i32 @sysfs_attr_init(%struct.TYPE_17__* %131)
  %133 = load %struct.pvr2_sysfs_ctl_item*, %struct.pvr2_sysfs_ctl_item** %5, align 8
  %134 = getelementptr inbounds %struct.pvr2_sysfs_ctl_item, %struct.pvr2_sysfs_ctl_item* %133, i32 0, i32 11
  %135 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %135, i32 0, i32 0
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i8** %136, align 8
  %137 = load i8*, i8** @S_IRUGO, align 8
  %138 = ptrtoint i8* %137 to i32
  %139 = load %struct.pvr2_sysfs_ctl_item*, %struct.pvr2_sysfs_ctl_item** %5, align 8
  %140 = getelementptr inbounds %struct.pvr2_sysfs_ctl_item, %struct.pvr2_sysfs_ctl_item* %139, i32 0, i32 11
  %141 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %141, i32 0, i32 1
  store i32 %138, i32* %142, align 8
  %143 = load i32, i32* @show_def, align 4
  %144 = load %struct.pvr2_sysfs_ctl_item*, %struct.pvr2_sysfs_ctl_item** %5, align 8
  %145 = getelementptr inbounds %struct.pvr2_sysfs_ctl_item, %struct.pvr2_sysfs_ctl_item* %144, i32 0, i32 11
  %146 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %145, i32 0, i32 1
  store i32 %143, i32* %146, align 8
  %147 = load %struct.pvr2_sysfs_ctl_item*, %struct.pvr2_sysfs_ctl_item** %5, align 8
  %148 = getelementptr inbounds %struct.pvr2_sysfs_ctl_item, %struct.pvr2_sysfs_ctl_item* %147, i32 0, i32 10
  %149 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %148, i32 0, i32 2
  %150 = call i32 @sysfs_attr_init(%struct.TYPE_17__* %149)
  %151 = load %struct.pvr2_sysfs_ctl_item*, %struct.pvr2_sysfs_ctl_item** %5, align 8
  %152 = getelementptr inbounds %struct.pvr2_sysfs_ctl_item, %struct.pvr2_sysfs_ctl_item* %151, i32 0, i32 10
  %153 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %152, i32 0, i32 2
  %154 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %153, i32 0, i32 0
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i8** %154, align 8
  %155 = load i8*, i8** @S_IRUGO, align 8
  %156 = ptrtoint i8* %155 to i32
  %157 = load %struct.pvr2_sysfs_ctl_item*, %struct.pvr2_sysfs_ctl_item** %5, align 8
  %158 = getelementptr inbounds %struct.pvr2_sysfs_ctl_item, %struct.pvr2_sysfs_ctl_item* %157, i32 0, i32 10
  %159 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %158, i32 0, i32 2
  %160 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %159, i32 0, i32 1
  store i32 %156, i32* %160, align 8
  %161 = load %struct.pvr2_sysfs_ctl_item*, %struct.pvr2_sysfs_ctl_item** %5, align 8
  %162 = getelementptr inbounds %struct.pvr2_sysfs_ctl_item, %struct.pvr2_sysfs_ctl_item* %161, i32 0, i32 9
  %163 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %162, i32 0, i32 2
  %164 = call i32 @sysfs_attr_init(%struct.TYPE_17__* %163)
  %165 = load %struct.pvr2_sysfs_ctl_item*, %struct.pvr2_sysfs_ctl_item** %5, align 8
  %166 = getelementptr inbounds %struct.pvr2_sysfs_ctl_item, %struct.pvr2_sysfs_ctl_item* %165, i32 0, i32 9
  %167 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %166, i32 0, i32 2
  %168 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %167, i32 0, i32 0
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0), i8** %168, align 8
  %169 = load i8*, i8** @S_IRUGO, align 8
  %170 = ptrtoint i8* %169 to i32
  %171 = load %struct.pvr2_sysfs_ctl_item*, %struct.pvr2_sysfs_ctl_item** %5, align 8
  %172 = getelementptr inbounds %struct.pvr2_sysfs_ctl_item, %struct.pvr2_sysfs_ctl_item* %171, i32 0, i32 9
  %173 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %172, i32 0, i32 2
  %174 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %173, i32 0, i32 1
  store i32 %170, i32* %174, align 8
  %175 = load %struct.pvr2_sysfs_ctl_item*, %struct.pvr2_sysfs_ctl_item** %5, align 8
  %176 = getelementptr inbounds %struct.pvr2_sysfs_ctl_item, %struct.pvr2_sysfs_ctl_item* %175, i32 0, i32 8
  %177 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %176, i32 0, i32 0
  %178 = call i32 @sysfs_attr_init(%struct.TYPE_17__* %177)
  %179 = load %struct.pvr2_sysfs_ctl_item*, %struct.pvr2_sysfs_ctl_item** %5, align 8
  %180 = getelementptr inbounds %struct.pvr2_sysfs_ctl_item, %struct.pvr2_sysfs_ctl_item* %179, i32 0, i32 8
  %181 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %180, i32 0, i32 0
  %182 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %181, i32 0, i32 0
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0), i8** %182, align 8
  %183 = load i8*, i8** @S_IRUGO, align 8
  %184 = ptrtoint i8* %183 to i32
  %185 = load %struct.pvr2_sysfs_ctl_item*, %struct.pvr2_sysfs_ctl_item** %5, align 8
  %186 = getelementptr inbounds %struct.pvr2_sysfs_ctl_item, %struct.pvr2_sysfs_ctl_item* %185, i32 0, i32 8
  %187 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %186, i32 0, i32 0
  %188 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %187, i32 0, i32 1
  store i32 %184, i32* %188, align 8
  %189 = load i32, i32* @show_enum, align 4
  %190 = load %struct.pvr2_sysfs_ctl_item*, %struct.pvr2_sysfs_ctl_item** %5, align 8
  %191 = getelementptr inbounds %struct.pvr2_sysfs_ctl_item, %struct.pvr2_sysfs_ctl_item* %190, i32 0, i32 8
  %192 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %191, i32 0, i32 1
  store i32 %189, i32* %192, align 8
  %193 = load %struct.pvr2_sysfs_ctl_item*, %struct.pvr2_sysfs_ctl_item** %5, align 8
  %194 = getelementptr inbounds %struct.pvr2_sysfs_ctl_item, %struct.pvr2_sysfs_ctl_item* %193, i32 0, i32 5
  %195 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %194, i32 0, i32 0
  %196 = call i32 @sysfs_attr_init(%struct.TYPE_17__* %195)
  %197 = load %struct.pvr2_sysfs_ctl_item*, %struct.pvr2_sysfs_ctl_item** %5, align 8
  %198 = getelementptr inbounds %struct.pvr2_sysfs_ctl_item, %struct.pvr2_sysfs_ctl_item* %197, i32 0, i32 5
  %199 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %198, i32 0, i32 0
  %200 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %199, i32 0, i32 0
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), i8** %200, align 8
  %201 = load i8*, i8** @S_IRUGO, align 8
  %202 = ptrtoint i8* %201 to i32
  %203 = load %struct.pvr2_sysfs_ctl_item*, %struct.pvr2_sysfs_ctl_item** %5, align 8
  %204 = getelementptr inbounds %struct.pvr2_sysfs_ctl_item, %struct.pvr2_sysfs_ctl_item* %203, i32 0, i32 5
  %205 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %204, i32 0, i32 0
  %206 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %205, i32 0, i32 1
  store i32 %202, i32* %206, align 8
  %207 = load i32, i32* @show_bits, align 4
  %208 = load %struct.pvr2_sysfs_ctl_item*, %struct.pvr2_sysfs_ctl_item** %5, align 8
  %209 = getelementptr inbounds %struct.pvr2_sysfs_ctl_item, %struct.pvr2_sysfs_ctl_item* %208, i32 0, i32 5
  %210 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %209, i32 0, i32 1
  store i32 %207, i32* %210, align 8
  %211 = load %struct.pvr2_ctrl*, %struct.pvr2_ctrl** %6, align 8
  %212 = call i64 @pvr2_ctrl_is_writable(%struct.pvr2_ctrl* %211)
  %213 = icmp ne i64 %212, 0
  br i1 %213, label %214, label %233

214:                                              ; preds = %53
  %215 = load i32, i32* @S_IWUSR, align 4
  %216 = load i32, i32* @S_IWGRP, align 4
  %217 = or i32 %215, %216
  %218 = load %struct.pvr2_sysfs_ctl_item*, %struct.pvr2_sysfs_ctl_item** %5, align 8
  %219 = getelementptr inbounds %struct.pvr2_sysfs_ctl_item, %struct.pvr2_sysfs_ctl_item* %218, i32 0, i32 10
  %220 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %219, i32 0, i32 2
  %221 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %220, i32 0, i32 1
  %222 = load i32, i32* %221, align 8
  %223 = or i32 %222, %217
  store i32 %223, i32* %221, align 8
  %224 = load i32, i32* @S_IWUSR, align 4
  %225 = load i32, i32* @S_IWGRP, align 4
  %226 = or i32 %224, %225
  %227 = load %struct.pvr2_sysfs_ctl_item*, %struct.pvr2_sysfs_ctl_item** %5, align 8
  %228 = getelementptr inbounds %struct.pvr2_sysfs_ctl_item, %struct.pvr2_sysfs_ctl_item* %227, i32 0, i32 9
  %229 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %228, i32 0, i32 2
  %230 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %229, i32 0, i32 1
  %231 = load i32, i32* %230, align 8
  %232 = or i32 %231, %226
  store i32 %232, i32* %230, align 8
  br label %233

233:                                              ; preds = %214, %53
  store i32 0, i32* %8, align 4
  %234 = load %struct.pvr2_sysfs_ctl_item*, %struct.pvr2_sysfs_ctl_item** %5, align 8
  %235 = getelementptr inbounds %struct.pvr2_sysfs_ctl_item, %struct.pvr2_sysfs_ctl_item* %234, i32 0, i32 13
  %236 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %235, i32 0, i32 0
  %237 = load %struct.pvr2_sysfs_ctl_item*, %struct.pvr2_sysfs_ctl_item** %5, align 8
  %238 = getelementptr inbounds %struct.pvr2_sysfs_ctl_item, %struct.pvr2_sysfs_ctl_item* %237, i32 0, i32 3
  %239 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %238, align 8
  %240 = load i32, i32* %8, align 4
  %241 = add i32 %240, 1
  store i32 %241, i32* %8, align 4
  %242 = zext i32 %240 to i64
  %243 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %239, i64 %242
  store %struct.TYPE_17__* %236, %struct.TYPE_17__** %243, align 8
  %244 = load %struct.pvr2_sysfs_ctl_item*, %struct.pvr2_sysfs_ctl_item** %5, align 8
  %245 = getelementptr inbounds %struct.pvr2_sysfs_ctl_item, %struct.pvr2_sysfs_ctl_item* %244, i32 0, i32 12
  %246 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %245, i32 0, i32 0
  %247 = load %struct.pvr2_sysfs_ctl_item*, %struct.pvr2_sysfs_ctl_item** %5, align 8
  %248 = getelementptr inbounds %struct.pvr2_sysfs_ctl_item, %struct.pvr2_sysfs_ctl_item* %247, i32 0, i32 3
  %249 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %248, align 8
  %250 = load i32, i32* %8, align 4
  %251 = add i32 %250, 1
  store i32 %251, i32* %8, align 4
  %252 = zext i32 %250 to i64
  %253 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %249, i64 %252
  store %struct.TYPE_17__* %246, %struct.TYPE_17__** %253, align 8
  %254 = load %struct.pvr2_sysfs_ctl_item*, %struct.pvr2_sysfs_ctl_item** %5, align 8
  %255 = getelementptr inbounds %struct.pvr2_sysfs_ctl_item, %struct.pvr2_sysfs_ctl_item* %254, i32 0, i32 10
  %256 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %255, i32 0, i32 2
  %257 = load %struct.pvr2_sysfs_ctl_item*, %struct.pvr2_sysfs_ctl_item** %5, align 8
  %258 = getelementptr inbounds %struct.pvr2_sysfs_ctl_item, %struct.pvr2_sysfs_ctl_item* %257, i32 0, i32 3
  %259 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %258, align 8
  %260 = load i32, i32* %8, align 4
  %261 = add i32 %260, 1
  store i32 %261, i32* %8, align 4
  %262 = zext i32 %260 to i64
  %263 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %259, i64 %262
  store %struct.TYPE_17__* %256, %struct.TYPE_17__** %263, align 8
  %264 = load %struct.pvr2_sysfs_ctl_item*, %struct.pvr2_sysfs_ctl_item** %5, align 8
  %265 = getelementptr inbounds %struct.pvr2_sysfs_ctl_item, %struct.pvr2_sysfs_ctl_item* %264, i32 0, i32 11
  %266 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %265, i32 0, i32 0
  %267 = load %struct.pvr2_sysfs_ctl_item*, %struct.pvr2_sysfs_ctl_item** %5, align 8
  %268 = getelementptr inbounds %struct.pvr2_sysfs_ctl_item, %struct.pvr2_sysfs_ctl_item* %267, i32 0, i32 3
  %269 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %268, align 8
  %270 = load i32, i32* %8, align 4
  %271 = add i32 %270, 1
  store i32 %271, i32* %8, align 4
  %272 = zext i32 %270 to i64
  %273 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %269, i64 %272
  store %struct.TYPE_17__* %266, %struct.TYPE_17__** %273, align 8
  %274 = load i32, i32* @show_val_norm, align 4
  %275 = load %struct.pvr2_sysfs_ctl_item*, %struct.pvr2_sysfs_ctl_item** %5, align 8
  %276 = getelementptr inbounds %struct.pvr2_sysfs_ctl_item, %struct.pvr2_sysfs_ctl_item* %275, i32 0, i32 10
  %277 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %276, i32 0, i32 1
  store i32 %274, i32* %277, align 4
  %278 = load i32, i32* @store_val_norm, align 4
  %279 = load %struct.pvr2_sysfs_ctl_item*, %struct.pvr2_sysfs_ctl_item** %5, align 8
  %280 = getelementptr inbounds %struct.pvr2_sysfs_ctl_item, %struct.pvr2_sysfs_ctl_item* %279, i32 0, i32 10
  %281 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %280, i32 0, i32 0
  store i32 %278, i32* %281, align 8
  %282 = load %struct.pvr2_ctrl*, %struct.pvr2_ctrl** %6, align 8
  %283 = call i64 @pvr2_ctrl_has_custom_symbols(%struct.pvr2_ctrl* %282)
  %284 = icmp ne i64 %283, 0
  br i1 %284, label %285, label %304

285:                                              ; preds = %233
  %286 = load %struct.pvr2_sysfs_ctl_item*, %struct.pvr2_sysfs_ctl_item** %5, align 8
  %287 = getelementptr inbounds %struct.pvr2_sysfs_ctl_item, %struct.pvr2_sysfs_ctl_item* %286, i32 0, i32 9
  %288 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %287, i32 0, i32 2
  %289 = load %struct.pvr2_sysfs_ctl_item*, %struct.pvr2_sysfs_ctl_item** %5, align 8
  %290 = getelementptr inbounds %struct.pvr2_sysfs_ctl_item, %struct.pvr2_sysfs_ctl_item* %289, i32 0, i32 3
  %291 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %290, align 8
  %292 = load i32, i32* %8, align 4
  %293 = add i32 %292, 1
  store i32 %293, i32* %8, align 4
  %294 = zext i32 %292 to i64
  %295 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %291, i64 %294
  store %struct.TYPE_17__* %288, %struct.TYPE_17__** %295, align 8
  %296 = load i32, i32* @show_val_custom, align 4
  %297 = load %struct.pvr2_sysfs_ctl_item*, %struct.pvr2_sysfs_ctl_item** %5, align 8
  %298 = getelementptr inbounds %struct.pvr2_sysfs_ctl_item, %struct.pvr2_sysfs_ctl_item* %297, i32 0, i32 9
  %299 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %298, i32 0, i32 1
  store i32 %296, i32* %299, align 4
  %300 = load i32, i32* @store_val_custom, align 4
  %301 = load %struct.pvr2_sysfs_ctl_item*, %struct.pvr2_sysfs_ctl_item** %5, align 8
  %302 = getelementptr inbounds %struct.pvr2_sysfs_ctl_item, %struct.pvr2_sysfs_ctl_item* %301, i32 0, i32 9
  %303 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %302, i32 0, i32 0
  store i32 %300, i32* %303, align 8
  br label %304

304:                                              ; preds = %285, %233
  %305 = load %struct.pvr2_ctrl*, %struct.pvr2_ctrl** %6, align 8
  %306 = call i32 @pvr2_ctrl_get_type(%struct.pvr2_ctrl* %305)
  switch i32 %306, label %350 [
    i32 129, label %307
    i32 128, label %318
    i32 130, label %339
  ]

307:                                              ; preds = %304
  %308 = load %struct.pvr2_sysfs_ctl_item*, %struct.pvr2_sysfs_ctl_item** %5, align 8
  %309 = getelementptr inbounds %struct.pvr2_sysfs_ctl_item, %struct.pvr2_sysfs_ctl_item* %308, i32 0, i32 8
  %310 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %309, i32 0, i32 0
  %311 = load %struct.pvr2_sysfs_ctl_item*, %struct.pvr2_sysfs_ctl_item** %5, align 8
  %312 = getelementptr inbounds %struct.pvr2_sysfs_ctl_item, %struct.pvr2_sysfs_ctl_item* %311, i32 0, i32 3
  %313 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %312, align 8
  %314 = load i32, i32* %8, align 4
  %315 = add i32 %314, 1
  store i32 %315, i32* %8, align 4
  %316 = zext i32 %314 to i64
  %317 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %313, i64 %316
  store %struct.TYPE_17__* %310, %struct.TYPE_17__** %317, align 8
  br label %351

318:                                              ; preds = %304
  %319 = load %struct.pvr2_sysfs_ctl_item*, %struct.pvr2_sysfs_ctl_item** %5, align 8
  %320 = getelementptr inbounds %struct.pvr2_sysfs_ctl_item, %struct.pvr2_sysfs_ctl_item* %319, i32 0, i32 7
  %321 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %320, i32 0, i32 0
  %322 = load %struct.pvr2_sysfs_ctl_item*, %struct.pvr2_sysfs_ctl_item** %5, align 8
  %323 = getelementptr inbounds %struct.pvr2_sysfs_ctl_item, %struct.pvr2_sysfs_ctl_item* %322, i32 0, i32 3
  %324 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %323, align 8
  %325 = load i32, i32* %8, align 4
  %326 = add i32 %325, 1
  store i32 %326, i32* %8, align 4
  %327 = zext i32 %325 to i64
  %328 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %324, i64 %327
  store %struct.TYPE_17__* %321, %struct.TYPE_17__** %328, align 8
  %329 = load %struct.pvr2_sysfs_ctl_item*, %struct.pvr2_sysfs_ctl_item** %5, align 8
  %330 = getelementptr inbounds %struct.pvr2_sysfs_ctl_item, %struct.pvr2_sysfs_ctl_item* %329, i32 0, i32 6
  %331 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %330, i32 0, i32 0
  %332 = load %struct.pvr2_sysfs_ctl_item*, %struct.pvr2_sysfs_ctl_item** %5, align 8
  %333 = getelementptr inbounds %struct.pvr2_sysfs_ctl_item, %struct.pvr2_sysfs_ctl_item* %332, i32 0, i32 3
  %334 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %333, align 8
  %335 = load i32, i32* %8, align 4
  %336 = add i32 %335, 1
  store i32 %336, i32* %8, align 4
  %337 = zext i32 %335 to i64
  %338 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %334, i64 %337
  store %struct.TYPE_17__* %331, %struct.TYPE_17__** %338, align 8
  br label %351

339:                                              ; preds = %304
  %340 = load %struct.pvr2_sysfs_ctl_item*, %struct.pvr2_sysfs_ctl_item** %5, align 8
  %341 = getelementptr inbounds %struct.pvr2_sysfs_ctl_item, %struct.pvr2_sysfs_ctl_item* %340, i32 0, i32 5
  %342 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %341, i32 0, i32 0
  %343 = load %struct.pvr2_sysfs_ctl_item*, %struct.pvr2_sysfs_ctl_item** %5, align 8
  %344 = getelementptr inbounds %struct.pvr2_sysfs_ctl_item, %struct.pvr2_sysfs_ctl_item* %343, i32 0, i32 3
  %345 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %344, align 8
  %346 = load i32, i32* %8, align 4
  %347 = add i32 %346, 1
  store i32 %347, i32* %8, align 4
  %348 = zext i32 %346 to i64
  %349 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %345, i64 %348
  store %struct.TYPE_17__* %342, %struct.TYPE_17__** %349, align 8
  br label %351

350:                                              ; preds = %304
  br label %351

351:                                              ; preds = %350, %339, %318, %307
  %352 = load %struct.pvr2_sysfs_ctl_item*, %struct.pvr2_sysfs_ctl_item** %5, align 8
  %353 = getelementptr inbounds %struct.pvr2_sysfs_ctl_item, %struct.pvr2_sysfs_ctl_item* %352, i32 0, i32 4
  %354 = load i64*, i64** %353, align 8
  %355 = load %struct.pvr2_ctrl*, %struct.pvr2_ctrl** %6, align 8
  %356 = call i32 @pvr2_ctrl_get_name(%struct.pvr2_ctrl* %355)
  %357 = call i32 @scnprintf(i64* %354, i32 7, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0), i32 %356)
  store i32 %357, i32* %7, align 4
  %358 = load %struct.pvr2_sysfs_ctl_item*, %struct.pvr2_sysfs_ctl_item** %5, align 8
  %359 = getelementptr inbounds %struct.pvr2_sysfs_ctl_item, %struct.pvr2_sysfs_ctl_item* %358, i32 0, i32 4
  %360 = load i64*, i64** %359, align 8
  %361 = load i32, i32* %7, align 4
  %362 = zext i32 %361 to i64
  %363 = getelementptr inbounds i64, i64* %360, i64 %362
  store i64 0, i64* %363, align 8
  %364 = load %struct.pvr2_sysfs_ctl_item*, %struct.pvr2_sysfs_ctl_item** %5, align 8
  %365 = getelementptr inbounds %struct.pvr2_sysfs_ctl_item, %struct.pvr2_sysfs_ctl_item* %364, i32 0, i32 4
  %366 = load i64*, i64** %365, align 8
  %367 = load %struct.pvr2_sysfs_ctl_item*, %struct.pvr2_sysfs_ctl_item** %5, align 8
  %368 = getelementptr inbounds %struct.pvr2_sysfs_ctl_item, %struct.pvr2_sysfs_ctl_item* %367, i32 0, i32 2
  %369 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %368, i32 0, i32 1
  store i64* %366, i64** %369, align 8
  %370 = load %struct.pvr2_sysfs_ctl_item*, %struct.pvr2_sysfs_ctl_item** %5, align 8
  %371 = getelementptr inbounds %struct.pvr2_sysfs_ctl_item, %struct.pvr2_sysfs_ctl_item* %370, i32 0, i32 3
  %372 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %371, align 8
  %373 = load %struct.pvr2_sysfs_ctl_item*, %struct.pvr2_sysfs_ctl_item** %5, align 8
  %374 = getelementptr inbounds %struct.pvr2_sysfs_ctl_item, %struct.pvr2_sysfs_ctl_item* %373, i32 0, i32 2
  %375 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %374, i32 0, i32 0
  store %struct.TYPE_17__** %372, %struct.TYPE_17__*** %375, align 8
  %376 = load %struct.pvr2_sysfs*, %struct.pvr2_sysfs** %3, align 8
  %377 = getelementptr inbounds %struct.pvr2_sysfs, %struct.pvr2_sysfs* %376, i32 0, i32 0
  %378 = load %struct.TYPE_20__*, %struct.TYPE_20__** %377, align 8
  %379 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %378, i32 0, i32 0
  %380 = load %struct.pvr2_sysfs_ctl_item*, %struct.pvr2_sysfs_ctl_item** %5, align 8
  %381 = getelementptr inbounds %struct.pvr2_sysfs_ctl_item, %struct.pvr2_sysfs_ctl_item* %380, i32 0, i32 2
  %382 = call i32 @sysfs_create_group(i32* %379, %struct.TYPE_16__* %381)
  store i32 %382, i32* %9, align 4
  %383 = load i32, i32* %9, align 4
  %384 = icmp ne i32 %383, 0
  br i1 %384, label %385, label %389

385:                                              ; preds = %351
  %386 = load i32, i32* @PVR2_TRACE_ERROR_LEGS, align 4
  %387 = load i32, i32* %9, align 4
  %388 = call i32 @pvr2_trace(i32 %386, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.11, i64 0, i64 0), i32 %387)
  br label %392

389:                                              ; preds = %351
  %390 = load %struct.pvr2_sysfs_ctl_item*, %struct.pvr2_sysfs_ctl_item** %5, align 8
  %391 = getelementptr inbounds %struct.pvr2_sysfs_ctl_item, %struct.pvr2_sysfs_ctl_item* %390, i32 0, i32 1
  store i32 1, i32* %391, align 4
  br label %392

392:                                              ; preds = %389, %385, %24, %18
  ret void
}

declare dso_local %struct.pvr2_ctrl* @pvr2_hdw_get_ctrl_by_index(i32, i32) #1

declare dso_local %struct.pvr2_sysfs_ctl_item* @kzalloc(i32, i32) #1

declare dso_local i32 @pvr2_sysfs_trace(i8*, %struct.pvr2_sysfs_ctl_item*) #1

declare dso_local i32 @sysfs_attr_init(%struct.TYPE_17__*) #1

declare dso_local i64 @pvr2_ctrl_is_writable(%struct.pvr2_ctrl*) #1

declare dso_local i64 @pvr2_ctrl_has_custom_symbols(%struct.pvr2_ctrl*) #1

declare dso_local i32 @pvr2_ctrl_get_type(%struct.pvr2_ctrl*) #1

declare dso_local i32 @scnprintf(i64*, i32, i8*, i32) #1

declare dso_local i32 @pvr2_ctrl_get_name(%struct.pvr2_ctrl*) #1

declare dso_local i32 @sysfs_create_group(i32*, %struct.TYPE_16__*) #1

declare dso_local i32 @pvr2_trace(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
