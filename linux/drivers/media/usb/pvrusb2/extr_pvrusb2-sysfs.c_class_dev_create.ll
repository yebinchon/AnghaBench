; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/pvrusb2/extr_pvrusb2-sysfs.c_class_dev_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/pvrusb2/extr_pvrusb2-sysfs.c_class_dev_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pvr2_sysfs = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_6__, %struct.device*, %struct.TYPE_6__, %struct.TYPE_6__, %struct.TYPE_6__, %struct.TYPE_6__, %struct.TYPE_6__, %struct.TYPE_4__ }
%struct.device = type { i32, i32* }
%struct.TYPE_6__ = type { i32*, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i8*, i8* }
%struct.TYPE_4__ = type { i32 }
%struct.pvr2_sysfs_class = type { i32 }
%struct.usb_device = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Creating class_dev id=%p\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@PVR2_TRACE_ERROR_LEGS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"device_register failed\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"v4l_minor_number\00", align 1
@S_IRUGO = common dso_local global i8* null, align 8
@v4l_minor_number_show = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [29 x i8] c"device_create_file error: %d\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"v4l_radio_minor_number\00", align 1
@v4l_radio_minor_number_show = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [12 x i8] c"unit_number\00", align 1
@unit_number_show = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [13 x i8] c"bus_info_str\00", align 1
@bus_info_show = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [21 x i8] c"device_hardware_type\00", align 1
@hdw_name_show = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [28 x i8] c"device_hardware_description\00", align 1
@hdw_desc_show = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pvr2_sysfs*, %struct.pvr2_sysfs_class*)* @class_dev_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @class_dev_create(%struct.pvr2_sysfs* %0, %struct.pvr2_sysfs_class* %1) #0 {
  %3 = alloca %struct.pvr2_sysfs*, align 8
  %4 = alloca %struct.pvr2_sysfs_class*, align 8
  %5 = alloca %struct.usb_device*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca i32, align 4
  store %struct.pvr2_sysfs* %0, %struct.pvr2_sysfs** %3, align 8
  store %struct.pvr2_sysfs_class* %1, %struct.pvr2_sysfs_class** %4, align 8
  %8 = load %struct.pvr2_sysfs*, %struct.pvr2_sysfs** %3, align 8
  %9 = getelementptr inbounds %struct.pvr2_sysfs, %struct.pvr2_sysfs* %8, i32 0, i32 13
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = call %struct.usb_device* @pvr2_hdw_get_dev(i32 %11)
  store %struct.usb_device* %12, %struct.usb_device** %5, align 8
  %13 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %14 = icmp ne %struct.usb_device* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %2
  br label %275

16:                                               ; preds = %2
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call %struct.device* @kzalloc(i32 16, i32 %17)
  store %struct.device* %18, %struct.device** %6, align 8
  %19 = load %struct.device*, %struct.device** %6, align 8
  %20 = icmp ne %struct.device* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %16
  br label %275

22:                                               ; preds = %16
  %23 = load %struct.device*, %struct.device** %6, align 8
  %24 = call i32 @pvr2_sysfs_trace(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), %struct.device* %23)
  %25 = load %struct.pvr2_sysfs_class*, %struct.pvr2_sysfs_class** %4, align 8
  %26 = getelementptr inbounds %struct.pvr2_sysfs_class, %struct.pvr2_sysfs_class* %25, i32 0, i32 0
  %27 = load %struct.device*, %struct.device** %6, align 8
  %28 = getelementptr inbounds %struct.device, %struct.device* %27, i32 0, i32 1
  store i32* %26, i32** %28, align 8
  %29 = load %struct.device*, %struct.device** %6, align 8
  %30 = load %struct.pvr2_sysfs*, %struct.pvr2_sysfs** %3, align 8
  %31 = getelementptr inbounds %struct.pvr2_sysfs, %struct.pvr2_sysfs* %30, i32 0, i32 13
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @pvr2_hdw_get_device_identifier(i32 %33)
  %35 = call i32 @dev_set_name(%struct.device* %29, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %34)
  %36 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %37 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %36, i32 0, i32 0
  %38 = call i32 @get_device(i32* %37)
  %39 = load %struct.device*, %struct.device** %6, align 8
  %40 = getelementptr inbounds %struct.device, %struct.device* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 8
  %41 = load %struct.device*, %struct.device** %6, align 8
  %42 = load %struct.pvr2_sysfs*, %struct.pvr2_sysfs** %3, align 8
  %43 = getelementptr inbounds %struct.pvr2_sysfs, %struct.pvr2_sysfs* %42, i32 0, i32 7
  store %struct.device* %41, %struct.device** %43, align 8
  %44 = load %struct.device*, %struct.device** %6, align 8
  %45 = load %struct.pvr2_sysfs*, %struct.pvr2_sysfs** %3, align 8
  %46 = call i32 @dev_set_drvdata(%struct.device* %44, %struct.pvr2_sysfs* %45)
  %47 = load %struct.device*, %struct.device** %6, align 8
  %48 = call i32 @device_register(%struct.device* %47)
  store i32 %48, i32* %7, align 4
  %49 = load i32, i32* %7, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %22
  %52 = load i32, i32* @PVR2_TRACE_ERROR_LEGS, align 4
  %53 = call i32 (i32, i8*, ...) @pvr2_trace(i32 %52, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  %54 = load %struct.device*, %struct.device** %6, align 8
  %55 = call i32 @put_device(%struct.device* %54)
  br label %275

56:                                               ; preds = %22
  %57 = load %struct.pvr2_sysfs*, %struct.pvr2_sysfs** %3, align 8
  %58 = getelementptr inbounds %struct.pvr2_sysfs, %struct.pvr2_sysfs* %57, i32 0, i32 12
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 2
  %60 = call i32 @sysfs_attr_init(%struct.TYPE_5__* %59)
  %61 = load %struct.pvr2_sysfs*, %struct.pvr2_sysfs** %3, align 8
  %62 = getelementptr inbounds %struct.pvr2_sysfs, %struct.pvr2_sysfs* %61, i32 0, i32 12
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 2
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 0
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i8** %64, align 8
  %65 = load i8*, i8** @S_IRUGO, align 8
  %66 = load %struct.pvr2_sysfs*, %struct.pvr2_sysfs** %3, align 8
  %67 = getelementptr inbounds %struct.pvr2_sysfs, %struct.pvr2_sysfs* %66, i32 0, i32 12
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 2
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 1
  store i8* %65, i8** %69, align 8
  %70 = load i32, i32* @v4l_minor_number_show, align 4
  %71 = load %struct.pvr2_sysfs*, %struct.pvr2_sysfs** %3, align 8
  %72 = getelementptr inbounds %struct.pvr2_sysfs, %struct.pvr2_sysfs* %71, i32 0, i32 12
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 1
  store i32 %70, i32* %73, align 8
  %74 = load %struct.pvr2_sysfs*, %struct.pvr2_sysfs** %3, align 8
  %75 = getelementptr inbounds %struct.pvr2_sysfs, %struct.pvr2_sysfs* %74, i32 0, i32 12
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 0
  store i32* null, i32** %76, align 8
  %77 = load %struct.pvr2_sysfs*, %struct.pvr2_sysfs** %3, align 8
  %78 = getelementptr inbounds %struct.pvr2_sysfs, %struct.pvr2_sysfs* %77, i32 0, i32 7
  %79 = load %struct.device*, %struct.device** %78, align 8
  %80 = load %struct.pvr2_sysfs*, %struct.pvr2_sysfs** %3, align 8
  %81 = getelementptr inbounds %struct.pvr2_sysfs, %struct.pvr2_sysfs* %80, i32 0, i32 12
  %82 = call i32 @device_create_file(%struct.device* %79, %struct.TYPE_6__* %81)
  store i32 %82, i32* %7, align 4
  %83 = load i32, i32* %7, align 4
  %84 = icmp slt i32 %83, 0
  br i1 %84, label %85, label %89

85:                                               ; preds = %56
  %86 = load i32, i32* @PVR2_TRACE_ERROR_LEGS, align 4
  %87 = load i32, i32* %7, align 4
  %88 = call i32 (i32, i8*, ...) @pvr2_trace(i32 %86, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i32 %87)
  br label %92

89:                                               ; preds = %56
  %90 = load %struct.pvr2_sysfs*, %struct.pvr2_sysfs** %3, align 8
  %91 = getelementptr inbounds %struct.pvr2_sysfs, %struct.pvr2_sysfs* %90, i32 0, i32 0
  store i32 1, i32* %91, align 8
  br label %92

92:                                               ; preds = %89, %85
  %93 = load %struct.pvr2_sysfs*, %struct.pvr2_sysfs** %3, align 8
  %94 = getelementptr inbounds %struct.pvr2_sysfs, %struct.pvr2_sysfs* %93, i32 0, i32 11
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 2
  %96 = call i32 @sysfs_attr_init(%struct.TYPE_5__* %95)
  %97 = load %struct.pvr2_sysfs*, %struct.pvr2_sysfs** %3, align 8
  %98 = getelementptr inbounds %struct.pvr2_sysfs, %struct.pvr2_sysfs* %97, i32 0, i32 11
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 2
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 0
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0), i8** %100, align 8
  %101 = load i8*, i8** @S_IRUGO, align 8
  %102 = load %struct.pvr2_sysfs*, %struct.pvr2_sysfs** %3, align 8
  %103 = getelementptr inbounds %struct.pvr2_sysfs, %struct.pvr2_sysfs* %102, i32 0, i32 11
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 2
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 1
  store i8* %101, i8** %105, align 8
  %106 = load i32, i32* @v4l_radio_minor_number_show, align 4
  %107 = load %struct.pvr2_sysfs*, %struct.pvr2_sysfs** %3, align 8
  %108 = getelementptr inbounds %struct.pvr2_sysfs, %struct.pvr2_sysfs* %107, i32 0, i32 11
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 1
  store i32 %106, i32* %109, align 8
  %110 = load %struct.pvr2_sysfs*, %struct.pvr2_sysfs** %3, align 8
  %111 = getelementptr inbounds %struct.pvr2_sysfs, %struct.pvr2_sysfs* %110, i32 0, i32 11
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 0
  store i32* null, i32** %112, align 8
  %113 = load %struct.pvr2_sysfs*, %struct.pvr2_sysfs** %3, align 8
  %114 = getelementptr inbounds %struct.pvr2_sysfs, %struct.pvr2_sysfs* %113, i32 0, i32 7
  %115 = load %struct.device*, %struct.device** %114, align 8
  %116 = load %struct.pvr2_sysfs*, %struct.pvr2_sysfs** %3, align 8
  %117 = getelementptr inbounds %struct.pvr2_sysfs, %struct.pvr2_sysfs* %116, i32 0, i32 11
  %118 = call i32 @device_create_file(%struct.device* %115, %struct.TYPE_6__* %117)
  store i32 %118, i32* %7, align 4
  %119 = load i32, i32* %7, align 4
  %120 = icmp slt i32 %119, 0
  br i1 %120, label %121, label %125

121:                                              ; preds = %92
  %122 = load i32, i32* @PVR2_TRACE_ERROR_LEGS, align 4
  %123 = load i32, i32* %7, align 4
  %124 = call i32 (i32, i8*, ...) @pvr2_trace(i32 %122, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i32 %123)
  br label %128

125:                                              ; preds = %92
  %126 = load %struct.pvr2_sysfs*, %struct.pvr2_sysfs** %3, align 8
  %127 = getelementptr inbounds %struct.pvr2_sysfs, %struct.pvr2_sysfs* %126, i32 0, i32 1
  store i32 1, i32* %127, align 4
  br label %128

128:                                              ; preds = %125, %121
  %129 = load %struct.pvr2_sysfs*, %struct.pvr2_sysfs** %3, align 8
  %130 = getelementptr inbounds %struct.pvr2_sysfs, %struct.pvr2_sysfs* %129, i32 0, i32 10
  %131 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %130, i32 0, i32 2
  %132 = call i32 @sysfs_attr_init(%struct.TYPE_5__* %131)
  %133 = load %struct.pvr2_sysfs*, %struct.pvr2_sysfs** %3, align 8
  %134 = getelementptr inbounds %struct.pvr2_sysfs, %struct.pvr2_sysfs* %133, i32 0, i32 10
  %135 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %134, i32 0, i32 2
  %136 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %135, i32 0, i32 0
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), i8** %136, align 8
  %137 = load i8*, i8** @S_IRUGO, align 8
  %138 = load %struct.pvr2_sysfs*, %struct.pvr2_sysfs** %3, align 8
  %139 = getelementptr inbounds %struct.pvr2_sysfs, %struct.pvr2_sysfs* %138, i32 0, i32 10
  %140 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %139, i32 0, i32 2
  %141 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %140, i32 0, i32 1
  store i8* %137, i8** %141, align 8
  %142 = load i32, i32* @unit_number_show, align 4
  %143 = load %struct.pvr2_sysfs*, %struct.pvr2_sysfs** %3, align 8
  %144 = getelementptr inbounds %struct.pvr2_sysfs, %struct.pvr2_sysfs* %143, i32 0, i32 10
  %145 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %144, i32 0, i32 1
  store i32 %142, i32* %145, align 8
  %146 = load %struct.pvr2_sysfs*, %struct.pvr2_sysfs** %3, align 8
  %147 = getelementptr inbounds %struct.pvr2_sysfs, %struct.pvr2_sysfs* %146, i32 0, i32 10
  %148 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %147, i32 0, i32 0
  store i32* null, i32** %148, align 8
  %149 = load %struct.pvr2_sysfs*, %struct.pvr2_sysfs** %3, align 8
  %150 = getelementptr inbounds %struct.pvr2_sysfs, %struct.pvr2_sysfs* %149, i32 0, i32 7
  %151 = load %struct.device*, %struct.device** %150, align 8
  %152 = load %struct.pvr2_sysfs*, %struct.pvr2_sysfs** %3, align 8
  %153 = getelementptr inbounds %struct.pvr2_sysfs, %struct.pvr2_sysfs* %152, i32 0, i32 10
  %154 = call i32 @device_create_file(%struct.device* %151, %struct.TYPE_6__* %153)
  store i32 %154, i32* %7, align 4
  %155 = load i32, i32* %7, align 4
  %156 = icmp slt i32 %155, 0
  br i1 %156, label %157, label %161

157:                                              ; preds = %128
  %158 = load i32, i32* @PVR2_TRACE_ERROR_LEGS, align 4
  %159 = load i32, i32* %7, align 4
  %160 = call i32 (i32, i8*, ...) @pvr2_trace(i32 %158, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i32 %159)
  br label %164

161:                                              ; preds = %128
  %162 = load %struct.pvr2_sysfs*, %struct.pvr2_sysfs** %3, align 8
  %163 = getelementptr inbounds %struct.pvr2_sysfs, %struct.pvr2_sysfs* %162, i32 0, i32 2
  store i32 1, i32* %163, align 8
  br label %164

164:                                              ; preds = %161, %157
  %165 = load %struct.pvr2_sysfs*, %struct.pvr2_sysfs** %3, align 8
  %166 = getelementptr inbounds %struct.pvr2_sysfs, %struct.pvr2_sysfs* %165, i32 0, i32 9
  %167 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %166, i32 0, i32 2
  %168 = call i32 @sysfs_attr_init(%struct.TYPE_5__* %167)
  %169 = load %struct.pvr2_sysfs*, %struct.pvr2_sysfs** %3, align 8
  %170 = getelementptr inbounds %struct.pvr2_sysfs, %struct.pvr2_sysfs* %169, i32 0, i32 9
  %171 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %170, i32 0, i32 2
  %172 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %171, i32 0, i32 0
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0), i8** %172, align 8
  %173 = load i8*, i8** @S_IRUGO, align 8
  %174 = load %struct.pvr2_sysfs*, %struct.pvr2_sysfs** %3, align 8
  %175 = getelementptr inbounds %struct.pvr2_sysfs, %struct.pvr2_sysfs* %174, i32 0, i32 9
  %176 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %175, i32 0, i32 2
  %177 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %176, i32 0, i32 1
  store i8* %173, i8** %177, align 8
  %178 = load i32, i32* @bus_info_show, align 4
  %179 = load %struct.pvr2_sysfs*, %struct.pvr2_sysfs** %3, align 8
  %180 = getelementptr inbounds %struct.pvr2_sysfs, %struct.pvr2_sysfs* %179, i32 0, i32 9
  %181 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %180, i32 0, i32 1
  store i32 %178, i32* %181, align 8
  %182 = load %struct.pvr2_sysfs*, %struct.pvr2_sysfs** %3, align 8
  %183 = getelementptr inbounds %struct.pvr2_sysfs, %struct.pvr2_sysfs* %182, i32 0, i32 9
  %184 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %183, i32 0, i32 0
  store i32* null, i32** %184, align 8
  %185 = load %struct.pvr2_sysfs*, %struct.pvr2_sysfs** %3, align 8
  %186 = getelementptr inbounds %struct.pvr2_sysfs, %struct.pvr2_sysfs* %185, i32 0, i32 7
  %187 = load %struct.device*, %struct.device** %186, align 8
  %188 = load %struct.pvr2_sysfs*, %struct.pvr2_sysfs** %3, align 8
  %189 = getelementptr inbounds %struct.pvr2_sysfs, %struct.pvr2_sysfs* %188, i32 0, i32 9
  %190 = call i32 @device_create_file(%struct.device* %187, %struct.TYPE_6__* %189)
  store i32 %190, i32* %7, align 4
  %191 = load i32, i32* %7, align 4
  %192 = icmp slt i32 %191, 0
  br i1 %192, label %193, label %197

193:                                              ; preds = %164
  %194 = load i32, i32* @PVR2_TRACE_ERROR_LEGS, align 4
  %195 = load i32, i32* %7, align 4
  %196 = call i32 (i32, i8*, ...) @pvr2_trace(i32 %194, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i32 %195)
  br label %200

197:                                              ; preds = %164
  %198 = load %struct.pvr2_sysfs*, %struct.pvr2_sysfs** %3, align 8
  %199 = getelementptr inbounds %struct.pvr2_sysfs, %struct.pvr2_sysfs* %198, i32 0, i32 3
  store i32 1, i32* %199, align 4
  br label %200

200:                                              ; preds = %197, %193
  %201 = load %struct.pvr2_sysfs*, %struct.pvr2_sysfs** %3, align 8
  %202 = getelementptr inbounds %struct.pvr2_sysfs, %struct.pvr2_sysfs* %201, i32 0, i32 8
  %203 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %202, i32 0, i32 2
  %204 = call i32 @sysfs_attr_init(%struct.TYPE_5__* %203)
  %205 = load %struct.pvr2_sysfs*, %struct.pvr2_sysfs** %3, align 8
  %206 = getelementptr inbounds %struct.pvr2_sysfs, %struct.pvr2_sysfs* %205, i32 0, i32 8
  %207 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %206, i32 0, i32 2
  %208 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %207, i32 0, i32 0
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i64 0, i64 0), i8** %208, align 8
  %209 = load i8*, i8** @S_IRUGO, align 8
  %210 = load %struct.pvr2_sysfs*, %struct.pvr2_sysfs** %3, align 8
  %211 = getelementptr inbounds %struct.pvr2_sysfs, %struct.pvr2_sysfs* %210, i32 0, i32 8
  %212 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %211, i32 0, i32 2
  %213 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %212, i32 0, i32 1
  store i8* %209, i8** %213, align 8
  %214 = load i32, i32* @hdw_name_show, align 4
  %215 = load %struct.pvr2_sysfs*, %struct.pvr2_sysfs** %3, align 8
  %216 = getelementptr inbounds %struct.pvr2_sysfs, %struct.pvr2_sysfs* %215, i32 0, i32 8
  %217 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %216, i32 0, i32 1
  store i32 %214, i32* %217, align 8
  %218 = load %struct.pvr2_sysfs*, %struct.pvr2_sysfs** %3, align 8
  %219 = getelementptr inbounds %struct.pvr2_sysfs, %struct.pvr2_sysfs* %218, i32 0, i32 8
  %220 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %219, i32 0, i32 0
  store i32* null, i32** %220, align 8
  %221 = load %struct.pvr2_sysfs*, %struct.pvr2_sysfs** %3, align 8
  %222 = getelementptr inbounds %struct.pvr2_sysfs, %struct.pvr2_sysfs* %221, i32 0, i32 7
  %223 = load %struct.device*, %struct.device** %222, align 8
  %224 = load %struct.pvr2_sysfs*, %struct.pvr2_sysfs** %3, align 8
  %225 = getelementptr inbounds %struct.pvr2_sysfs, %struct.pvr2_sysfs* %224, i32 0, i32 8
  %226 = call i32 @device_create_file(%struct.device* %223, %struct.TYPE_6__* %225)
  store i32 %226, i32* %7, align 4
  %227 = load i32, i32* %7, align 4
  %228 = icmp slt i32 %227, 0
  br i1 %228, label %229, label %233

229:                                              ; preds = %200
  %230 = load i32, i32* @PVR2_TRACE_ERROR_LEGS, align 4
  %231 = load i32, i32* %7, align 4
  %232 = call i32 (i32, i8*, ...) @pvr2_trace(i32 %230, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i32 %231)
  br label %236

233:                                              ; preds = %200
  %234 = load %struct.pvr2_sysfs*, %struct.pvr2_sysfs** %3, align 8
  %235 = getelementptr inbounds %struct.pvr2_sysfs, %struct.pvr2_sysfs* %234, i32 0, i32 4
  store i32 1, i32* %235, align 8
  br label %236

236:                                              ; preds = %233, %229
  %237 = load %struct.pvr2_sysfs*, %struct.pvr2_sysfs** %3, align 8
  %238 = getelementptr inbounds %struct.pvr2_sysfs, %struct.pvr2_sysfs* %237, i32 0, i32 6
  %239 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %238, i32 0, i32 2
  %240 = call i32 @sysfs_attr_init(%struct.TYPE_5__* %239)
  %241 = load %struct.pvr2_sysfs*, %struct.pvr2_sysfs** %3, align 8
  %242 = getelementptr inbounds %struct.pvr2_sysfs, %struct.pvr2_sysfs* %241, i32 0, i32 6
  %243 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %242, i32 0, i32 2
  %244 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %243, i32 0, i32 0
  store i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9, i64 0, i64 0), i8** %244, align 8
  %245 = load i8*, i8** @S_IRUGO, align 8
  %246 = load %struct.pvr2_sysfs*, %struct.pvr2_sysfs** %3, align 8
  %247 = getelementptr inbounds %struct.pvr2_sysfs, %struct.pvr2_sysfs* %246, i32 0, i32 6
  %248 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %247, i32 0, i32 2
  %249 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %248, i32 0, i32 1
  store i8* %245, i8** %249, align 8
  %250 = load i32, i32* @hdw_desc_show, align 4
  %251 = load %struct.pvr2_sysfs*, %struct.pvr2_sysfs** %3, align 8
  %252 = getelementptr inbounds %struct.pvr2_sysfs, %struct.pvr2_sysfs* %251, i32 0, i32 6
  %253 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %252, i32 0, i32 1
  store i32 %250, i32* %253, align 8
  %254 = load %struct.pvr2_sysfs*, %struct.pvr2_sysfs** %3, align 8
  %255 = getelementptr inbounds %struct.pvr2_sysfs, %struct.pvr2_sysfs* %254, i32 0, i32 6
  %256 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %255, i32 0, i32 0
  store i32* null, i32** %256, align 8
  %257 = load %struct.pvr2_sysfs*, %struct.pvr2_sysfs** %3, align 8
  %258 = getelementptr inbounds %struct.pvr2_sysfs, %struct.pvr2_sysfs* %257, i32 0, i32 7
  %259 = load %struct.device*, %struct.device** %258, align 8
  %260 = load %struct.pvr2_sysfs*, %struct.pvr2_sysfs** %3, align 8
  %261 = getelementptr inbounds %struct.pvr2_sysfs, %struct.pvr2_sysfs* %260, i32 0, i32 6
  %262 = call i32 @device_create_file(%struct.device* %259, %struct.TYPE_6__* %261)
  store i32 %262, i32* %7, align 4
  %263 = load i32, i32* %7, align 4
  %264 = icmp slt i32 %263, 0
  br i1 %264, label %265, label %269

265:                                              ; preds = %236
  %266 = load i32, i32* @PVR2_TRACE_ERROR_LEGS, align 4
  %267 = load i32, i32* %7, align 4
  %268 = call i32 (i32, i8*, ...) @pvr2_trace(i32 %266, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i32 %267)
  br label %272

269:                                              ; preds = %236
  %270 = load %struct.pvr2_sysfs*, %struct.pvr2_sysfs** %3, align 8
  %271 = getelementptr inbounds %struct.pvr2_sysfs, %struct.pvr2_sysfs* %270, i32 0, i32 5
  store i32 1, i32* %271, align 4
  br label %272

272:                                              ; preds = %269, %265
  %273 = load %struct.pvr2_sysfs*, %struct.pvr2_sysfs** %3, align 8
  %274 = call i32 @pvr2_sysfs_add_controls(%struct.pvr2_sysfs* %273)
  br label %275

275:                                              ; preds = %272, %51, %21, %15
  ret void
}

declare dso_local %struct.usb_device* @pvr2_hdw_get_dev(i32) #1

declare dso_local %struct.device* @kzalloc(i32, i32) #1

declare dso_local i32 @pvr2_sysfs_trace(i8*, %struct.device*) #1

declare dso_local i32 @dev_set_name(%struct.device*, i8*, i32) #1

declare dso_local i32 @pvr2_hdw_get_device_identifier(i32) #1

declare dso_local i32 @get_device(i32*) #1

declare dso_local i32 @dev_set_drvdata(%struct.device*, %struct.pvr2_sysfs*) #1

declare dso_local i32 @device_register(%struct.device*) #1

declare dso_local i32 @pvr2_trace(i32, i8*, ...) #1

declare dso_local i32 @put_device(%struct.device*) #1

declare dso_local i32 @sysfs_attr_init(%struct.TYPE_5__*) #1

declare dso_local i32 @device_create_file(%struct.device*, %struct.TYPE_6__*) #1

declare dso_local i32 @pvr2_sysfs_add_controls(%struct.pvr2_sysfs*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
