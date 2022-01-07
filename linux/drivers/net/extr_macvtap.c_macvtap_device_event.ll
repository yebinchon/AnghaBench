; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_macvtap.c_macvtap_device_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_macvtap.c_macvtap_device_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.notifier_block = type { i32 }
%struct.net_device = type { i32, %struct.TYPE_6__, i32* }
%struct.TYPE_6__ = type { i32 }
%struct.macvtap_dev = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.device = type { i32 }

@IFNAMSIZ = common dso_local global i32 0, align 4
@macvtap_link_ops = common dso_local global i32 0, align 4
@NOTIFY_DONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"tap%d\00", align 1
@macvtap_major = common dso_local global i32 0, align 4
@macvtap_class = common dso_local global i32 0, align 4
@NOTIFY_BAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.notifier_block*, i64, i8*)* @macvtap_device_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @macvtap_device_event(%struct.notifier_block* %0, i64 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.notifier_block*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.net_device*, align 8
  %9 = alloca %struct.macvtap_dev*, align 8
  %10 = alloca %struct.device*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store %struct.notifier_block* %0, %struct.notifier_block** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  %16 = load i8*, i8** %7, align 8
  %17 = call %struct.net_device* @netdev_notifier_info_to_dev(i8* %16)
  store %struct.net_device* %17, %struct.net_device** %8, align 8
  %18 = load i32, i32* @IFNAMSIZ, align 4
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %13, align 8
  %21 = alloca i8, i64 %19, align 16
  store i64 %19, i64* %14, align 8
  %22 = load %struct.net_device*, %struct.net_device** %8, align 8
  %23 = getelementptr inbounds %struct.net_device, %struct.net_device* %22, i32 0, i32 2
  %24 = load i32*, i32** %23, align 8
  %25 = icmp ne i32* %24, @macvtap_link_ops
  br i1 %25, label %26, label %28

26:                                               ; preds = %3
  %27 = load i32, i32* @NOTIFY_DONE, align 4
  store i32 %27, i32* %4, align 4
  store i32 1, i32* %15, align 4
  br label %119

28:                                               ; preds = %3
  %29 = load i32, i32* @IFNAMSIZ, align 4
  %30 = load %struct.net_device*, %struct.net_device** %8, align 8
  %31 = getelementptr inbounds %struct.net_device, %struct.net_device* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @snprintf(i8* %21, i32 %29, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %32)
  %34 = load %struct.net_device*, %struct.net_device** %8, align 8
  %35 = call %struct.macvtap_dev* @netdev_priv(%struct.net_device* %34)
  store %struct.macvtap_dev* %35, %struct.macvtap_dev** %9, align 8
  %36 = load i64, i64* %6, align 8
  switch i64 %36, label %117 [
    i64 129, label %37
    i64 128, label %84
    i64 130, label %109
  ]

37:                                               ; preds = %28
  %38 = load i32, i32* @macvtap_major, align 4
  %39 = load %struct.macvtap_dev*, %struct.macvtap_dev** %9, align 8
  %40 = getelementptr inbounds %struct.macvtap_dev, %struct.macvtap_dev* %39, i32 0, i32 0
  %41 = call i32 @tap_get_minor(i32 %38, %struct.TYPE_5__* %40)
  store i32 %41, i32* %12, align 4
  %42 = load i32, i32* %12, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %37
  %45 = load i32, i32* %12, align 4
  %46 = call i32 @notifier_from_errno(i32 %45)
  store i32 %46, i32* %4, align 4
  store i32 1, i32* %15, align 4
  br label %119

47:                                               ; preds = %37
  %48 = load i32, i32* @macvtap_major, align 4
  %49 = call i32 @MAJOR(i32 %48)
  %50 = load %struct.macvtap_dev*, %struct.macvtap_dev** %9, align 8
  %51 = getelementptr inbounds %struct.macvtap_dev, %struct.macvtap_dev* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @MKDEV(i32 %49, i32 %53)
  store i32 %54, i32* %11, align 4
  %55 = load %struct.net_device*, %struct.net_device** %8, align 8
  %56 = getelementptr inbounds %struct.net_device, %struct.net_device* %55, i32 0, i32 1
  %57 = load i32, i32* %11, align 4
  %58 = load %struct.net_device*, %struct.net_device** %8, align 8
  %59 = call %struct.device* @device_create(i32* @macvtap_class, %struct.TYPE_6__* %56, i32 %57, %struct.net_device* %58, i8* %21)
  store %struct.device* %59, %struct.device** %10, align 8
  %60 = load %struct.device*, %struct.device** %10, align 8
  %61 = call i32 @IS_ERR(%struct.device* %60)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %71

63:                                               ; preds = %47
  %64 = load i32, i32* @macvtap_major, align 4
  %65 = load %struct.macvtap_dev*, %struct.macvtap_dev** %9, align 8
  %66 = getelementptr inbounds %struct.macvtap_dev, %struct.macvtap_dev* %65, i32 0, i32 0
  %67 = call i32 @tap_free_minor(i32 %64, %struct.TYPE_5__* %66)
  %68 = load %struct.device*, %struct.device** %10, align 8
  %69 = call i32 @PTR_ERR(%struct.device* %68)
  %70 = call i32 @notifier_from_errno(i32 %69)
  store i32 %70, i32* %4, align 4
  store i32 1, i32* %15, align 4
  br label %119

71:                                               ; preds = %47
  %72 = load %struct.net_device*, %struct.net_device** %8, align 8
  %73 = getelementptr inbounds %struct.net_device, %struct.net_device* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 0
  %75 = load %struct.device*, %struct.device** %10, align 8
  %76 = getelementptr inbounds %struct.device, %struct.device* %75, i32 0, i32 0
  %77 = call i32 @sysfs_create_link(i32* %74, i32* %76, i8* %21)
  store i32 %77, i32* %12, align 4
  %78 = load i32, i32* %12, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %71
  %81 = load i32, i32* %12, align 4
  %82 = call i32 @notifier_from_errno(i32 %81)
  store i32 %82, i32* %4, align 4
  store i32 1, i32* %15, align 4
  br label %119

83:                                               ; preds = %71
  br label %117

84:                                               ; preds = %28
  %85 = load %struct.macvtap_dev*, %struct.macvtap_dev** %9, align 8
  %86 = getelementptr inbounds %struct.macvtap_dev, %struct.macvtap_dev* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %84
  br label %117

91:                                               ; preds = %84
  %92 = load %struct.net_device*, %struct.net_device** %8, align 8
  %93 = getelementptr inbounds %struct.net_device, %struct.net_device* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 0
  %95 = call i32 @sysfs_remove_link(i32* %94, i8* %21)
  %96 = load i32, i32* @macvtap_major, align 4
  %97 = call i32 @MAJOR(i32 %96)
  %98 = load %struct.macvtap_dev*, %struct.macvtap_dev** %9, align 8
  %99 = getelementptr inbounds %struct.macvtap_dev, %struct.macvtap_dev* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @MKDEV(i32 %97, i32 %101)
  store i32 %102, i32* %11, align 4
  %103 = load i32, i32* %11, align 4
  %104 = call i32 @device_destroy(i32* @macvtap_class, i32 %103)
  %105 = load i32, i32* @macvtap_major, align 4
  %106 = load %struct.macvtap_dev*, %struct.macvtap_dev** %9, align 8
  %107 = getelementptr inbounds %struct.macvtap_dev, %struct.macvtap_dev* %106, i32 0, i32 0
  %108 = call i32 @tap_free_minor(i32 %105, %struct.TYPE_5__* %107)
  br label %117

109:                                              ; preds = %28
  %110 = load %struct.macvtap_dev*, %struct.macvtap_dev** %9, align 8
  %111 = getelementptr inbounds %struct.macvtap_dev, %struct.macvtap_dev* %110, i32 0, i32 0
  %112 = call i32 @tap_queue_resize(%struct.TYPE_5__* %111)
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %116

114:                                              ; preds = %109
  %115 = load i32, i32* @NOTIFY_BAD, align 4
  store i32 %115, i32* %4, align 4
  store i32 1, i32* %15, align 4
  br label %119

116:                                              ; preds = %109
  br label %117

117:                                              ; preds = %28, %116, %91, %90, %83
  %118 = load i32, i32* @NOTIFY_DONE, align 4
  store i32 %118, i32* %4, align 4
  store i32 1, i32* %15, align 4
  br label %119

119:                                              ; preds = %117, %114, %80, %63, %44, %26
  %120 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %120)
  %121 = load i32, i32* %4, align 4
  ret i32 %121
}

declare dso_local %struct.net_device* @netdev_notifier_info_to_dev(i8*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local %struct.macvtap_dev* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @tap_get_minor(i32, %struct.TYPE_5__*) #1

declare dso_local i32 @notifier_from_errno(i32) #1

declare dso_local i32 @MKDEV(i32, i32) #1

declare dso_local i32 @MAJOR(i32) #1

declare dso_local %struct.device* @device_create(i32*, %struct.TYPE_6__*, i32, %struct.net_device*, i8*) #1

declare dso_local i32 @IS_ERR(%struct.device*) #1

declare dso_local i32 @tap_free_minor(i32, %struct.TYPE_5__*) #1

declare dso_local i32 @PTR_ERR(%struct.device*) #1

declare dso_local i32 @sysfs_create_link(i32*, i32*, i8*) #1

declare dso_local i32 @sysfs_remove_link(i32*, i8*) #1

declare dso_local i32 @device_destroy(i32*, i32) #1

declare dso_local i32 @tap_queue_resize(%struct.TYPE_5__*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
