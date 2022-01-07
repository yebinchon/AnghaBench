; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/extr_enclosure.c_enclosure_remove_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/extr_enclosure.c_enclosure_remove_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.enclosure_device = type { i32, %struct.enclosure_component* }
%struct.enclosure_component = type { i32, %struct.device* }
%struct.device = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @enclosure_remove_device(%struct.enclosure_device* %0, %struct.device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.enclosure_device*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.enclosure_component*, align 8
  %7 = alloca i32, align 4
  store %struct.enclosure_device* %0, %struct.enclosure_device** %4, align 8
  store %struct.device* %1, %struct.device** %5, align 8
  %8 = load %struct.enclosure_device*, %struct.enclosure_device** %4, align 8
  %9 = icmp ne %struct.enclosure_device* %8, null
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = load %struct.device*, %struct.device** %5, align 8
  %12 = icmp ne %struct.device* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %10, %2
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %55

16:                                               ; preds = %10
  store i32 0, i32* %7, align 4
  br label %17

17:                                               ; preds = %49, %16
  %18 = load i32, i32* %7, align 4
  %19 = load %struct.enclosure_device*, %struct.enclosure_device** %4, align 8
  %20 = getelementptr inbounds %struct.enclosure_device, %struct.enclosure_device* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp slt i32 %18, %21
  br i1 %22, label %23, label %52

23:                                               ; preds = %17
  %24 = load %struct.enclosure_device*, %struct.enclosure_device** %4, align 8
  %25 = getelementptr inbounds %struct.enclosure_device, %struct.enclosure_device* %24, i32 0, i32 1
  %26 = load %struct.enclosure_component*, %struct.enclosure_component** %25, align 8
  %27 = load i32, i32* %7, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.enclosure_component, %struct.enclosure_component* %26, i64 %28
  store %struct.enclosure_component* %29, %struct.enclosure_component** %6, align 8
  %30 = load %struct.enclosure_component*, %struct.enclosure_component** %6, align 8
  %31 = getelementptr inbounds %struct.enclosure_component, %struct.enclosure_component* %30, i32 0, i32 1
  %32 = load %struct.device*, %struct.device** %31, align 8
  %33 = load %struct.device*, %struct.device** %5, align 8
  %34 = icmp eq %struct.device* %32, %33
  br i1 %34, label %35, label %48

35:                                               ; preds = %23
  %36 = load %struct.enclosure_component*, %struct.enclosure_component** %6, align 8
  %37 = call i32 @enclosure_remove_links(%struct.enclosure_component* %36)
  %38 = load %struct.enclosure_component*, %struct.enclosure_component** %6, align 8
  %39 = getelementptr inbounds %struct.enclosure_component, %struct.enclosure_component* %38, i32 0, i32 0
  %40 = call i32 @device_del(i32* %39)
  %41 = load %struct.device*, %struct.device** %5, align 8
  %42 = call i32 @put_device(%struct.device* %41)
  %43 = load %struct.enclosure_component*, %struct.enclosure_component** %6, align 8
  %44 = getelementptr inbounds %struct.enclosure_component, %struct.enclosure_component* %43, i32 0, i32 1
  store %struct.device* null, %struct.device** %44, align 8
  %45 = load %struct.enclosure_component*, %struct.enclosure_component** %6, align 8
  %46 = getelementptr inbounds %struct.enclosure_component, %struct.enclosure_component* %45, i32 0, i32 0
  %47 = call i32 @device_add(i32* %46)
  store i32 %47, i32* %3, align 4
  br label %55

48:                                               ; preds = %23
  br label %49

49:                                               ; preds = %48
  %50 = load i32, i32* %7, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %7, align 4
  br label %17

52:                                               ; preds = %17
  %53 = load i32, i32* @ENODEV, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %3, align 4
  br label %55

55:                                               ; preds = %52, %35, %13
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

declare dso_local i32 @enclosure_remove_links(%struct.enclosure_component*) #1

declare dso_local i32 @device_del(i32*) #1

declare dso_local i32 @put_device(%struct.device*) #1

declare dso_local i32 @device_add(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
