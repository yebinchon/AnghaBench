; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/extr_enclosure.c_enclosure_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/extr_enclosure.c_enclosure_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.enclosure_device = type { i32, %struct.TYPE_5__, i32, %struct.TYPE_4__*, %struct.enclosure_component_callbacks* }
%struct.TYPE_5__ = type { i32, i32* }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.enclosure_component_callbacks = type { i32 }
%struct.device = type { i32 }

@component = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@enclosure_class = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@container_list_lock = common dso_local global i32 0, align 4
@container_list = common dso_local global i32 0, align 4
@edev = common dso_local global %struct.enclosure_device* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.enclosure_device* @enclosure_register(%struct.device* %0, i8* %1, i32 %2, %struct.enclosure_component_callbacks* %3) #0 {
  %5 = alloca %struct.enclosure_device*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.enclosure_component_callbacks*, align 8
  %10 = alloca %struct.enclosure_device*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.enclosure_component_callbacks* %3, %struct.enclosure_component_callbacks** %9, align 8
  %13 = load %struct.enclosure_device*, %struct.enclosure_device** %10, align 8
  %14 = ptrtoint %struct.enclosure_device* %13 to i32
  %15 = load i32, i32* @component, align 4
  %16 = load i32, i32* %8, align 4
  %17 = call i32 @struct_size(i32 %14, i32 %15, i32 %16)
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call %struct.enclosure_device* @kzalloc(i32 %17, i32 %18)
  store %struct.enclosure_device* %19, %struct.enclosure_device** %10, align 8
  %20 = load %struct.enclosure_component_callbacks*, %struct.enclosure_component_callbacks** %9, align 8
  %21 = icmp ne %struct.enclosure_component_callbacks* %20, null
  %22 = xor i1 %21, true
  %23 = zext i1 %22 to i32
  %24 = call i32 @BUG_ON(i32 %23)
  %25 = load %struct.enclosure_device*, %struct.enclosure_device** %10, align 8
  %26 = icmp ne %struct.enclosure_device* %25, null
  br i1 %26, label %31, label %27

27:                                               ; preds = %4
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  %30 = call %struct.enclosure_device* @ERR_PTR(i32 %29)
  store %struct.enclosure_device* %30, %struct.enclosure_device** %5, align 8
  br label %103

31:                                               ; preds = %4
  %32 = load i32, i32* %8, align 4
  %33 = load %struct.enclosure_device*, %struct.enclosure_device** %10, align 8
  %34 = getelementptr inbounds %struct.enclosure_device, %struct.enclosure_device* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 8
  %35 = load %struct.enclosure_device*, %struct.enclosure_device** %10, align 8
  %36 = getelementptr inbounds %struct.enclosure_device, %struct.enclosure_device* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 1
  store i32* @enclosure_class, i32** %37, align 8
  %38 = load %struct.device*, %struct.device** %6, align 8
  %39 = call i32 @get_device(%struct.device* %38)
  %40 = load %struct.enclosure_device*, %struct.enclosure_device** %10, align 8
  %41 = getelementptr inbounds %struct.enclosure_device, %struct.enclosure_device* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  store i32 %39, i32* %42, align 8
  %43 = load %struct.enclosure_component_callbacks*, %struct.enclosure_component_callbacks** %9, align 8
  %44 = load %struct.enclosure_device*, %struct.enclosure_device** %10, align 8
  %45 = getelementptr inbounds %struct.enclosure_device, %struct.enclosure_device* %44, i32 0, i32 4
  store %struct.enclosure_component_callbacks* %43, %struct.enclosure_component_callbacks** %45, align 8
  %46 = load %struct.enclosure_device*, %struct.enclosure_device** %10, align 8
  %47 = getelementptr inbounds %struct.enclosure_device, %struct.enclosure_device* %46, i32 0, i32 1
  %48 = load i8*, i8** %7, align 8
  %49 = call i32 @dev_set_name(%struct.TYPE_5__* %47, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %48)
  %50 = load %struct.enclosure_device*, %struct.enclosure_device** %10, align 8
  %51 = getelementptr inbounds %struct.enclosure_device, %struct.enclosure_device* %50, i32 0, i32 1
  %52 = call i32 @device_register(%struct.TYPE_5__* %51)
  store i32 %52, i32* %11, align 4
  %53 = load i32, i32* %11, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %31
  br label %93

56:                                               ; preds = %31
  store i32 0, i32* %12, align 4
  br label %57

57:                                               ; preds = %83, %56
  %58 = load i32, i32* %12, align 4
  %59 = load i32, i32* %8, align 4
  %60 = icmp slt i32 %58, %59
  br i1 %60, label %61, label %86

61:                                               ; preds = %57
  %62 = load %struct.enclosure_device*, %struct.enclosure_device** %10, align 8
  %63 = getelementptr inbounds %struct.enclosure_device, %struct.enclosure_device* %62, i32 0, i32 3
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %63, align 8
  %65 = load i32, i32* %12, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  store i32 -1, i32* %68, align 4
  %69 = load %struct.enclosure_device*, %struct.enclosure_device** %10, align 8
  %70 = getelementptr inbounds %struct.enclosure_device, %struct.enclosure_device* %69, i32 0, i32 3
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %70, align 8
  %72 = load i32, i32* %12, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 1
  store i32 -1, i32* %75, align 4
  %76 = load %struct.enclosure_device*, %struct.enclosure_device** %10, align 8
  %77 = getelementptr inbounds %struct.enclosure_device, %struct.enclosure_device* %76, i32 0, i32 3
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %77, align 8
  %79 = load i32, i32* %12, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 2
  store i32 -1, i32* %82, align 4
  br label %83

83:                                               ; preds = %61
  %84 = load i32, i32* %12, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %12, align 4
  br label %57

86:                                               ; preds = %57
  %87 = call i32 @mutex_lock(i32* @container_list_lock)
  %88 = load %struct.enclosure_device*, %struct.enclosure_device** %10, align 8
  %89 = getelementptr inbounds %struct.enclosure_device, %struct.enclosure_device* %88, i32 0, i32 2
  %90 = call i32 @list_add_tail(i32* %89, i32* @container_list)
  %91 = call i32 @mutex_unlock(i32* @container_list_lock)
  %92 = load %struct.enclosure_device*, %struct.enclosure_device** %10, align 8
  store %struct.enclosure_device* %92, %struct.enclosure_device** %5, align 8
  br label %103

93:                                               ; preds = %55
  %94 = load %struct.enclosure_device*, %struct.enclosure_device** %10, align 8
  %95 = getelementptr inbounds %struct.enclosure_device, %struct.enclosure_device* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = call i32 @put_device(i32 %97)
  %99 = load %struct.enclosure_device*, %struct.enclosure_device** %10, align 8
  %100 = call i32 @kfree(%struct.enclosure_device* %99)
  %101 = load i32, i32* %11, align 4
  %102 = call %struct.enclosure_device* @ERR_PTR(i32 %101)
  store %struct.enclosure_device* %102, %struct.enclosure_device** %5, align 8
  br label %103

103:                                              ; preds = %93, %86, %27
  %104 = load %struct.enclosure_device*, %struct.enclosure_device** %5, align 8
  ret %struct.enclosure_device* %104
}

declare dso_local %struct.enclosure_device* @kzalloc(i32, i32) #1

declare dso_local i32 @struct_size(i32, i32, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local %struct.enclosure_device* @ERR_PTR(i32) #1

declare dso_local i32 @get_device(%struct.device*) #1

declare dso_local i32 @dev_set_name(%struct.TYPE_5__*, i8*, i8*) #1

declare dso_local i32 @device_register(%struct.TYPE_5__*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @put_device(i32) #1

declare dso_local i32 @kfree(%struct.enclosure_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
