; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/rc/extr_lirc_dev.c_ir_lirc_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/rc/extr_lirc_dev.c_ir_lirc_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rc_dev = type { i32, i32, i32, i64, %struct.TYPE_4__, i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i32, i32*, i32 }

@lirc_ida = common dso_local global i32 0, align 4
@RC_DEV_MAX = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@lirc_class = common dso_local global i32 0, align 4
@lirc_release_device = common dso_local global i32 0, align 4
@lirc_base_dev = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"lirc%d\00", align 1
@lirc_fops = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"scancode\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"raw IR\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"no\00", align 1
@.str.4 = private unnamed_addr constant [74 x i8] c"lirc_dev: driver %s registered at minor = %d, %s receiver, %s transmitter\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ir_lirc_register(%struct.rc_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rc_dev*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.rc_dev* %0, %struct.rc_dev** %3, align 8
  %8 = load i32, i32* @RC_DEV_MAX, align 4
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call i32 @ida_simple_get(i32* @lirc_ida, i32 0, i32 %8, i32 %9)
  store i32 %10, i32* %7, align 4
  %11 = load i32, i32* %7, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = load i32, i32* %7, align 4
  store i32 %14, i32* %2, align 4
  br label %91

15:                                               ; preds = %1
  %16 = load %struct.rc_dev*, %struct.rc_dev** %3, align 8
  %17 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %16, i32 0, i32 4
  %18 = call i32 @device_initialize(%struct.TYPE_4__* %17)
  %19 = load i32, i32* @lirc_class, align 4
  %20 = load %struct.rc_dev*, %struct.rc_dev** %3, align 8
  %21 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %20, i32 0, i32 4
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 3
  store i32 %19, i32* %22, align 8
  %23 = load %struct.rc_dev*, %struct.rc_dev** %3, align 8
  %24 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %23, i32 0, i32 2
  %25 = load %struct.rc_dev*, %struct.rc_dev** %3, align 8
  %26 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %25, i32 0, i32 4
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 2
  store i32* %24, i32** %27, align 8
  %28 = load i32, i32* @lirc_release_device, align 4
  %29 = load %struct.rc_dev*, %struct.rc_dev** %3, align 8
  %30 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %29, i32 0, i32 4
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 1
  store i32 %28, i32* %31, align 4
  %32 = load i32, i32* @lirc_base_dev, align 4
  %33 = call i32 @MAJOR(i32 %32)
  %34 = load i32, i32* %7, align 4
  %35 = call i32 @MKDEV(i32 %33, i32 %34)
  %36 = load %struct.rc_dev*, %struct.rc_dev** %3, align 8
  %37 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %36, i32 0, i32 4
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  store i32 %35, i32* %38, align 8
  %39 = load %struct.rc_dev*, %struct.rc_dev** %3, align 8
  %40 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %39, i32 0, i32 4
  %41 = load i32, i32* %7, align 4
  %42 = call i32 @dev_set_name(%struct.TYPE_4__* %40, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %41)
  %43 = load %struct.rc_dev*, %struct.rc_dev** %3, align 8
  %44 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %43, i32 0, i32 7
  %45 = call i32 @INIT_LIST_HEAD(i32* %44)
  %46 = load %struct.rc_dev*, %struct.rc_dev** %3, align 8
  %47 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %46, i32 0, i32 6
  %48 = call i32 @spin_lock_init(i32* %47)
  %49 = load %struct.rc_dev*, %struct.rc_dev** %3, align 8
  %50 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %49, i32 0, i32 5
  %51 = call i32 @cdev_init(i32* %50, i32* @lirc_fops)
  %52 = load %struct.rc_dev*, %struct.rc_dev** %3, align 8
  %53 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %52, i32 0, i32 5
  %54 = load %struct.rc_dev*, %struct.rc_dev** %3, align 8
  %55 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %54, i32 0, i32 4
  %56 = call i32 @cdev_device_add(i32* %53, %struct.TYPE_4__* %55)
  store i32 %56, i32* %6, align 4
  %57 = load i32, i32* %6, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %15
  br label %87

60:                                               ; preds = %15
  %61 = load %struct.rc_dev*, %struct.rc_dev** %3, align 8
  %62 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %61, i32 0, i32 2
  %63 = call i32 @get_device(i32* %62)
  %64 = load %struct.rc_dev*, %struct.rc_dev** %3, align 8
  %65 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  switch i32 %66, label %69 [
    i32 128, label %67
    i32 129, label %68
  ]

67:                                               ; preds = %60
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8** %4, align 8
  br label %70

68:                                               ; preds = %60
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8** %4, align 8
  br label %70

69:                                               ; preds = %60
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8** %4, align 8
  br label %70

70:                                               ; preds = %69, %68, %67
  %71 = load %struct.rc_dev*, %struct.rc_dev** %3, align 8
  %72 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %71, i32 0, i32 3
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %70
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8** %5, align 8
  br label %77

76:                                               ; preds = %70
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8** %5, align 8
  br label %77

77:                                               ; preds = %76, %75
  %78 = load %struct.rc_dev*, %struct.rc_dev** %3, align 8
  %79 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %78, i32 0, i32 2
  %80 = load %struct.rc_dev*, %struct.rc_dev** %3, align 8
  %81 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* %7, align 4
  %84 = load i8*, i8** %4, align 8
  %85 = load i8*, i8** %5, align 8
  %86 = call i32 @dev_info(i32* %79, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.4, i64 0, i64 0), i32 %82, i32 %83, i8* %84, i8* %85)
  store i32 0, i32* %2, align 4
  br label %91

87:                                               ; preds = %59
  %88 = load i32, i32* %7, align 4
  %89 = call i32 @ida_simple_remove(i32* @lirc_ida, i32 %88)
  %90 = load i32, i32* %6, align 4
  store i32 %90, i32* %2, align 4
  br label %91

91:                                               ; preds = %87, %77, %13
  %92 = load i32, i32* %2, align 4
  ret i32 %92
}

declare dso_local i32 @ida_simple_get(i32*, i32, i32, i32) #1

declare dso_local i32 @device_initialize(%struct.TYPE_4__*) #1

declare dso_local i32 @MKDEV(i32, i32) #1

declare dso_local i32 @MAJOR(i32) #1

declare dso_local i32 @dev_set_name(%struct.TYPE_4__*, i8*, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @cdev_init(i32*, i32*) #1

declare dso_local i32 @cdev_device_add(i32*, %struct.TYPE_4__*) #1

declare dso_local i32 @get_device(i32*) #1

declare dso_local i32 @dev_info(i32*, i8*, i32, i32, i8*, i8*) #1

declare dso_local i32 @ida_simple_remove(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
