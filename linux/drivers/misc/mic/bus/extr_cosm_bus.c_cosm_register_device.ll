; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/mic/bus/extr_cosm_bus.c_cosm_register_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/mic/bus/extr_cosm_bus.c_cosm_register_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cosm_device = type { i32, %struct.TYPE_5__, %struct.cosm_hw_ops* }
%struct.TYPE_5__ = type { i32, i32*, i32, %struct.device* }
%struct.device = type { i32 }
%struct.cosm_hw_ops = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@cosm_release_dev = common dso_local global i32 0, align 4
@cosm_bus = common dso_local global i32 0, align 4
@cosm_index_ida = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"cosm-dev%u\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.cosm_device* @cosm_register_device(%struct.device* %0, %struct.cosm_hw_ops* %1) #0 {
  %3 = alloca %struct.cosm_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.cosm_hw_ops*, align 8
  %6 = alloca %struct.cosm_device*, align 8
  %7 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.cosm_hw_ops* %1, %struct.cosm_hw_ops** %5, align 8
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.cosm_device* @kzalloc(i32 48, i32 %8)
  store %struct.cosm_device* %9, %struct.cosm_device** %6, align 8
  %10 = load %struct.cosm_device*, %struct.cosm_device** %6, align 8
  %11 = icmp ne %struct.cosm_device* %10, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  %15 = call %struct.cosm_device* @ERR_PTR(i32 %14)
  store %struct.cosm_device* %15, %struct.cosm_device** %3, align 8
  br label %73

16:                                               ; preds = %2
  %17 = load %struct.device*, %struct.device** %4, align 8
  %18 = load %struct.cosm_device*, %struct.cosm_device** %6, align 8
  %19 = getelementptr inbounds %struct.cosm_device, %struct.cosm_device* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 3
  store %struct.device* %17, %struct.device** %20, align 8
  %21 = load i32, i32* @cosm_release_dev, align 4
  %22 = load %struct.cosm_device*, %struct.cosm_device** %6, align 8
  %23 = getelementptr inbounds %struct.cosm_device, %struct.cosm_device* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 2
  store i32 %21, i32* %24, align 8
  %25 = load %struct.cosm_hw_ops*, %struct.cosm_hw_ops** %5, align 8
  %26 = load %struct.cosm_device*, %struct.cosm_device** %6, align 8
  %27 = getelementptr inbounds %struct.cosm_device, %struct.cosm_device* %26, i32 0, i32 2
  store %struct.cosm_hw_ops* %25, %struct.cosm_hw_ops** %27, align 8
  %28 = load %struct.cosm_device*, %struct.cosm_device** %6, align 8
  %29 = getelementptr inbounds %struct.cosm_device, %struct.cosm_device* %28, i32 0, i32 1
  %30 = load %struct.cosm_device*, %struct.cosm_device** %6, align 8
  %31 = call i32 @dev_set_drvdata(%struct.TYPE_5__* %29, %struct.cosm_device* %30)
  %32 = load %struct.cosm_device*, %struct.cosm_device** %6, align 8
  %33 = getelementptr inbounds %struct.cosm_device, %struct.cosm_device* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 1
  store i32* @cosm_bus, i32** %34, align 8
  %35 = load i32, i32* @GFP_KERNEL, align 4
  %36 = call i32 @ida_simple_get(i32* @cosm_index_ida, i32 0, i32 0, i32 %35)
  store i32 %36, i32* %7, align 4
  %37 = load i32, i32* %7, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %16
  br label %67

40:                                               ; preds = %16
  %41 = load i32, i32* %7, align 4
  %42 = load %struct.cosm_device*, %struct.cosm_device** %6, align 8
  %43 = getelementptr inbounds %struct.cosm_device, %struct.cosm_device* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 8
  %44 = load i32, i32* %7, align 4
  %45 = load %struct.cosm_device*, %struct.cosm_device** %6, align 8
  %46 = getelementptr inbounds %struct.cosm_device, %struct.cosm_device* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  store i32 %44, i32* %47, align 8
  %48 = load %struct.cosm_device*, %struct.cosm_device** %6, align 8
  %49 = getelementptr inbounds %struct.cosm_device, %struct.cosm_device* %48, i32 0, i32 1
  %50 = load %struct.cosm_device*, %struct.cosm_device** %6, align 8
  %51 = getelementptr inbounds %struct.cosm_device, %struct.cosm_device* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @dev_set_name(%struct.TYPE_5__* %49, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %52)
  %54 = load %struct.cosm_device*, %struct.cosm_device** %6, align 8
  %55 = getelementptr inbounds %struct.cosm_device, %struct.cosm_device* %54, i32 0, i32 1
  %56 = call i32 @device_register(%struct.TYPE_5__* %55)
  store i32 %56, i32* %7, align 4
  %57 = load i32, i32* %7, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %40
  br label %62

60:                                               ; preds = %40
  %61 = load %struct.cosm_device*, %struct.cosm_device** %6, align 8
  store %struct.cosm_device* %61, %struct.cosm_device** %3, align 8
  br label %73

62:                                               ; preds = %59
  %63 = load %struct.cosm_device*, %struct.cosm_device** %6, align 8
  %64 = getelementptr inbounds %struct.cosm_device, %struct.cosm_device* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @ida_simple_remove(i32* @cosm_index_ida, i32 %65)
  br label %67

67:                                               ; preds = %62, %39
  %68 = load %struct.cosm_device*, %struct.cosm_device** %6, align 8
  %69 = getelementptr inbounds %struct.cosm_device, %struct.cosm_device* %68, i32 0, i32 1
  %70 = call i32 @put_device(%struct.TYPE_5__* %69)
  %71 = load i32, i32* %7, align 4
  %72 = call %struct.cosm_device* @ERR_PTR(i32 %71)
  store %struct.cosm_device* %72, %struct.cosm_device** %3, align 8
  br label %73

73:                                               ; preds = %67, %60, %12
  %74 = load %struct.cosm_device*, %struct.cosm_device** %3, align 8
  ret %struct.cosm_device* %74
}

declare dso_local %struct.cosm_device* @kzalloc(i32, i32) #1

declare dso_local %struct.cosm_device* @ERR_PTR(i32) #1

declare dso_local i32 @dev_set_drvdata(%struct.TYPE_5__*, %struct.cosm_device*) #1

declare dso_local i32 @ida_simple_get(i32*, i32, i32, i32) #1

declare dso_local i32 @dev_set_name(%struct.TYPE_5__*, i8*, i32) #1

declare dso_local i32 @device_register(%struct.TYPE_5__*) #1

declare dso_local i32 @ida_simple_remove(i32*, i32) #1

declare dso_local i32 @put_device(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
