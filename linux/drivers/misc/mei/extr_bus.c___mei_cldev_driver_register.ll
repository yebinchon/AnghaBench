; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/mei/extr_bus.c___mei_cldev_driver_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/mei/extr_bus.c___mei_cldev_driver_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mei_cl_driver = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32*, %struct.module* }
%struct.module = type { i32 }

@mei_cl_bus_type = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"mei: driver [%s] registered\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__mei_cldev_driver_register(%struct.mei_cl_driver* %0, %struct.module* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mei_cl_driver*, align 8
  %5 = alloca %struct.module*, align 8
  %6 = alloca i32, align 4
  store %struct.mei_cl_driver* %0, %struct.mei_cl_driver** %4, align 8
  store %struct.module* %1, %struct.module** %5, align 8
  %7 = load %struct.mei_cl_driver*, %struct.mei_cl_driver** %4, align 8
  %8 = getelementptr inbounds %struct.mei_cl_driver, %struct.mei_cl_driver* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 8
  %10 = load %struct.mei_cl_driver*, %struct.mei_cl_driver** %4, align 8
  %11 = getelementptr inbounds %struct.mei_cl_driver, %struct.mei_cl_driver* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  store i32 %9, i32* %12, align 8
  %13 = load %struct.module*, %struct.module** %5, align 8
  %14 = load %struct.mei_cl_driver*, %struct.mei_cl_driver** %4, align 8
  %15 = getelementptr inbounds %struct.mei_cl_driver, %struct.mei_cl_driver* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 2
  store %struct.module* %13, %struct.module** %16, align 8
  %17 = load %struct.mei_cl_driver*, %struct.mei_cl_driver** %4, align 8
  %18 = getelementptr inbounds %struct.mei_cl_driver, %struct.mei_cl_driver* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  store i32* @mei_cl_bus_type, i32** %19, align 8
  %20 = load %struct.mei_cl_driver*, %struct.mei_cl_driver** %4, align 8
  %21 = getelementptr inbounds %struct.mei_cl_driver, %struct.mei_cl_driver* %20, i32 0, i32 0
  %22 = call i32 @driver_register(%struct.TYPE_2__* %21)
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %6, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %2
  %26 = load i32, i32* %6, align 4
  store i32 %26, i32* %3, align 4
  br label %33

27:                                               ; preds = %2
  %28 = load %struct.mei_cl_driver*, %struct.mei_cl_driver** %4, align 8
  %29 = getelementptr inbounds %struct.mei_cl_driver, %struct.mei_cl_driver* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @pr_debug(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %31)
  store i32 0, i32* %3, align 4
  br label %33

33:                                               ; preds = %27, %25
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

declare dso_local i32 @driver_register(%struct.TYPE_2__*) #1

declare dso_local i32 @pr_debug(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
