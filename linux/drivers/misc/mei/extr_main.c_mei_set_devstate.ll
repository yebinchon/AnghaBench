; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/mei/extr_main.c_mei_set_devstate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/mei/extr_main.c_mei_set_devstate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mei_device = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.device = type { i32 }

@mei_class = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"dev_state\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mei_set_devstate(%struct.mei_device* %0, i32 %1) #0 {
  %3 = alloca %struct.mei_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  store %struct.mei_device* %0, %struct.mei_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.mei_device*, %struct.mei_device** %3, align 8
  %7 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp eq i32 %8, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  br label %30

12:                                               ; preds = %2
  %13 = load i32, i32* %4, align 4
  %14 = load %struct.mei_device*, %struct.mei_device** %3, align 8
  %15 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 4
  %16 = load i32, i32* @mei_class, align 4
  %17 = load %struct.mei_device*, %struct.mei_device** %3, align 8
  %18 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call %struct.device* @class_find_device_by_devt(i32 %16, i32 %20)
  store %struct.device* %21, %struct.device** %5, align 8
  %22 = load %struct.device*, %struct.device** %5, align 8
  %23 = icmp ne %struct.device* %22, null
  br i1 %23, label %24, label %30

24:                                               ; preds = %12
  %25 = load %struct.device*, %struct.device** %5, align 8
  %26 = getelementptr inbounds %struct.device, %struct.device* %25, i32 0, i32 0
  %27 = call i32 @sysfs_notify(i32* %26, i32* null, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %28 = load %struct.device*, %struct.device** %5, align 8
  %29 = call i32 @put_device(%struct.device* %28)
  br label %30

30:                                               ; preds = %11, %24, %12
  ret void
}

declare dso_local %struct.device* @class_find_device_by_devt(i32, i32) #1

declare dso_local i32 @sysfs_notify(i32*, i32*, i8*) #1

declare dso_local i32 @put_device(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
