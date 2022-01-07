; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_v4l2-device.c_v4l2_device_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_v4l2-device.c_v4l2_device_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i8* }
%struct.v4l2_device = type { i32*, %struct.device*, i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%s %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @v4l2_device_register(%struct.device* %0, %struct.v4l2_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.v4l2_device*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.v4l2_device* %1, %struct.v4l2_device** %5, align 8
  %6 = load %struct.v4l2_device*, %struct.v4l2_device** %5, align 8
  %7 = icmp eq %struct.v4l2_device* %6, null
  br i1 %7, label %8, label %11

8:                                                ; preds = %2
  %9 = load i32, i32* @EINVAL, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %3, align 4
  br label %74

11:                                               ; preds = %2
  %12 = load %struct.v4l2_device*, %struct.v4l2_device** %5, align 8
  %13 = getelementptr inbounds %struct.v4l2_device, %struct.v4l2_device* %12, i32 0, i32 5
  %14 = call i32 @INIT_LIST_HEAD(i32* %13)
  %15 = load %struct.v4l2_device*, %struct.v4l2_device** %5, align 8
  %16 = getelementptr inbounds %struct.v4l2_device, %struct.v4l2_device* %15, i32 0, i32 4
  %17 = call i32 @spin_lock_init(i32* %16)
  %18 = load %struct.v4l2_device*, %struct.v4l2_device** %5, align 8
  %19 = getelementptr inbounds %struct.v4l2_device, %struct.v4l2_device* %18, i32 0, i32 3
  %20 = call i32 @v4l2_prio_init(i32* %19)
  %21 = load %struct.v4l2_device*, %struct.v4l2_device** %5, align 8
  %22 = getelementptr inbounds %struct.v4l2_device, %struct.v4l2_device* %21, i32 0, i32 2
  %23 = call i32 @kref_init(i32* %22)
  %24 = load %struct.device*, %struct.device** %4, align 8
  %25 = call i32 @get_device(%struct.device* %24)
  %26 = load %struct.device*, %struct.device** %4, align 8
  %27 = load %struct.v4l2_device*, %struct.v4l2_device** %5, align 8
  %28 = getelementptr inbounds %struct.v4l2_device, %struct.v4l2_device* %27, i32 0, i32 1
  store %struct.device* %26, %struct.device** %28, align 8
  %29 = load %struct.device*, %struct.device** %4, align 8
  %30 = icmp eq %struct.device* %29, null
  br i1 %30, label %31, label %46

31:                                               ; preds = %11
  %32 = load %struct.v4l2_device*, %struct.v4l2_device** %5, align 8
  %33 = getelementptr inbounds %struct.v4l2_device, %struct.v4l2_device* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 0
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %36, 0
  %38 = xor i1 %37, true
  %39 = zext i1 %38 to i32
  %40 = call i64 @WARN_ON(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %31
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %3, align 4
  br label %74

45:                                               ; preds = %31
  store i32 0, i32* %3, align 4
  br label %74

46:                                               ; preds = %11
  %47 = load %struct.v4l2_device*, %struct.v4l2_device** %5, align 8
  %48 = getelementptr inbounds %struct.v4l2_device, %struct.v4l2_device* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 0
  %51 = load i32, i32* %50, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %65, label %53

53:                                               ; preds = %46
  %54 = load %struct.v4l2_device*, %struct.v4l2_device** %5, align 8
  %55 = getelementptr inbounds %struct.v4l2_device, %struct.v4l2_device* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = load %struct.device*, %struct.device** %4, align 8
  %58 = getelementptr inbounds %struct.device, %struct.device* %57, i32 0, i32 0
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i8*, i8** %60, align 8
  %62 = load %struct.device*, %struct.device** %4, align 8
  %63 = call i8* @dev_name(%struct.device* %62)
  %64 = call i32 @snprintf(i32* %56, i32 8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %61, i8* %63)
  br label %65

65:                                               ; preds = %53, %46
  %66 = load %struct.device*, %struct.device** %4, align 8
  %67 = call i32 @dev_get_drvdata(%struct.device* %66)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %73, label %69

69:                                               ; preds = %65
  %70 = load %struct.device*, %struct.device** %4, align 8
  %71 = load %struct.v4l2_device*, %struct.v4l2_device** %5, align 8
  %72 = call i32 @dev_set_drvdata(%struct.device* %70, %struct.v4l2_device* %71)
  br label %73

73:                                               ; preds = %69, %65
  store i32 0, i32* %3, align 4
  br label %74

74:                                               ; preds = %73, %45, %42, %8
  %75 = load i32, i32* %3, align 4
  ret i32 %75
}

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @v4l2_prio_init(i32*) #1

declare dso_local i32 @kref_init(i32*) #1

declare dso_local i32 @get_device(%struct.device*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @snprintf(i32*, i32, i8*, i8*, i8*) #1

declare dso_local i8* @dev_name(%struct.device*) #1

declare dso_local i32 @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @dev_set_drvdata(%struct.device*, %struct.v4l2_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
