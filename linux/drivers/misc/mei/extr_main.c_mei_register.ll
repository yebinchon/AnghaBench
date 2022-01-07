; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/mei/extr_main.c_mei_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/mei/extr_main.c_mei_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mei_device = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.device = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@mei_devt = common dso_local global i32 0, align 4
@mei_fops = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"unable to add device %d:%d\0A\00", align 1
@mei_class = common dso_local global i32 0, align 4
@mei_groups = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"mei%d\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"unable to create device %d:%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mei_register(%struct.mei_device* %0, %struct.device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mei_device*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.mei_device* %0, %struct.mei_device** %4, align 8
  store %struct.device* %1, %struct.device** %5, align 8
  %9 = load %struct.mei_device*, %struct.mei_device** %4, align 8
  %10 = call i32 @mei_minor_get(%struct.mei_device* %9)
  store i32 %10, i32* %7, align 4
  %11 = load i32, i32* %7, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load i32, i32* %7, align 4
  store i32 %14, i32* %3, align 4
  br label %83

15:                                               ; preds = %2
  %16 = load i32, i32* @mei_devt, align 4
  %17 = call i32 @MAJOR(i32 %16)
  %18 = load %struct.mei_device*, %struct.mei_device** %4, align 8
  %19 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @MKDEV(i32 %17, i32 %20)
  store i32 %21, i32* %8, align 4
  %22 = load %struct.mei_device*, %struct.mei_device** %4, align 8
  %23 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %22, i32 0, i32 0
  %24 = call i32 @cdev_init(%struct.TYPE_6__* %23, i32* @mei_fops)
  %25 = load %struct.device*, %struct.device** %5, align 8
  %26 = getelementptr inbounds %struct.device, %struct.device* %25, i32 0, i32 0
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.mei_device*, %struct.mei_device** %4, align 8
  %31 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  store i32 %29, i32* %32, align 4
  %33 = load %struct.mei_device*, %struct.mei_device** %4, align 8
  %34 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %33, i32 0, i32 0
  %35 = load i32, i32* %8, align 4
  %36 = call i32 @cdev_add(%struct.TYPE_6__* %34, i32 %35, i32 1)
  store i32 %36, i32* %7, align 4
  %37 = load i32, i32* %7, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %47

39:                                               ; preds = %15
  %40 = load %struct.device*, %struct.device** %5, align 8
  %41 = load i32, i32* @mei_devt, align 4
  %42 = call i32 @MAJOR(i32 %41)
  %43 = load %struct.mei_device*, %struct.mei_device** %4, align 8
  %44 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @dev_err(%struct.device* %40, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %42, i32 %45)
  br label %79

47:                                               ; preds = %15
  %48 = load i32, i32* @mei_class, align 4
  %49 = load %struct.device*, %struct.device** %5, align 8
  %50 = load i32, i32* %8, align 4
  %51 = load %struct.mei_device*, %struct.mei_device** %4, align 8
  %52 = load i32, i32* @mei_groups, align 4
  %53 = load %struct.mei_device*, %struct.mei_device** %4, align 8
  %54 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = call %struct.device* @device_create_with_groups(i32 %48, %struct.device* %49, i32 %50, %struct.mei_device* %51, i32 %52, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %55)
  store %struct.device* %56, %struct.device** %6, align 8
  %57 = load %struct.device*, %struct.device** %6, align 8
  %58 = call i64 @IS_ERR(%struct.device* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %70

60:                                               ; preds = %47
  %61 = load %struct.device*, %struct.device** %5, align 8
  %62 = load i32, i32* @mei_devt, align 4
  %63 = call i32 @MAJOR(i32 %62)
  %64 = load %struct.mei_device*, %struct.mei_device** %4, align 8
  %65 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @dev_err(%struct.device* %61, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %63, i32 %66)
  %68 = load %struct.device*, %struct.device** %6, align 8
  %69 = call i32 @PTR_ERR(%struct.device* %68)
  store i32 %69, i32* %7, align 4
  br label %75

70:                                               ; preds = %47
  %71 = load %struct.mei_device*, %struct.mei_device** %4, align 8
  %72 = load %struct.device*, %struct.device** %6, align 8
  %73 = call i32 @dev_name(%struct.device* %72)
  %74 = call i32 @mei_dbgfs_register(%struct.mei_device* %71, i32 %73)
  store i32 0, i32* %3, align 4
  br label %83

75:                                               ; preds = %60
  %76 = load %struct.mei_device*, %struct.mei_device** %4, align 8
  %77 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %76, i32 0, i32 0
  %78 = call i32 @cdev_del(%struct.TYPE_6__* %77)
  br label %79

79:                                               ; preds = %75, %39
  %80 = load %struct.mei_device*, %struct.mei_device** %4, align 8
  %81 = call i32 @mei_minor_free(%struct.mei_device* %80)
  %82 = load i32, i32* %7, align 4
  store i32 %82, i32* %3, align 4
  br label %83

83:                                               ; preds = %79, %70, %13
  %84 = load i32, i32* %3, align 4
  ret i32 %84
}

declare dso_local i32 @mei_minor_get(%struct.mei_device*) #1

declare dso_local i32 @MKDEV(i32, i32) #1

declare dso_local i32 @MAJOR(i32) #1

declare dso_local i32 @cdev_init(%struct.TYPE_6__*, i32*) #1

declare dso_local i32 @cdev_add(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32, i32) #1

declare dso_local %struct.device* @device_create_with_groups(i32, %struct.device*, i32, %struct.mei_device*, i32, i8*, i32) #1

declare dso_local i64 @IS_ERR(%struct.device*) #1

declare dso_local i32 @PTR_ERR(%struct.device*) #1

declare dso_local i32 @mei_dbgfs_register(%struct.mei_device*, i32) #1

declare dso_local i32 @dev_name(%struct.device*) #1

declare dso_local i32 @cdev_del(%struct.TYPE_6__*) #1

declare dso_local i32 @mei_minor_free(%struct.mei_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
