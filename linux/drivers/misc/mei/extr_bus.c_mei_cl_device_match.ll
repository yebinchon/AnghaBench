; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/mei/extr_bus.c_mei_cl_device_match.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/mei/extr_bus.c_mei_cl_device_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_driver = type { i32 }
%struct.mei_cl_device = type { i32 }
%struct.mei_cl_driver = type { i32 }
%struct.mei_cl_device_id = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_driver*)* @mei_cl_device_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mei_cl_device_match(%struct.device* %0, %struct.device_driver* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_driver*, align 8
  %6 = alloca %struct.mei_cl_device*, align 8
  %7 = alloca %struct.mei_cl_driver*, align 8
  %8 = alloca %struct.mei_cl_device_id*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.device_driver* %1, %struct.device_driver** %5, align 8
  %9 = load %struct.device*, %struct.device** %4, align 8
  %10 = call %struct.mei_cl_device* @to_mei_cl_device(%struct.device* %9)
  store %struct.mei_cl_device* %10, %struct.mei_cl_device** %6, align 8
  %11 = load %struct.device_driver*, %struct.device_driver** %5, align 8
  %12 = call %struct.mei_cl_driver* @to_mei_cl_driver(%struct.device_driver* %11)
  store %struct.mei_cl_driver* %12, %struct.mei_cl_driver** %7, align 8
  %13 = load %struct.mei_cl_device*, %struct.mei_cl_device** %6, align 8
  %14 = icmp ne %struct.mei_cl_device* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %39

16:                                               ; preds = %2
  %17 = load %struct.mei_cl_device*, %struct.mei_cl_device** %6, align 8
  %18 = getelementptr inbounds %struct.mei_cl_device, %struct.mei_cl_device* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %16
  store i32 0, i32* %3, align 4
  br label %39

22:                                               ; preds = %16
  %23 = load %struct.mei_cl_driver*, %struct.mei_cl_driver** %7, align 8
  %24 = icmp ne %struct.mei_cl_driver* %23, null
  br i1 %24, label %25, label %30

25:                                               ; preds = %22
  %26 = load %struct.mei_cl_driver*, %struct.mei_cl_driver** %7, align 8
  %27 = getelementptr inbounds %struct.mei_cl_driver, %struct.mei_cl_driver* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %25, %22
  store i32 0, i32* %3, align 4
  br label %39

31:                                               ; preds = %25
  %32 = load %struct.mei_cl_device*, %struct.mei_cl_device** %6, align 8
  %33 = load %struct.mei_cl_driver*, %struct.mei_cl_driver** %7, align 8
  %34 = call %struct.mei_cl_device_id* @mei_cl_device_find(%struct.mei_cl_device* %32, %struct.mei_cl_driver* %33)
  store %struct.mei_cl_device_id* %34, %struct.mei_cl_device_id** %8, align 8
  %35 = load %struct.mei_cl_device_id*, %struct.mei_cl_device_id** %8, align 8
  %36 = icmp ne %struct.mei_cl_device_id* %35, null
  br i1 %36, label %37, label %38

37:                                               ; preds = %31
  store i32 1, i32* %3, align 4
  br label %39

38:                                               ; preds = %31
  store i32 0, i32* %3, align 4
  br label %39

39:                                               ; preds = %38, %37, %30, %21, %15
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local %struct.mei_cl_device* @to_mei_cl_device(%struct.device*) #1

declare dso_local %struct.mei_cl_driver* @to_mei_cl_driver(%struct.device_driver*) #1

declare dso_local %struct.mei_cl_device_id* @mei_cl_device_find(%struct.mei_cl_device*, %struct.mei_cl_driver*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
