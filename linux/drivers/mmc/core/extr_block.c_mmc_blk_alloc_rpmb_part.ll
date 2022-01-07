; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/core/extr_block.c_mmc_blk_alloc_rpmb_part.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/core/extr_block.c_mmc_blk_alloc_rpmb_part.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_card = type { i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.mmc_blk_data = type { i32 }
%struct.mmc_rpmb_data = type { i32, i32, %struct.TYPE_9__, i32, %struct.TYPE_10__, %struct.mmc_blk_data* }
%struct.TYPE_9__ = type { i8*, i32, i32*, i32, i32* }
%struct.TYPE_10__ = type { i32 }

@DISK_NAME_LEN = common dso_local global i32 0, align 4
@mmc_rpmb_ida = common dso_local global i32 0, align 4
@max_devices = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"mmcblk%u%s\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@mmc_rpmb_bus_type = common dso_local global i32 0, align 4
@mmc_rpmb_devt = common dso_local global i32 0, align 4
@mmc_blk_rpmb_device_release = common dso_local global i32 0, align 4
@mmc_rpmb_fileops = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"%s: could not add character device\0A\00", align 1
@STRING_UNITS_2 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [44 x i8] c"%s: %s %s partition %u %s, chardev (%d:%d)\0A\00", align 1
@EXT_CSD_PART_CONFIG_ACC_RPMB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mmc_card*, %struct.mmc_blk_data*, i32, i64, i8*)* @mmc_blk_alloc_rpmb_part to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mmc_blk_alloc_rpmb_part(%struct.mmc_card* %0, %struct.mmc_blk_data* %1, i32 %2, i64 %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.mmc_card*, align 8
  %8 = alloca %struct.mmc_blk_data*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca [10 x i8], align 1
  %17 = alloca %struct.mmc_rpmb_data*, align 8
  %18 = alloca i32, align 4
  store %struct.mmc_card* %0, %struct.mmc_card** %7, align 8
  store %struct.mmc_blk_data* %1, %struct.mmc_blk_data** %8, align 8
  store i32 %2, i32* %9, align 4
  store i64 %3, i64* %10, align 8
  store i8* %4, i8** %11, align 8
  %19 = load i32, i32* @DISK_NAME_LEN, align 4
  %20 = zext i32 %19 to i64
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %14, align 8
  %22 = alloca i8, i64 %20, align 16
  store i64 %20, i64* %15, align 8
  %23 = load i32, i32* @max_devices, align 4
  %24 = load i32, i32* @GFP_KERNEL, align 4
  %25 = call i32 @ida_simple_get(i32* @mmc_rpmb_ida, i32 0, i32 %23, i32 %24)
  store i32 %25, i32* %12, align 4
  %26 = load i32, i32* %12, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %5
  %29 = load i32, i32* %12, align 4
  store i32 %29, i32* %6, align 4
  store i32 1, i32* %18, align 4
  br label %139

30:                                               ; preds = %5
  %31 = load i32, i32* @GFP_KERNEL, align 4
  %32 = call %struct.mmc_rpmb_data* @kzalloc(i32 64, i32 %31)
  store %struct.mmc_rpmb_data* %32, %struct.mmc_rpmb_data** %17, align 8
  %33 = load %struct.mmc_rpmb_data*, %struct.mmc_rpmb_data** %17, align 8
  %34 = icmp ne %struct.mmc_rpmb_data* %33, null
  br i1 %34, label %40, label %35

35:                                               ; preds = %30
  %36 = load i32, i32* %12, align 4
  %37 = call i32 @ida_simple_remove(i32* @mmc_rpmb_ida, i32 %36)
  %38 = load i32, i32* @ENOMEM, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %6, align 4
  store i32 1, i32* %18, align 4
  br label %139

40:                                               ; preds = %30
  %41 = trunc i64 %20 to i32
  %42 = load %struct.mmc_card*, %struct.mmc_card** %7, align 8
  %43 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %42, i32 0, i32 1
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i8*, i8** %11, align 8
  %48 = icmp ne i8* %47, null
  br i1 %48, label %49, label %51

49:                                               ; preds = %40
  %50 = load i8*, i8** %11, align 8
  br label %52

51:                                               ; preds = %40
  br label %52

52:                                               ; preds = %51, %49
  %53 = phi i8* [ %50, %49 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), %51 ]
  %54 = call i32 @snprintf(i8* %22, i32 %41, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %46, i8* %53)
  %55 = load i32, i32* %12, align 4
  %56 = load %struct.mmc_rpmb_data*, %struct.mmc_rpmb_data** %17, align 8
  %57 = getelementptr inbounds %struct.mmc_rpmb_data, %struct.mmc_rpmb_data* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 8
  %58 = load i32, i32* %9, align 4
  %59 = load %struct.mmc_rpmb_data*, %struct.mmc_rpmb_data** %17, align 8
  %60 = getelementptr inbounds %struct.mmc_rpmb_data, %struct.mmc_rpmb_data* %59, i32 0, i32 1
  store i32 %58, i32* %60, align 4
  %61 = load %struct.mmc_rpmb_data*, %struct.mmc_rpmb_data** %17, align 8
  %62 = getelementptr inbounds %struct.mmc_rpmb_data, %struct.mmc_rpmb_data* %61, i32 0, i32 2
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 0
  store i8* %22, i8** %63, align 8
  %64 = load %struct.mmc_rpmb_data*, %struct.mmc_rpmb_data** %17, align 8
  %65 = getelementptr inbounds %struct.mmc_rpmb_data, %struct.mmc_rpmb_data* %64, i32 0, i32 2
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 4
  store i32* @mmc_rpmb_bus_type, i32** %66, align 8
  %67 = load i32, i32* @mmc_rpmb_devt, align 4
  %68 = call i32 @MAJOR(i32 %67)
  %69 = load %struct.mmc_rpmb_data*, %struct.mmc_rpmb_data** %17, align 8
  %70 = getelementptr inbounds %struct.mmc_rpmb_data, %struct.mmc_rpmb_data* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @MKDEV(i32 %68, i32 %71)
  %73 = load %struct.mmc_rpmb_data*, %struct.mmc_rpmb_data** %17, align 8
  %74 = getelementptr inbounds %struct.mmc_rpmb_data, %struct.mmc_rpmb_data* %73, i32 0, i32 2
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i32 0, i32 3
  store i32 %72, i32* %75, align 8
  %76 = load %struct.mmc_card*, %struct.mmc_card** %7, align 8
  %77 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %76, i32 0, i32 0
  %78 = load %struct.mmc_rpmb_data*, %struct.mmc_rpmb_data** %17, align 8
  %79 = getelementptr inbounds %struct.mmc_rpmb_data, %struct.mmc_rpmb_data* %78, i32 0, i32 2
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i32 0, i32 2
  store i32* %77, i32** %80, align 8
  %81 = load i32, i32* @mmc_blk_rpmb_device_release, align 4
  %82 = load %struct.mmc_rpmb_data*, %struct.mmc_rpmb_data** %17, align 8
  %83 = getelementptr inbounds %struct.mmc_rpmb_data, %struct.mmc_rpmb_data* %82, i32 0, i32 2
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 1
  store i32 %81, i32* %84, align 8
  %85 = load %struct.mmc_rpmb_data*, %struct.mmc_rpmb_data** %17, align 8
  %86 = getelementptr inbounds %struct.mmc_rpmb_data, %struct.mmc_rpmb_data* %85, i32 0, i32 2
  %87 = call i32 @device_initialize(%struct.TYPE_9__* %86)
  %88 = load %struct.mmc_rpmb_data*, %struct.mmc_rpmb_data** %17, align 8
  %89 = getelementptr inbounds %struct.mmc_rpmb_data, %struct.mmc_rpmb_data* %88, i32 0, i32 2
  %90 = load %struct.mmc_rpmb_data*, %struct.mmc_rpmb_data** %17, align 8
  %91 = call i32 @dev_set_drvdata(%struct.TYPE_9__* %89, %struct.mmc_rpmb_data* %90)
  %92 = load %struct.mmc_blk_data*, %struct.mmc_blk_data** %8, align 8
  %93 = load %struct.mmc_rpmb_data*, %struct.mmc_rpmb_data** %17, align 8
  %94 = getelementptr inbounds %struct.mmc_rpmb_data, %struct.mmc_rpmb_data* %93, i32 0, i32 5
  store %struct.mmc_blk_data* %92, %struct.mmc_blk_data** %94, align 8
  %95 = load %struct.mmc_rpmb_data*, %struct.mmc_rpmb_data** %17, align 8
  %96 = getelementptr inbounds %struct.mmc_rpmb_data, %struct.mmc_rpmb_data* %95, i32 0, i32 4
  %97 = call i32 @cdev_init(%struct.TYPE_10__* %96, i32* @mmc_rpmb_fileops)
  %98 = load i32, i32* @THIS_MODULE, align 4
  %99 = load %struct.mmc_rpmb_data*, %struct.mmc_rpmb_data** %17, align 8
  %100 = getelementptr inbounds %struct.mmc_rpmb_data, %struct.mmc_rpmb_data* %99, i32 0, i32 4
  %101 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %100, i32 0, i32 0
  store i32 %98, i32* %101, align 4
  %102 = load %struct.mmc_rpmb_data*, %struct.mmc_rpmb_data** %17, align 8
  %103 = getelementptr inbounds %struct.mmc_rpmb_data, %struct.mmc_rpmb_data* %102, i32 0, i32 4
  %104 = load %struct.mmc_rpmb_data*, %struct.mmc_rpmb_data** %17, align 8
  %105 = getelementptr inbounds %struct.mmc_rpmb_data, %struct.mmc_rpmb_data* %104, i32 0, i32 2
  %106 = call i32 @cdev_device_add(%struct.TYPE_10__* %103, %struct.TYPE_9__* %105)
  store i32 %106, i32* %13, align 4
  %107 = load i32, i32* %13, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %111

109:                                              ; preds = %52
  %110 = call i32 @pr_err(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i8* %22)
  br label %134

111:                                              ; preds = %52
  %112 = load %struct.mmc_rpmb_data*, %struct.mmc_rpmb_data** %17, align 8
  %113 = getelementptr inbounds %struct.mmc_rpmb_data, %struct.mmc_rpmb_data* %112, i32 0, i32 3
  %114 = load %struct.mmc_blk_data*, %struct.mmc_blk_data** %8, align 8
  %115 = getelementptr inbounds %struct.mmc_blk_data, %struct.mmc_blk_data* %114, i32 0, i32 0
  %116 = call i32 @list_add(i32* %113, i32* %115)
  %117 = load i64, i64* %10, align 8
  %118 = trunc i64 %117 to i32
  %119 = load i32, i32* @STRING_UNITS_2, align 4
  %120 = getelementptr inbounds [10 x i8], [10 x i8]* %16, i64 0, i64 0
  %121 = call i32 @string_get_size(i32 %118, i32 512, i32 %119, i8* %120, i32 10)
  %122 = load %struct.mmc_card*, %struct.mmc_card** %7, align 8
  %123 = call i32 @mmc_card_id(%struct.mmc_card* %122)
  %124 = load %struct.mmc_card*, %struct.mmc_card** %7, align 8
  %125 = call i32 @mmc_card_name(%struct.mmc_card* %124)
  %126 = load i32, i32* @EXT_CSD_PART_CONFIG_ACC_RPMB, align 4
  %127 = getelementptr inbounds [10 x i8], [10 x i8]* %16, i64 0, i64 0
  %128 = load i32, i32* @mmc_rpmb_devt, align 4
  %129 = call i32 @MAJOR(i32 %128)
  %130 = load %struct.mmc_rpmb_data*, %struct.mmc_rpmb_data** %17, align 8
  %131 = getelementptr inbounds %struct.mmc_rpmb_data, %struct.mmc_rpmb_data* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = call i32 @pr_info(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0), i8* %22, i32 %123, i32 %125, i32 %126, i8* %127, i32 %129, i32 %132)
  store i32 0, i32* %6, align 4
  store i32 1, i32* %18, align 4
  br label %139

134:                                              ; preds = %109
  %135 = load %struct.mmc_rpmb_data*, %struct.mmc_rpmb_data** %17, align 8
  %136 = getelementptr inbounds %struct.mmc_rpmb_data, %struct.mmc_rpmb_data* %135, i32 0, i32 2
  %137 = call i32 @put_device(%struct.TYPE_9__* %136)
  %138 = load i32, i32* %13, align 4
  store i32 %138, i32* %6, align 4
  store i32 1, i32* %18, align 4
  br label %139

139:                                              ; preds = %134, %111, %35, %28
  %140 = load i8*, i8** %14, align 8
  call void @llvm.stackrestore(i8* %140)
  %141 = load i32, i32* %6, align 4
  ret i32 %141
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @ida_simple_get(i32*, i32, i32, i32) #2

declare dso_local %struct.mmc_rpmb_data* @kzalloc(i32, i32) #2

declare dso_local i32 @ida_simple_remove(i32*, i32) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i32, i8*) #2

declare dso_local i32 @MKDEV(i32, i32) #2

declare dso_local i32 @MAJOR(i32) #2

declare dso_local i32 @device_initialize(%struct.TYPE_9__*) #2

declare dso_local i32 @dev_set_drvdata(%struct.TYPE_9__*, %struct.mmc_rpmb_data*) #2

declare dso_local i32 @cdev_init(%struct.TYPE_10__*, i32*) #2

declare dso_local i32 @cdev_device_add(%struct.TYPE_10__*, %struct.TYPE_9__*) #2

declare dso_local i32 @pr_err(i8*, i8*) #2

declare dso_local i32 @list_add(i32*, i32*) #2

declare dso_local i32 @string_get_size(i32, i32, i32, i8*, i32) #2

declare dso_local i32 @pr_info(i8*, i8*, i32, i32, i32, i8*, i32, i32) #2

declare dso_local i32 @mmc_card_id(%struct.mmc_card*) #2

declare dso_local i32 @mmc_card_name(%struct.mmc_card*) #2

declare dso_local i32 @put_device(%struct.TYPE_9__*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
