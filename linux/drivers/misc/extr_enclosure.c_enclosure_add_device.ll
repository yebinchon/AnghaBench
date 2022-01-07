; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/extr_enclosure.c_enclosure_add_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/extr_enclosure.c_enclosure_add_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.enclosure_device = type { i32, %struct.enclosure_component* }
%struct.enclosure_component = type { %struct.device* }
%struct.device = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @enclosure_add_device(%struct.enclosure_device* %0, i32 %1, %struct.device* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.enclosure_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.device*, align 8
  %8 = alloca %struct.enclosure_component*, align 8
  %9 = alloca i32, align 4
  store %struct.enclosure_device* %0, %struct.enclosure_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.device* %2, %struct.device** %7, align 8
  %10 = load %struct.enclosure_device*, %struct.enclosure_device** %5, align 8
  %11 = icmp ne %struct.enclosure_device* %10, null
  br i1 %11, label %12, label %18

12:                                               ; preds = %3
  %13 = load i32, i32* %6, align 4
  %14 = load %struct.enclosure_device*, %struct.enclosure_device** %5, align 8
  %15 = getelementptr inbounds %struct.enclosure_device, %struct.enclosure_device* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp sge i32 %13, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %12, %3
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %66

21:                                               ; preds = %12
  %22 = load %struct.enclosure_device*, %struct.enclosure_device** %5, align 8
  %23 = getelementptr inbounds %struct.enclosure_device, %struct.enclosure_device* %22, i32 0, i32 1
  %24 = load %struct.enclosure_component*, %struct.enclosure_component** %23, align 8
  %25 = load i32, i32* %6, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.enclosure_component, %struct.enclosure_component* %24, i64 %26
  store %struct.enclosure_component* %27, %struct.enclosure_component** %8, align 8
  %28 = load %struct.enclosure_component*, %struct.enclosure_component** %8, align 8
  %29 = getelementptr inbounds %struct.enclosure_component, %struct.enclosure_component* %28, i32 0, i32 0
  %30 = load %struct.device*, %struct.device** %29, align 8
  %31 = load %struct.device*, %struct.device** %7, align 8
  %32 = icmp eq %struct.device* %30, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %21
  %34 = load i32, i32* @EEXIST, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %4, align 4
  br label %66

36:                                               ; preds = %21
  %37 = load %struct.enclosure_component*, %struct.enclosure_component** %8, align 8
  %38 = getelementptr inbounds %struct.enclosure_component, %struct.enclosure_component* %37, i32 0, i32 0
  %39 = load %struct.device*, %struct.device** %38, align 8
  %40 = icmp ne %struct.device* %39, null
  br i1 %40, label %41, label %48

41:                                               ; preds = %36
  %42 = load %struct.enclosure_component*, %struct.enclosure_component** %8, align 8
  %43 = call i32 @enclosure_remove_links(%struct.enclosure_component* %42)
  %44 = load %struct.enclosure_component*, %struct.enclosure_component** %8, align 8
  %45 = getelementptr inbounds %struct.enclosure_component, %struct.enclosure_component* %44, i32 0, i32 0
  %46 = load %struct.device*, %struct.device** %45, align 8
  %47 = call i32 @put_device(%struct.device* %46)
  br label %48

48:                                               ; preds = %41, %36
  %49 = load %struct.device*, %struct.device** %7, align 8
  %50 = call %struct.device* @get_device(%struct.device* %49)
  %51 = load %struct.enclosure_component*, %struct.enclosure_component** %8, align 8
  %52 = getelementptr inbounds %struct.enclosure_component, %struct.enclosure_component* %51, i32 0, i32 0
  store %struct.device* %50, %struct.device** %52, align 8
  %53 = load %struct.enclosure_component*, %struct.enclosure_component** %8, align 8
  %54 = call i32 @enclosure_add_links(%struct.enclosure_component* %53)
  store i32 %54, i32* %9, align 4
  %55 = load i32, i32* %9, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %64

57:                                               ; preds = %48
  %58 = load %struct.enclosure_component*, %struct.enclosure_component** %8, align 8
  %59 = getelementptr inbounds %struct.enclosure_component, %struct.enclosure_component* %58, i32 0, i32 0
  %60 = load %struct.device*, %struct.device** %59, align 8
  %61 = call i32 @put_device(%struct.device* %60)
  %62 = load %struct.enclosure_component*, %struct.enclosure_component** %8, align 8
  %63 = getelementptr inbounds %struct.enclosure_component, %struct.enclosure_component* %62, i32 0, i32 0
  store %struct.device* null, %struct.device** %63, align 8
  br label %64

64:                                               ; preds = %57, %48
  %65 = load i32, i32* %9, align 4
  store i32 %65, i32* %4, align 4
  br label %66

66:                                               ; preds = %64, %33, %18
  %67 = load i32, i32* %4, align 4
  ret i32 %67
}

declare dso_local i32 @enclosure_remove_links(%struct.enclosure_component*) #1

declare dso_local i32 @put_device(%struct.device*) #1

declare dso_local %struct.device* @get_device(%struct.device*) #1

declare dso_local i32 @enclosure_add_links(%struct.enclosure_component*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
