; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/cxl/extr_sysfs.c_cxl_sysfs_afu_new_cr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/cxl/extr_sysfs.c_cxl_sysfs_afu_new_cr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 (%struct.cxl_afu*, i32, i32, i32*)*, i32 (%struct.cxl_afu*, i32, i32, i32*)* }
%struct.cxl_afu = type { %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.afu_config_record = type { i32, i32, i32, %struct.TYPE_9__, i32, i32 }
%struct.TYPE_9__ = type { i32, i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i8*, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@cxl_ops = common dso_local global %struct.TYPE_10__* null, align 8
@PCI_DEVICE_ID = common dso_local global i32 0, align 4
@PCI_VENDOR_ID = common dso_local global i32 0, align 4
@PCI_CLASS_REVISION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"config\00", align 1
@S_IRUSR = common dso_local global i32 0, align 4
@afu_read_config = common dso_local global i32 0, align 4
@afu_config_record_type = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"cr%i\00", align 1
@KOBJ_ADD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.afu_config_record* (%struct.cxl_afu*, i32)* @cxl_sysfs_afu_new_cr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.afu_config_record* @cxl_sysfs_afu_new_cr(%struct.cxl_afu* %0, i32 %1) #0 {
  %3 = alloca %struct.afu_config_record*, align 8
  %4 = alloca %struct.cxl_afu*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.afu_config_record*, align 8
  %7 = alloca i32, align 4
  store %struct.cxl_afu* %0, %struct.cxl_afu** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.afu_config_record* @kzalloc(i32 48, i32 %8)
  store %struct.afu_config_record* %9, %struct.afu_config_record** %6, align 8
  %10 = load %struct.afu_config_record*, %struct.afu_config_record** %6, align 8
  %11 = icmp ne %struct.afu_config_record* %10, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  %15 = call %struct.afu_config_record* @ERR_PTR(i32 %14)
  store %struct.afu_config_record* %15, %struct.afu_config_record** %3, align 8
  br label %133

16:                                               ; preds = %2
  %17 = load i32, i32* %5, align 4
  %18 = load %struct.afu_config_record*, %struct.afu_config_record** %6, align 8
  %19 = getelementptr inbounds %struct.afu_config_record, %struct.afu_config_record* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 8
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** @cxl_ops, align 8
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 0
  %22 = load i32 (%struct.cxl_afu*, i32, i32, i32*)*, i32 (%struct.cxl_afu*, i32, i32, i32*)** %21, align 8
  %23 = load %struct.cxl_afu*, %struct.cxl_afu** %4, align 8
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* @PCI_DEVICE_ID, align 4
  %26 = load %struct.afu_config_record*, %struct.afu_config_record** %6, align 8
  %27 = getelementptr inbounds %struct.afu_config_record, %struct.afu_config_record* %26, i32 0, i32 5
  %28 = call i32 %22(%struct.cxl_afu* %23, i32 %24, i32 %25, i32* %27)
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %7, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %16
  br label %128

32:                                               ; preds = %16
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** @cxl_ops, align 8
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 0
  %35 = load i32 (%struct.cxl_afu*, i32, i32, i32*)*, i32 (%struct.cxl_afu*, i32, i32, i32*)** %34, align 8
  %36 = load %struct.cxl_afu*, %struct.cxl_afu** %4, align 8
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* @PCI_VENDOR_ID, align 4
  %39 = load %struct.afu_config_record*, %struct.afu_config_record** %6, align 8
  %40 = getelementptr inbounds %struct.afu_config_record, %struct.afu_config_record* %39, i32 0, i32 4
  %41 = call i32 %35(%struct.cxl_afu* %36, i32 %37, i32 %38, i32* %40)
  store i32 %41, i32* %7, align 4
  %42 = load i32, i32* %7, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %32
  br label %128

45:                                               ; preds = %32
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** @cxl_ops, align 8
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 1
  %48 = load i32 (%struct.cxl_afu*, i32, i32, i32*)*, i32 (%struct.cxl_afu*, i32, i32, i32*)** %47, align 8
  %49 = load %struct.cxl_afu*, %struct.cxl_afu** %4, align 8
  %50 = load i32, i32* %5, align 4
  %51 = load i32, i32* @PCI_CLASS_REVISION, align 4
  %52 = load %struct.afu_config_record*, %struct.afu_config_record** %6, align 8
  %53 = getelementptr inbounds %struct.afu_config_record, %struct.afu_config_record* %52, i32 0, i32 1
  %54 = call i32 %48(%struct.cxl_afu* %49, i32 %50, i32 %51, i32* %53)
  store i32 %54, i32* %7, align 4
  %55 = load i32, i32* %7, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %45
  br label %128

58:                                               ; preds = %45
  %59 = load %struct.afu_config_record*, %struct.afu_config_record** %6, align 8
  %60 = getelementptr inbounds %struct.afu_config_record, %struct.afu_config_record* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = ashr i32 %61, 8
  store i32 %62, i32* %60, align 4
  %63 = load %struct.afu_config_record*, %struct.afu_config_record** %6, align 8
  %64 = getelementptr inbounds %struct.afu_config_record, %struct.afu_config_record* %63, i32 0, i32 3
  %65 = call i32 @sysfs_bin_attr_init(%struct.TYPE_9__* %64)
  %66 = load %struct.afu_config_record*, %struct.afu_config_record** %6, align 8
  %67 = getelementptr inbounds %struct.afu_config_record, %struct.afu_config_record* %66, i32 0, i32 3
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 2
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8** %69, align 8
  %70 = load i32, i32* @S_IRUSR, align 4
  %71 = load %struct.afu_config_record*, %struct.afu_config_record** %6, align 8
  %72 = getelementptr inbounds %struct.afu_config_record, %struct.afu_config_record* %71, i32 0, i32 3
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 2
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 1
  store i32 %70, i32* %74, align 8
  %75 = load %struct.cxl_afu*, %struct.cxl_afu** %4, align 8
  %76 = getelementptr inbounds %struct.cxl_afu, %struct.cxl_afu* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.afu_config_record*, %struct.afu_config_record** %6, align 8
  %79 = getelementptr inbounds %struct.afu_config_record, %struct.afu_config_record* %78, i32 0, i32 3
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i32 0, i32 1
  store i32 %77, i32* %80, align 4
  %81 = load i32, i32* @afu_read_config, align 4
  %82 = load %struct.afu_config_record*, %struct.afu_config_record** %6, align 8
  %83 = getelementptr inbounds %struct.afu_config_record, %struct.afu_config_record* %82, i32 0, i32 3
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 0
  store i32 %81, i32* %84, align 8
  %85 = load %struct.afu_config_record*, %struct.afu_config_record** %6, align 8
  %86 = getelementptr inbounds %struct.afu_config_record, %struct.afu_config_record* %85, i32 0, i32 2
  %87 = load %struct.cxl_afu*, %struct.cxl_afu** %4, align 8
  %88 = getelementptr inbounds %struct.cxl_afu, %struct.cxl_afu* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 0
  %90 = load %struct.afu_config_record*, %struct.afu_config_record** %6, align 8
  %91 = getelementptr inbounds %struct.afu_config_record, %struct.afu_config_record* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = call i32 @kobject_init_and_add(i32* %86, i32* @afu_config_record_type, i32* %89, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %92)
  store i32 %93, i32* %7, align 4
  %94 = load i32, i32* %7, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %58
  br label %128

97:                                               ; preds = %58
  %98 = load %struct.afu_config_record*, %struct.afu_config_record** %6, align 8
  %99 = getelementptr inbounds %struct.afu_config_record, %struct.afu_config_record* %98, i32 0, i32 2
  %100 = load %struct.afu_config_record*, %struct.afu_config_record** %6, align 8
  %101 = getelementptr inbounds %struct.afu_config_record, %struct.afu_config_record* %100, i32 0, i32 3
  %102 = call i32 @sysfs_create_bin_file(i32* %99, %struct.TYPE_9__* %101)
  store i32 %102, i32* %7, align 4
  %103 = load i32, i32* %7, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %97
  br label %122

106:                                              ; preds = %97
  %107 = load %struct.afu_config_record*, %struct.afu_config_record** %6, align 8
  %108 = getelementptr inbounds %struct.afu_config_record, %struct.afu_config_record* %107, i32 0, i32 2
  %109 = load i32, i32* @KOBJ_ADD, align 4
  %110 = call i32 @kobject_uevent(i32* %108, i32 %109)
  store i32 %110, i32* %7, align 4
  %111 = load i32, i32* %7, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %106
  br label %116

114:                                              ; preds = %106
  %115 = load %struct.afu_config_record*, %struct.afu_config_record** %6, align 8
  store %struct.afu_config_record* %115, %struct.afu_config_record** %3, align 8
  br label %133

116:                                              ; preds = %113
  %117 = load %struct.afu_config_record*, %struct.afu_config_record** %6, align 8
  %118 = getelementptr inbounds %struct.afu_config_record, %struct.afu_config_record* %117, i32 0, i32 2
  %119 = load %struct.afu_config_record*, %struct.afu_config_record** %6, align 8
  %120 = getelementptr inbounds %struct.afu_config_record, %struct.afu_config_record* %119, i32 0, i32 3
  %121 = call i32 @sysfs_remove_bin_file(i32* %118, %struct.TYPE_9__* %120)
  br label %122

122:                                              ; preds = %116, %105
  %123 = load %struct.afu_config_record*, %struct.afu_config_record** %6, align 8
  %124 = getelementptr inbounds %struct.afu_config_record, %struct.afu_config_record* %123, i32 0, i32 2
  %125 = call i32 @kobject_put(i32* %124)
  %126 = load i32, i32* %7, align 4
  %127 = call %struct.afu_config_record* @ERR_PTR(i32 %126)
  store %struct.afu_config_record* %127, %struct.afu_config_record** %3, align 8
  br label %133

128:                                              ; preds = %96, %57, %44, %31
  %129 = load %struct.afu_config_record*, %struct.afu_config_record** %6, align 8
  %130 = call i32 @kfree(%struct.afu_config_record* %129)
  %131 = load i32, i32* %7, align 4
  %132 = call %struct.afu_config_record* @ERR_PTR(i32 %131)
  store %struct.afu_config_record* %132, %struct.afu_config_record** %3, align 8
  br label %133

133:                                              ; preds = %128, %122, %114, %12
  %134 = load %struct.afu_config_record*, %struct.afu_config_record** %3, align 8
  ret %struct.afu_config_record* %134
}

declare dso_local %struct.afu_config_record* @kzalloc(i32, i32) #1

declare dso_local %struct.afu_config_record* @ERR_PTR(i32) #1

declare dso_local i32 @sysfs_bin_attr_init(%struct.TYPE_9__*) #1

declare dso_local i32 @kobject_init_and_add(i32*, i32*, i32*, i8*, i32) #1

declare dso_local i32 @sysfs_create_bin_file(i32*, %struct.TYPE_9__*) #1

declare dso_local i32 @kobject_uevent(i32*, i32) #1

declare dso_local i32 @sysfs_remove_bin_file(i32*, %struct.TYPE_9__*) #1

declare dso_local i32 @kobject_put(i32*) #1

declare dso_local i32 @kfree(%struct.afu_config_record*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
