; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/extr_enclosure.c_get_component_power_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/extr_enclosure.c_get_component_power_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.enclosure_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.enclosure_device*, %struct.enclosure_component*)* }
%struct.enclosure_component = type { i32 }

@EIO = common dso_local global i32 0, align 4
@ENOTTY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"on\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"off\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @get_component_power_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_component_power_status(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.enclosure_device*, align 8
  %9 = alloca %struct.enclosure_component*, align 8
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load %struct.device*, %struct.device** %5, align 8
  %11 = getelementptr inbounds %struct.device, %struct.device* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.enclosure_device* @to_enclosure_device(i32 %12)
  store %struct.enclosure_device* %13, %struct.enclosure_device** %8, align 8
  %14 = load %struct.device*, %struct.device** %5, align 8
  %15 = call %struct.enclosure_component* @to_enclosure_component(%struct.device* %14)
  store %struct.enclosure_component* %15, %struct.enclosure_component** %9, align 8
  %16 = load %struct.enclosure_device*, %struct.enclosure_device** %8, align 8
  %17 = getelementptr inbounds %struct.enclosure_device, %struct.enclosure_device* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32 (%struct.enclosure_device*, %struct.enclosure_component*)*, i32 (%struct.enclosure_device*, %struct.enclosure_component*)** %19, align 8
  %21 = icmp ne i32 (%struct.enclosure_device*, %struct.enclosure_component*)* %20, null
  br i1 %21, label %22, label %31

22:                                               ; preds = %3
  %23 = load %struct.enclosure_device*, %struct.enclosure_device** %8, align 8
  %24 = getelementptr inbounds %struct.enclosure_device, %struct.enclosure_device* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32 (%struct.enclosure_device*, %struct.enclosure_component*)*, i32 (%struct.enclosure_device*, %struct.enclosure_component*)** %26, align 8
  %28 = load %struct.enclosure_device*, %struct.enclosure_device** %8, align 8
  %29 = load %struct.enclosure_component*, %struct.enclosure_component** %9, align 8
  %30 = call i32 %27(%struct.enclosure_device* %28, %struct.enclosure_component* %29)
  br label %31

31:                                               ; preds = %22, %3
  %32 = load %struct.enclosure_component*, %struct.enclosure_component** %9, align 8
  %33 = getelementptr inbounds %struct.enclosure_component, %struct.enclosure_component* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp eq i32 %34, -1
  br i1 %35, label %36, label %51

36:                                               ; preds = %31
  %37 = load %struct.enclosure_device*, %struct.enclosure_device** %8, align 8
  %38 = getelementptr inbounds %struct.enclosure_device, %struct.enclosure_device* %37, i32 0, i32 0
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32 (%struct.enclosure_device*, %struct.enclosure_component*)*, i32 (%struct.enclosure_device*, %struct.enclosure_component*)** %40, align 8
  %42 = icmp ne i32 (%struct.enclosure_device*, %struct.enclosure_component*)* %41, null
  br i1 %42, label %43, label %46

43:                                               ; preds = %36
  %44 = load i32, i32* @EIO, align 4
  %45 = sub nsw i32 0, %44
  br label %49

46:                                               ; preds = %36
  %47 = load i32, i32* @ENOTTY, align 4
  %48 = sub nsw i32 0, %47
  br label %49

49:                                               ; preds = %46, %43
  %50 = phi i32 [ %45, %43 ], [ %48, %46 ]
  store i32 %50, i32* %4, align 4
  br label %60

51:                                               ; preds = %31
  %52 = load i8*, i8** %7, align 8
  %53 = load %struct.enclosure_component*, %struct.enclosure_component** %9, align 8
  %54 = getelementptr inbounds %struct.enclosure_component, %struct.enclosure_component* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = icmp ne i32 %55, 0
  %57 = zext i1 %56 to i64
  %58 = select i1 %56, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %59 = call i32 @snprintf(i8* %52, i32 40, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %58)
  store i32 %59, i32* %4, align 4
  br label %60

60:                                               ; preds = %51, %49
  %61 = load i32, i32* %4, align 4
  ret i32 %61
}

declare dso_local %struct.enclosure_device* @to_enclosure_device(i32) #1

declare dso_local %struct.enclosure_component* @to_enclosure_component(%struct.device*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
