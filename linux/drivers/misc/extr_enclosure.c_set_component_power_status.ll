; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/extr_enclosure.c_set_component_power_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/extr_enclosure.c_set_component_power_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.enclosure_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.enclosure_device*, %struct.enclosure_component*, i32)* }
%struct.enclosure_component = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"on\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"off\00", align 1
@EINVAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @set_component_power_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @set_component_power_status(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.enclosure_device*, align 8
  %11 = alloca %struct.enclosure_component*, align 8
  %12 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %13 = load %struct.device*, %struct.device** %6, align 8
  %14 = getelementptr inbounds %struct.device, %struct.device* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.enclosure_device* @to_enclosure_device(i32 %15)
  store %struct.enclosure_device* %16, %struct.enclosure_device** %10, align 8
  %17 = load %struct.device*, %struct.device** %6, align 8
  %18 = call %struct.enclosure_component* @to_enclosure_component(%struct.device* %17)
  store %struct.enclosure_component* %18, %struct.enclosure_component** %11, align 8
  %19 = load i8*, i8** %8, align 8
  %20 = call i64 @strncmp(i8* %19, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 2)
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %35

22:                                               ; preds = %4
  %23 = load i8*, i8** %8, align 8
  %24 = getelementptr inbounds i8, i8* %23, i64 2
  %25 = load i8, i8* %24, align 1
  %26 = sext i8 %25 to i32
  %27 = icmp eq i32 %26, 10
  br i1 %27, label %34, label %28

28:                                               ; preds = %22
  %29 = load i8*, i8** %8, align 8
  %30 = getelementptr inbounds i8, i8* %29, i64 2
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %28, %22
  store i32 1, i32* %12, align 4
  br label %56

35:                                               ; preds = %28, %4
  %36 = load i8*, i8** %8, align 8
  %37 = call i64 @strncmp(i8* %36, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 3)
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %52

39:                                               ; preds = %35
  %40 = load i8*, i8** %8, align 8
  %41 = getelementptr inbounds i8, i8* %40, i64 3
  %42 = load i8, i8* %41, align 1
  %43 = sext i8 %42 to i32
  %44 = icmp eq i32 %43, 10
  br i1 %44, label %51, label %45

45:                                               ; preds = %39
  %46 = load i8*, i8** %8, align 8
  %47 = getelementptr inbounds i8, i8* %46, i64 3
  %48 = load i8, i8* %47, align 1
  %49 = sext i8 %48 to i32
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %45, %39
  store i32 0, i32* %12, align 4
  br label %55

52:                                               ; preds = %45, %35
  %53 = load i64, i64* @EINVAL, align 8
  %54 = sub i64 0, %53
  store i64 %54, i64* %5, align 8
  br label %75

55:                                               ; preds = %51
  br label %56

56:                                               ; preds = %55, %34
  %57 = load %struct.enclosure_device*, %struct.enclosure_device** %10, align 8
  %58 = getelementptr inbounds %struct.enclosure_device, %struct.enclosure_device* %57, i32 0, i32 0
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i32 (%struct.enclosure_device*, %struct.enclosure_component*, i32)*, i32 (%struct.enclosure_device*, %struct.enclosure_component*, i32)** %60, align 8
  %62 = icmp ne i32 (%struct.enclosure_device*, %struct.enclosure_component*, i32)* %61, null
  br i1 %62, label %63, label %73

63:                                               ; preds = %56
  %64 = load %struct.enclosure_device*, %struct.enclosure_device** %10, align 8
  %65 = getelementptr inbounds %struct.enclosure_device, %struct.enclosure_device* %64, i32 0, i32 0
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = load i32 (%struct.enclosure_device*, %struct.enclosure_component*, i32)*, i32 (%struct.enclosure_device*, %struct.enclosure_component*, i32)** %67, align 8
  %69 = load %struct.enclosure_device*, %struct.enclosure_device** %10, align 8
  %70 = load %struct.enclosure_component*, %struct.enclosure_component** %11, align 8
  %71 = load i32, i32* %12, align 4
  %72 = call i32 %68(%struct.enclosure_device* %69, %struct.enclosure_component* %70, i32 %71)
  br label %73

73:                                               ; preds = %63, %56
  %74 = load i64, i64* %9, align 8
  store i64 %74, i64* %5, align 8
  br label %75

75:                                               ; preds = %73, %52
  %76 = load i64, i64* %5, align 8
  ret i64 %76
}

declare dso_local %struct.enclosure_device* @to_enclosure_device(i32) #1

declare dso_local %struct.enclosure_component* @to_enclosure_component(%struct.device*) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
