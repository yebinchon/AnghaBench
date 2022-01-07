; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/bt8xx/extr_bttv-gpio.c_bttv_sub_add_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/bt8xx/extr_bttv-gpio.c_bttv_sub_add_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bttv_core = type { i32, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.bttv_sub_device = type { i32, %struct.TYPE_7__, %struct.bttv_core* }
%struct.TYPE_7__ = type { i32, i32*, i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@bttv_sub_bus_type = common dso_local global i32 0, align 4
@release_sub_device = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"%s%d\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"%d: add subdevice \22%s\22\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bttv_sub_add_device(%struct.bttv_core* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bttv_core*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.bttv_sub_device*, align 8
  %7 = alloca i32, align 4
  store %struct.bttv_core* %0, %struct.bttv_core** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.bttv_sub_device* @kzalloc(i32 40, i32 %8)
  store %struct.bttv_sub_device* %9, %struct.bttv_sub_device** %6, align 8
  %10 = load %struct.bttv_sub_device*, %struct.bttv_sub_device** %6, align 8
  %11 = icmp eq %struct.bttv_sub_device* null, %10
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %63

15:                                               ; preds = %2
  %16 = load %struct.bttv_core*, %struct.bttv_core** %4, align 8
  %17 = load %struct.bttv_sub_device*, %struct.bttv_sub_device** %6, align 8
  %18 = getelementptr inbounds %struct.bttv_sub_device, %struct.bttv_sub_device* %17, i32 0, i32 2
  store %struct.bttv_core* %16, %struct.bttv_core** %18, align 8
  %19 = load %struct.bttv_core*, %struct.bttv_core** %4, align 8
  %20 = getelementptr inbounds %struct.bttv_core, %struct.bttv_core* %19, i32 0, i32 2
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load %struct.bttv_sub_device*, %struct.bttv_sub_device** %6, align 8
  %24 = getelementptr inbounds %struct.bttv_sub_device, %struct.bttv_sub_device* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 2
  store i32* %22, i32** %25, align 8
  %26 = load %struct.bttv_sub_device*, %struct.bttv_sub_device** %6, align 8
  %27 = getelementptr inbounds %struct.bttv_sub_device, %struct.bttv_sub_device* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 1
  store i32* @bttv_sub_bus_type, i32** %28, align 8
  %29 = load i32, i32* @release_sub_device, align 4
  %30 = load %struct.bttv_sub_device*, %struct.bttv_sub_device** %6, align 8
  %31 = getelementptr inbounds %struct.bttv_sub_device, %struct.bttv_sub_device* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  store i32 %29, i32* %32, align 8
  %33 = load %struct.bttv_sub_device*, %struct.bttv_sub_device** %6, align 8
  %34 = getelementptr inbounds %struct.bttv_sub_device, %struct.bttv_sub_device* %33, i32 0, i32 1
  %35 = load i8*, i8** %5, align 8
  %36 = load %struct.bttv_core*, %struct.bttv_core** %4, align 8
  %37 = getelementptr inbounds %struct.bttv_core, %struct.bttv_core* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @dev_set_name(%struct.TYPE_7__* %34, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %35, i32 %38)
  %40 = load %struct.bttv_sub_device*, %struct.bttv_sub_device** %6, align 8
  %41 = getelementptr inbounds %struct.bttv_sub_device, %struct.bttv_sub_device* %40, i32 0, i32 1
  %42 = call i32 @device_register(%struct.TYPE_7__* %41)
  store i32 %42, i32* %7, align 4
  %43 = load i32, i32* %7, align 4
  %44 = icmp ne i32 0, %43
  br i1 %44, label %45, label %50

45:                                               ; preds = %15
  %46 = load %struct.bttv_sub_device*, %struct.bttv_sub_device** %6, align 8
  %47 = getelementptr inbounds %struct.bttv_sub_device, %struct.bttv_sub_device* %46, i32 0, i32 1
  %48 = call i32 @put_device(%struct.TYPE_7__* %47)
  %49 = load i32, i32* %7, align 4
  store i32 %49, i32* %3, align 4
  br label %63

50:                                               ; preds = %15
  %51 = load %struct.bttv_core*, %struct.bttv_core** %4, align 8
  %52 = getelementptr inbounds %struct.bttv_core, %struct.bttv_core* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.bttv_sub_device*, %struct.bttv_sub_device** %6, align 8
  %55 = getelementptr inbounds %struct.bttv_sub_device, %struct.bttv_sub_device* %54, i32 0, i32 1
  %56 = call i32 @dev_name(%struct.TYPE_7__* %55)
  %57 = call i32 @pr_info(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %53, i32 %56)
  %58 = load %struct.bttv_sub_device*, %struct.bttv_sub_device** %6, align 8
  %59 = getelementptr inbounds %struct.bttv_sub_device, %struct.bttv_sub_device* %58, i32 0, i32 0
  %60 = load %struct.bttv_core*, %struct.bttv_core** %4, align 8
  %61 = getelementptr inbounds %struct.bttv_core, %struct.bttv_core* %60, i32 0, i32 0
  %62 = call i32 @list_add_tail(i32* %59, i32* %61)
  store i32 0, i32* %3, align 4
  br label %63

63:                                               ; preds = %50, %45, %12
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

declare dso_local %struct.bttv_sub_device* @kzalloc(i32, i32) #1

declare dso_local i32 @dev_set_name(%struct.TYPE_7__*, i8*, i8*, i32) #1

declare dso_local i32 @device_register(%struct.TYPE_7__*) #1

declare dso_local i32 @put_device(%struct.TYPE_7__*) #1

declare dso_local i32 @pr_info(i8*, i32, i32) #1

declare dso_local i32 @dev_name(%struct.TYPE_7__*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
