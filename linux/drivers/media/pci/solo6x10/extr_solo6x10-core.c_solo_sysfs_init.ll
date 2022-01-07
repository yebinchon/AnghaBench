; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/solo6x10/extr_solo6x10-core.c_solo_sysfs_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/solo6x10/extr_solo6x10-core.c_solo_sysfs_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.solo_dev = type { i64, i32, i32, %struct.TYPE_5__*, %struct.TYPE_4__*, %struct.device, %struct.bin_attribute }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.device = type { i32*, i32 }
%struct.bin_attribute = type { i32, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i8*, i32 }

@SOLO_DEV_6110 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [9 x i8] c"solo6110\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"solo6010\00", align 1
@solo_device_release = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"%s-%d-%d\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@solo_dev_attrs = common dso_local global i32* null, align 8
@.str.3 = private unnamed_addr constant [6 x i8] c"sdram\00", align 1
@sdram_show = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.solo_dev*)* @solo_sysfs_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @solo_sysfs_init(%struct.solo_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.solo_dev*, align 8
  %4 = alloca %struct.bin_attribute*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store %struct.solo_dev* %0, %struct.solo_dev** %3, align 8
  %8 = load %struct.solo_dev*, %struct.solo_dev** %3, align 8
  %9 = getelementptr inbounds %struct.solo_dev, %struct.solo_dev* %8, i32 0, i32 6
  store %struct.bin_attribute* %9, %struct.bin_attribute** %4, align 8
  %10 = load %struct.solo_dev*, %struct.solo_dev** %3, align 8
  %11 = getelementptr inbounds %struct.solo_dev, %struct.solo_dev* %10, i32 0, i32 5
  store %struct.device* %11, %struct.device** %5, align 8
  %12 = load %struct.solo_dev*, %struct.solo_dev** %3, align 8
  %13 = getelementptr inbounds %struct.solo_dev, %struct.solo_dev* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @SOLO_DEV_6110, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8** %6, align 8
  br label %19

18:                                               ; preds = %1
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8** %6, align 8
  br label %19

19:                                               ; preds = %18, %17
  %20 = load i32, i32* @solo_device_release, align 4
  %21 = load %struct.device*, %struct.device** %5, align 8
  %22 = getelementptr inbounds %struct.device, %struct.device* %21, i32 0, i32 1
  store i32 %20, i32* %22, align 8
  %23 = load %struct.solo_dev*, %struct.solo_dev** %3, align 8
  %24 = getelementptr inbounds %struct.solo_dev, %struct.solo_dev* %23, i32 0, i32 4
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load %struct.device*, %struct.device** %5, align 8
  %28 = getelementptr inbounds %struct.device, %struct.device* %27, i32 0, i32 0
  store i32* %26, i32** %28, align 8
  %29 = load %struct.device*, %struct.device** %5, align 8
  %30 = load %struct.solo_dev*, %struct.solo_dev** %3, align 8
  %31 = getelementptr inbounds %struct.solo_dev, %struct.solo_dev* %30, i32 0, i32 4
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = call i32 @dev_to_node(i32* %33)
  %35 = call i32 @set_dev_node(%struct.device* %29, i32 %34)
  %36 = load %struct.device*, %struct.device** %5, align 8
  %37 = load i8*, i8** %6, align 8
  %38 = load %struct.solo_dev*, %struct.solo_dev** %3, align 8
  %39 = getelementptr inbounds %struct.solo_dev, %struct.solo_dev* %38, i32 0, i32 3
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.solo_dev*, %struct.solo_dev** %3, align 8
  %44 = getelementptr inbounds %struct.solo_dev, %struct.solo_dev* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @dev_set_name(%struct.device* %36, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* %37, i32 %42, i32 %45)
  %47 = load %struct.device*, %struct.device** %5, align 8
  %48 = call i64 @device_register(%struct.device* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %19
  %51 = load %struct.device*, %struct.device** %5, align 8
  %52 = getelementptr inbounds %struct.device, %struct.device* %51, i32 0, i32 0
  store i32* null, i32** %52, align 8
  %53 = load i32, i32* @ENOMEM, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %2, align 4
  br label %106

55:                                               ; preds = %19
  store i32 0, i32* %7, align 4
  br label %56

56:                                               ; preds = %75, %55
  %57 = load i32, i32* %7, align 4
  %58 = load i32*, i32** @solo_dev_attrs, align 8
  %59 = call i32 @ARRAY_SIZE(i32* %58)
  %60 = icmp slt i32 %57, %59
  br i1 %60, label %61, label %78

61:                                               ; preds = %56
  %62 = load %struct.device*, %struct.device** %5, align 8
  %63 = load i32*, i32** @solo_dev_attrs, align 8
  %64 = load i32, i32* %7, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  %67 = call i64 @device_create_file(%struct.device* %62, i32* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %74

69:                                               ; preds = %61
  %70 = load %struct.device*, %struct.device** %5, align 8
  %71 = call i32 @device_unregister(%struct.device* %70)
  %72 = load i32, i32* @ENOMEM, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %2, align 4
  br label %106

74:                                               ; preds = %61
  br label %75

75:                                               ; preds = %74
  %76 = load i32, i32* %7, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %7, align 4
  br label %56

78:                                               ; preds = %56
  %79 = load %struct.bin_attribute*, %struct.bin_attribute** %4, align 8
  %80 = getelementptr inbounds %struct.bin_attribute, %struct.bin_attribute* %79, i32 0, i32 2
  %81 = call i32 @sysfs_attr_init(%struct.TYPE_6__* %80)
  %82 = load %struct.bin_attribute*, %struct.bin_attribute** %4, align 8
  %83 = getelementptr inbounds %struct.bin_attribute, %struct.bin_attribute* %82, i32 0, i32 2
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 0
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8** %84, align 8
  %85 = load %struct.bin_attribute*, %struct.bin_attribute** %4, align 8
  %86 = getelementptr inbounds %struct.bin_attribute, %struct.bin_attribute* %85, i32 0, i32 2
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 1
  store i32 288, i32* %87, align 8
  %88 = load i32, i32* @sdram_show, align 4
  %89 = load %struct.bin_attribute*, %struct.bin_attribute** %4, align 8
  %90 = getelementptr inbounds %struct.bin_attribute, %struct.bin_attribute* %89, i32 0, i32 1
  store i32 %88, i32* %90, align 4
  %91 = load %struct.solo_dev*, %struct.solo_dev** %3, align 8
  %92 = getelementptr inbounds %struct.solo_dev, %struct.solo_dev* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 8
  %94 = load %struct.bin_attribute*, %struct.bin_attribute** %4, align 8
  %95 = getelementptr inbounds %struct.bin_attribute, %struct.bin_attribute* %94, i32 0, i32 0
  store i32 %93, i32* %95, align 8
  %96 = load %struct.device*, %struct.device** %5, align 8
  %97 = load %struct.bin_attribute*, %struct.bin_attribute** %4, align 8
  %98 = call i64 @device_create_bin_file(%struct.device* %96, %struct.bin_attribute* %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %105

100:                                              ; preds = %78
  %101 = load %struct.device*, %struct.device** %5, align 8
  %102 = call i32 @device_unregister(%struct.device* %101)
  %103 = load i32, i32* @ENOMEM, align 4
  %104 = sub nsw i32 0, %103
  store i32 %104, i32* %2, align 4
  br label %106

105:                                              ; preds = %78
  store i32 0, i32* %2, align 4
  br label %106

106:                                              ; preds = %105, %100, %69, %50
  %107 = load i32, i32* %2, align 4
  ret i32 %107
}

declare dso_local i32 @set_dev_node(%struct.device*, i32) #1

declare dso_local i32 @dev_to_node(i32*) #1

declare dso_local i32 @dev_set_name(%struct.device*, i8*, i8*, i32, i32) #1

declare dso_local i64 @device_register(%struct.device*) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i64 @device_create_file(%struct.device*, i32*) #1

declare dso_local i32 @device_unregister(%struct.device*) #1

declare dso_local i32 @sysfs_attr_init(%struct.TYPE_6__*) #1

declare dso_local i64 @device_create_bin_file(%struct.device*, %struct.bin_attribute*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
